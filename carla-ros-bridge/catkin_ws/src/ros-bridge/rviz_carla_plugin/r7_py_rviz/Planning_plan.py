#!/usr/bin/env python3
import rospy
import math
import tf.transformations
from visualization_msgs.msg import Marker, MarkerArray
from geometry_msgs.msg import Point  # 导入Point类用于创建独立点
from planning_msgs.msg import Planning
from mla_localization_msgs.msg import MLALocalization
from std_msgs.msg import ColorRGBA

class PathVisualizer:
    # 参数配置（保持不变）
    PATH_LINE_WIDTH = 0.2          
    PATH_LINE_COLOR = (1.0, 1.0, 0.0, 1.0)
    WAYPOINT_SIZE = 0.1             
    WAYPOINT_COLOR = (1.0, 0.0, 0.0, 1.0)
    HEADING_ARROW_LENGTH = 0.8      
    HEADING_ARROW_COLOR = (1.0, 0.0, 0.0, 1.0)
    Z_OFFSET = 0.1                  
    QUEUE_SIZE = 10                 
    FRAME_ID = "map"          
    IDENTITY_QUATERNION = (0.0, 0.0, 0.0, 1.0)

    def __init__(self):
        # rospy.init_node('path_visualizer', anonymous=True)
        
        
        self.marker_pub = rospy.Publisher(
            '/planning/planpath',
            MarkerArray,
            queue_size=self.QUEUE_SIZE
        )
        
        self._init_subscribers()
        self.latest_path = None
        
        # 自车定位信息
        self.ego_x = 0.0
        self.ego_y = 0.0
        self.ego_yaw = 0.0
        self.ego_available = False
        self.orientation_available = False

    def _init_subscribers(self):
        self.plan_sub = rospy.Subscriber(
            '/msd/planning/plan',
            Planning,
            self.path_callback,
            queue_size=self.QUEUE_SIZE
        )
        self.ego_sub = rospy.Subscriber(
            '/mla/egopose', 
            MLALocalization, 
            self.egopose_callback,
            queue_size=10
        )

    def egopose_callback(self, msg):
        """处理自车定位消息（使用euler_local）"""
        try:
            # 提取位置信息
            if hasattr(msg.position, 'available') and msg.position.available > 0:
                if hasattr(msg.position, 'position_local'):
                    self.ego_x = self._sanitize_value(msg.position.position_local.x)
                    self.ego_y = self._sanitize_value(msg.position.position_local.y)
                    self.ego_available = True
                else:
                    rospy.logwarn("自车定位消息中没有'position_local'字段")
            else:
                self.ego_available = False

            # 提取local坐标系下的转角
            if hasattr(msg, 'orientation') and hasattr(msg.orientation, 'available') and msg.orientation.available > 0:
                if hasattr(msg.orientation, 'euler_local'):
                    self.ego_yaw = self._sanitize_value(msg.orientation.euler_local.yaw)
                    self.orientation_available = True
                else:
                    rospy.logwarn("自车定位消息中没有'euler_local'字段")
            else:
                self.orientation_available = False

        except Exception as e:
            rospy.logwarn(f"解析自车定位消息出错: {str(e)}")
            self.ego_available = False
            self.orientation_available = False

    def _is_valid_value(self, value):
        return not (math.isnan(value) or math.isinf(value) or abs(value) > 100000.0)

    def _sanitize_value(self, value, default=0.0):
        return value if self._is_valid_value(value) else default

    def world_to_relative(self, x_world, y_world):
        """坐标转换（包含平移和旋转）"""
        if not (self.ego_available and self.orientation_available):
            return (0.0, 0.0)
        
        dx = x_world - self.ego_x
        dy = y_world - self.ego_y
        
        cos_yaw = math.cos(-self.ego_yaw)
        sin_yaw = math.sin(-self.ego_yaw)
        
        x_rel = dx * cos_yaw - dy * sin_yaw
        y_rel = dx * sin_yaw + dy * cos_yaw
        
        return (x_rel, y_rel)

    def path_callback(self, msg):
        # frame_id[]
        print(type(msg.header.frame_id))
        print(msg.trajectory.position_enu)
        """处理规划路径消息"""
        try:
            if not hasattr(msg, 'trajectory') or not hasattr(msg.trajectory, 'path'):
                rospy.logwarn("消息格式错误，缺少'trajectory'或'path'字段")
                return
                
            path = msg.trajectory.path
            if len(path) == 0:
                rospy.logwarn("path为空，不绘制轨迹")
                return
                
            if not hasattr(path[0], 'position_enu'):
                rospy.logwarn("路径点中没有'position_enu'字段")
                return
                
            self.latest_path = path
            self.publish_path_markers()
            
        except Exception as e:
            rospy.logerr(f"处理消息时出错: {str(e)}")

    def publish_path_markers(self):
        if not self.latest_path or not (self.ego_available and self.orientation_available):
            return
            
        marker_array = MarkerArray()
        current_id = 1000000
        
        # 清除之前的标记
        clear_marker = Marker()
        clear_marker.header.frame_id = self.FRAME_ID
        clear_marker.header.stamp = rospy.Time.now()
        clear_marker.id = current_id
        clear_marker.action = Marker.DELETEALL
        clear_marker.pose.orientation.x = self.IDENTITY_QUATERNION[0]
        clear_marker.pose.orientation.y = self.IDENTITY_QUATERNION[1]
        clear_marker.pose.orientation.z = self.IDENTITY_QUATERNION[2]
        clear_marker.pose.orientation.w = self.IDENTITY_QUATERNION[3]
        marker_array.markers.append(clear_marker)
        current_id += 1
        
        # 轨迹线（相对系）
        line_marker = Marker()
        line_marker.header.frame_id = self.FRAME_ID
        line_marker.header.stamp = rospy.Time.now()
        line_marker.id = current_id
        line_marker.type = Marker.LINE_STRIP
        line_marker.action = Marker.ADD
        line_marker.scale.x = self.PATH_LINE_WIDTH
        line_marker.color = self._get_color_msg(self.PATH_LINE_COLOR)
        line_marker.pose.orientation.x = self.IDENTITY_QUATERNION[0]
        line_marker.pose.orientation.y = self.IDENTITY_QUATERNION[1]
        line_marker.pose.orientation.z = self.IDENTITY_QUATERNION[2]
        line_marker.pose.orientation.w = self.IDENTITY_QUATERNION[3]
        current_id += 1
        
        # 路径点（相对系）
        point_marker = Marker()
        point_marker.header.frame_id = self.FRAME_ID
        point_marker.header.stamp = rospy.Time.now()
        point_marker.id = current_id
        point_marker.type = Marker.SPHERE_LIST
        point_marker.action = Marker.ADD
        point_marker.scale.x = point_marker.scale.y = point_marker.scale.z = self.WAYPOINT_SIZE
        point_marker.color = self._get_color_msg(self.WAYPOINT_COLOR)
        point_marker.pose.orientation.x = self.IDENTITY_QUATERNION[0]
        point_marker.pose.orientation.y = self.IDENTITY_QUATERNION[1]
        point_marker.pose.orientation.z = self.IDENTITY_QUATERNION[2]
        point_marker.pose.orientation.w = self.IDENTITY_QUATERNION[3]
        current_id += 1
        
        # 处理每个路径点（关键修复：为每个点创建独立的Point对象）
        for idx, path_point in enumerate(self.latest_path):
            x_world = self._sanitize_value(path_point.position_enu.x)
            print(x_world)
            y_world = self._sanitize_value(path_point.position_enu.y)
            print(y_world)
            x_rel, y_rel = self.world_to_relative(x_world, y_world)
            z_rel = self.Z_OFFSET
            
            # 1. 轨迹线点：创建新的Point对象（修复核心）
            line_point = Point()  # 新建独立点对象
            line_point.x = x_rel
            line_point.y = y_rel
            line_point.z = z_rel
            line_marker.points.append(line_point)  # 添加独立点
            
            # 2. 路径点：创建新的Point对象（修复核心）
            point = Point()  # 新建独立点对象
            point.x = x_rel
            point.y = y_rel
            point.z = z_rel
            point_marker.points.append(point)  # 添加独立点
            
            # 3. 方向箭头（本身已正确）
            if idx % 8 == 0:
                heading_yaw = self._sanitize_value(getattr(path_point, 'heading_yaw', 0.0))
                relative_heading = heading_yaw - self.ego_yaw
                
                arrow_marker = Marker()
                arrow_marker.header.frame_id = self.FRAME_ID
                arrow_marker.header.stamp = rospy.Time.now()
                arrow_marker.id = current_id
                arrow_marker.type = Marker.ARROW
                arrow_marker.action = Marker.ADD
                arrow_marker.pose.position.x = x_rel  # 直接赋值，独立坐标
                arrow_marker.pose.position.y = y_rel
                arrow_marker.pose.position.z = z_rel + 0.05
                quat = tf.transformations.quaternion_from_euler(0, 0, relative_heading)
                arrow_marker.pose.orientation.x = quat[0]
                arrow_marker.pose.orientation.y = quat[1]
                arrow_marker.pose.orientation.z = quat[2]
                arrow_marker.pose.orientation.w = quat[3]
                arrow_marker.scale.x = self.HEADING_ARROW_LENGTH
                arrow_marker.scale.y = 0.15
                arrow_marker.scale.z = 0.3
                arrow_marker.color = self._get_color_msg(self.HEADING_ARROW_COLOR)
                marker_array.markers.append(arrow_marker)
                current_id += 1
        
        marker_array.markers.append(line_marker)
        marker_array.markers.append(point_marker)
        self.marker_pub.publish(marker_array)
        rospy.loginfo("轨迹发布完成")

    def _get_color_msg(self, color_tuple):
        color = ColorRGBA()
        color.r, color.g, color.b, color.a = color_tuple
        return color

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        rospy.init_node('path_visualizer', anonymous=True)
        rospy.loginfo("Path init_node")
        visualizer = PathVisualizer()
        visualizer.run()
    except rospy.ROSInterruptException:
        rospy.loginfo("Path visualizer interrupted.")
    except Exception as e:
        rospy.logfatal(f"Path visualizer crashed: {str(e)}")
    