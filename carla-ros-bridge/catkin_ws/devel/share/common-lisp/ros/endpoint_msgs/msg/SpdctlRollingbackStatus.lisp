; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SpdctlRollingbackStatus.msg.html

(cl:defclass <SpdctlRollingbackStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpdctlRollingbackStatus (<SpdctlRollingbackStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpdctlRollingbackStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpdctlRollingbackStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SpdctlRollingbackStatus> is deprecated: use endpoint_msgs-msg:SpdctlRollingbackStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SpdctlRollingbackStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpdctlRollingbackStatus>)))
    "Constants for message type '<SpdctlRollingbackStatus>"
  '((:NONE . 0)
    (:NO_SILDE . 1)
    (:SILDE . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpdctlRollingbackStatus)))
    "Constants for message type 'SpdctlRollingbackStatus"
  '((:NONE . 0)
    (:NO_SILDE . 1)
    (:SILDE . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpdctlRollingbackStatus>) ostream)
  "Serializes a message object of type '<SpdctlRollingbackStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpdctlRollingbackStatus>) istream)
  "Deserializes a message object of type '<SpdctlRollingbackStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpdctlRollingbackStatus>)))
  "Returns string type for a message object of type '<SpdctlRollingbackStatus>"
  "endpoint_msgs/SpdctlRollingbackStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpdctlRollingbackStatus)))
  "Returns string type for a message object of type 'SpdctlRollingbackStatus"
  "endpoint_msgs/SpdctlRollingbackStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpdctlRollingbackStatus>)))
  "Returns md5sum for a message object of type '<SpdctlRollingbackStatus>"
  "7bdd6059f5e8923902d7512aca2de005")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpdctlRollingbackStatus)))
  "Returns md5sum for a message object of type 'SpdctlRollingbackStatus"
  "7bdd6059f5e8923902d7512aca2de005")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpdctlRollingbackStatus>)))
  "Returns full string definition for message of type '<SpdctlRollingbackStatus>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpdctlRollingbackStatus)))
  "Returns full string definition for message of type 'SpdctlRollingbackStatus"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpdctlRollingbackStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpdctlRollingbackStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SpdctlRollingbackStatus
    (cl:cons ':value (value msg))
))
