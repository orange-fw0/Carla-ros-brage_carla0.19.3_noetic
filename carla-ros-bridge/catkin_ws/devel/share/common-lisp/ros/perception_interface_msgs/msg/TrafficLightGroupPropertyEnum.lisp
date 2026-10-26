; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightGroupPropertyEnum.msg.html

(cl:defclass <TrafficLightGroupPropertyEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightGroupPropertyEnum (<TrafficLightGroupPropertyEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightGroupPropertyEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightGroupPropertyEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightGroupPropertyEnum> is deprecated: use perception_interface_msgs-msg:TrafficLightGroupPropertyEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightGroupPropertyEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightGroupPropertyEnum>)))
    "Constants for message type '<TrafficLightGroupPropertyEnum>"
  '((:TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION . 0)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL . 1)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN . 2)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED . 3)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 . 4)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 . 5)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 . 6)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightGroupPropertyEnum)))
    "Constants for message type 'TrafficLightGroupPropertyEnum"
  '((:TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION . 0)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL . 1)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN . 2)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED . 3)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 . 4)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 . 5)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 . 6)
    (:TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightGroupPropertyEnum>) ostream)
  "Serializes a message object of type '<TrafficLightGroupPropertyEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightGroupPropertyEnum>) istream)
  "Deserializes a message object of type '<TrafficLightGroupPropertyEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightGroupPropertyEnum>)))
  "Returns string type for a message object of type '<TrafficLightGroupPropertyEnum>"
  "perception_interface_msgs/TrafficLightGroupPropertyEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightGroupPropertyEnum)))
  "Returns string type for a message object of type 'TrafficLightGroupPropertyEnum"
  "perception_interface_msgs/TrafficLightGroupPropertyEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightGroupPropertyEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightGroupPropertyEnum>"
  "a74e3ab5378359364210413f4c8989d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightGroupPropertyEnum)))
  "Returns md5sum for a message object of type 'TrafficLightGroupPropertyEnum"
  "a74e3ab5378359364210413f4c8989d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightGroupPropertyEnum>)))
  "Returns full string definition for message of type '<TrafficLightGroupPropertyEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightGroupPropertyEnum)))
  "Returns full string definition for message of type 'TrafficLightGroupPropertyEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightGroupPropertyEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightGroupPropertyEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightGroupPropertyEnum
    (cl:cons ':value (value msg))
))
