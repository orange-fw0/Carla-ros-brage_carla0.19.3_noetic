#!/usr/bin/env python3
import rospy
import json
import tf
import math
from std_msgs.msg import Header
from visualization_msgs.msg import Marker, MarkerArray
from geometry_msgs.msg import Point, Quaternion, TransformStamped
from mla_localization_msgs.msg import MLALocalization

class NavLineVisualizer:
    def __init__(self):
        # 参数配置
        self.update_interval = rospy.get_param('~update_interval', 1.0)  # 更新间隔(秒)
        self.position_threshold = rospy.get_param('~position_threshold', 1.5)  # 位置变化阈值
        self.rotation_threshold = rospy.get_param('~rotation_threshold', 0.05)  # 旋转变化阈值
        self.base_frame = "base_link"  # 自车坐标系
        self.map_frame = "map"         # 全局坐标系
        self.skip_invalid_points = rospy.get_param('~skip_invalid_points', True)
        self.default_x = rospy.get_param('~default_x', 0.0)
        self.default_y = rospy.get_param('~default_y', 0.0)
        
        # 创建发布者
        self.marker_pub = rospy.Publisher('/navigation_map_provider', MarkerArray, queue_size=10)
        self.tf_broadcaster = tf.TransformBroadcaster()  # TF变换发布器
        
        # 订阅话题
        self.sd_points_sub = rospy.Subscriber(
            '/map_provider/sd_points', 
            Header, 
            self.sd_points_callback, 
            queue_size=10
        )
        self.egopose_sub = rospy.Subscriber(
            '/mla/egopose', 
            MLALocalization, 
            self.egopose_callback, 
            queue_size=10
        )
        
        # 自车状态（map坐标系下）
        self.ego_x = 0.0        # 自车x坐标（map坐标系）
        self.ego_y = 0.0        # 自车y坐标（map坐标系）
        self.ego_yaw = 0.0      # 自车转角（弧度，基于map坐标系）
        self.ego_pose_valid = False
        
        # 导航点数据（map坐标系下）
        self.global_waypoints = []  # 存储map坐标系下的导航点(x, y)
        self.navigation_initialized = False
        
        # 记录上一次的位置和转角，用于检测变化
        self.last_ego_x = 0.0
        self.last_ego_y = 0.0
        self.last_ego_yaw = 0.0
        
        # 启动TF发布定时器（10Hz）
        self.tf_timer = rospy.Timer(rospy.Duration(0.1), self.publish_tf_transform)
        
        # 启动导航线更新定时器
        self.nav_update_timer = rospy.Timer(rospy.Duration(self.update_interval), self.update_navigation_line_callback)
        
        rospy.loginfo(f"导航线可视化节点已启动（间隔更新模式，间隔: {self.update_interval}秒）")

    def update_navigation_line_callback(self, event):
        """定时回调函数，定期检查是否需要更新导航线"""
        if not self.navigation_initialized or not self.ego_pose_valid:
            return
            
        # 检查位置或转角是否有显著变化
        position_changed = (
            abs(self.ego_x - self.last_ego_x) > self.position_threshold or
            abs(self.ego_y - self.last_ego_y) > self.position_threshold
        )
        
        orientation_changed = abs(self.ego_yaw - self.last_ego_yaw) > self.rotation_threshold
        
        if position_changed or orientation_changed:
            self.update_navigation_line()
            # 更新记录的位置和转角
            self.last_ego_x = self.ego_x
            self.last_ego_y = self.ego_y
            self.last_ego_yaw = self.ego_yaw

    def egopose_callback(self, msg):
        """更新自车在map坐标系中的位置和转角信息"""
        try:
            # 获取自车在map坐标系中的位置
            if hasattr(msg, 'position') and hasattr(msg.position, 'position_local'):
                self.ego_x = self._sanitize_value(msg.position.position_local.x)
                self.ego_y = self._sanitize_value(msg.position.position_local.y)
                self.ego_pose_valid = True
                rospy.logdebug(f"自车在map坐标系位置: x={self.ego_x:.2f}, y={self.ego_y:.2f}")
            
            # 获取自车相对于map坐标系的转角（yaw角）
            if hasattr(msg, 'orientation') and hasattr(msg.orientation, 'available') and msg.orientation.available > 0:
                if hasattr(msg.orientation, 'euler_global'):
                    self.ego_yaw = self._sanitize_value(msg.orientation.euler_global.yaw)
                    rospy.logdebug(f"自车相对map坐标系转角: {math.degrees(self.ego_yaw):.1f}°")
                else:
                    rospy.logwarn("未找到'euler_global'字段，无法获取相对于map坐标系的转角信息")

        except AttributeError as e:
            rospy.logwarn(f"解析自车定位信息失败: {str(e)}")
        except Exception as e:
            rospy.logwarn(f"处理自车数据出错: {str(e)}")

    def sd_points_callback(self, msg):
        """处理map坐标系下的导航点数据"""
        try:
            # 解析frame_id中的导航点数据（基于map坐标系）
            nav_data = json.loads(msg.frame_id)
            raw_points = nav_data.get('roi_sd_points', [])
            if not raw_points:
                rospy.logwarn("未找到有效的roi_sd_points数据")
                return
            
            # 验证并存储map坐标系下的导航点
            valid_count = 0
            invalid_count = 0
            self.global_waypoints = []
            
            for i, point in enumerate(raw_points):
                x = point.get('x')
                y = point.get('y')
                
                # 检查坐标有效性
                if x is None or y is None:
                    invalid_count += 1
                    rospy.logwarn(f"导航点 #{i} 缺少x或y坐标")
                    if not self.skip_invalid_points:
                        self.global_waypoints.append((self.default_x, self.default_y))
                    continue
                
                if not (isinstance(x, (int, float)) and isinstance(y, (int, float))):
                    invalid_count += 1
                    rospy.logwarn(f"导航点 #{i} 坐标格式无效: x={x}, y={y}")
                    if not self.skip_invalid_points:
                        self.global_waypoints.append((self.default_x, self.default_y))
                    continue
                
                self.global_waypoints.append((x, y))
                valid_count += 1
            
            rospy.loginfo(f"map坐标系导航点处理完成 - 有效: {valid_count}, 无效: {invalid_count}")
            
            if valid_count == 0:
                rospy.logwarn("没有有效导航点，无法初始化导航线")
                return
                
            self.navigation_initialized = True
            # 记录当前位置，用于后续变化检测
            self.last_ego_x = self.ego_x
            self.last_ego_y = self.ego_y
            self.last_ego_yaw = self.ego_yaw
            
            # 立即更新一次导航线
            self.update_navigation_line()
            
        except json.JSONDecodeError as e:
            rospy.logerr(f"JSON解析失败: {e}")
        except Exception as e:
            rospy.logerr(f"处理导航点出错: {e}")

    def update_navigation_line(self):
        """更新导航线，将map坐标系导航点转换为自车局部坐标（RViz原点）"""
        if not self.global_waypoints or not self.ego_pose_valid:
            return
            
        marker_array = MarkerArray()
        
        # 1. 执行坐标转换（map坐标系→自车局部坐标系）
        local_waypoints = self.transform_map_to_local()
        
        # 2. 创建导航线Marker（以自车为原点，使用base_link坐标系）
        line_marker = Marker()
        line_marker.header.frame_id = self.base_frame  # 自车坐标系
        line_marker.header.stamp = rospy.Time.now()
        line_marker.id = 10000
        line_marker.type = Marker.LINE_STRIP
        line_marker.action = Marker.ADD
        line_marker.pose.orientation.w = 1.0
        line_marker.scale.x = 0.3  # 线宽
        line_marker.color.r = 1.0
        line_marker.color.g = 0.8
        line_marker.color.b = 0.0  # 黄色导航线
        line_marker.color.a = 0.6
        line_marker.lifetime = rospy.Duration(self.update_interval * 2)  # 生命周期略长于更新间隔
        line_marker.points = local_waypoints
        marker_array.markers.append(line_marker)
        
        # 3. 创建导航点Marker
        for i, point in enumerate(local_waypoints):
            point_marker = Marker()
            point_marker.header = line_marker.header
            point_marker.id = 10001 + i
            point_marker.type = Marker.SPHERE
            point_marker.action = Marker.ADD
            point_marker.pose.position = point
            point_marker.scale.x = 0.3
            point_marker.scale.y = 0.3
            point_marker.scale.z = 0.3
            point_marker.color.r = 1.0
            point_marker.color.g = 0.0
            point_marker.color.b = 0.0  # 红色导航点
            point_marker.color.a = 1.0
            point_marker.lifetime = rospy.Duration(self.update_interval * 2)  # 生命周期略长于更新间隔
            marker_array.markers.append(point_marker)
        
        # 4. 自车标记（固定在RViz原点）
        ego_marker = Marker()
        ego_marker.header = line_marker.header
        ego_marker.id = 2000
        ego_marker.type = Marker.ARROW
        ego_marker.action = Marker.ADD
        ego_marker.pose.position = Point(0.0, 0.0, 0.2)  # 自车位于RViz原点
        ego_marker.pose.orientation = self.get_quaternion_from_yaw(self.ego_yaw)
        ego_marker.scale.x = 1.2
        ego_marker.scale.y = 0.2
        ego_marker.scale.z = 0.2
        ego_marker.color.r = 0.0
        ego_marker.color.g = 0.0
        ego_marker.color.b = 1.0  # 蓝色自车箭头
        ego_marker.color.a = 1.0
        ego_marker.lifetime = rospy.Duration(self.update_interval * 2)  # 生命周期略长于更新间隔
        marker_array.markers.append(ego_marker)
        
        self.marker_pub.publish(marker_array)
        rospy.logdebug("导航线已更新")

    def transform_map_to_local(self):
        """将map全局坐标系导航点转换为自车局部坐标系（RViz原点）"""
        local_points = []
        yaw = self.ego_yaw  # 自车相对map坐标系的转角（弧度）
        
        # 预计算三角函数值以提高性能
        cos_yaw = math.cos(yaw)
        sin_yaw = math.sin(yaw)
        
        for (x, y) in self.global_waypoints:
            # 1. 平移：计算导航点相对自车的偏移量
            delta_x = x - self.ego_x
            delta_y = y - self.ego_y
            
            # 2. 旋转：应用旋转变换
            x_local = delta_x * cos_yaw + delta_y * sin_yaw
            y_local = -delta_x * sin_yaw + delta_y * cos_yaw
            
            local_points.append(Point(x_local, y_local, 0.0))
        
        return local_points

    def publish_tf_transform(self, event):
        """发布map到base_link的TF变换，解决RViz坐标系报错"""
        if not self.ego_pose_valid:
            return
            
        # 创建TF变换消息（map → base_link）
        transform = TransformStamped()
        transform.header.stamp = rospy.Time.now()
        transform.header.frame_id = self.map_frame  # 父坐标系：map
        transform.child_frame_id = self.base_frame  # 子坐标系：base_link
        
        # 自车在map坐标系中的位置（base_link相对于map的平移）
        transform.transform.translation.x = self.ego_x
        transform.transform.translation.y = self.ego_y
        transform.transform.translation.z = 0.0
        
        # 自车在map坐标系中的姿态（base_link相对于map的旋转）
        quat = self.get_quaternion_from_yaw(self.ego_yaw)
        transform.transform.rotation = quat
        
        # 发布TF变换
        self.tf_broadcaster.sendTransformMessage(transform)

    def get_quaternion_from_yaw(self, yaw):
        """将yaw角转换为四元数"""
        quat = tf.transformations.quaternion_from_euler(0, 0, yaw)
        return Quaternion(quat[0], quat[1], quat[2], quat[3])

    def _sanitize_value(self, value):
        """确保数值有效"""
        if value is None or math.isnan(value) or math.isinf(value):
            return 0.0
        return value

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
         # 初始化节点
        rospy.init_node('nav_line_visualizer', anonymous=True)
        visualizer = NavLineVisualizer()
        visualizer.run()
    except rospy.ROSInterruptException:
        pass