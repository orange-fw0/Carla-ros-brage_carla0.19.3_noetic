; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DelStatusTypeEnum.msg.html

(cl:defclass <DelStatusTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DelStatusTypeEnum (<DelStatusTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DelStatusTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DelStatusTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DelStatusTypeEnum> is deprecated: use dms_msgs-msg:DelStatusTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DelStatusTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DelStatusTypeEnum>)))
    "Constants for message type '<DelStatusTypeEnum>"
  '((:DEL_FAIL . 0)
    (:DELETING . 1)
    (:DEL_SUCCESS . 2)
    (:RESERVED . 3)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DelStatusTypeEnum)))
    "Constants for message type 'DelStatusTypeEnum"
  '((:DEL_FAIL . 0)
    (:DELETING . 1)
    (:DEL_SUCCESS . 2)
    (:RESERVED . 3)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DelStatusTypeEnum>) ostream)
  "Serializes a message object of type '<DelStatusTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DelStatusTypeEnum>) istream)
  "Deserializes a message object of type '<DelStatusTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DelStatusTypeEnum>)))
  "Returns string type for a message object of type '<DelStatusTypeEnum>"
  "dms_msgs/DelStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DelStatusTypeEnum)))
  "Returns string type for a message object of type 'DelStatusTypeEnum"
  "dms_msgs/DelStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DelStatusTypeEnum>)))
  "Returns md5sum for a message object of type '<DelStatusTypeEnum>"
  "dd48aac790c21a1c3ff24bca660485e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DelStatusTypeEnum)))
  "Returns md5sum for a message object of type 'DelStatusTypeEnum"
  "dd48aac790c21a1c3ff24bca660485e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DelStatusTypeEnum>)))
  "Returns full string definition for message of type '<DelStatusTypeEnum>"
  (cl:format cl:nil "uint8 DEL_FAIL = 0~%uint8 DELETING = 1~%uint8 DEL_SUCCESS = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DelStatusTypeEnum)))
  "Returns full string definition for message of type 'DelStatusTypeEnum"
  (cl:format cl:nil "uint8 DEL_FAIL = 0~%uint8 DELETING = 1~%uint8 DEL_SUCCESS = 2~%uint8 RESERVED = 3~%uint8 RESERVED1 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DelStatusTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DelStatusTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'DelStatusTypeEnum
    (cl:cons ':value (value msg))
))
