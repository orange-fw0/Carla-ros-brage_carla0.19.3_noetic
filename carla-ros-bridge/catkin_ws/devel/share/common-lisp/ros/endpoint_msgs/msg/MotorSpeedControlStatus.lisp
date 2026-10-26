; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude MotorSpeedControlStatus.msg.html

(cl:defclass <MotorSpeedControlStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MotorSpeedControlStatus (<MotorSpeedControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorSpeedControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorSpeedControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<MotorSpeedControlStatus> is deprecated: use endpoint_msgs-msg:MotorSpeedControlStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MotorSpeedControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotorSpeedControlStatus>)))
    "Constants for message type '<MotorSpeedControlStatus>"
  '((:NONE . 0)
    (:NO_ACTIVE . 1)
    (:ACTIVE . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotorSpeedControlStatus)))
    "Constants for message type 'MotorSpeedControlStatus"
  '((:NONE . 0)
    (:NO_ACTIVE . 1)
    (:ACTIVE . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorSpeedControlStatus>) ostream)
  "Serializes a message object of type '<MotorSpeedControlStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorSpeedControlStatus>) istream)
  "Deserializes a message object of type '<MotorSpeedControlStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorSpeedControlStatus>)))
  "Returns string type for a message object of type '<MotorSpeedControlStatus>"
  "endpoint_msgs/MotorSpeedControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorSpeedControlStatus)))
  "Returns string type for a message object of type 'MotorSpeedControlStatus"
  "endpoint_msgs/MotorSpeedControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorSpeedControlStatus>)))
  "Returns md5sum for a message object of type '<MotorSpeedControlStatus>"
  "277d420f756e40486d2ab0eeea680051")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorSpeedControlStatus)))
  "Returns md5sum for a message object of type 'MotorSpeedControlStatus"
  "277d420f756e40486d2ab0eeea680051")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorSpeedControlStatus>)))
  "Returns full string definition for message of type '<MotorSpeedControlStatus>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorSpeedControlStatus)))
  "Returns full string definition for message of type 'MotorSpeedControlStatus"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorSpeedControlStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorSpeedControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorSpeedControlStatus
    (cl:cons ':value (value msg))
))
