#!/usr/bin/env python3
import rospy
import math
from visualization_msgs.msg import Marker, MarkerArray
from geometry_msgs.msg import Point
from endpoint_msgs.msg import ChassisReport, BodyReport
from planning_msgs.msg import Planning

class RVizSteeringWheel:
    def __init__(self):
        # 核心参数配置
        self.frame_id = "map"
        self.wheel_radius = 10.0
        self.center_x = 80.0
        self.center_y = 50.0
        self.center_z = 1.0
        self.steering_angle = 0.0
        self.angle_range = math.pi * 3
        self.valid_data_flag = False
        
        # 转向灯状态（分开存储车身报告和规划话题的状态）
        self.body_turn_signal = 0  # 车身报告：0无，1左，2右
        self.planning_turn_signal = 0  # 规划话题：0无，1左，2右
        
        # 箭头外观参数
        self.arrow_length = 6.0
        self.arrow_shaft_width_size = 5  # 转向灯粗细
        self.turn_arrow_head_size = 5.0
        # 新增：规划箭头的额外偏移（避免与车身箭头重叠）
        self.planning_arrow_offset = 10.0  # 规划箭头在方向盘上方的偏移量
        
        # 创建Marker发布者
        self.marker_pub = rospy.Publisher(
            '/steering_wheel_markers', MarkerArray, queue_size=10
        )

        # 订阅话题
        self.chassis_sub = rospy.Subscriber(
            '/vehicle/chassis_report', ChassisReport, self.chassis_report_callback, queue_size=10
        )
        self.body_sub = rospy.Subscriber(
            '/vehicle/body_report', BodyReport, self.body_report_callback, queue_size=10
        )
        self.planning_sub = rospy.Subscriber(
            '/msd/planning/plan', Planning, self.planning_callback, queue_size=10
        )

        # 定时发布Marker
        self.update_timer = rospy.Timer(rospy.Duration(0.1), self.publish_steering_wheel)

    def chassis_report_callback(self, msg):
        """解析方向盘角度"""
        try:
            if msg.steering_report.available != 1:
                if not self.valid_data_flag:
                    rospy.logwarn_throttle(1, "方向盘数据不可用（available≠1），使用默认角度0")
                self.valid_data_flag = False
                return

            report_data = msg.steering_report.steering_report_data
            if not report_data.valid:
                if not self.valid_data_flag:
                    rospy.logwarn_throttle(1, "方向盘数据无效（valid=False），使用默认角度0")
                self.valid_data_flag = False
                return

            raw_angle = report_data.steering_wheel_angle_report
            self.steering_angle = max(-self.angle_range, min(self.angle_range, raw_angle))
            self.valid_data_flag = True
            rospy.logdebug_throttle(1, f"获取有效方向盘角度：{math.degrees(self.steering_angle):.1f}°")

        except AttributeError as e:
            rospy.logerr_throttle(1, f"解析ChassisReport失败：{str(e)}")
            self.valid_data_flag = False
        except Exception as e:
            rospy.logerr_throttle(1, f"处理ChassisReport异常：{str(e)}")
            self.valid_data_flag = False
    
    def body_report_callback(self, msg):
        """解析车身报告的转向灯状态（原转向灯）"""
        try:
            if not hasattr(msg, 'vehicle_light_report'):
                rospy.logwarn_throttle(1, "BodyReport无vehicle_light_report字段")
                return
            
            light_report = msg.vehicle_light_report
            if light_report.available != 1:
                rospy.logdebug_throttle(1, "车身转向灯数据不可用（available≠1）")
                return
            
            light_data = light_report.vehicle_light_report_data
            if not hasattr(light_data, 'turn_signal_type'):
                rospy.logwarn_throttle(1, "vehicle_light_report_data无turn_signal_type字段")
                return
            
            turn_value = light_data.turn_signal_type.value
            if turn_value in [0, 1, 2]:
                self.body_turn_signal = turn_value
                rospy.logdebug_throttle(1, f"车身转向灯状态：{self.body_turn_signal}")
            else:
                rospy.logwarn_throttle(1, f"车身转向灯值无效：{turn_value}")
                
        except AttributeError as e:
            rospy.logerr_throttle(1, f"解析BodyReport失败：{str(e)}")
        except Exception as e:
            rospy.logerr_throttle(1, f"处理BodyReport异常：{str(e)}")

    def planning_callback(self, msg):
        """解析规划话题的转向灯状态（新增专用箭头）"""
        try:
            if hasattr(msg, 'turn_signal_command'):
                cmd = msg.turn_signal_command
                if cmd.available == 1 and hasattr(cmd, 'turn_signal_data'):
                    plan_value = cmd.turn_signal_data.value
                    if plan_value in [0, 1, 2]:
                        self.planning_turn_signal = plan_value
                        rospy.logdebug_throttle(1, f"规划转向灯状态：{self.planning_turn_signal}")
                    else:
                        rospy.logwarn_throttle(1, f"规划转向灯值无效：{plan_value}")
        except Exception as e:
            rospy.logerr_throttle(1, f"解析Planning异常：{str(e)}")

    def calculate_steering_wheel_points(self):
        """计算方向盘外圈点"""
        arc_points = []
        num_points = 72
        for i in range(num_points + 1):
            theta = 2 * math.pi * i / num_points
            x = self.center_x + self.wheel_radius * math.cos(theta)
            y = self.center_y + self.wheel_radius * math.sin(theta)
            z = self.center_z
            arc_points.append(Point(x, y, z))
        return arc_points

    def publish_steering_wheel(self, event):
        """发布所有Marker（含车身转向灯+规划转向灯）"""
        marker_array = MarkerArray()
        marker_id = 0

        # 1. 方向盘外圈
        wheel_outer_marker = Marker()
        wheel_outer_marker.header.frame_id = self.frame_id
        wheel_outer_marker.header.stamp = rospy.Time.now()
        wheel_outer_marker.id = marker_id
        marker_id += 1
        wheel_outer_marker.type = Marker.LINE_STRIP
        wheel_outer_marker.action = Marker.ADD
        wheel_outer_marker.pose.orientation.w = 1.0
        wheel_outer_marker.scale.x = 0.8
        wheel_outer_marker.color.r = 0.0
        wheel_outer_marker.color.g = 0.0
        wheel_outer_marker.color.b = 0.0
        wheel_outer_marker.color.a = 1.0
        wheel_outer_marker.lifetime = rospy.Duration(0.2)
        wheel_outer_marker.points = self.calculate_steering_wheel_points()
        marker_array.markers.append(wheel_outer_marker)

        # 2. 方向盘中心
        wheel_center_marker = Marker()
        wheel_center_marker.header = wheel_outer_marker.header
        wheel_center_marker.id = marker_id
        marker_id += 1
        wheel_center_marker.type = Marker.SPHERE
        wheel_center_marker.action = Marker.ADD
        wheel_center_marker.pose.position = Point(self.center_x, self.center_y, self.center_z)
        wheel_center_marker.pose.orientation.w = 1.0
        wheel_center_marker.scale.x = 5
        wheel_center_marker.scale.y = 5
        wheel_center_marker.scale.z = 5
        wheel_center_marker.color.r = 0.8
        wheel_center_marker.color.g = 0.8
        wheel_center_marker.color.b = 0.8
        wheel_center_marker.color.a = 1.0
        wheel_center_marker.lifetime = rospy.Duration(0.2)
        marker_array.markers.append(wheel_center_marker)

        # 3. 转向指针
        pointer_marker = Marker()
        pointer_marker.header = wheel_outer_marker.header
        pointer_marker.id = marker_id
        marker_id += 1
        pointer_marker.type = Marker.ARROW
        pointer_marker.action = Marker.ADD
        pointer_marker.pose.orientation.w = 1.0
        pointer_marker.points = [
            Point(self.center_x, self.center_y, self.center_z + 0.1),
            Point(
                self.center_x + self.wheel_radius * math.cos(self.steering_angle),
                self.center_y + self.wheel_radius * math.sin(self.steering_angle),
                self.center_z + 0.1
            )
        ]
        pointer_marker.scale.x = 0.8
        pointer_marker.scale.y = 1.5
        pointer_marker.scale.z = 1.5
        pointer_marker.color.r = 1.0
        pointer_marker.color.g = 0.0
        pointer_marker.color.b = 0.0
        pointer_marker.color.a = 1.0
        pointer_marker.lifetime = rospy.Duration(0.2)
        marker_array.markers.append(pointer_marker)

        # 4. 车身报告转向灯（原位置：方向盘侧方）
        # 4.1 车身左转向灯
        body_left_arrow = Marker()
        body_left_arrow.header = wheel_outer_marker.header
        body_left_arrow.id = marker_id
        marker_id += 1
        body_left_arrow.type = Marker.ARROW
        body_left_arrow.action = Marker.ADD
        # 位置：方向盘左侧（原位置）
        body_left_arrow.points = [
            Point(self.center_x, self.center_y + self.wheel_radius + 2.0, self.center_z + 0.2),
            Point(self.center_x, self.center_y + self.wheel_radius + 2.0 + self.arrow_length, self.center_z + 0.2)
        ]
        body_left_arrow.scale.x = self.arrow_shaft_width_size
        body_left_arrow.scale.y = self.turn_arrow_head_size + 1.5
        body_left_arrow.scale.z = self.turn_arrow_head_size - 2
        body_left_arrow.color.r = 1.0 if self.body_turn_signal == 1 else 0.0
        body_left_arrow.color.g = 0.0
        body_left_arrow.color.b = 0.0
        body_left_arrow.color.a = 1.0
        body_left_arrow.lifetime = rospy.Duration(0.2)
        marker_array.markers.append(body_left_arrow)

        # 4.2 车身右转向灯
        body_right_arrow = Marker()
        body_right_arrow.header = wheel_outer_marker.header
        body_right_arrow.id = marker_id
        marker_id += 1
        body_right_arrow.type = Marker.ARROW
        body_right_arrow.action = Marker.ADD
        # 位置：方向盘右侧（原位置）
        body_right_arrow.points = [
            Point(self.center_x, self.center_y - self.wheel_radius - 2.0, self.center_z + 0.2),
            Point(self.center_x, self.center_y - self.wheel_radius - 2.0 - self.arrow_length, self.center_z + 0.2)
        ]
        body_right_arrow.scale = body_left_arrow.scale
        body_right_arrow.color.r = 1.0 if self.body_turn_signal == 2 else 0.0
        body_right_arrow.color.g = 0.0
        body_right_arrow.color.b = 0.0
        body_right_arrow.color.a = 1.0
        body_right_arrow.lifetime = rospy.Duration(0.2)
        marker_array.markers.append(body_right_arrow)

        # 5. 规划话题转向灯（新增：方向盘上方，单独箭头）
        # 5.1 规划左转向灯（上方左侧）
        plan_left_arrow = Marker()
        plan_left_arrow.header = wheel_outer_marker.header
        plan_left_arrow.id = marker_id
        marker_id += 1
        plan_left_arrow.type = Marker.ARROW
        plan_left_arrow.action = Marker.ADD
        # 位置：方向盘上方左侧（偏移避免重叠）
        plan_left_base_y = self.center_y + self.wheel_radius + self.planning_arrow_offset
        plan_left_arrow.points = [
            Point(self.center_x , plan_left_base_y, self.center_z + 0.2),  # 左偏移5单位
            Point(self.center_x , plan_left_base_y + self.arrow_length, self.center_z + 0.2)
        ]
        plan_left_arrow.scale = body_left_arrow.scale
        plan_left_arrow.color.r = 0.5 if self.planning_turn_signal == 1 else 0.0
        plan_left_arrow.color.g = 0.0  # 用绿色区分车身转向灯（红色）
        plan_left_arrow.color.b = 0.0
        plan_left_arrow.color.a = 1.0
        plan_left_arrow.lifetime = rospy.Duration(0.2)
        marker_array.markers.append(plan_left_arrow)

        # 5.2 规划右转向灯（上方右侧）
        plan_right_arrow = Marker()
        plan_right_arrow.header = wheel_outer_marker.header
        plan_right_arrow.id = marker_id
        marker_id += 1
        plan_right_arrow.type = Marker.ARROW
        plan_right_arrow.action = Marker.ADD
        # 位置：方向盘上方右侧（偏移避免重叠）
        plan_right_base_y = self.center_y - self.wheel_radius - self.planning_arrow_offset
        plan_right_arrow.points = [
            Point(self.center_x , plan_right_base_y, self.center_z + 0.2),  # 右偏移5单位
            Point(self.center_x , plan_right_base_y - self.arrow_length, self.center_z + 0.2)
        ]
        plan_right_arrow.scale = body_left_arrow.scale
        plan_right_arrow.color.r = 0.5 if self.planning_turn_signal == 2 else 0.0
        plan_right_arrow.color.g = 0.0  # 绿色区分
        plan_right_arrow.color.b = 0.0
        plan_right_arrow.color.a = 1.0
        plan_right_arrow.lifetime = rospy.Duration(0.2)
        marker_array.markers.append(plan_right_arrow)

        # 6. 文本标注（区分车身和规划状态）
        text_marker = Marker()
        text_marker.header = wheel_outer_marker.header
        text_marker.id = marker_id
        marker_id += 1
        text_marker.type = Marker.TEXT_VIEW_FACING
        text_marker.action = Marker.ADD
        text_marker.pose.position = Point(self.center_x, self.center_y, self.center_z + 5.0)  # 上移避免遮挡
        text_marker.pose.orientation.w = 1.0
        text_marker.scale.z = 3.5
        text_marker.color.r = 0.5
        text_marker.color.g = 0.5
        text_marker.color.b = 1.0
        text_marker.color.a = 1.0
        
        # 车身转向灯文本
        body_text = "无"
        if self.body_turn_signal == 1:
            body_text = "左"
        elif self.body_turn_signal == 2:
            body_text = "右"
        
        # 规划转向灯文本
        plan_text = "无"
        if self.planning_turn_signal == 1:
            plan_text = "左"
        elif self.planning_turn_signal == 2:
            plan_text = "右"
        
        text_marker.text = (f"方向盘角度：{math.degrees(self.steering_angle):.1f}°\n"
                           f"车身转向灯：{body_text}\n"
                           f"规划转向灯：{plan_text}")
        text_marker.lifetime = rospy.Duration(0.2)
        marker_array.markers.append(text_marker)

        self.marker_pub.publish(marker_array)

if __name__ == '__main__':
    try:
        rospy.init_node('rviz_steering_wheel', anonymous=True)
        rospy.loginfo("RViz方向盘可视化节点已启动（含车身+规划转向灯）")
        steering_wheel_visualizer = RVizSteeringWheel()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("RViz方向盘可视化节点正常退出")
    except Exception as e:
        rospy.logfatal(f"RViz方向盘可视化节点启动失败：{str(e)}")
