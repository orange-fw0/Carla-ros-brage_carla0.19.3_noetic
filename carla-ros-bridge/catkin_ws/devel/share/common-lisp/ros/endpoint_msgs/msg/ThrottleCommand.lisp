; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ThrottleCommand.msg.html

(cl:defclass <ThrottleCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (throttle_command_data
    :reader throttle_command_data
    :initarg :throttle_command_data
    :type endpoint_msgs-msg:ThrottleCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleCommandData)))
)

(cl:defclass ThrottleCommand (<ThrottleCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ThrottleCommand> is deprecated: use endpoint_msgs-msg:ThrottleCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ThrottleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'throttle_command_data-val :lambda-list '(m))
(cl:defmethod throttle_command_data-val ((m <ThrottleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_command_data-val is deprecated.  Use endpoint_msgs-msg:throttle_command_data instead.")
  (throttle_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ThrottleCommand>)))
    "Constants for message type '<ThrottleCommand>"
  '((:THROTTLE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ThrottleCommand)))
    "Constants for message type 'ThrottleCommand"
  '((:THROTTLE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleCommand>) ostream)
  "Serializes a message object of type '<ThrottleCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleCommand>) istream)
  "Deserializes a message object of type '<ThrottleCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleCommand>)))
  "Returns string type for a message object of type '<ThrottleCommand>"
  "endpoint_msgs/ThrottleCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleCommand)))
  "Returns string type for a message object of type 'ThrottleCommand"
  "endpoint_msgs/ThrottleCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleCommand>)))
  "Returns md5sum for a message object of type '<ThrottleCommand>"
  "316b02c950b344be768d1ff4cdaa63b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleCommand)))
  "Returns md5sum for a message object of type 'ThrottleCommand"
  "316b02c950b344be768d1ff4cdaa63b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleCommand>)))
  "Returns full string definition for message of type '<ThrottleCommand>"
  (cl:format cl:nil "uint8 THROTTLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleCommandData throttle_command_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleCommandData~%uint64 timestamp_us~%bool throttle_enable~%endpoint_msgs/ThrottleType throttle_type~%float32 throttle_command~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleCommand)))
  "Returns full string definition for message of type 'ThrottleCommand"
  (cl:format cl:nil "uint8 THROTTLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleCommandData throttle_command_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleCommandData~%uint64 timestamp_us~%bool throttle_enable~%endpoint_msgs/ThrottleType throttle_type~%float32 throttle_command~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleCommand
    (cl:cons ':available (available msg))
    (cl:cons ':throttle_command_data (throttle_command_data msg))
))
