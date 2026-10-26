; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightGroupShapeEnum.msg.html

(cl:defclass <TrafficLightGroupShapeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightGroupShapeEnum (<TrafficLightGroupShapeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightGroupShapeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightGroupShapeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightGroupShapeEnum> is deprecated: use perception_interface_msgs-msg:TrafficLightGroupShapeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightGroupShapeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightGroupShapeEnum>)))
    "Constants for message type '<TrafficLightGroupShapeEnum>"
  '((:TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL . 0)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL . 1)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE . 2)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION . 3)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR . 4)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN . 5)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 . 6)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 . 7)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 . 8)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightGroupShapeEnum)))
    "Constants for message type 'TrafficLightGroupShapeEnum"
  '((:TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL . 0)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL . 1)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE . 2)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION . 3)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR . 4)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN . 5)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 . 6)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 . 7)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 . 8)
    (:TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightGroupShapeEnum>) ostream)
  "Serializes a message object of type '<TrafficLightGroupShapeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightGroupShapeEnum>) istream)
  "Deserializes a message object of type '<TrafficLightGroupShapeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightGroupShapeEnum>)))
  "Returns string type for a message object of type '<TrafficLightGroupShapeEnum>"
  "perception_interface_msgs/TrafficLightGroupShapeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightGroupShapeEnum)))
  "Returns string type for a message object of type 'TrafficLightGroupShapeEnum"
  "perception_interface_msgs/TrafficLightGroupShapeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightGroupShapeEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightGroupShapeEnum>"
  "cebcc1bed0ca870c6dde53966362fb1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightGroupShapeEnum)))
  "Returns md5sum for a message object of type 'TrafficLightGroupShapeEnum"
  "cebcc1bed0ca870c6dde53966362fb1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightGroupShapeEnum>)))
  "Returns full string definition for message of type '<TrafficLightGroupShapeEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightGroupShapeEnum)))
  "Returns full string definition for message of type 'TrafficLightGroupShapeEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightGroupShapeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightGroupShapeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightGroupShapeEnum
    (cl:cons ':value (value msg))
))
