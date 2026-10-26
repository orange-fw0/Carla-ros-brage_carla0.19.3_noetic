; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SentryHornLevel.msg.html

(cl:defclass <SentryHornLevel> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SentryHornLevel (<SentryHornLevel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryHornLevel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryHornLevel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SentryHornLevel> is deprecated: use endpoint_msgs-msg:SentryHornLevel instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SentryHornLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SentryHornLevel>)))
    "Constants for message type '<SentryHornLevel>"
  '((:HORNREQ_NONE . 0)
    (:HORNREQ_LEVEL1 . 1)
    (:HORNREQ_LEVEL2 . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SentryHornLevel)))
    "Constants for message type 'SentryHornLevel"
  '((:HORNREQ_NONE . 0)
    (:HORNREQ_LEVEL1 . 1)
    (:HORNREQ_LEVEL2 . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryHornLevel>) ostream)
  "Serializes a message object of type '<SentryHornLevel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryHornLevel>) istream)
  "Deserializes a message object of type '<SentryHornLevel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryHornLevel>)))
  "Returns string type for a message object of type '<SentryHornLevel>"
  "endpoint_msgs/SentryHornLevel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryHornLevel)))
  "Returns string type for a message object of type 'SentryHornLevel"
  "endpoint_msgs/SentryHornLevel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryHornLevel>)))
  "Returns md5sum for a message object of type '<SentryHornLevel>"
  "98aba9709653dc2a5e735c65fb2c194e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryHornLevel)))
  "Returns md5sum for a message object of type 'SentryHornLevel"
  "98aba9709653dc2a5e735c65fb2c194e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryHornLevel>)))
  "Returns full string definition for message of type '<SentryHornLevel>"
  (cl:format cl:nil "uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryHornLevel)))
  "Returns full string definition for message of type 'SentryHornLevel"
  (cl:format cl:nil "uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryHornLevel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryHornLevel>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryHornLevel
    (cl:cons ':value (value msg))
))
