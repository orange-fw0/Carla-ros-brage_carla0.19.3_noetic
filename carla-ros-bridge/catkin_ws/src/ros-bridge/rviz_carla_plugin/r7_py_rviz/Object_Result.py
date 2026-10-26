#!/usr/bin/env python3
import rospy
import tf.transformations
import math  # 引入数学库用于检查NaN和无穷大
from perception_interface_msgs.msg import PerceptionFusionObjectResult
from visualization_msgs.msg import Marker, MarkerArray
from framework_status_msgs.msg import ModuleStatus

class ObjectVisualizer:
    # 常量定义
    PUBLISH_RATE = 30
    SELF_CAR_SIZE = (5.0, 1.9, 1.5)
    TEXT_SCALE = 0.8
    SELF_CAR_TEXT_SCALE = 1.5
    TEXT_OFFSET_Z = 0.3
    QUEUE_SIZE = PUBLISH_RATE * 3
    MAX_MARKERS_PER_FRAME = 100  # 每帧最大标记数量
    POSITION_LIMIT = 1000.0  # 位置坐标的合理范围上限

    def __init__(self):
        rospy.loginfo("Object visualizer (fixed position version) initialized.")
        
        # 发布MarkerArray类型
        self.marker_array_pub = rospy.Publisher(
            '/fusion/object_auto', 
            MarkerArray, 
            queue_size=self.QUEUE_SIZE
        )
        
        self._init_subscribers()
        self.status = 0
        self.frame_count = 0  # 帧计数器，用于生成唯一ID
        self._init_color_maps()
        self._init_type_names()
        self.invalid_num = 0

    def _init_subscribers(self):
        rospy.Subscriber(
            '/perception/fusion/object_auto', 
            PerceptionFusionObjectResult, 
            self.obj_callback,
            queue_size=self.QUEUE_SIZE
        )
        rospy.Subscriber(
            '/control/function_module_status', 
            ModuleStatus, 
            self.module_status_callback,
            queue_size=10
        )

    def _init_color_maps(self):
        self.general_type_colors = {
            0: (0.0, 1.0, 0.0, 0.8), 1: (1.0, 0.0, 0.0, 0.8),
            2: (0.0, 0.0, 1.0, 0.8), 3: (1.0, 1.0, 0.0, 0.8),
            4: (1.0, 0.5, 0.0, 0.8), 5: (0.5, 0.0, 0.5, 0.8)
        }
        self.vehicle_type_colors = {
            0: (0.0, 1.0, 1.0, 0.8), 1: (0.0, 0.8, 0.0, 0.8),
            2: (0.0, 0.5, 0.0, 0.8), 3: (0.0, 0.3, 0.0, 0.8),
            4: (0.2, 0.6, 0.2, 0.8), 5: (0.4, 0.8, 0.4, 0.8)
        }
        self.vehicle_sub_type_colors = {
            0: (0.0, 1.0, 1.0, 0.8), 1: (0.0, 0.9, 0.0, 0.8),
            2: (0.0, 0.7, 0.2, 0.8), 3: (0.0, 0.6, 0.3, 0.8),
            4: (0.0, 0.5, 0.4, 0.8)
        }

    def _init_type_names(self):
        self.general_names = {0: "veh", 1: "ped", 2: "cyc", 3: "tfl", 4: "tfs", 5: "other"}
        self.vehicle_names = {0: "unknown", 1: "car", 2: "bus", 3: "truck", 4: "van", 5: "motor"}
        self.vehicle_sub_names = {0: "unknown", 1: "car", 2: "SUV", 3: "van", 4: "jeep"}

    def get_unique_id(self, local_id):
        """生成基于帧的唯一ID，确保跨帧不重复"""
        return self.frame_count * self.MAX_MARKERS_PER_FRAME + local_id

    def euler_to_quaternion(self, roll=0.0, pitch=0.0, yaw=0.0):
        # 检查角度是否有效
        if not self._is_valid_value(roll) or not self._is_valid_value(pitch) or not self._is_valid_value(yaw):
            rospy.logwarn("Invalid angle values, using (0,0,0) instead")
            return (0.0, 0.0, 0.0, 1.0)
        return tf.transformations.quaternion_from_euler(roll, pitch, yaw)

    def _is_valid_value(self, value):
        """检查值是否为有效的浮点数（非NaN且非无穷大）"""
        return not (math.isnan(value) or math.isinf(value) or abs(value) > self.POSITION_LIMIT)

    def _sanitize_value(self, value, default=0.0):
        """将无效值替换为默认值"""
        if self._is_valid_value(value):
            return value
        # print("++++++++++++value:",value)
        return default

    def module_status_callback(self, msg):
        self.status = msg.status

    def add_self_car_markers(self, marker_array, local_id):
        """添加自车标记到MarkerArray，返回下一个可用ID"""
        # 自车立方体
        car_marker = Marker()
        car_marker.header.frame_id = "map"
        car_marker.header.stamp = rospy.Time.now()
        car_marker.id = self.get_unique_id(local_id)
        car_marker.type = Marker.CUBE
        car_marker.action = Marker.ADD
        car_marker.scale.x, car_marker.scale.y, car_marker.scale.z = self.SELF_CAR_SIZE
        car_marker.pose.position.x = 0.0
        car_marker.pose.position.y = 0.0
        car_marker.pose.position.z = 0.0
        quat = self.euler_to_quaternion()
        car_marker.pose.orientation.x = quat[0]
        car_marker.pose.orientation.y = quat[1]
        car_marker.pose.orientation.z = quat[2]
        car_marker.pose.orientation.w = quat[3]

        # 自车文本
        text_marker = Marker()
        text_marker.header.frame_id = "map"
        text_marker.header.stamp = rospy.Time.now()
        text_marker.id = self.get_unique_id(local_id + 1)
        text_marker.type = Marker.TEXT_VIEW_FACING
        text_marker.action = Marker.ADD
        text_marker.pose.position.x = 0.0
        text_marker.pose.position.y = 0.0
        text_marker.pose.position.z = 2.0
        text_marker.pose.orientation.w = 1.0
        text_marker.scale.z = self.SELF_CAR_TEXT_SCALE
        text_marker.color.r = 1.0
        text_marker.color.g = 1.0
        text_marker.color.b = 1.0
        text_marker.color.a = 1.0

        # 设置自车颜色和文本
        if self.status == 2:
            car_marker.color.r, car_marker.color.g, car_marker.color.b, car_marker.color.a = 1.0, 0.0, 0.0, 0.8
            text_marker.text = "AD"
        else:
            car_marker.color.r, car_marker.color.g, car_marker.color.b, car_marker.color.a = 0.0, 1.0, 0.0, 0.8
            text_marker.text = "M"

        marker_array.markers.append(car_marker)
        marker_array.markers.append(text_marker)
        return local_id + 2  # 消耗2个ID

    def get_object_color(self, obj):
        try:
            type_info = obj.type_info
            if type_info.general_object_type.value == 0:
                if type_info.vehicle_sub_type.value in self.vehicle_sub_type_colors:
                    return self.vehicle_sub_type_colors[type_info.vehicle_sub_type.value]
                return self.vehicle_type_colors.get(type_info.vehicle_type.value, self.general_type_colors[0])
            return self.general_type_colors.get(type_info.general_object_type.value, (0.5, 0.5, 0.5, 0.8))
        except AttributeError as e:
            rospy.logwarn(f"Invalid type info: {e}, using default color")
            return (0.5, 0.5, 0.5, 0.8)

    def obj_callback(self, msg):
        try:
            self.frame_count += 1
            current_local_id = 0  # 帧内ID计数器
            marker_array = MarkerArray()  # 每帧创建一个新的MarkerArray
            
            # 添加清除上一帧的标记
            clear_marker = Marker()
            clear_marker.header.frame_id = "map"
            clear_marker.header.stamp = rospy.Time.now()
            clear_marker.id = 0
            clear_marker.action = Marker.DELETEALL
            marker_array.markers.append(clear_marker)
            current_local_id += 1  # 清除标记占用1个ID
            
            # 添加自车标记
            current_local_id = self.add_self_car_markers(marker_array, current_local_id)
            
            # 添加所有目标标记
            for obj in msg.perception_fusion_objects_data:
                if current_local_id + 2 > self.MAX_MARKERS_PER_FRAME:
                    rospy.logwarn("Exceeded max markers per frame, some objects will not be displayed")
                    break
                current_local_id = self.add_object_marker(marker_array, obj, current_local_id)
            
            # 批量发布整个MarkerArray
            print('+++++++++++++++ invaild num:',self.invalid_num)
            self.marker_array_pub.publish(marker_array)
            self.invalid_num = 0
            
        except Exception as e:
            rospy.logwarn(f"Error processing frame {self.frame_count}: {str(e)}")

    def add_object_marker(self, marker_array, obj, local_id):
        """添加单个目标的标记到MarkerArray，返回下一个可用ID"""
        try:
            track_id = obj.track_id
            
            # 处理形状信息（带有效性检查）
            # if(hasattr(obj, 'shape')):
            #     print('!!!!!!!! h:',obj.shape.height)
            #     print('!!!!!!!! w:',obj.shape.length)
            #     print('!!!!!!!! l:',obj.shape.width)
            # else:
            #     print('!!!!!!!! no shape')
            shape = obj.shape if hasattr(obj, 'shape') else None
            # print('!!!!!!!!!!!!! shape:',shape)
            height = self._sanitize_value(shape.height if shape else 0.1, 0.1)
            length = self._sanitize_value(shape.length if shape else 0.1, 0.1)
            width = self._sanitize_value(shape.width if shape else 0.1, 0.1)
            
            # 处理位置信息（带有效性检查）
            if(hasattr(obj, 'relative_position')):
                # print('!!!!!!!! x:',obj.relative_position.x)
                # print('!!!!!!!! y:',obj.relative_position.y)
                # print('!!!!!!!! z:',obj.relative_position.z)
                if(obj.relative_position == None):
                    self.invalid_num = self.invalid_num+1
                elif(math.isnan(obj.relative_position.x) or math.isnan(obj.relative_position.y) or math.isnan(obj.relative_position.z)):
                    self.invalid_num = self.invalid_num+1
                    height = 0.2
                    length = 0.2
                    width = 0.2
                    # return local_id

            
            pos = obj.relative_position if hasattr(obj, 'relative_position') else None
            

            # print('!!!!!!!!!!!!! pos:',pos)
            x = self._sanitize_value(pos.x if pos else 0.0)
            y = self._sanitize_value(pos.y if pos else 0.0)
            z = self._sanitize_value(pos.z if pos else 0.0)
            
            # 处理角度信息（带有效性检查）
            # if(hasattr(obj, 'relative_heading_yaw')):
            #     print('!!!!!!!! yaw:',obj.relative_heading_yaw)
            # else:
            #     print('!!!!!!!! no yaw')
            yaw = self._sanitize_value(
                obj.relative_heading_yaw if hasattr(obj, 'relative_heading_yaw') else 0.0
            )
            # print('!!!!!!!!!!!!! yaw:',yaw)
            
            # 检查是否有无效值被替换
            if not self._is_valid_value(x) or not self._is_valid_value(y) or not self._is_valid_value(z):
                rospy.logwarn(f"Object {track_id} has invalid position, corrected to ({x}, {y}, {z})")
                
        except AttributeError as e:
            rospy.logdebug(f"Skipping invalid object: {e}")
            return local_id
        
        color = self.get_object_color(obj)
        
        # 创建立方体标记
        cube_marker = Marker()
        cube_marker.header.frame_id = "map"
        cube_marker.header.stamp = rospy.Time.now()
        cube_marker.id = self.get_unique_id(local_id)
        # cube_marker.id = track_id
        cube_marker.type = Marker.CUBE
        cube_marker.action = Marker.ADD
        cube_marker.pose.position.x = x
        cube_marker.pose.position.y = y
        cube_marker.pose.position.z = z
        quat = self.euler_to_quaternion(yaw=yaw)
        cube_marker.pose.orientation.x = quat[0]
        cube_marker.pose.orientation.y = quat[1]
        cube_marker.pose.orientation.z = quat[2]
        cube_marker.pose.orientation.w = quat[3]
        cube_marker.scale.x = length
        cube_marker.scale.y = width
        cube_marker.scale.z = height
        cube_marker.color.r, cube_marker.color.g, cube_marker.color.b, cube_marker.color.a = color

        # 创建文本标记
        text_marker = Marker()
        text_marker.header.frame_id = "map"
        text_marker.header.stamp = rospy.Time.now()
        # text_marker.id = self.get_unique_id(local_id + 1)
        text_marker.id = track_id
        text_marker.type = Marker.TEXT_VIEW_FACING
        text_marker.action = Marker.ADD
        text_marker.pose.position.x = x
        text_marker.pose.position.y = y
        text_marker.pose.position.z = z + height/2 + self.TEXT_OFFSET_Z
        text_marker.pose.orientation.w = 1.0
        text_marker.text = f"(ID:{track_id})"
        text_marker.scale.z = self.TEXT_SCALE
        text_marker.color.r = 1.0
        text_marker.color.g = 1.0
        text_marker.color.b = 1.0
        text_marker.color.a = 1.0

        marker_array.markers.append(cube_marker)
        marker_array.markers.append(text_marker)
        return local_id + 2  # 每个目标消耗2个ID

if __name__ == '__main__':
    try:
        rospy.init_node('object_visualizer_fixed_position', anonymous=True)
        visualizer = ObjectVisualizer()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("Node interrupted.")
    except Exception as e:
        rospy.logfatal(f"Node crashed: {str(e)}")
    