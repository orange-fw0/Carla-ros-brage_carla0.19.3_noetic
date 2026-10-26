; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude CancelResponseTypeEnum.msg.html

(cl:defclass <CancelResponseTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CancelResponseTypeEnum (<CancelResponseTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CancelResponseTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CancelResponseTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<CancelResponseTypeEnum> is deprecated: use dms_msgs-msg:CancelResponseTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CancelResponseTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CancelResponseTypeEnum>)))
    "Constants for message type '<CancelResponseTypeEnum>"
  '((:NO_ACTION . 0)
    (:CANCEL_SUCCESS . 1)
    (:CANCEL_FAIL . 2)
    (:RESERVED . 3)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CancelResponseTypeEnum)))
    "Constants for message type 'CancelResponseTypeEnum"
  '((:NO_ACTION . 0)
    (:CANCEL_SUCCESS . 1)
    (:CANCEL_FAIL . 2)
    (:RESERVED . 3)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CancelResponseTypeEnum>) ostream)
  "Serializes a message object of type '<CancelResponseTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CancelResponseTypeEnum>) istream)
  "Deserializes a message object of type '<CancelResponseTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CancelResponseTypeEnum>)))
  "Returns string type for a message object of type '<CancelResponseTypeEnum>"
  "dms_msgs/CancelResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CancelResponseTypeEnum)))
  "Returns string type for a message object of type 'CancelResponseTypeEnum"
  "dms_msgs/CancelResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CancelResponseTypeEnum>)))
  "Returns md5sum for a message object of type '<CancelResponseTypeEnum>"
  "644beb39adfc5c68c1fa7e369e937747")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CancelResponseTypeEnum)))
  "Returns md5sum for a message object of type 'CancelResponseTypeEnum"
  "644beb39adfc5c68c1fa7e369e937747")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CancelResponseTypeEnum>)))
  "Returns full string definition for message of type '<CancelResponseTypeEnum>"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 CANCEL_SUCCESS = 1~%uint8 CANCEL_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CancelResponseTypeEnum)))
  "Returns full string definition for message of type 'CancelResponseTypeEnum"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 CANCEL_SUCCESS = 1~%uint8 CANCEL_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CancelResponseTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CancelResponseTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'CancelResponseTypeEnum
    (cl:cons ':value (value msg))
))
