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
            # 摄像头配置 - 支持多个摄像头
            'cameras': rospy.get_param('~cameras', [
                {
                    'input_topic': '/sensor/camera_front_wide/video',
                    'output_topic': '/camera_front_wide/video',
                    'frame_id': 'camera_front_wide'
                },
                {
                    'input_topic': '/sensor/camera_left_front/video',
                    'output_topic': '/camera_left_front/video',
                    'frame_id': 'camera_left_front'
                },
                {
                    'input_topic': '/sensor/camera_left_rear/video',
                    'output_topic': '/camera_left_real/video',
                    'frame_id': 'camera_left_rear'
                },
                {
                    'input_topic': '/sensor/camera_rear_mid/video',
                    'output_topic': '/camera_rear_mid/video',
                    'frame_id': 'camera_rear_mid'
                },
                {
                    'input_topic': '/sensor/camera_right_front/video',
                    'output_topic': '/camera_right_front/video',
                    'frame_id': 'camera_right_front'
                },
                {
                    'input_topic': '/sensor/camera_right_rear/video',
                    'output_topic': '/camera_right_rear/video',
                    'frame_id': 'camera_right_rear'
                }
            ]),
            'width': rospy.get_param('~width', None),
            'height': rospy.get_param('~height', None),
            'queue_size': rospy.get_param('~queue_size', 500),
            'skip_interval': rospy.get_param('~skip_interval', 1),  # 不跳帧以保留关键帧
            'save_data': rospy.get_param('~save_data', True),
            'save_path': rospy.get_param('~save_path', 'h264_streams/'),
            'max_save_frames': rospy.get_param('~max_save_frames', 200),
            'sps_pps_buffer_size': rospy.get_param('~sps_pps_buffer_size', 1024*10)  # SPS/PPS缓冲区大小
        }
        
        # 创建保存目录
        if self.config['save_data'] and not os.path.exists(self.config['save_path']):
            os.makedirs(self.config['save_path'])
        
        # 初始化每个摄像头的状态和组件
        self.cameras = {}
        for cam_config in self.config['cameras']:
            cam_name = self._get_camera_name(cam_config['input_topic'])
            self.cameras[cam_name] = {
                'config': cam_config,
                'stats': {
                    'total_received': 0,
                    'enqueued': 0,
                    'dropped': 0,
                    'published': 0,
                    'saved': 0
                },
                'h264_queue': queue.Queue(maxsize=self.config['queue_size']),
                'image_pub': rospy.Publisher(cam_config['output_topic'], Image, queue_size=10),
                'sps_pps_data': b'',
                'got_sps_pps': False,
                'data_file': None,
                'decoder': cv2.VideoCapture(),
                'decoder_lock': threading.Lock(),
                'decoding_thread': None,
                'running': True
            }
            
            # 初始化数据保存文件
            if self.config['save_data']:
                try:
                    save_file = os.path.join(self.config['save_path'], f"{cam_name}.raw")
                    self.cameras[cam_name]['data_file'] = open(save_file, 'wb')
                    rospy.loginfo(f"已为{cam_name}开启数据保存，文件: {save_file}")
                except Exception as e:
                    rospy.logwarn(f"无法为{cam_name}打开保存文件: {str(e)}，已禁用该摄像头数据保存")
        
        # 状态变量
        self.running = True
        
        # 启动每个摄像头的解码线程并订阅话题
        for cam_name, cam_data in self.cameras.items():
            # 启动解码线程
            cam_data['decoding_thread'] = threading.Thread(
                target=self.decode_loop, 
                args=(cam_name,), 
                daemon=True
            )
            cam_data['decoding_thread'].start()
            
            # 订阅视频流
            cam_data['subscriber'] = rospy.Subscriber(
                cam_data['config']['input_topic'],
                CompressedVideo,
                lambda msg, name=cam_name: self.video_callback(msg, name),
                queue_size=10
            )
            
            rospy.loginfo(f"{cam_name} 已订阅: {cam_data['config']['input_topic']}")
            rospy.loginfo(f"{cam_name} 输出话题: {cam_data['config']['output_topic']}")
        
        # 启动状态报告定时器
        self.status_timer = rospy.Timer(rospy.Duration(5), self.report_status)
        
        rospy.loginfo("H.264视频 viewer 节点初始化完成 (多摄像头支持)")

    def _get_camera_name(self, input_topic):
        """从输入话题中提取摄像头名称"""
        return input_topic.split('/')[-2]  # 从/sensor/camera_name/video提取camera_name

    def extract_sps_pps(self, h264_data, cam_data):
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
                    cam_data['sps_pps_data'] += h264_data[pos:next_pos]
                    cam_data['got_sps_pps'] = True
                    rospy.loginfo(f"{self._get_camera_name(cam_data['config']['input_topic'])} 已提取{'SPS' if nalu_type == sps_nal_type else 'PPS'}参数集")
                
                pos += len(start_code)
        
        # 限制缓冲区大小，避免溢出
        if len(cam_data['sps_pps_data']) > self.config['sps_pps_buffer_size']:
            cam_data['sps_pps_data'] = cam_data['sps_pps_data'][-self.config['sps_pps_buffer_size']:]

    def video_callback(self, msg, cam_name):
        """处理接收到的视频消息，按摄像头分别处理"""
        cam_data = self.cameras.get(cam_name)
        if not cam_data:
            rospy.logwarn(f"未知摄像头: {cam_name}")
            return
            
        cam_data['stats']['total_received'] += 1
        h264_bytes = bytes(msg.data)
        
        # 保存原始数据
        if self.config['save_data'] and cam_data['data_file'] and cam_data['stats']['saved'] < self.config['max_save_frames']:
            if msg.format.lower() in ["h264", "h.264"]:
                try:
                    cam_data['data_file'].write(h264_bytes)
                    cam_data['data_file'].flush()
                    cam_data['stats']['saved'] += 1
                    if cam_data['stats']['saved'] >= self.config['max_save_frames']:
                        cam_data['data_file'].close()
                        cam_data['data_file'] = None
                        rospy.loginfo(f"{cam_name} 数据保存完成，共{cam_data['stats']['saved']}帧")
                except Exception as e:
                    rospy.logwarn(f"{cam_name} 数据保存失败: {str(e)}")
        
        # 提取SPS/PPS参数集（每次接收数据都检查）
        self.extract_sps_pps(h264_bytes, cam_data)
        
        # 跳帧处理
        if cam_data['stats']['total_received'] % self.config['skip_interval'] != 0:
            return
        
        # 验证格式
        if msg.format.lower() not in ["h264", "h.264"]:
            rospy.logwarn_throttle(1, f"{cam_name} 忽略非H.264消息 (格式: {msg.format})")
            return
        
        # 入队处理（仅当获取到SPS/PPS后才入队）
        if cam_data['got_sps_pps']:
            try:
                cam_data['h264_queue'].put(h264_bytes, block=False)
                cam_data['stats']['enqueued'] += 1
                if cam_data['stats']['enqueued'] % 10 == 0:
                    rospy.loginfo(
                        f"{cam_name} 消息 #{cam_data['stats']['enqueued']} 入队 "
                        f"(长度: {len(h264_bytes)} bytes, 队列占用: {cam_data['h264_queue'].qsize()}/{self.config['queue_size']})"
                    )
            except queue.Full:
                cam_data['stats']['dropped'] += 1
                rospy.logwarn_throttle(1, 
                    f"{cam_name} 队列已满，已丢弃{cam_data['stats']['dropped']}条消息 "
                    f"(当前大小: {cam_data['h264_queue'].qsize()})"
                )
        else:
            rospy.logwarn_throttle(1, f"{cam_name} 等待SPS/PPS参数集，暂不入队数据")

    def cv2_to_imgmsg(self, cv_image, frame_id):
        """将OpenCV图像转换为ROS Image消息"""
        if cv_image is None:
            return None
            
        img_msg = Image()
        img_msg.header = Header()
        img_msg.header.stamp = rospy.Time.now()
        img_msg.header.frame_id = frame_id
        img_msg.height = cv_image.shape[0]
        img_msg.width = cv_image.shape[1]
        img_msg.encoding = "bgr8"
        img_msg.is_bigendian = 0
        img_msg.step = img_msg.width * 3
        img_msg.data = cv_image.tobytes()
        return img_msg

    def decode_loop(self, cam_name):
        """OpenCV解码主循环（按摄像头分别处理）"""
        cam_data = self.cameras.get(cam_name)
        if not cam_data:
            rospy.logwarn(f"无法启动解码线程，未知摄像头: {cam_name}")
            return
            
        rospy.loginfo(f"{cam_name} 启动解码线程...")
        
        try:
            while self.running and cam_data['running'] and not rospy.is_shutdown():
                # 等待SPS/PPS参数集
                if not cam_data['got_sps_pps']:
                    rospy.sleep(0.1)
                    continue
                
                # 从队列获取数据
                try:
                    h264_data = cam_data['h264_queue'].get(timeout=1.0)
                except queue.Empty:
                    continue
                except Exception as e:
                    rospy.logerr(f"{cam_name} 获取队列数据失败: {str(e)}")
                    break
                
                try:
                    # 拼接SPS/PPS + 当前帧数据（确保解码器有完整参数）
                    full_data = cam_data['sps_pps_data'] + h264_data
                    data_array = np.frombuffer(full_data, dtype=np.uint8)
                    
                    # 方法1：尝试直接解码单帧
                    frame = cv2.imdecode(data_array, cv2.IMREAD_COLOR)
                    
                    # 方法2：如果失败，使用VideoCapture解码
                    if frame is None:
                        temp_file = f"temp_{cam_name}_h264_frame.bin"
                        with open(temp_file, 'wb') as f:
                            f.write(full_data)
                        
                        with cam_data['decoder_lock']:
                            cam_data['decoder'].release()
                            cam_data['decoder'].open(temp_file)
                            ret, frame = cam_data['decoder'].read()
                        os.remove(temp_file)
                    
                    if frame is not None:
                        # 自动获取或验证尺寸
                        width, height = self.config['width'], self.config['height']
                        if not width or not height:
                            height, width = frame.shape[:2]
                            rospy.loginfo(f"{cam_name} 自动检测视频尺寸: {width}x{height}")
                        else:
                            # 调整尺寸（如果需要）
                            if (frame.shape[1], frame.shape[0]) != (width, height):
                                frame = cv2.resize(frame, (width, height))
                        
                        # 发布图像
                        img_msg = self.cv2_to_imgmsg(frame, cam_data['config']['frame_id'])
                        if img_msg:
                            cam_data['image_pub'].publish(img_msg)
                            cam_data['stats']['published'] += 1
                            if cam_data['stats']['published'] % 10 == 0:
                                rospy.loginfo(f"{cam_name} 已发布 {cam_data['stats']['published']} 帧 (尺寸: {width}x{height})")
                    else:
                        rospy.logwarn_throttle(1, f"{cam_name} 无法解码帧数据，尝试重新初始化参数集")
                        self.extract_sps_pps(h264_data, cam_data)
                
                except Exception as e:
                    rospy.logerr(f"{cam_name} 帧处理错误: {str(e)}")
                    # 重置解码器
                    with cam_data['decoder_lock']:
                        cam_data['decoder'].release()
                        cam_data['decoder'] = cv2.VideoCapture()
        
        finally:
            # 资源清理
            cam_data['running'] = False
            if cam_data['decoder']:
                cam_data['decoder'].release()
            rospy.loginfo(f"{cam_name} 解码线程已停止")

    def report_status(self, event):
        """定期报告每个摄像头的状态"""
        for cam_name, cam_data in self.cameras.items():
            rospy.loginfo(
                f"{cam_name} 状态报告: 接收{cam_data['stats']['total_received']} | "
                f"入队{cam_data['stats']['enqueued']} | 丢弃{cam_data['stats']['dropped']} | "
                f"发布{cam_data['stats']['published']} | 队列{cam_data['h264_queue'].qsize()} | "
                f"SPS/PPS: {'已获取' if cam_data['got_sps_pps'] else '未获取'}"
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
            # 等待所有解码线程结束
            for cam_name, cam_data in self.cameras.items():
                if cam_data['decoding_thread']:
                    cam_data['decoding_thread'].join(timeout=5.0)
                # 关闭数据文件
                if cam_data['data_file'] and not cam_data['data_file'].closed:
                    cam_data['data_file'].close()
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
    