; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightGroupEnum.msg.html

(cl:defclass <TrafficLightGroupEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightGroupEnum (<TrafficLightGroupEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightGroupEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightGroupEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightGroupEnum> is deprecated: use perception_interface_msgs-msg:TrafficLightGroupEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightGroupEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightGroupEnum>)))
    "Constants for message type '<TrafficLightGroupEnum>"
  '((:TRAFFIC_LIGHT_GROUP_ORIGIN . 0)
    (:TRAFFIC_LIGHT_GROUP_ADDED . 1)
    (:TRAFFIC_LIGHT_GROUP_UNKNOWN . 2)
    (:TRAFFIC_LIGHT_GROUP_RESERVE1 . 3)
    (:TRAFFIC_LIGHT_GROUP_RESERVE2 . 4)
    (:TRAFFIC_LIGHT_GROUP_RESERVE3 . 5)
    (:TRAFFIC_LIGHT_GROUP_RESERVE4 . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightGroupEnum)))
    "Constants for message type 'TrafficLightGroupEnum"
  '((:TRAFFIC_LIGHT_GROUP_ORIGIN . 0)
    (:TRAFFIC_LIGHT_GROUP_ADDED . 1)
    (:TRAFFIC_LIGHT_GROUP_UNKNOWN . 2)
    (:TRAFFIC_LIGHT_GROUP_RESERVE1 . 3)
    (:TRAFFIC_LIGHT_GROUP_RESERVE2 . 4)
    (:TRAFFIC_LIGHT_GROUP_RESERVE3 . 5)
    (:TRAFFIC_LIGHT_GROUP_RESERVE4 . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightGroupEnum>) ostream)
  "Serializes a message object of type '<TrafficLightGroupEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightGroupEnum>) istream)
  "Deserializes a message object of type '<TrafficLightGroupEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightGroupEnum>)))
  "Returns string type for a message object of type '<TrafficLightGroupEnum>"
  "perception_interface_msgs/TrafficLightGroupEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightGroupEnum)))
  "Returns string type for a message object of type 'TrafficLightGroupEnum"
  "perception_interface_msgs/TrafficLightGroupEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightGroupEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightGroupEnum>"
  "614796cdb0a15f6177bb73fd53d01d3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightGroupEnum)))
  "Returns md5sum for a message object of type 'TrafficLightGroupEnum"
  "614796cdb0a15f6177bb73fd53d01d3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightGroupEnum>)))
  "Returns full string definition for message of type '<TrafficLightGroupEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0~%uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1~%uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightGroupEnum)))
  "Returns full string definition for message of type 'TrafficLightGroupEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0~%uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1~%uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5~%uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightGroupEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightGroupEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightGroupEnum
    (cl:cons ':value (value msg))
))
