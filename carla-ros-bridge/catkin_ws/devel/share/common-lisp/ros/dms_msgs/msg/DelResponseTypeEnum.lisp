; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DelResponseTypeEnum.msg.html

(cl:defclass <DelResponseTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DelResponseTypeEnum (<DelResponseTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelResponseTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelResponseTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DelResponseTypeEnum> is deprecated: use dms_msgs-msg:DelResponseTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DelResponseTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DelResponseTypeEnum>)))
    "Constants for message type '<DelResponseTypeEnum>"
  '((:NO_ACTION . 0)
    (:RESPOND_SUCCESS . 1)
    (:RESPOND_FAIL . 2)
    (:RESERVED . 3)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DelResponseTypeEnum)))
    "Constants for message type 'DelResponseTypeEnum"
  '((:NO_ACTION . 0)
    (:RESPOND_SUCCESS . 1)
    (:RESPOND_FAIL . 2)
    (:RESERVED . 3)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelResponseTypeEnum>) ostream)
  "Serializes a message object of type '<DelResponseTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelResponseTypeEnum>) istream)
  "Deserializes a message object of type '<DelResponseTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelResponseTypeEnum>)))
  "Returns string type for a message object of type '<DelResponseTypeEnum>"
  "dms_msgs/DelResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelResponseTypeEnum)))
  "Returns string type for a message object of type 'DelResponseTypeEnum"
  "dms_msgs/DelResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelResponseTypeEnum>)))
  "Returns md5sum for a message object of type '<DelResponseTypeEnum>"
  "fef856f413f5fb02eef80d121dab1a06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelResponseTypeEnum)))
  "Returns md5sum for a message object of type 'DelResponseTypeEnum"
  "fef856f413f5fb02eef80d121dab1a06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelResponseTypeEnum>)))
  "Returns full string definition for message of type '<DelResponseTypeEnum>"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESPOND_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelResponseTypeEnum)))
  "Returns full string definition for message of type 'DelResponseTypeEnum"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESPOND_FAIL = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelResponseTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelResponseTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DelResponseTypeEnum
    (cl:cons ':value (value msg))
))
