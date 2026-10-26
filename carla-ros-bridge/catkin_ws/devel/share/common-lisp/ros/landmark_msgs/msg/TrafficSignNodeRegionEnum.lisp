; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeRegionEnum.msg.html

(cl:defclass <TrafficSignNodeRegionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeRegionEnum (<TrafficSignNodeRegionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeRegionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeRegionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeRegionEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeRegionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeRegionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeRegionEnum>)))
    "Constants for message type '<TrafficSignNodeRegionEnum>"
  '((:TRAFFIC_SIGN_NODE_REGION_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_REGION_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_REGION_CN . 2)
    (:TRAFFIC_SIGN_NODE_REGION_EU . 3)
    (:TRAFFIC_SIGN_NODE_REGION_US . 4)
    (:TRAFFIC_SIGN_NODE_REGION_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeRegionEnum)))
    "Constants for message type 'TrafficSignNodeRegionEnum"
  '((:TRAFFIC_SIGN_NODE_REGION_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_REGION_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_REGION_CN . 2)
    (:TRAFFIC_SIGN_NODE_REGION_EU . 3)
    (:TRAFFIC_SIGN_NODE_REGION_US . 4)
    (:TRAFFIC_SIGN_NODE_REGION_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeRegionEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeRegionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeRegionEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeRegionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeRegionEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeRegionEnum>"
  "landmark_msgs/TrafficSignNodeRegionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeRegionEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeRegionEnum"
  "landmark_msgs/TrafficSignNodeRegionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeRegionEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeRegionEnum>"
  "9e474a0bb3fae4ea18a9b6ce939732af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeRegionEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeRegionEnum"
  "9e474a0bb3fae4ea18a9b6ce939732af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeRegionEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeRegionEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2~%uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3~%uint8 TRAFFIC_SIGN_NODE_REGION_US = 4~%uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeRegionEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeRegionEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2~%uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3~%uint8 TRAFFIC_SIGN_NODE_REGION_US = 4~%uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeRegionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeRegionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeRegionEnum
    (cl:cons ':value (value msg))
))
