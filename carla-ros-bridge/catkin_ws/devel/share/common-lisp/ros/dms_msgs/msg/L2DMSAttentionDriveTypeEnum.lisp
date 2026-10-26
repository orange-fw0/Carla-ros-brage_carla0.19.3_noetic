; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude L2DMSAttentionDriveTypeEnum.msg.html

(cl:defclass <L2DMSAttentionDriveTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass L2DMSAttentionDriveTypeEnum (<L2DMSAttentionDriveTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <L2DMSAttentionDriveTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'L2DMSAttentionDriveTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<L2DMSAttentionDriveTypeEnum> is deprecated: use dms_msgs-msg:L2DMSAttentionDriveTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <L2DMSAttentionDriveTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<L2DMSAttentionDriveTypeEnum>)))
    "Constants for message type '<L2DMSAttentionDriveTypeEnum>"
  '((:NOT_FOCUSE_ON_DRIVING . 0)
    (:FOCUSE_ON_DRIVING . 1)
    (:RESERVED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'L2DMSAttentionDriveTypeEnum)))
    "Constants for message type 'L2DMSAttentionDriveTypeEnum"
  '((:NOT_FOCUSE_ON_DRIVING . 0)
    (:FOCUSE_ON_DRIVING . 1)
    (:RESERVED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <L2DMSAttentionDriveTypeEnum>) ostream)
  "Serializes a message object of type '<L2DMSAttentionDriveTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <L2DMSAttentionDriveTypeEnum>) istream)
  "Deserializes a message object of type '<L2DMSAttentionDriveTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<L2DMSAttentionDriveTypeEnum>)))
  "Returns string type for a message object of type '<L2DMSAttentionDriveTypeEnum>"
  "dms_msgs/L2DMSAttentionDriveTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'L2DMSAttentionDriveTypeEnum)))
  "Returns string type for a message object of type 'L2DMSAttentionDriveTypeEnum"
  "dms_msgs/L2DMSAttentionDriveTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<L2DMSAttentionDriveTypeEnum>)))
  "Returns md5sum for a message object of type '<L2DMSAttentionDriveTypeEnum>"
  "a9a31ab9572b4b4fc3bb299cbcffa6a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'L2DMSAttentionDriveTypeEnum)))
  "Returns md5sum for a message object of type 'L2DMSAttentionDriveTypeEnum"
  "a9a31ab9572b4b4fc3bb299cbcffa6a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<L2DMSAttentionDriveTypeEnum>)))
  "Returns full string definition for message of type '<L2DMSAttentionDriveTypeEnum>"
  (cl:format cl:nil "uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'L2DMSAttentionDriveTypeEnum)))
  "Returns full string definition for message of type 'L2DMSAttentionDriveTypeEnum"
  (cl:format cl:nil "uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <L2DMSAttentionDriveTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <L2DMSAttentionDriveTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'L2DMSAttentionDriveTypeEnum
    (cl:cons ':value (value msg))
))
