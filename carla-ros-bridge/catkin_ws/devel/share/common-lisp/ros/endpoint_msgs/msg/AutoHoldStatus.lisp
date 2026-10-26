; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AutoHoldStatus.msg.html

(cl:defclass <AutoHoldStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoHoldStatus (<AutoHoldStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoHoldStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoHoldStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AutoHoldStatus> is deprecated: use endpoint_msgs-msg:AutoHoldStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AutoHoldStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoHoldStatus>)))
    "Constants for message type '<AutoHoldStatus>"
  '((:SYS_OFF . 0)
    (:SYS_INTERVENTION . 1)
    (:SYS_STANDBY . 2)
    (:SYS_ERR . 3)
    (:RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoHoldStatus)))
    "Constants for message type 'AutoHoldStatus"
  '((:SYS_OFF . 0)
    (:SYS_INTERVENTION . 1)
    (:SYS_STANDBY . 2)
    (:SYS_ERR . 3)
    (:RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoHoldStatus>) ostream)
  "Serializes a message object of type '<AutoHoldStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoHoldStatus>) istream)
  "Deserializes a message object of type '<AutoHoldStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoHoldStatus>)))
  "Returns string type for a message object of type '<AutoHoldStatus>"
  "endpoint_msgs/AutoHoldStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoHoldStatus)))
  "Returns string type for a message object of type 'AutoHoldStatus"
  "endpoint_msgs/AutoHoldStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoHoldStatus>)))
  "Returns md5sum for a message object of type '<AutoHoldStatus>"
  "674862176ed6c348b3266d05ffb01267")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoHoldStatus)))
  "Returns md5sum for a message object of type 'AutoHoldStatus"
  "674862176ed6c348b3266d05ffb01267")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoHoldStatus>)))
  "Returns full string definition for message of type '<AutoHoldStatus>"
  (cl:format cl:nil "uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoHoldStatus)))
  "Returns full string definition for message of type 'AutoHoldStatus"
  (cl:format cl:nil "uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoHoldStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoHoldStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoHoldStatus
    (cl:cons ':value (value msg))
))
