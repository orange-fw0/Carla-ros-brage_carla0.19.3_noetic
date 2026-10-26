; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SpeedCommand.msg.html

(cl:defclass <SpeedCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (speed_command_data
    :reader speed_command_data
    :initarg :speed_command_data
    :type endpoint_msgs-msg:SpeedCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:SpeedCommandData)))
)

(cl:defclass SpeedCommand (<SpeedCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SpeedCommand> is deprecated: use endpoint_msgs-msg:SpeedCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SpeedCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'speed_command_data-val :lambda-list '(m))
(cl:defmethod speed_command_data-val ((m <SpeedCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:speed_command_data-val is deprecated.  Use endpoint_msgs-msg:speed_command_data instead.")
  (speed_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedCommand>)))
    "Constants for message type '<SpeedCommand>"
  '((:SPEED_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedCommand)))
    "Constants for message type 'SpeedCommand"
  '((:SPEED_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedCommand>) ostream)
  "Serializes a message object of type '<SpeedCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedCommand>) istream)
  "Deserializes a message object of type '<SpeedCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedCommand>)))
  "Returns string type for a message object of type '<SpeedCommand>"
  "endpoint_msgs/SpeedCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedCommand)))
  "Returns string type for a message object of type 'SpeedCommand"
  "endpoint_msgs/SpeedCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedCommand>)))
  "Returns md5sum for a message object of type '<SpeedCommand>"
  "a76bd53896f49e2b39dd5a952c5ca801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedCommand)))
  "Returns md5sum for a message object of type 'SpeedCommand"
  "a76bd53896f49e2b39dd5a952c5ca801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedCommand>)))
  "Returns full string definition for message of type '<SpeedCommand>"
  (cl:format cl:nil "uint8 SPEED_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SpeedCommandData speed_command_data~%~%================================================================================~%MSG: endpoint_msgs/SpeedCommandData~%bool speed_enable~%bool toque_unload_enable~%float32 speed_command~%float32 torque_ffwd_command~%endpoint_msgs/TargetControlMotor target_control_motor~%endpoint_msgs/TargetControlMode target_control_mode~%float32 wheel_torque_lim_max~%float32 wheel_torque_lim_min~%float32 wheel_torque_rate_max~%float32 wheel_torque_rate_min~%float32 torque_unload_rate~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMotor~%uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMode~%uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedCommand)))
  "Returns full string definition for message of type 'SpeedCommand"
  (cl:format cl:nil "uint8 SPEED_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SpeedCommandData speed_command_data~%~%================================================================================~%MSG: endpoint_msgs/SpeedCommandData~%bool speed_enable~%bool toque_unload_enable~%float32 speed_command~%float32 torque_ffwd_command~%endpoint_msgs/TargetControlMotor target_control_motor~%endpoint_msgs/TargetControlMode target_control_mode~%float32 wheel_torque_lim_max~%float32 wheel_torque_lim_min~%float32 wheel_torque_rate_max~%float32 wheel_torque_rate_min~%float32 torque_unload_rate~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMotor~%uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMode~%uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedCommand
    (cl:cons ':available (available msg))
    (cl:cons ':speed_command_data (speed_command_data msg))
))
