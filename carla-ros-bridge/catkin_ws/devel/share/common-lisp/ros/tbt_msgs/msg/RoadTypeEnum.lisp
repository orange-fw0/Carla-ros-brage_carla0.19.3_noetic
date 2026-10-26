; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude RoadTypeEnum.msg.html

(cl:defclass <RoadTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadTypeEnum (<RoadTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<RoadTypeEnum> is deprecated: use tbt_msgs-msg:RoadTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadTypeEnum>)))
    "Constants for message type '<RoadTypeEnum>"
  '((:LINKTYPECOMMON . 0)
    (:LINKTYPEFERRY . 1)
    (:LINKTYPETUNNEL . 2)
    (:LINKTYPEBRIDGE . 3)
    (:LINKTYPEELEVATEDRD . 4)
    (:LINKTYPENULL . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadTypeEnum)))
    "Constants for message type 'RoadTypeEnum"
  '((:LINKTYPECOMMON . 0)
    (:LINKTYPEFERRY . 1)
    (:LINKTYPETUNNEL . 2)
    (:LINKTYPEBRIDGE . 3)
    (:LINKTYPEELEVATEDRD . 4)
    (:LINKTYPENULL . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadTypeEnum>) ostream)
  "Serializes a message object of type '<RoadTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadTypeEnum>) istream)
  "Deserializes a message object of type '<RoadTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadTypeEnum>)))
  "Returns string type for a message object of type '<RoadTypeEnum>"
  "tbt_msgs/RoadTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadTypeEnum)))
  "Returns string type for a message object of type 'RoadTypeEnum"
  "tbt_msgs/RoadTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadTypeEnum>"
  "e1a5ee1a2d787fe532cc9820bd909bff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadTypeEnum)))
  "Returns md5sum for a message object of type 'RoadTypeEnum"
  "e1a5ee1a2d787fe532cc9820bd909bff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadTypeEnum>)))
  "Returns full string definition for message of type '<RoadTypeEnum>"
  (cl:format cl:nil "uint8 LinkTypeCommon = 0~%uint8 LinkTypeFerry = 1~%uint8 LinkTypeTunnel = 2~%uint8 LinkTypeBridge = 3~%uint8 LinkTypeElevatedRd = 4~%uint8 LinkTypeNull = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadTypeEnum)))
  "Returns full string definition for message of type 'RoadTypeEnum"
  (cl:format cl:nil "uint8 LinkTypeCommon = 0~%uint8 LinkTypeFerry = 1~%uint8 LinkTypeTunnel = 2~%uint8 LinkTypeBridge = 3~%uint8 LinkTypeElevatedRd = 4~%uint8 LinkTypeNull = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadTypeEnum
    (cl:cons ':value (value msg))
))
