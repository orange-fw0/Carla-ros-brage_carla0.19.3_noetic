; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DelErrorTypeEnum.msg.html

(cl:defclass <DelErrorTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DelErrorTypeEnum (<DelErrorTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelErrorTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelErrorTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DelErrorTypeEnum> is deprecated: use dms_msgs-msg:DelErrorTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DelErrorTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DelErrorTypeEnum>)))
    "Constants for message type '<DelErrorTypeEnum>"
  '((:NO_ERROR . 0)
    (:NO_USER . 1)
    (:TIME_OUT . 2)
    (:SYSTEM_ERROR . 3)
    (:RESERVED . 4)
    (:RESERVED1 . 5)
    (:RESERVED2 . 6)
    (:RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DelErrorTypeEnum)))
    "Constants for message type 'DelErrorTypeEnum"
  '((:NO_ERROR . 0)
    (:NO_USER . 1)
    (:TIME_OUT . 2)
    (:SYSTEM_ERROR . 3)
    (:RESERVED . 4)
    (:RESERVED1 . 5)
    (:RESERVED2 . 6)
    (:RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelErrorTypeEnum>) ostream)
  "Serializes a message object of type '<DelErrorTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelErrorTypeEnum>) istream)
  "Deserializes a message object of type '<DelErrorTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelErrorTypeEnum>)))
  "Returns string type for a message object of type '<DelErrorTypeEnum>"
  "dms_msgs/DelErrorTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelErrorTypeEnum)))
  "Returns string type for a message object of type 'DelErrorTypeEnum"
  "dms_msgs/DelErrorTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelErrorTypeEnum>)))
  "Returns md5sum for a message object of type '<DelErrorTypeEnum>"
  "711563fcfb145942355331bac6bd88a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelErrorTypeEnum)))
  "Returns md5sum for a message object of type 'DelErrorTypeEnum"
  "711563fcfb145942355331bac6bd88a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelErrorTypeEnum>)))
  "Returns full string definition for message of type '<DelErrorTypeEnum>"
  (cl:format cl:nil "uint8 NO_ERROR = 0~%uint8 NO_USER = 1~%uint8 TIME_OUT = 2~%uint8 SYSTEM_ERROR = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelErrorTypeEnum)))
  "Returns full string definition for message of type 'DelErrorTypeEnum"
  (cl:format cl:nil "uint8 NO_ERROR = 0~%uint8 NO_USER = 1~%uint8 TIME_OUT = 2~%uint8 SYSTEM_ERROR = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelErrorTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelErrorTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DelErrorTypeEnum
    (cl:cons ':value (value msg))
))
