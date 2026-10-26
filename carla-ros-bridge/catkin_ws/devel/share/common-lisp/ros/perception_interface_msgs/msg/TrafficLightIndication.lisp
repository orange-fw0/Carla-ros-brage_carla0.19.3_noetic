; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightIndication.msg.html

(cl:defclass <TrafficLightIndication> (roslisp-msg-protocol:ros-message)
  ((bounding_box_3d
    :reader bounding_box_3d
    :initarg :bounding_box_3d
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (pattern
    :reader pattern
    :initarg :pattern
    :type perception_interface_msgs-msg:TrafficLightPatternEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficLightPatternEnum)))
)

(cl:defclass TrafficLightIndication (<TrafficLightIndication>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightIndication>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightIndication)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightIndication> is deprecated: use perception_interface_msgs-msg:TrafficLightIndication instead.")))

(cl:ensure-generic-function 'bounding_box_3d-val :lambda-list '(m))
(cl:defmethod bounding_box_3d-val ((m <TrafficLightIndication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:bounding_box_3d-val is deprecated.  Use perception_interface_msgs-msg:bounding_box_3d instead.")
  (bounding_box_3d m))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <TrafficLightIndication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:pattern-val is deprecated.  Use perception_interface_msgs-msg:pattern instead.")
  (pattern m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightIndication>) ostream)
  "Serializes a message object of type '<TrafficLightIndication>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bounding_box_3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bounding_box_3d))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pattern) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightIndication>) istream)
  "Deserializes a message object of type '<TrafficLightIndication>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bounding_box_3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bounding_box_3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pattern) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightIndication>)))
  "Returns string type for a message object of type '<TrafficLightIndication>"
  "perception_interface_msgs/TrafficLightIndication")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightIndication)))
  "Returns string type for a message object of type 'TrafficLightIndication"
  "perception_interface_msgs/TrafficLightIndication")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightIndication>)))
  "Returns md5sum for a message object of type '<TrafficLightIndication>"
  "0beed876db032f4b25f262014ae4840f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightIndication)))
  "Returns md5sum for a message object of type 'TrafficLightIndication"
  "0beed876db032f4b25f262014ae4840f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightIndication>)))
  "Returns full string definition for message of type '<TrafficLightIndication>"
  (cl:format cl:nil "perception_interface_msgs/Point3f[] bounding_box_3d~%perception_interface_msgs/TrafficLightPatternEnum pattern~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightIndication)))
  "Returns full string definition for message of type 'TrafficLightIndication"
  (cl:format cl:nil "perception_interface_msgs/Point3f[] bounding_box_3d~%perception_interface_msgs/TrafficLightPatternEnum pattern~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightIndication>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bounding_box_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pattern))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightIndication>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightIndication
    (cl:cons ':bounding_box_3d (bounding_box_3d msg))
    (cl:cons ':pattern (pattern msg))
))
