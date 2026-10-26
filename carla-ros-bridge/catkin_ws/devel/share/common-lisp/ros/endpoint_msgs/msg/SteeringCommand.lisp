; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SteeringCommand.msg.html

(cl:defclass <SteeringCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (steering_command_data
    :reader steering_command_data
    :initarg :steering_command_data
    :type endpoint_msgs-msg:SteeringCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:SteeringCommandData)))
)

(cl:defclass SteeringCommand (<SteeringCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SteeringCommand> is deprecated: use endpoint_msgs-msg:SteeringCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SteeringCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'steering_command_data-val :lambda-list '(m))
(cl:defmethod steering_command_data-val ((m <SteeringCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_command_data-val is deprecated.  Use endpoint_msgs-msg:steering_command_data instead.")
  (steering_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SteeringCommand>)))
    "Constants for message type '<SteeringCommand>"
  '((:STEERING_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SteeringCommand)))
    "Constants for message type 'SteeringCommand"
  '((:STEERING_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringCommand>) ostream)
  "Serializes a message object of type '<SteeringCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringCommand>) istream)
  "Deserializes a message object of type '<SteeringCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringCommand>)))
  "Returns string type for a message object of type '<SteeringCommand>"
  "endpoint_msgs/SteeringCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringCommand)))
  "Returns string type for a message object of type 'SteeringCommand"
  "endpoint_msgs/SteeringCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringCommand>)))
  "Returns md5sum for a message object of type '<SteeringCommand>"
  "aa73e43ae8aed3f4d1bce6a30c1ce479")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringCommand)))
  "Returns md5sum for a message object of type 'SteeringCommand"
  "aa73e43ae8aed3f4d1bce6a30c1ce479")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringCommand>)))
  "Returns full string definition for message of type '<SteeringCommand>"
  (cl:format cl:nil "uint8 STEERING_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SteeringCommandData steering_command_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringCommandData~%uint64 timestamp_us~%bool steering_enable~%endpoint_msgs/SteeringType steering_type~%float32 steering_command~%float32 steering_rate~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%float32 rwheel_command~%endpoint_msgs/RWhSteerDirection rwheel_steer_direction~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringCommand)))
  "Returns full string definition for message of type 'SteeringCommand"
  (cl:format cl:nil "uint8 STEERING_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SteeringCommandData steering_command_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringCommandData~%uint64 timestamp_us~%bool steering_enable~%endpoint_msgs/SteeringType steering_type~%float32 steering_command~%float32 steering_rate~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%float32 rwheel_command~%endpoint_msgs/RWhSteerDirection rwheel_steer_direction~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringCommand
    (cl:cons ':available (available msg))
    (cl:cons ':steering_command_data (steering_command_data msg))
))
