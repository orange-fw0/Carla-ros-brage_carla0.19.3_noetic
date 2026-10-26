; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficSignRegionEnum.msg.html

(cl:defclass <TrafficSignRegionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignRegionEnum (<TrafficSignRegionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignRegionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignRegionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficSignRegionEnum> is deprecated: use perception_interface_msgs-msg:TrafficSignRegionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignRegionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignRegionEnum>)))
    "Constants for message type '<TrafficSignRegionEnum>"
  '((:TRAFFIC_SIGN_REGION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_REGION_CN . 1)
    (:TRAFFIC_SIGN_REGION_EU . 2)
    (:TRAFFIC_SIGN_REGION_US . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignRegionEnum)))
    "Constants for message type 'TrafficSignRegionEnum"
  '((:TRAFFIC_SIGN_REGION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_REGION_CN . 1)
    (:TRAFFIC_SIGN_REGION_EU . 2)
    (:TRAFFIC_SIGN_REGION_US . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignRegionEnum>) ostream)
  "Serializes a message object of type '<TrafficSignRegionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignRegionEnum>) istream)
  "Deserializes a message object of type '<TrafficSignRegionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignRegionEnum>)))
  "Returns string type for a message object of type '<TrafficSignRegionEnum>"
  "perception_interface_msgs/TrafficSignRegionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignRegionEnum)))
  "Returns string type for a message object of type 'TrafficSignRegionEnum"
  "perception_interface_msgs/TrafficSignRegionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignRegionEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignRegionEnum>"
  "8187dbe64bf473b272dc707b7145e086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignRegionEnum)))
  "Returns md5sum for a message object of type 'TrafficSignRegionEnum"
  "8187dbe64bf473b272dc707b7145e086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignRegionEnum>)))
  "Returns full string definition for message of type '<TrafficSignRegionEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_REGION_CN = 1~%uint8 TRAFFIC_SIGN_REGION_EU = 2~%uint8 TRAFFIC_SIGN_REGION_US = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignRegionEnum)))
  "Returns full string definition for message of type 'TrafficSignRegionEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_REGION_CN = 1~%uint8 TRAFFIC_SIGN_REGION_EU = 2~%uint8 TRAFFIC_SIGN_REGION_US = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignRegionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignRegionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignRegionEnum
    (cl:cons ':value (value msg))
))
