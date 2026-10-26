; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude RegStatusTypeEnum.msg.html

(cl:defclass <RegStatusTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RegStatusTypeEnum (<RegStatusTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegStatusTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegStatusTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<RegStatusTypeEnum> is deprecated: use dms_msgs-msg:RegStatusTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RegStatusTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:value-val is deprecated.  Use dms_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RegStatusTypeEnum>)))
    "Constants for message type '<RegStatusTypeEnum>"
  '((:NO_ACTION . 0)
    (:REGISTERING . 1)
    (:REGISTER_SUCCESS . 2)
    (:REGISTER_FAIL . 3)
    (:RESERVED . 4)
    (:RESERVED1 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RegStatusTypeEnum)))
    "Constants for message type 'RegStatusTypeEnum"
  '((:NO_ACTION . 0)
    (:REGISTERING . 1)
    (:REGISTER_SUCCESS . 2)
    (:REGISTER_FAIL . 3)
    (:RESERVED . 4)
    (:RESERVED1 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegStatusTypeEnum>) ostream)
  "Serializes a message object of type '<RegStatusTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegStatusTypeEnum>) istream)
  "Deserializes a message object of type '<RegStatusTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegStatusTypeEnum>)))
  "Returns string type for a message object of type '<RegStatusTypeEnum>"
  "dms_msgs/RegStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegStatusTypeEnum)))
  "Returns string type for a message object of type 'RegStatusTypeEnum"
  "dms_msgs/RegStatusTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegStatusTypeEnum>)))
  "Returns md5sum for a message object of type '<RegStatusTypeEnum>"
  "e21e2a8858847299b0070cc55e8774b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegStatusTypeEnum)))
  "Returns md5sum for a message object of type 'RegStatusTypeEnum"
  "e21e2a8858847299b0070cc55e8774b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegStatusTypeEnum>)))
  "Returns full string definition for message of type '<RegStatusTypeEnum>"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 REGISTERING = 1~%uint8 REGISTER_SUCCESS = 2~%uint8 REGISTER_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegStatusTypeEnum)))
  "Returns full string definition for message of type 'RegStatusTypeEnum"
  (cl:format cl:nil "uint8 NO_ACTION = 0~%uint8 REGISTERING = 1~%uint8 REGISTER_SUCCESS = 2~%uint8 REGISTER_FAIL = 3~%uint8 RESERVED = 4~%uint8 RESERVED1 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegStatusTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegStatusTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RegStatusTypeEnum
    (cl:cons ':value (value msg))
))
