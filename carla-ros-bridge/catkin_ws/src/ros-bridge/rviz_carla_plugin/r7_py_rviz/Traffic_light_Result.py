#!/usr/bin/env python3
import rospy
from perception_interface_msgs.msg import TrafficLightPerception
from visualization_msgs.msg import Marker, MarkerArray
from std_msgs.msg import ColorRGBA

class TrafficLightVisualizer:
    def __init__(self):
        
        
        self.traffic_light_sub = rospy.Subscriber(
            '/redundancy/worldmodel/traffic_light',
            TrafficLightPerception,
            self.traffic_light_callback
        )
        
        self.marker_pub = rospy.Publisher(
            '/traffic_light_markers',
            MarkerArray,
            queue_size=10
        )
        
        # 类型和颜色映射（保持不变）
        self.pattern_map = {
            0: "CLS_TYPE_NONE", 1: "CLS_TYPE_UNK", 2: "CLS_TYPE_OTH",
            3: "CLS_TYPE_CIRC", 4: "CLS_TYPE_STR8", 5: "CLS_TYPE_LEFT",
            6: "CLS_TYPE_RIGHT", 7: "CLS_TYPE_UTURN", 8: "CLS_TYPE_PEDE",
            9: "CLS_TYPE_NVEH"
        }
        
        self.color_map = {
            0: ("CLS_COLOR_BLK", 0.0, 0.0, 0.0), 1: ("CLS_COLOR_UNK", 0.5, 0.5, 0.5),
            2: ("CLS_COLOR_OTH", 0.8, 0.8, 0.8), 3: ("CLS_COLOR_GRN", 0.0, 1.0, 0.0),
            4: ("CLS_COLOR_RED", 1.0, 0.0, 0.0), 5: ("CLS_COLOR_YLW", 1.0, 1.0, 0.0)
        }

        # 固定位置配置
        self.base_frame = "map"
        self.fixed_position = {"x": 60.0, "y": 20.0, "z": 0.5}
        rospy.loginfo(f"红绿灯固定位置：{self.base_frame} (x={self.fixed_position['x']}, y={self.fixed_position['y']})")
        rospy.loginfo("等待消息...")

    def print_message_structure(self, msg):
        rospy.loginfo("\n===== 交通灯消息结构 =====")
        # rospy.loginfo(f"Header frame_id: {msg.header.frame_id} (代码将强制使用 {self.base_frame})")
        rospy.loginfo(f"决策数量: {len(msg.traffic_light_perception_result.traffic_light_decision)}")

    def create_traffic_light_marker(self, decision, index, marker_id):
        marker = Marker()
        marker.header.frame_id = self.base_frame
        marker.header.stamp = rospy.Time.now()
        marker.ns = "traffic_lights"
        marker.id = marker_id
        marker.type = Marker.CYLINDER
        marker.action = Marker.ADD
        
        # 固定位置
        marker.pose.position.x = self.fixed_position["x"] + index * 1.5
        marker.pose.position.y = self.fixed_position["y"]
        marker.pose.position.z = self.fixed_position["z"]
        marker.pose.orientation.w = 1.0
        
        # 尺寸和颜色
        marker.scale = Marker().scale  # 重置为默认值
        marker.scale.x = 0.8
        marker.scale.y = 0.8
        marker.scale.z = 1.2
        status_val = decision.status.value
        _, r, g, b = self.color_map.get(status_val, ("未知", 0.5, 0.5, 0.5))
        marker.color = ColorRGBA(r=r, g=g, b=b, a=0.8)
        marker.lifetime = rospy.Duration(1.0)
        
        return marker

    def create_text_marker(self, decision, index, marker_id):
        marker = Marker()
        marker.header.frame_id = self.base_frame
        marker.header.stamp = rospy.Time.now()
        marker.ns = "traffic_light_labels"
        marker.id = marker_id
        marker.type = Marker.TEXT_VIEW_FACING
        marker.action = Marker.ADD
        
        marker.pose.position.x = self.fixed_position["x"] + index * 1.5
        marker.pose.position.y = self.fixed_position["y"]
        marker.pose.position.z = self.fixed_position["z"] + 1.5
        marker.pose.orientation.w = 1.0
        
        marker.scale.z = 0.6
        pattern_text = self.pattern_map.get(decision.pattern.value, "未知")
        color_text = self.color_map.get(decision.status.value, ("未知",))[0]
        marker.text = f"{pattern_text}\n{color_text}"
        marker.color = ColorRGBA(r=1.0, g=1.0, b=1.0, a=1.0)
        marker.lifetime = rospy.Duration(1.0)
        
        return marker

    def traffic_light_callback(self, msg):
        self.print_message_structure(msg)
        perception_result = msg.traffic_light_perception_result
        marker_array = MarkerArray()
        
        for index, decision in enumerate(perception_result.traffic_light_decision):
            base_id = index * 2
            main_marker = self.create_traffic_light_marker(decision, index, base_id)
            text_marker = self.create_text_marker(decision, index, base_id + 1)
            marker_array.markers.extend([main_marker, text_marker])
        
        # 发布时添加调试日志
        rospy.loginfo(f"发布 {len(marker_array.markers)} 个标记到 /traffic_light_markers (帧: {self.base_frame})")
        self.marker_pub.publish(marker_array)

    def run(self):
        try:
            rospy.spin()
        except KeyboardInterrupt:
            rospy.loginfo("关闭节点")

if __name__ == '__main__':
    try:
        rospy.init_node('traffic_light_visualizer', anonymous=True)
        visualizer = TrafficLightVisualizer()
        visualizer.run()
    except rospy.ROSInterruptException:
        rospy.logerr("ROS中断异常")
    except Exception as e:
        rospy.logerr(f"错误: {str(e)}")
