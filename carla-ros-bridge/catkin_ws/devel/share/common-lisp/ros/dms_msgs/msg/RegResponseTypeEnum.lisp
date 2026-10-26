; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude RegResponseTypeEnum.msg.html

(cl:defclass <RegResponseTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RegResponseTypeEnum (<RegResponseTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegResponseTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegResponseTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<RegResponseTypeEnum> is deprecated: use dms_msgs-msg:RegResponseTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RegResponseTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RegResponseTypeEnum>)))
    "Constants for message type '<RegResponseTypeEnum>"
  '((:RESPOND_FAIL . 0)
    (:RESPOND_SUCCESS . 1)
    (:RESERVED . 2)
    (:RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RegResponseTypeEnum)))
    "Constants for message type 'RegResponseTypeEnum"
  '((:RESPOND_FAIL . 0)
    (:RESPOND_SUCCESS . 1)
    (:RESERVED . 2)
    (:RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegResponseTypeEnum>) ostream)
  "Serializes a message object of type '<RegResponseTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegResponseTypeEnum>) istream)
  "Deserializes a message object of type '<RegResponseTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegResponseTypeEnum>)))
  "Returns string type for a message object of type '<RegResponseTypeEnum>"
  "dms_msgs/RegResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegResponseTypeEnum)))
  "Returns string type for a message object of type 'RegResponseTypeEnum"
  "dms_msgs/RegResponseTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegResponseTypeEnum>)))
  "Returns md5sum for a message object of type '<RegResponseTypeEnum>"
  "2b34c6848b94a5c3d32a1b99a1cd2077")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegResponseTypeEnum)))
  "Returns md5sum for a message object of type 'RegResponseTypeEnum"
  "2b34c6848b94a5c3d32a1b99a1cd2077")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegResponseTypeEnum>)))
  "Returns full string definition for message of type '<RegResponseTypeEnum>"
  (cl:format cl:nil "uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegResponseTypeEnum)))
  "Returns full string definition for message of type 'RegResponseTypeEnum"
  (cl:format cl:nil "uint8 RESPOND_FAIL = 0~%uint8 RESPOND_SUCCESS = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegResponseTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegResponseTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RegResponseTypeEnum
    (cl:cons ':value (value msg))
))
