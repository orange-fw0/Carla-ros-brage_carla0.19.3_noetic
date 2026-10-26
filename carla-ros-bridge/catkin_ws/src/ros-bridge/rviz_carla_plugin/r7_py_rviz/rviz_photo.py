#!/usr/bin/env python3
import rospy
import cv2
import numpy as np
import threading
import queue
import os
from sensor_msgs.msg import Image
from std_msgs.msg import Header
from sensor_interface_msgs.msg import CompressedVideo

class H264ViewerNode:
    def __init__(self):
        # 初始化ROS节点
        rospy.init_node('h264_viewer_node', anonymous=True)
        
        # 配置参数（可通过ROS参数服务器调整）
        self.config = {
            'width': rospy.get_param('~width', None),
            'height': rospy.get_param('~height', None),
            'queue_size': rospy.get_param('~queue_size', 500),
            'skip_interval': rospy.get_param('~skip_interval', 1),  # 不跳帧以保留关键帧
            'save_data': rospy.get_param('~save_data', True),
            'save_path': rospy.get_param('~save_path', 'h264_stream.raw'),
            'max_save_frames': rospy.get_param('~max_save_frames', 200),
            'sps_pps_buffer_size': rospy.get_param('~sps_pps_buffer_size', 1024*10)  # SPS/PPS缓冲区大小
        }
        
        # 状态变量
        self.running = True
        self.stats = {
            'total_received': 0,
            'enqueued': 0,
            'dropped': 0,
            'published': 0,
            'saved': 0
        }
        
        # 核心组件初始化
        self.h264_queue = queue.Queue(maxsize=self.config['queue_size'])
        self.image_pub = rospy.Publisher('camera_front_wide/video', Image, queue_size=10)
        
        # SPS/PPS参数集管理（H.264解码关键）
        self.sps_pps_data = b''  # 存储提取的SPS/PPS数据
        self.got_sps_pps = False  # 是否已获取有效的SPS/PPS
        
        # 数据保存文件
        self.data_file = None
        if self.config['save_data']:
            try:
                self.data_file = open(self.config['save_path'], 'wb')
                rospy.loginfo(f"已开启数据保存，文件: {self.config['save_path']}")
            except Exception as e:
                rospy.logwarn(f"无法打开保存文件: {str(e)}，已禁用数据保存")
                self.config['save_data'] = False
        
        # 初始化OpenCV解码器
        self.decoder = cv2.VideoCapture()
        self.decoder_lock = threading.Lock()
        
        # 启动解码线程
        self.decoding_thread = threading.Thread(target=self.decode_loop, daemon=True)
        self.decoding_thread.start()
        
        # 订阅视频流
        self.subscriber = rospy.Subscriber(
            '/sensor/camera_front_wide/video',
            CompressedVideo,
            self.video_callback,
            queue_size=10
        )
        
        # 启动状态报告定时器
        self.status_timer = rospy.Timer(rospy.Duration(5), self.report_status)
        
        rospy.loginfo("H.264视频 viewer 节点初始化完成 (OpenCV优化版)")
        rospy.loginfo(f"订阅话题: /sensor/camera_front_wide/video")
        rospy.loginfo(f"输出话题: camera_front_wide/video")

    def extract_sps_pps(self, h264_data):
        """从H.264数据中提取SPS和PPS参数集"""
        # H.264帧起始码：0x000001 或 0x00000001
        start_codes = [b'\x00\x00\x01', b'\x00\x00\x00\x01']
        sps_nal_type = 0x07  # SPS的NALU类型
        pps_nal_type = 0x08  # PPS的NALU类型
        
        # 遍历所有起始码，查找SPS/PPS
        for start_code in start_codes:
            pos = 0
            while pos < len(h264_data):
                pos = h264_data.find(start_code, pos)
                if pos == -1:
                    break
                # 起始码后1字节是NALU头，第3-7位是类型
                nalu_header_pos = pos + len(start_code)
                if nalu_header_pos + 1 > len(h264_data):
                    break
                nalu_type = (h264_data[nalu_header_pos] & 0x1F)  # 提取NALU类型
                
                # 如果是SPS或PPS，保存到缓冲区
                if nalu_type in [sps_nal_type, pps_nal_type]:
                    # 查找下一个起始码，确定当前NALU结束位置
                    next_pos = len(h264_data)
                    for sc in start_codes:
                        sc_pos = h264_data.find(sc, nalu_header_pos + 1)
                        if sc_pos != -1 and sc_pos < next_pos:
                            next_pos = sc_pos
                    # 保存完整的NALU（包含起始码）
                    self.sps_pps_data += h264_data[pos:next_pos]
                    self.got_sps_pps = True
                    rospy.loginfo(f"已提取{'SPS' if nalu_type == sps_nal_type else 'PPS'}参数集")
                
                pos += len(start_code)
        
        # 限制缓冲区大小，避免溢出
        if len(self.sps_pps_data) > self.config['sps_pps_buffer_size']:
            self.sps_pps_data = self.sps_pps_data[-self.config['sps_pps_buffer_size']:]

    def video_callback(self, msg):
        """处理接收到的视频消息，提取SPS/PPS并管理队列"""
        self.stats['total_received'] += 1
        h264_bytes = bytes(msg.data)
        
        # 保存原始数据
        if self.config['save_data'] and self.stats['saved'] < self.config['max_save_frames']:
            if msg.format.lower() in ["h264", "h.264"]:
                try:
                    self.data_file.write(h264_bytes)
                    self.data_file.flush()
                    self.stats['saved'] += 1
                    if self.stats['saved'] >= self.config['max_save_frames']:
                        self.data_file.close()
                        rospy.loginfo(f"数据保存完成，共{self.stats['saved']}帧")
                        self.config['save_data'] = False
                except Exception as e:
                    rospy.logwarn(f"数据保存失败: {str(e)}")
        
        # 提取SPS/PPS参数集（每次接收数据都检查）
        self.extract_sps_pps(h264_bytes)
        
        # 跳帧处理
        if self.stats['total_received'] % self.config['skip_interval'] != 0:
            return
        
        # 验证格式
        if msg.format.lower() not in ["h264", "h.264"]:
            rospy.logwarn_throttle(1, f"忽略非H.264消息 (格式: {msg.format})")
            return
        
        # 入队处理（仅当获取到SPS/PPS后才入队）
        if self.got_sps_pps:
            try:
                self.h264_queue.put(h264_bytes, block=False)
                self.stats['enqueued'] += 1
                if self.stats['enqueued'] % 10 == 0:
                    rospy.loginfo(
                        f"消息 #{self.stats['enqueued']} 入队 "
                        f"(长度: {len(h264_bytes)} bytes, 队列占用: {self.h264_queue.qsize()}/{self.config['queue_size']})"
                    )
            except queue.Full:
                self.stats['dropped'] += 1
                rospy.logwarn_throttle(1, 
                    f"队列已满，已丢弃{self.stats['dropped']}条消息 "
                    f"(当前大小: {self.h264_queue.qsize()})"
                )
        else:
            rospy.logwarn_throttle(1, "等待SPS/PPS参数集，暂不入队数据")

    def cv2_to_imgmsg(self, cv_image):
        """将OpenCV图像转换为ROS Image消息"""
        if cv_image is None:
            return None
            
        img_msg = Image()
        img_msg.header = Header()
        img_msg.header.stamp = rospy.Time.now()
        img_msg.header.frame_id = "camera_front_wide"
        img_msg.height = cv_image.shape[0]
        img_msg.width = cv_image.shape[1]
        img_msg.encoding = "bgr8"
        img_msg.is_bigendian = 0
        img_msg.step = img_msg.width * 3
        img_msg.data = cv_image.tobytes()
        return img_msg

    def decode_loop(self):
        """OpenCV解码主循环（携带SPS/PPS参数集）"""
        rospy.loginfo("启动解码线程...")
        
        try:
            while self.running and not rospy.is_shutdown():
                # 等待SPS/PPS参数集
                if not self.got_sps_pps:
                    rospy.sleep(0.1)
                    continue
                
                # 从队列获取数据
                try:
                    h264_data = self.h264_queue.get(timeout=1.0)
                except queue.Empty:
                    continue
                except Exception as e:
                    rospy.logerr(f"获取队列数据失败: {str(e)}")
                    break
                
                try:
                    # 拼接SPS/PPS + 当前帧数据（确保解码器有完整参数）
                    full_data = self.sps_pps_data + h264_data
                    data_array = np.frombuffer(full_data, dtype=np.uint8)
                    
                    # 方法1：尝试直接解码单帧
                    frame = cv2.imdecode(data_array, cv2.IMREAD_COLOR)
                    
                    # 方法2：如果失败，使用VideoCapture解码
                    if frame is None:
                        temp_file = "temp_h264_frame.bin"
                        with open(temp_file, 'wb') as f:
                            f.write(full_data)
                        
                        with self.decoder_lock:
                            self.decoder.release()
                            self.decoder.open(temp_file)
                            ret, frame = self.decoder.read()
                        os.remove(temp_file)
                    
                    if frame is not None:
                        # 自动获取或验证尺寸
                        if not self.config['width'] or not self.config['height']:
                            self.config['height'], self.config['width'] = frame.shape[:2]
                            rospy.loginfo(f"自动检测视频尺寸: {self.config['width']}x{self.config['height']}")
                        else:
                            # 调整尺寸（如果需要）
                            if (frame.shape[1], frame.shape[0]) != (self.config['width'], self.config['height']):
                                frame = cv2.resize(frame, (self.config['width'], self.config['height']))
                        
                        # 发布图像
                        img_msg = self.cv2_to_imgmsg(frame)
                        if img_msg:
                            self.image_pub.publish(img_msg)
                            self.stats['published'] += 1
                            if self.stats['published'] % 10 == 0:
                                rospy.loginfo(f"已发布 {self.stats['published']} 帧 (尺寸: {self.config['width']}x{self.config['height']})")
                    else:
                        rospy.logwarn_throttle(1, "无法解码帧数据，尝试重新初始化参数集")
                        self.extract_sps_pps(h264_data)
                
                except Exception as e:
                    rospy.logerr(f"帧处理错误: {str(e)}")
                    # 重置解码器
                    with self.decoder_lock:
                        self.decoder.release()
                        self.decoder = cv2.VideoCapture()
        
        finally:
            # 资源清理
            self.running = False
            if self.decoder:
                self.decoder.release()
            rospy.loginfo("解码线程已停止")

    def report_status(self, event):
        """定期报告节点状态"""
        rospy.loginfo(
            f"状态报告: 接收{self.stats['total_received']} | "
            f"入队{self.stats['enqueued']} | 丢弃{self.stats['dropped']} | "
            f"发布{self.stats['published']} | 队列{self.h264_queue.qsize()} | "
            f"SPS/PPS: {'已获取' if self.got_sps_pps else '未获取'}"
        )

    def run(self):
        """节点主运行函数"""
        try:
            rospy.loginfo(f"使用OpenCV版本: {cv2.__version__}")
            rospy.loginfo("提示：确保OpenCV编译时启用了FFMPEG支持")
            rospy.spin()
        except KeyboardInterrupt:
            rospy.loginfo("用户中断")
        finally:
            self.running = False
            self.decoding_thread.join(timeout=5.0)
            if self.data_file and not self.data_file.closed:
                self.data_file.close()
            self.status_timer.shutdown()
            rospy.loginfo("节点已停止")

if __name__ == '__main__':
    try:
        # 检查OpenCV是否可用
        try:
            import cv2
        except ImportError:
            rospy.logerr("未找到OpenCV，请安装: pip install opencv-python-headless")
            exit(1)
        
        # 启动节点
        node = H264ViewerNode()
        node.run()
    except rospy.ROSInterruptException:
        pass
    