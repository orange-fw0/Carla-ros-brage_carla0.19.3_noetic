; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude L2DMSAbnormalActionTypeEnum.msg.html

(cl:defclass <L2DMSAbnormalActionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass L2DMSAbnormalActionTypeEnum (<L2DMSAbnormalActionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <L2DMSAbnormalActionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'L2DMSAbnormalActionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<L2DMSAbnormalActionTypeEnum> is deprecated: use dms_msgs-msg:L2DMSAbnormalActionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <L2DMSAbnormalActionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<L2DMSAbnormalActionTypeEnum>)))
    "Constants for message type '<L2DMSAbnormalActionTypeEnum>"
  '((:NORMAL . 1)
    (:EYE_CLOSE . 2)
    (:YAWN . 4)
    (:DRINK . 8)
    (:PHONE_CALL . 16)
    (:SMOKE . 32)
    (:EAT . 64)
    (:PHONE_HAND . 128)
    (:PHONE_EAR . 256)
    (:RESERVED1 . 512)
    (:RESERVED2 . 1024)
    (:RESERVED3 . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'L2DMSAbnormalActionTypeEnum)))
    "Constants for message type 'L2DMSAbnormalActionTypeEnum"
  '((:NORMAL . 1)
    (:EYE_CLOSE . 2)
    (:YAWN . 4)
    (:DRINK . 8)
    (:PHONE_CALL . 16)
    (:SMOKE . 32)
    (:EAT . 64)
    (:PHONE_HAND . 128)
    (:PHONE_EAR . 256)
    (:RESERVED1 . 512)
    (:RESERVED2 . 1024)
    (:RESERVED3 . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <L2DMSAbnormalActionTypeEnum>) ostream)
  "Serializes a message object of type '<L2DMSAbnormalActionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <L2DMSAbnormalActionTypeEnum>) istream)
  "Deserializes a message object of type '<L2DMSAbnormalActionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<L2DMSAbnormalActionTypeEnum>)))
  "Returns string type for a message object of type '<L2DMSAbnormalActionTypeEnum>"
  "dms_msgs/L2DMSAbnormalActionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'L2DMSAbnormalActionTypeEnum)))
  "Returns string type for a message object of type 'L2DMSAbnormalActionTypeEnum"
  "dms_msgs/L2DMSAbnormalActionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<L2DMSAbnormalActionTypeEnum>)))
  "Returns md5sum for a message object of type '<L2DMSAbnormalActionTypeEnum>"
  "61f8ca89ffba856d7bfec3e8a3142b36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'L2DMSAbnormalActionTypeEnum)))
  "Returns md5sum for a message object of type 'L2DMSAbnormalActionTypeEnum"
  "61f8ca89ffba856d7bfec3e8a3142b36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<L2DMSAbnormalActionTypeEnum>)))
  "Returns full string definition for message of type '<L2DMSAbnormalActionTypeEnum>"
  (cl:format cl:nil "uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'L2DMSAbnormalActionTypeEnum)))
  "Returns full string definition for message of type 'L2DMSAbnormalActionTypeEnum"
  (cl:format cl:nil "uint16 NORMAL = 1~%uint16 EYE_CLOSE = 2~%uint16 YAWN = 4~%uint16 DRINK = 8~%uint16 PHONE_CALL = 16~%uint16 SMOKE = 32~%uint16 EAT = 64~%uint16 PHONE_HAND = 128~%uint16 PHONE_EAR = 256~%uint16 RESERVED1 = 512~%uint16 RESERVED2 = 1024~%uint16 RESERVED3 = 2048~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <L2DMSAbnormalActionTypeEnum>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <L2DMSAbnormalActionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'L2DMSAbnormalActionTypeEnum
    (cl:cons ':value (value msg))
))
