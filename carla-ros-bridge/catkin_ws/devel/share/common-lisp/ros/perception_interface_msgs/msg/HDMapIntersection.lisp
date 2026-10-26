; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude HDMapIntersection.msg.html

(cl:defclass <HDMapIntersection> (roslisp-msg-protocol:ros-message)
  ((distance_to_stop_line
    :reader distance_to_stop_line
    :initarg :distance_to_stop_line
    :type perception_interface_msgs-msg:HDMapIntersectionStopLine
    :initform (cl:make-instance 'perception_interface_msgs-msg:HDMapIntersectionStopLine))
   (traffic_light_groups
    :reader traffic_light_groups
    :initarg :traffic_light_groups
    :type (cl:vector perception_interface_msgs-msg:HDMapTrafficLightGroup)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:HDMapTrafficLightGroup :initial-element (cl:make-instance 'perception_interface_msgs-msg:HDMapTrafficLightGroup))))
)

(cl:defclass HDMapIntersection (<HDMapIntersection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HDMapIntersection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HDMapIntersection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<HDMapIntersection> is deprecated: use perception_interface_msgs-msg:HDMapIntersection instead.")))

(cl:ensure-generic-function 'distance_to_stop_line-val :lambda-list '(m))
(cl:defmethod distance_to_stop_line-val ((m <HDMapIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:distance_to_stop_line-val is deprecated.  Use perception_interface_msgs-msg:distance_to_stop_line instead.")
  (distance_to_stop_line m))

(cl:ensure-generic-function 'traffic_light_groups-val :lambda-list '(m))
(cl:defmethod traffic_light_groups-val ((m <HDMapIntersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_light_groups-val is deprecated.  Use perception_interface_msgs-msg:traffic_light_groups instead.")
  (traffic_light_groups m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HDMapIntersection>) ostream)
  "Serializes a message object of type '<HDMapIntersection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distance_to_stop_line) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_groups))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HDMapIntersection>) istream)
  "Deserializes a message object of type '<HDMapIntersection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distance_to_stop_line) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:HDMapTrafficLightGroup))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HDMapIntersection>)))
  "Returns string type for a message object of type '<HDMapIntersection>"
  "perception_interface_msgs/HDMapIntersection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HDMapIntersection)))
  "Returns string type for a message object of type 'HDMapIntersection"
  "perception_interface_msgs/HDMapIntersection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HDMapIntersection>)))
  "Returns md5sum for a message object of type '<HDMapIntersection>"
  "80cd972c8e61675f20e8e962101def1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HDMapIntersection)))
  "Returns md5sum for a message object of type 'HDMapIntersection"
  "80cd972c8e61675f20e8e962101def1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HDMapIntersection>)))
  "Returns full string definition for message of type '<HDMapIntersection>"
  (cl:format cl:nil "perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line~%perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersectionStopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLightGroup~%uint64 track_id~%perception_interface_msgs/HDMapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HDMapIntersection)))
  "Returns full string definition for message of type 'HDMapIntersection"
  (cl:format cl:nil "perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line~%perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups~%~%================================================================================~%MSG: perception_interface_msgs/HDMapIntersectionStopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLightGroup~%uint64 track_id~%perception_interface_msgs/HDMapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: perception_interface_msgs/HDMapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HDMapIntersection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distance_to_stop_line))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HDMapIntersection>))
  "Converts a ROS message object to a list"
  (cl:list 'HDMapIntersection
    (cl:cons ':distance_to_stop_line (distance_to_stop_line msg))
    (cl:cons ':traffic_light_groups (traffic_light_groups msg))
))
