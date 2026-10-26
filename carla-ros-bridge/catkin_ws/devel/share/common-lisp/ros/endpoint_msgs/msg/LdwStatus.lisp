; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude LdwStatus.msg.html

(cl:defclass <LdwStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LdwStatus (<LdwStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LdwStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LdwStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<LdwStatus> is deprecated: use endpoint_msgs-msg:LdwStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LdwStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LdwStatus>)))
    "Constants for message type '<LdwStatus>"
  '((:LDW_STATUS_OFF . 0)
    (:LDW_STATUS_STANDBY . 1)
    (:LDW_STATUS_DISABLED . 2)
    (:LDW_STATUS_OVERIDE . 3)
    (:LDW_STATUS_ACTIVE . 4)
    (:LDW_STATUS_RESERVED1 . 5)
    (:LDW_STATUS_RESERVED2 . 6)
    (:LDW_STATUS_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LdwStatus)))
    "Constants for message type 'LdwStatus"
  '((:LDW_STATUS_OFF . 0)
    (:LDW_STATUS_STANDBY . 1)
    (:LDW_STATUS_DISABLED . 2)
    (:LDW_STATUS_OVERIDE . 3)
    (:LDW_STATUS_ACTIVE . 4)
    (:LDW_STATUS_RESERVED1 . 5)
    (:LDW_STATUS_RESERVED2 . 6)
    (:LDW_STATUS_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LdwStatus>) ostream)
  "Serializes a message object of type '<LdwStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LdwStatus>) istream)
  "Deserializes a message object of type '<LdwStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LdwStatus>)))
  "Returns string type for a message object of type '<LdwStatus>"
  "endpoint_msgs/LdwStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LdwStatus)))
  "Returns string type for a message object of type 'LdwStatus"
  "endpoint_msgs/LdwStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LdwStatus>)))
  "Returns md5sum for a message object of type '<LdwStatus>"
  "a404c5783e2208805ff42b046d1c73b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LdwStatus)))
  "Returns md5sum for a message object of type 'LdwStatus"
  "a404c5783e2208805ff42b046d1c73b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LdwStatus>)))
  "Returns full string definition for message of type '<LdwStatus>"
  (cl:format cl:nil "uint8 LDW_STATUS_OFF = 0~%uint8 LDW_STATUS_STANDBY = 1~%uint8 LDW_STATUS_DISABLED = 2~%uint8 LDW_STATUS_OVERIDE = 3~%uint8 LDW_STATUS_ACTIVE = 4~%uint8 LDW_STATUS_RESERVED1 = 5~%uint8 LDW_STATUS_RESERVED2 = 6~%uint8 LDW_STATUS_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LdwStatus)))
  "Returns full string definition for message of type 'LdwStatus"
  (cl:format cl:nil "uint8 LDW_STATUS_OFF = 0~%uint8 LDW_STATUS_STANDBY = 1~%uint8 LDW_STATUS_DISABLED = 2~%uint8 LDW_STATUS_OVERIDE = 3~%uint8 LDW_STATUS_ACTIVE = 4~%uint8 LDW_STATUS_RESERVED1 = 5~%uint8 LDW_STATUS_RESERVED2 = 6~%uint8 LDW_STATUS_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LdwStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LdwStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LdwStatus
    (cl:cons ':value (value msg))
))
