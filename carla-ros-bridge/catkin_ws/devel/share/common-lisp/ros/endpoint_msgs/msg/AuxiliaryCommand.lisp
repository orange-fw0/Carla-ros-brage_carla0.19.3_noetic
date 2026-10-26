; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AuxiliaryCommand.msg.html

(cl:defclass <AuxiliaryCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (auxiliary_command_data
    :reader auxiliary_command_data
    :initarg :auxiliary_command_data
    :type endpoint_msgs-msg:AuxiliaryCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:AuxiliaryCommandData)))
)

(cl:defclass AuxiliaryCommand (<AuxiliaryCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuxiliaryCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuxiliaryCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AuxiliaryCommand> is deprecated: use endpoint_msgs-msg:AuxiliaryCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AuxiliaryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'auxiliary_command_data-val :lambda-list '(m))
(cl:defmethod auxiliary_command_data-val ((m <AuxiliaryCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:auxiliary_command_data-val is deprecated.  Use endpoint_msgs-msg:auxiliary_command_data instead.")
  (auxiliary_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AuxiliaryCommand>)))
    "Constants for message type '<AuxiliaryCommand>"
  '((:AUXILIARY_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AuxiliaryCommand)))
    "Constants for message type 'AuxiliaryCommand"
  '((:AUXILIARY_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuxiliaryCommand>) ostream)
  "Serializes a message object of type '<AuxiliaryCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auxiliary_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuxiliaryCommand>) istream)
  "Deserializes a message object of type '<AuxiliaryCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auxiliary_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuxiliaryCommand>)))
  "Returns string type for a message object of type '<AuxiliaryCommand>"
  "endpoint_msgs/AuxiliaryCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuxiliaryCommand)))
  "Returns string type for a message object of type 'AuxiliaryCommand"
  "endpoint_msgs/AuxiliaryCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuxiliaryCommand>)))
  "Returns md5sum for a message object of type '<AuxiliaryCommand>"
  "4fdab96c0ecd165eae50dd7d8fd90979")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuxiliaryCommand)))
  "Returns md5sum for a message object of type 'AuxiliaryCommand"
  "4fdab96c0ecd165eae50dd7d8fd90979")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuxiliaryCommand>)))
  "Returns full string definition for message of type '<AuxiliaryCommand>"
  (cl:format cl:nil "uint8 AUXILIARY_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AuxiliaryCommandData auxiliary_command_data~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryCommandData~%uint64 timestamp_us~%bool wiper_enable~%endpoint_msgs/WiperCommandType front_wiper~%endpoint_msgs/WiperCommandType rear_wiper~%endpoint_msgs/MirrorState rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power~%endpoint_msgs/VehicleLockType vehicle_lock~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%bool horn_enable~%endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode~%bool emergencybraking_enable~%bool gradualbraking_enable~%bool shared_control_enable~%bool shared_contro_state~%float32 shared_control_steer_gain_level~%float32 shared_control_eps_torque_limit~%~%================================================================================~%MSG: endpoint_msgs/WiperCommandType~%uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLockType~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ApaVcurCtlMode~%uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuxiliaryCommand)))
  "Returns full string definition for message of type 'AuxiliaryCommand"
  (cl:format cl:nil "uint8 AUXILIARY_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AuxiliaryCommandData auxiliary_command_data~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryCommandData~%uint64 timestamp_us~%bool wiper_enable~%endpoint_msgs/WiperCommandType front_wiper~%endpoint_msgs/WiperCommandType rear_wiper~%endpoint_msgs/MirrorState rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power~%endpoint_msgs/VehicleLockType vehicle_lock~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%bool horn_enable~%endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode~%bool emergencybraking_enable~%bool gradualbraking_enable~%bool shared_control_enable~%bool shared_contro_state~%float32 shared_control_steer_gain_level~%float32 shared_control_eps_torque_limit~%~%================================================================================~%MSG: endpoint_msgs/WiperCommandType~%uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLockType~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ApaVcurCtlMode~%uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuxiliaryCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auxiliary_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuxiliaryCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'AuxiliaryCommand
    (cl:cons ':available (available msg))
    (cl:cons ':auxiliary_command_data (auxiliary_command_data msg))
))
