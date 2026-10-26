; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude LdpStatus.msg.html

(cl:defclass <LdpStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LdpStatus (<LdpStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LdpStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LdpStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<LdpStatus> is deprecated: use endpoint_msgs-msg:LdpStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LdpStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LdpStatus>)))
    "Constants for message type '<LdpStatus>"
  '((:LDP_STATUS_OFF . 0)
    (:LDP_STATUS_STANDBY . 1)
    (:LDP_STATUS_ACTIVE . 2)
    (:LDP_STATUS_RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LdpStatus)))
    "Constants for message type 'LdpStatus"
  '((:LDP_STATUS_OFF . 0)
    (:LDP_STATUS_STANDBY . 1)
    (:LDP_STATUS_ACTIVE . 2)
    (:LDP_STATUS_RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LdpStatus>) ostream)
  "Serializes a message object of type '<LdpStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LdpStatus>) istream)
  "Deserializes a message object of type '<LdpStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LdpStatus>)))
  "Returns string type for a message object of type '<LdpStatus>"
  "endpoint_msgs/LdpStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LdpStatus)))
  "Returns string type for a message object of type 'LdpStatus"
  "endpoint_msgs/LdpStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LdpStatus>)))
  "Returns md5sum for a message object of type '<LdpStatus>"
  "04a3e6f6e928c89fe790edaac4235d8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LdpStatus)))
  "Returns md5sum for a message object of type 'LdpStatus"
  "04a3e6f6e928c89fe790edaac4235d8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LdpStatus>)))
  "Returns full string definition for message of type '<LdpStatus>"
  (cl:format cl:nil "uint8 LDP_STATUS_OFF = 0~%uint8 LDP_STATUS_STANDBY = 1~%uint8 LDP_STATUS_ACTIVE = 2~%uint8 LDP_STATUS_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LdpStatus)))
  "Returns full string definition for message of type 'LdpStatus"
  (cl:format cl:nil "uint8 LDP_STATUS_OFF = 0~%uint8 LDP_STATUS_STANDBY = 1~%uint8 LDP_STATUS_ACTIVE = 2~%uint8 LDP_STATUS_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LdpStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LdpStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LdpStatus
    (cl:cons ':value (value msg))
))
