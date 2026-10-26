#!/usr/bin/env python3
"""
道路元素可视化节点 - 全量更新版本
将LandmarkNavi消息转换为MarkerArray，在RViz中可视化
每帧清除上一帧并重新绘制所有标记
"""
import rospy
import numpy as np
from visualization_msgs.msg import Marker, MarkerArray
from landmark_msgs.msg import LandmarkNavi
from std_msgs.msg import ColorRGBA
from geometry_msgs.msg import Point, Pose, Quaternion
from dataclasses import dataclass
from typing import Dict, List, Optional, Tuple
import time
import math

@dataclass
class ElementStyle:
    """道路元素样式配置"""
    color: ColorRGBA
    scale: float
    marker_type: int
    line_strip: bool = True
    dashed: bool = False
    dash_length: float = 0.5
    gap_length: float = 0.2
    z_offset: float = 0.1  # Z轴偏移，避免与地面重叠

@dataclass
class TextStyle:
    """文本样式配置"""
    color: ColorRGBA
    scale: float
    z_offset: float = 0.3
    update_frequency: int = 2  # 每2帧更新一次

class RoadElementsVisualizer:
    def __init__(self):
        
        
        # 从参数服务器读取配置
        self.load_configuration()
        
        # 初始化发布者
        self.init_publishers()
        
        # 初始化订阅者
        self.init_subscribers()
        
        # 初始化样式配置
        self.init_styles()
        
        # 初始化数据管理
        self.init_data_structures()
        
        # 初始化性能监控
        self.init_performance_monitoring()
        
        rospy.loginfo(f"Road elements visualizer initialized. Frame: {self.target_frame}")
    
    def load_configuration(self):
        """从参数服务器加载配置"""
        # 目标坐标系
        self.target_frame = rospy.get_param('~target_frame', 'map')
        
        # 发布频率限制
        self.max_publish_rate = rospy.get_param('~max_publish_rate', 15.0)  # Hz
        self.min_publish_interval = 1.0 / self.max_publish_rate
        
        # 缓冲区大小
        self.subscriber_queue_size = rospy.get_param('~subscriber_queue_size', 10)
        self.publisher_queue_size = rospy.get_param('~publisher_queue_size', 50)
        
        # 性能监控配置
        self.enable_perf_monitor = rospy.get_param('~enable_perf_monitor', False)
        self.perf_log_interval = rospy.get_param('~perf_log_interval', 5.0)  # 秒
        
        # 文本显示配置
        self.show_text_labels = rospy.get_param('~show_text_labels', True)
        self.text_update_frequency = rospy.get_param('~text_update_frequency', 2)
        
        # 数据有效性检查
        self.enable_data_validation = rospy.get_param('~enable_data_validation', True)
        self.position_limit = rospy.get_param('~position_limit', 1000.0)  # 位置坐标合理范围
    
    def init_publishers(self):
        """初始化发布者"""
        self.marker_array_pub = rospy.Publisher(
            '/laneresult/road_elements', 
            MarkerArray, 
            queue_size=self.publisher_queue_size,
            latch=False
        )
    
    def init_subscribers(self):
        """初始化订阅者"""
        self.subscriber = rospy.Subscriber(
            '/ddld/landmark_navi',  
            LandmarkNavi,
            self.road_elements_callback,
            queue_size=self.subscriber_queue_size,
            buff_size=65536*20,
            tcp_nodelay=True
        )
        
        rospy.logdebug(f"Subscribed to {self.subscriber.name} with queue size {self.subscriber_queue_size}")
    
    def init_data_structures(self):
        """初始化数据管理结构"""
        # 帧计数器
        self.frame_count = 0
        self.text_update_counter = 0
        
        # 无效数据计数器
        self.invalid_data_count = 0
        self.total_data_count = 0
        
        # 时间戳管理
        self.last_publish_time = rospy.Time(0)
        self.last_callback_time = rospy.Time(0)
        
        # ID计数器（每帧重新开始）
        self.current_id_base = 0
    
    def init_styles(self):
        """初始化可视化样式"""
        # 定义颜色常量
        COLOR_BLUE = ColorRGBA(r=0.2, g=0.5, b=1.0, a=0.9)      # 车道中心线
        COLOR_GREEN = ColorRGBA(r=0.0, g=0.8, b=0.2, a=1.0)     # 车道边界
        COLOR_RED = ColorRGBA(r=1.0, g=0.2, b=0.2, a=1.0)       # 道路边界
        COLOR_WHITE = ColorRGBA(r=1.0, g=1.0, b=1.0, a=0.9)     # 停止线
        COLOR_YELLOW = ColorRGBA(r=1.0, g=1.0, b=0.0, a=0.8)    # 人行横道
        COLOR_TEXT = ColorRGBA(r=1.0, g=1.0, b=1.0, a=1.0)      # 文本
        
        # 道路元素样式
        self.styles = {
            'lane_center': ElementStyle(
                color=COLOR_BLUE,
                scale=0.12,
                marker_type=Marker.LINE_STRIP,
                dashed=True,
                dash_length=0.8,
                gap_length=0.3,
            ),
            'lane_boundary': ElementStyle(
                color=COLOR_GREEN,
                scale=0.15,
                marker_type=Marker.LINE_STRIP,
            ),
            'road_boundary': ElementStyle(
                color=COLOR_RED,
                scale=0.2,
                marker_type=Marker.LINE_STRIP,
            ),
            'stop_line': ElementStyle(
                color=COLOR_WHITE,
                scale=0.25,
                marker_type=Marker.LINE_STRIP,
                dashed=True,
                dash_length=0.5,
                gap_length=0.2,
            ),
            'cross_walk': ElementStyle(
                color=COLOR_YELLOW,
                scale=0.18,
                marker_type=Marker.LINE_STRIP,
                dashed=True,
                dash_length=0.4,
                gap_length=0.2,
            )
        }
        
        # 文本样式
        self.text_style = TextStyle(
            color=COLOR_TEXT,
            scale=0.5,
            update_frequency=self.text_update_frequency
        )
    
    def init_performance_monitoring(self):
        """初始化性能监控"""
        if not self.enable_perf_monitor:
            return
            
        self.perf_stats = {
            'total_frames': 0,
            'total_markers': 0,
            'avg_markers_per_frame': 0,
            'processing_times': [],
            'invalid_data_ratio': 0.0,
            'last_log_time': rospy.Time.now()
        }
        
        rospy.Timer(rospy.Duration(self.perf_log_interval), self.log_performance_stats)
    
    def _is_valid_value(self, value):
        """检查值是否为有效的浮点数（非NaN且非无穷大）"""
        return not (math.isnan(value) or math.isinf(value) or abs(value) > self.position_limit)
    
    def _sanitize_point(self, point):
        """检查点数据的有效性"""
        if point is None:
            return False, None
        
        try:
            # 检查坐标是否存在
            if not hasattr(point, 'x') or not hasattr(point, 'y'):
                return False, None
            
            # 检查坐标值是否有效
            if not self._is_valid_value(point.x) or not self._is_valid_value(point.y):
                return False, None
            
            # 检查Z坐标（可选）
            z = point.z if hasattr(point, 'z') else 0.0
            if not self._is_valid_value(z):
                z = 0.0
            
            return True, Point(x=float(point.x), y=float(point.y), z=float(z))
        except Exception:
            return False, None
    
    def create_line_marker(self, points: List[Point], element_type: str, 
                          style: ElementStyle, marker_id: int) -> Optional[Marker]:
        """创建线状Marker"""
        if not points or len(points) < 2:
            return None
        
        marker = Marker()
        marker.id = marker_id
        marker.header.frame_id = self.target_frame
        marker.header.stamp = rospy.Time.now()
        marker.type = style.marker_type
        marker.action = Marker.ADD
        marker.scale.x = style.scale
        
        # 显式设置生命周期（0表示永远存在，直到被DELETEALL清除）
        marker.lifetime = rospy.Duration(0)
        
        marker.pose.orientation.w = 1.0
        marker.color = style.color
        
        # 添加点坐标
        valid_points = []
        for point in points:
            is_valid, sanitized_point = self._sanitize_point(point)
            if is_valid:
                # 应用Z轴偏移
                sanitized_point.z += style.z_offset
                valid_points.append(sanitized_point)
        
        # 如果没有有效点，返回None
        if len(valid_points) < 2:
            return None
        
        marker.points = valid_points
        
        # 设置虚线样式
        if style.dashed:
            marker.scale.y = style.dash_length
            marker.scale.z = style.gap_length
        
        return marker
    
    def create_text_marker(self, position: Point, text: str, 
                          marker_id: int) -> Optional[Marker]:
        """创建文本Marker"""
        if not self.show_text_labels:
            return None
        
        # 控制更新频率
        self.text_update_counter += 1
        if self.text_update_counter % self.text_style.update_frequency != 0:
            return None
        
        # 检查位置有效性
        is_valid, sanitized_position = self._sanitize_point(position)
        if not is_valid:
            return None
        
        text_marker = Marker()
        text_marker.id = marker_id
        text_marker.header.frame_id = self.target_frame
        text_marker.header.stamp = rospy.Time.now()
        text_marker.type = Marker.TEXT_VIEW_FACING
        text_marker.action = Marker.ADD
        text_marker.lifetime = rospy.Duration(0)
        
        # 设置位置（添加Z轴偏移）
        text_marker.pose.position.x = sanitized_position.x
        text_marker.pose.position.y = sanitized_position.y
        text_marker.pose.position.z = sanitized_position.z + self.text_style.z_offset
        text_marker.pose.orientation.w = 1.0
        
        # 设置文本内容
        text_marker.text = str(text)
        text_marker.scale.z = self.text_style.scale
        text_marker.color = self.text_style.color
        
        return text_marker
    
    def process_element_type(self, elements: List, element_type: str, 
                            marker_array: MarkerArray, point_attr: str = 'line_points',
                            local_id_start: int = 0) -> int:
        """处理特定类型的道路元素，返回下一个可用的ID"""
        local_id = local_id_start
        
        if not elements:
            return local_id
        
        # 获取样式
        style = self.styles.get(element_type)
        if not style:
            return local_id
        
        # 处理每个元素
        for idx, element in enumerate(elements):
            # 获取点数据
            points = getattr(element, point_attr, None)
            if not points or len(points) == 0:
                continue
            
            # 统计总数据量
            self.total_data_count += 1
            
            # 检查数据有效性
            valid_points = []
            for point in points:
                is_valid, sanitized_point = self._sanitize_point(point)
                if is_valid:
                    valid_points.append(sanitized_point)
                else:
                    self.invalid_data_count += 1
            
            # 如果有效点太少，跳过
            if len(valid_points) < 2:
                continue
            
            # 创建线标记
            line_marker = self.create_line_marker(valid_points, element_type, style, local_id)
            if line_marker:
                marker_array.markers.append(line_marker)
                local_id += 1
            
            # 创建文本标记（使用中点）
            if self.show_text_labels:
                mid_idx = len(valid_points) // 2
                text_marker = self.create_text_marker(
                    valid_points[mid_idx], 
                    f"{element_type.replace('_', ' ').title()} {idx}",
                    local_id
                )
                if text_marker:
                    marker_array.markers.append(text_marker)
                    local_id += 1
        
        return local_id
    
    def road_elements_callback(self, msg: LandmarkNavi):
        """处理接收到的道路元素数据"""
        start_time = time.time()
        
        try:
            # 帧计数+1
            self.frame_count += 1
            
            # 频率限制
            current_time = rospy.Time.now()
            if (current_time - self.last_callback_time).to_sec() < 0.001:  # 1ms最小间隔
                return
            self.last_callback_time = current_time
            
            # 检查消息有效性
            if not hasattr(msg, 'landmarks'):
                rospy.logwarn_once("Received message without 'landmarks' attribute")
                return
            # rospy.logerr("！！！！！！！！！！！！！！！！！！！！！！！！")
            landmarks = msg.landmarks
            # rospy.logerr(landmark)
            
            # 创建标记数组
            marker_array = MarkerArray()
            
            # 添加DELETEALL标记（清除上一帧）
            deleteall_marker = Marker()
            deleteall_marker.header.frame_id = self.target_frame
            deleteall_marker.header.stamp = rospy.Time.now()
            deleteall_marker.action = Marker.DELETEALL
            marker_array.markers.append(deleteall_marker)
            
            # 重置当前ID基数
            local_id = 1  # 从1开始，0已用于DELETEALL
            
            # 处理各种道路元素类型
            element_processors = [
                ('lane_centers', 'lane_center', 'line_points'),
                ('lane_boundaries', 'lane_boundary', 'line_points'),
                ('road_boundaries', 'road_boundary', 'line_points'),
                ('stop_lines', 'stop_line', 'line_points'),
                ('cross_walks', 'cross_walk', 'center_line_points'),
            ]
            
            for attr_name, element_type, point_attr in element_processors:
                if hasattr(landmarks, attr_name):
                    elements = getattr(landmarks, attr_name)
                    local_id = self.process_element_type(elements, element_type, 
                                                        marker_array, point_attr, local_id)
            
            # 检查是否有标记需要发布
            if len(marker_array.markers) <= 1:  # 只有DELETEALL标记
                # 仍然发布DELETEALL以确保清除
                self.marker_array_pub.publish(marker_array)
                return
            
            # 性能统计
            if self.enable_perf_monitor:
                processing_time = time.time() - start_time
                self.update_performance_stats(len(marker_array.markers)-1, processing_time)
            
            # 控制发布频率
            now = rospy.Time.now()
            if (now - self.last_publish_time).to_sec() < self.min_publish_interval:
                return
            
            # 发布标记
            self.marker_array_pub.publish(marker_array)
            self.last_publish_time = now
            
            # 定期输出无效数据统计
            if self.frame_count % 100 == 0 and self.total_data_count > 0:
                invalid_ratio = self.invalid_data_count / self.total_data_count * 100
                if invalid_ratio > 1.0:  # 只有超过1%时才警告
                    rospy.logwarn(f"Invalid data ratio: {invalid_ratio:.2f}% "
                                 f"({self.invalid_data_count}/{self.total_data_count})")
                # 重置计数器
                self.invalid_data_count = 0
                self.total_data_count = 0
            
        except Exception as e:
            rospy.logerr(f"Error processing road elements: {str(e)}")
            rospy.logdebug_exception(e)  # 记录详细堆栈信息
    
    def update_performance_stats(self, num_markers: int, processing_time: float):
        """更新性能统计"""
        self.perf_stats['total_frames'] += 1
        self.perf_stats['total_markers'] += num_markers
        self.perf_stats['processing_times'].append(processing_time)
        
        # 保持最近100个样本
        if len(self.perf_stats['processing_times']) > 100:
            self.perf_stats['processing_times'].pop(0)
    
    def log_performance_stats(self, event=None):
        """记录性能统计"""
        if not self.enable_perf_monitor or self.perf_stats['total_frames'] == 0:
            return
        
        avg_markers = self.perf_stats['total_markers'] / self.perf_stats['total_frames']
        avg_time = np.mean(self.perf_stats['processing_times']) * 1000  # 转换为毫秒
        max_time = np.max(self.perf_stats['processing_times']) * 1000 if self.perf_stats['processing_times'] else 0
        
        # 计算无效数据比例
        if self.total_data_count > 0:
            invalid_ratio = self.invalid_data_count / self.total_data_count * 100
        else:
            invalid_ratio = 0.0
        
        rospy.loginfo(f"Performance Stats: Frames={self.perf_stats['total_frames']}, "
                     f"AvgMarkers={avg_markers:.1f}, "
                     f"AvgTime={avg_time:.2f}ms, MaxTime={max_time:.2f}ms, "
                     f"InvalidData={invalid_ratio:.2f}%")
        
        # 重置计数器
        self.perf_stats['total_frames'] = 0
        self.perf_stats['total_markers'] = 0
        self.perf_stats['processing_times'] = []
    
    def shutdown(self):
        """节点关闭时的清理工作"""
        rospy.loginfo("Shutting down road elements visualizer...")
        
        # 发送DELETEALL清除所有标记
        marker_array = MarkerArray()
        deleteall_marker = Marker()
        deleteall_marker.action = Marker.DELETEALL
        marker_array.markers.append(deleteall_marker)
        
        for _ in range(3):  # 发送3次确保收到
            self.marker_array_pub.publish(marker_array)
            rospy.sleep(0.05)

if __name__ == '__main__':
    try:
        # 初始化节点
        rospy.init_node('road_elements_visualizer', anonymous=True)
        visualizer = RoadElementsVisualizer()
        
        # 注册关闭钩子
        rospy.on_shutdown(visualizer.shutdown)
        
        # 主循环
        rospy.spin()
        
    except rospy.ROSInterruptException:
        rospy.loginfo("Road elements visualizer interrupted.")
    except Exception as e:
        rospy.logfatal(f"Fatal error in road elements visualizer: {e}")
        raise
