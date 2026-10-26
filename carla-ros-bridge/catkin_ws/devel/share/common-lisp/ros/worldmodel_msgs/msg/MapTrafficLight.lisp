; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude MapTrafficLight.msg.html

(cl:defclass <MapTrafficLight> (roslisp-msg-protocol:ros-message)
  ((boundary
    :reader boundary
    :initarg :boundary
    :type (cl:vector perception_interface_msgs-msg:Point3d)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3d :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3d)))
   (pattern
    :reader pattern
    :initarg :pattern
    :type perception_interface_msgs-msg:TrafficLightPatternEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightPatternEnum))
   (on_route
    :reader on_route
    :initarg :on_route
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MapTrafficLight (<MapTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<MapTrafficLight> is deprecated: use worldmodel_msgs-msg:MapTrafficLight instead.")))

(cl:ensure-generic-function 'boundary-val :lambda-list '(m))
(cl:defmethod boundary-val ((m <MapTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:boundary-val is deprecated.  Use worldmodel_msgs-msg:boundary instead.")
  (boundary m))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <MapTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:pattern-val is deprecated.  Use worldmodel_msgs-msg:pattern instead.")
  (pattern m))

(cl:ensure-generic-function 'on_route-val :lambda-list '(m))
(cl:defmethod on_route-val ((m <MapTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:on_route-val is deprecated.  Use worldmodel_msgs-msg:on_route instead.")
  (on_route m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapTrafficLight>) ostream)
  "Serializes a message object of type '<MapTrafficLight>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boundary))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boundary))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pattern) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on_route) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapTrafficLight>) istream)
  "Deserializes a message object of type '<MapTrafficLight>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boundary) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boundary)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pattern) istream)
    (cl:setf (cl:slot-value msg 'on_route) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapTrafficLight>)))
  "Returns string type for a message object of type '<MapTrafficLight>"
  "worldmodel_msgs/MapTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapTrafficLight)))
  "Returns string type for a message object of type 'MapTrafficLight"
  "worldmodel_msgs/MapTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapTrafficLight>)))
  "Returns md5sum for a message object of type '<MapTrafficLight>"
  "92cc1ecc74c79b99531efbce87361743")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapTrafficLight)))
  "Returns md5sum for a message object of type 'MapTrafficLight"
  "92cc1ecc74c79b99531efbce87361743")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapTrafficLight>)))
  "Returns full string definition for message of type '<MapTrafficLight>"
  (cl:format cl:nil "perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapTrafficLight)))
  "Returns full string definition for message of type 'MapTrafficLight"
  (cl:format cl:nil "perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapTrafficLight>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boundary) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pattern))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'MapTrafficLight
    (cl:cons ':boundary (boundary msg))
    (cl:cons ':pattern (pattern msg))
    (cl:cons ':on_route (on_route msg))
))
