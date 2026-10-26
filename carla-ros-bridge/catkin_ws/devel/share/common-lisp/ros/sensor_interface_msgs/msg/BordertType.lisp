; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude BordertType.msg.html

(cl:defclass <BordertType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BordertType (<BordertType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BordertType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BordertType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<BordertType> is deprecated: use sensor_interface_msgs-msg:BordertType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BordertType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:value-val is deprecated.  Use sensor_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BordertType>)))
    "Constants for message type '<BordertType>"
  '((:HAT_USLOT_NON_CURB . 0)
    (:HAT_USLOT_EXIST_CURB . 1)
    (:UNKNOWN . 2)
    (:RESERVED_INFO . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BordertType)))
    "Constants for message type 'BordertType"
  '((:HAT_USLOT_NON_CURB . 0)
    (:HAT_USLOT_EXIST_CURB . 1)
    (:UNKNOWN . 2)
    (:RESERVED_INFO . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BordertType>) ostream)
  "Serializes a message object of type '<BordertType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BordertType>) istream)
  "Deserializes a message object of type '<BordertType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BordertType>)))
  "Returns string type for a message object of type '<BordertType>"
  "sensor_interface_msgs/BordertType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BordertType)))
  "Returns string type for a message object of type 'BordertType"
  "sensor_interface_msgs/BordertType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BordertType>)))
  "Returns md5sum for a message object of type '<BordertType>"
  "3b3a8229b9b88d09a102f7462fc15d87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BordertType)))
  "Returns md5sum for a message object of type 'BordertType"
  "3b3a8229b9b88d09a102f7462fc15d87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BordertType>)))
  "Returns full string definition for message of type '<BordertType>"
  (cl:format cl:nil "uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BordertType)))
  "Returns full string definition for message of type 'BordertType"
  (cl:format cl:nil "uint8 HAT_USLOT_NON_CURB = 0~%uint8 HAT_USLOT_EXIST_CURB = 1~%uint8 UNKNOWN = 2~%uint8 RESERVED_INFO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BordertType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BordertType>))
  "Converts a ROS message object to a list"
  (cl:list 'BordertType
    (cl:cons ':value (value msg))
))
