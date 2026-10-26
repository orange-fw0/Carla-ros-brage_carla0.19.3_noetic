; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude PowerModeType.msg.html

(cl:defclass <PowerModeType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerModeType (<PowerModeType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerModeType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerModeType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<PowerModeType> is deprecated: use endpoint_msgs-msg:PowerModeType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PowerModeType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PowerModeType>)))
    "Constants for message type '<PowerModeType>"
  '((:VEHILCE_POWER_MODE_OFF . 0)
    (:VEHILCE_POWER_MODE_NORMAL . 1)
    (:VEHILCE_POWER_MODE_AUTODRIVE . 2)
    (:VEHILCE_POWER_MODE_RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PowerModeType)))
    "Constants for message type 'PowerModeType"
  '((:VEHILCE_POWER_MODE_OFF . 0)
    (:VEHILCE_POWER_MODE_NORMAL . 1)
    (:VEHILCE_POWER_MODE_AUTODRIVE . 2)
    (:VEHILCE_POWER_MODE_RESERVED1 . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerModeType>) ostream)
  "Serializes a message object of type '<PowerModeType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerModeType>) istream)
  "Deserializes a message object of type '<PowerModeType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerModeType>)))
  "Returns string type for a message object of type '<PowerModeType>"
  "endpoint_msgs/PowerModeType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerModeType)))
  "Returns string type for a message object of type 'PowerModeType"
  "endpoint_msgs/PowerModeType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerModeType>)))
  "Returns md5sum for a message object of type '<PowerModeType>"
  "0f60c59e23b54b08d5aaba2a546eb676")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerModeType)))
  "Returns md5sum for a message object of type 'PowerModeType"
  "0f60c59e23b54b08d5aaba2a546eb676")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerModeType>)))
  "Returns full string definition for message of type '<PowerModeType>"
  (cl:format cl:nil "uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerModeType)))
  "Returns full string definition for message of type 'PowerModeType"
  (cl:format cl:nil "uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerModeType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerModeType>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerModeType
    (cl:cons ':value (value msg))
))
