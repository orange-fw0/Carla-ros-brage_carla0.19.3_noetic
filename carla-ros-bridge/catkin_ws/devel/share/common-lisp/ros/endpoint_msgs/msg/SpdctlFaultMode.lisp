; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SpdctlFaultMode.msg.html

(cl:defclass <SpdctlFaultMode> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpdctlFaultMode (<SpdctlFaultMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpdctlFaultMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpdctlFaultMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SpdctlFaultMode> is deprecated: use endpoint_msgs-msg:SpdctlFaultMode instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SpdctlFaultMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpdctlFaultMode>)))
    "Constants for message type '<SpdctlFaultMode>"
  '((:NONE . 0)
    (:NO_FAULT . 1)
    (:FAULT1 . 2)
    (:FAULT2 . 3)
    (:RESERVED1 . 4)
    (:RESERVED2 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpdctlFaultMode)))
    "Constants for message type 'SpdctlFaultMode"
  '((:NONE . 0)
    (:NO_FAULT . 1)
    (:FAULT1 . 2)
    (:FAULT2 . 3)
    (:RESERVED1 . 4)
    (:RESERVED2 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpdctlFaultMode>) ostream)
  "Serializes a message object of type '<SpdctlFaultMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpdctlFaultMode>) istream)
  "Deserializes a message object of type '<SpdctlFaultMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpdctlFaultMode>)))
  "Returns string type for a message object of type '<SpdctlFaultMode>"
  "endpoint_msgs/SpdctlFaultMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpdctlFaultMode)))
  "Returns string type for a message object of type 'SpdctlFaultMode"
  "endpoint_msgs/SpdctlFaultMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpdctlFaultMode>)))
  "Returns md5sum for a message object of type '<SpdctlFaultMode>"
  "14c5cb8b19e4e9079b1470921bafd4cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpdctlFaultMode)))
  "Returns md5sum for a message object of type 'SpdctlFaultMode"
  "14c5cb8b19e4e9079b1470921bafd4cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpdctlFaultMode>)))
  "Returns full string definition for message of type '<SpdctlFaultMode>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpdctlFaultMode)))
  "Returns full string definition for message of type 'SpdctlFaultMode"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpdctlFaultMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpdctlFaultMode>))
  "Converts a ROS message object to a list"
  (cl:list 'SpdctlFaultMode
    (cl:cons ':value (value msg))
))
