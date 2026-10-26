; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ControlCommand.msg.html

(cl:defclass <ControlCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type endpoint_msgs-msg:ControlCommandMeta
    :initform (cl:make-instance 'endpoint_msgs-msg:ControlCommandMeta))
   (wire_type_command
    :reader wire_type_command
    :initarg :wire_type_command
    :type endpoint_msgs-msg:WireControlTypeCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:WireControlTypeCommand))
   (brake_command
    :reader brake_command
    :initarg :brake_command
    :type endpoint_msgs-msg:BrakeCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeCommand))
   (gear_command
    :reader gear_command
    :initarg :gear_command
    :type endpoint_msgs-msg:GearCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:GearCommand))
   (steering_command
    :reader steering_command
    :initarg :steering_command
    :type endpoint_msgs-msg:SteeringCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:SteeringCommand))
   (throttle_command
    :reader throttle_command
    :initarg :throttle_command
    :type endpoint_msgs-msg:ThrottleCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleCommand))
   (aeb_command
    :reader aeb_command
    :initarg :aeb_command
    :type endpoint_msgs-msg:AebCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:AebCommand))
   (vehicle_light_command
    :reader vehicle_light_command
    :initarg :vehicle_light_command
    :type endpoint_msgs-msg:VehicleLightCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleLightCommand))
   (window_command
    :reader window_command
    :initarg :window_command
    :type endpoint_msgs-msg:WindowCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:WindowCommand))
   (auxiliary_command
    :reader auxiliary_command
    :initarg :auxiliary_command
    :type endpoint_msgs-msg:AuxiliaryCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:AuxiliaryCommand))
   (acce_command
    :reader acce_command
    :initarg :acce_command
    :type endpoint_msgs-msg:AcceCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:AcceCommand))
   (extra
    :reader extra
    :initarg :extra
    :type endpoint_msgs-msg:ControlCommandExtra
    :initform (cl:make-instance 'endpoint_msgs-msg:ControlCommandExtra))
   (speed_command
    :reader speed_command
    :initarg :speed_command
    :type endpoint_msgs-msg:SpeedCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:SpeedCommand)))
)

(cl:defclass ControlCommand (<ControlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ControlCommand> is deprecated: use endpoint_msgs-msg:ControlCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:header-val is deprecated.  Use endpoint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:meta-val is deprecated.  Use endpoint_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'wire_type_command-val :lambda-list '(m))
(cl:defmethod wire_type_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wire_type_command-val is deprecated.  Use endpoint_msgs-msg:wire_type_command instead.")
  (wire_type_command m))

(cl:ensure-generic-function 'brake_command-val :lambda-list '(m))
(cl:defmethod brake_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_command-val is deprecated.  Use endpoint_msgs-msg:brake_command instead.")
  (brake_command m))

(cl:ensure-generic-function 'gear_command-val :lambda-list '(m))
(cl:defmethod gear_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:gear_command-val is deprecated.  Use endpoint_msgs-msg:gear_command instead.")
  (gear_command m))

(cl:ensure-generic-function 'steering_command-val :lambda-list '(m))
(cl:defmethod steering_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_command-val is deprecated.  Use endpoint_msgs-msg:steering_command instead.")
  (steering_command m))

(cl:ensure-generic-function 'throttle_command-val :lambda-list '(m))
(cl:defmethod throttle_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_command-val is deprecated.  Use endpoint_msgs-msg:throttle_command instead.")
  (throttle_command m))

(cl:ensure-generic-function 'aeb_command-val :lambda-list '(m))
(cl:defmethod aeb_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:aeb_command-val is deprecated.  Use endpoint_msgs-msg:aeb_command instead.")
  (aeb_command m))

(cl:ensure-generic-function 'vehicle_light_command-val :lambda-list '(m))
(cl:defmethod vehicle_light_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_light_command-val is deprecated.  Use endpoint_msgs-msg:vehicle_light_command instead.")
  (vehicle_light_command m))

(cl:ensure-generic-function 'window_command-val :lambda-list '(m))
(cl:defmethod window_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:window_command-val is deprecated.  Use endpoint_msgs-msg:window_command instead.")
  (window_command m))

(cl:ensure-generic-function 'auxiliary_command-val :lambda-list '(m))
(cl:defmethod auxiliary_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:auxiliary_command-val is deprecated.  Use endpoint_msgs-msg:auxiliary_command instead.")
  (auxiliary_command m))

(cl:ensure-generic-function 'acce_command-val :lambda-list '(m))
(cl:defmethod acce_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:acce_command-val is deprecated.  Use endpoint_msgs-msg:acce_command instead.")
  (acce_command m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:extra-val is deprecated.  Use endpoint_msgs-msg:extra instead.")
  (extra m))

(cl:ensure-generic-function 'speed_command-val :lambda-list '(m))
(cl:defmethod speed_command-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:speed_command-val is deprecated.  Use endpoint_msgs-msg:speed_command instead.")
  (speed_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommand>) ostream)
  "Serializes a message object of type '<ControlCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wire_type_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aeb_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_light_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'window_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auxiliary_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acce_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extra) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommand>) istream)
  "Deserializes a message object of type '<ControlCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wire_type_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aeb_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_light_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'window_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auxiliary_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acce_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extra) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommand>)))
  "Returns string type for a message object of type '<ControlCommand>"
  "endpoint_msgs/ControlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommand)))
  "Returns string type for a message object of type 'ControlCommand"
  "endpoint_msgs/ControlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommand>)))
  "Returns md5sum for a message object of type '<ControlCommand>"
  "e3f262e253a4dae1526b55df7859faae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommand)))
  "Returns md5sum for a message object of type 'ControlCommand"
  "e3f262e253a4dae1526b55df7859faae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommand>)))
  "Returns full string definition for message of type '<ControlCommand>"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/ControlCommandMeta meta~%endpoint_msgs/WireControlTypeCommand wire_type_command~%endpoint_msgs/BrakeCommand brake_command~%endpoint_msgs/GearCommand gear_command~%endpoint_msgs/SteeringCommand steering_command~%endpoint_msgs/ThrottleCommand throttle_command~%endpoint_msgs/AebCommand aeb_command~%endpoint_msgs/VehicleLightCommand vehicle_light_command~%endpoint_msgs/WindowCommand window_command~%endpoint_msgs/AuxiliaryCommand auxiliary_command~%endpoint_msgs/AcceCommand acce_command~%endpoint_msgs/ControlCommandExtra extra~%endpoint_msgs/SpeedCommand speed_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/ControlCommandMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/WireControlTypeCommand~%uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WireControlTypeCommandData wire_control_command_data~%~%================================================================================~%MSG: endpoint_msgs/WireControlTypeCommandData~%uint64 timestamp_us~%endpoint_msgs/WireControlType wire_type~%~%================================================================================~%MSG: endpoint_msgs/WireControlType~%uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%================================================================================~%MSG: endpoint_msgs/BrakeCommand~%uint8 BRAKE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/BrakeCommandData brake_command_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeCommandData~%uint64 timestamp_us~%bool brake_enable~%endpoint_msgs/BrakeType brake_type~%float32 brake_command~%endpoint_msgs/BrakeControlType brake_control_type~%endpoint_msgs/AccStandstillType brake_acc_standstill~%bool brake_acc_go~%bool epb_enable~%bool epb_command~%bool auto_hold_command~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeControlType~%uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AccStandstillType~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearCommand~%uint8 GEAR_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/GearCommandData gear_command_data~%~%================================================================================~%MSG: endpoint_msgs/GearCommandData~%uint64 timestamp_us~%bool gear_enable~%endpoint_msgs/Gear gear_type~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SteeringCommand~%uint8 STEERING_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SteeringCommandData steering_command_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringCommandData~%uint64 timestamp_us~%bool steering_enable~%endpoint_msgs/SteeringType steering_type~%float32 steering_command~%float32 steering_rate~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%float32 rwheel_command~%endpoint_msgs/RWhSteerDirection rwheel_steer_direction~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ThrottleCommand~%uint8 THROTTLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleCommandData throttle_command_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleCommandData~%uint64 timestamp_us~%bool throttle_enable~%endpoint_msgs/ThrottleType throttle_type~%float32 throttle_command~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebCommand~%uint8 AEB_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AebCommandData aeb_command_data~%~%================================================================================~%MSG: endpoint_msgs/AebCommandData~%uint64 timestamp_us~%endpoint_msgs/AebBrkJerkReq awb_request~%endpoint_msgs/AebDclReqSts dcl_req_state~%float32 dcl_req_command~%endpoint_msgs/AebHydBrkReq hba_request_level~%bool prefill_request~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkReq~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclReqSts~%uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebHydBrkReq~%uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightCommand~%uint8 VEHICLE_LIGHT_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/VehicleLightCommandData vehicle_light_command_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightCommandData~%uint64 timestamp_us~%bool light_enable~%endpoint_msgs/TurnSignal turn_signal~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WindowCommand~%uint8 WINDOW_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WindowCommandData window_command_data~%~%================================================================================~%MSG: endpoint_msgs/WindowCommandData~%uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowType window_left_front~%endpoint_msgs/WindowType window_right_front~%endpoint_msgs/WindowType window_left_rear~%endpoint_msgs/WindowType window_right_rear~%endpoint_msgs/WindowType window_top~%~%================================================================================~%MSG: endpoint_msgs/WindowType~%uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryCommand~%uint8 AUXILIARY_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AuxiliaryCommandData auxiliary_command_data~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryCommandData~%uint64 timestamp_us~%bool wiper_enable~%endpoint_msgs/WiperCommandType front_wiper~%endpoint_msgs/WiperCommandType rear_wiper~%endpoint_msgs/MirrorState rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power~%endpoint_msgs/VehicleLockType vehicle_lock~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%bool horn_enable~%endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode~%bool emergencybraking_enable~%bool gradualbraking_enable~%bool shared_control_enable~%bool shared_contro_state~%float32 shared_control_steer_gain_level~%float32 shared_control_eps_torque_limit~%~%================================================================================~%MSG: endpoint_msgs/WiperCommandType~%uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLockType~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ApaVcurCtlMode~%uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AcceCommand~%uint8 ACCE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AcceCommandData acce_command_data~%~%================================================================================~%MSG: endpoint_msgs/AcceCommandData~%uint64 timestamp_us~%float32 command_value~%bool acce_command_enable~%~%================================================================================~%MSG: endpoint_msgs/ControlCommandExtra~%uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%================================================================================~%MSG: endpoint_msgs/SpeedCommand~%uint8 SPEED_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SpeedCommandData speed_command_data~%~%================================================================================~%MSG: endpoint_msgs/SpeedCommandData~%bool speed_enable~%bool toque_unload_enable~%float32 speed_command~%float32 torque_ffwd_command~%endpoint_msgs/TargetControlMotor target_control_motor~%endpoint_msgs/TargetControlMode target_control_mode~%float32 wheel_torque_lim_max~%float32 wheel_torque_lim_min~%float32 wheel_torque_rate_max~%float32 wheel_torque_rate_min~%float32 torque_unload_rate~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMotor~%uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMode~%uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommand)))
  "Returns full string definition for message of type 'ControlCommand"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/ControlCommandMeta meta~%endpoint_msgs/WireControlTypeCommand wire_type_command~%endpoint_msgs/BrakeCommand brake_command~%endpoint_msgs/GearCommand gear_command~%endpoint_msgs/SteeringCommand steering_command~%endpoint_msgs/ThrottleCommand throttle_command~%endpoint_msgs/AebCommand aeb_command~%endpoint_msgs/VehicleLightCommand vehicle_light_command~%endpoint_msgs/WindowCommand window_command~%endpoint_msgs/AuxiliaryCommand auxiliary_command~%endpoint_msgs/AcceCommand acce_command~%endpoint_msgs/ControlCommandExtra extra~%endpoint_msgs/SpeedCommand speed_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/ControlCommandMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/WireControlTypeCommand~%uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WireControlTypeCommandData wire_control_command_data~%~%================================================================================~%MSG: endpoint_msgs/WireControlTypeCommandData~%uint64 timestamp_us~%endpoint_msgs/WireControlType wire_type~%~%================================================================================~%MSG: endpoint_msgs/WireControlType~%uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%================================================================================~%MSG: endpoint_msgs/BrakeCommand~%uint8 BRAKE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/BrakeCommandData brake_command_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeCommandData~%uint64 timestamp_us~%bool brake_enable~%endpoint_msgs/BrakeType brake_type~%float32 brake_command~%endpoint_msgs/BrakeControlType brake_control_type~%endpoint_msgs/AccStandstillType brake_acc_standstill~%bool brake_acc_go~%bool epb_enable~%bool epb_command~%bool auto_hold_command~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeControlType~%uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AccStandstillType~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearCommand~%uint8 GEAR_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/GearCommandData gear_command_data~%~%================================================================================~%MSG: endpoint_msgs/GearCommandData~%uint64 timestamp_us~%bool gear_enable~%endpoint_msgs/Gear gear_type~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SteeringCommand~%uint8 STEERING_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SteeringCommandData steering_command_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringCommandData~%uint64 timestamp_us~%bool steering_enable~%endpoint_msgs/SteeringType steering_type~%float32 steering_command~%float32 steering_rate~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%float32 rwheel_command~%endpoint_msgs/RWhSteerDirection rwheel_steer_direction~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ThrottleCommand~%uint8 THROTTLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleCommandData throttle_command_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleCommandData~%uint64 timestamp_us~%bool throttle_enable~%endpoint_msgs/ThrottleType throttle_type~%float32 throttle_command~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebCommand~%uint8 AEB_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AebCommandData aeb_command_data~%~%================================================================================~%MSG: endpoint_msgs/AebCommandData~%uint64 timestamp_us~%endpoint_msgs/AebBrkJerkReq awb_request~%endpoint_msgs/AebDclReqSts dcl_req_state~%float32 dcl_req_command~%endpoint_msgs/AebHydBrkReq hba_request_level~%bool prefill_request~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkReq~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclReqSts~%uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebHydBrkReq~%uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightCommand~%uint8 VEHICLE_LIGHT_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/VehicleLightCommandData vehicle_light_command_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightCommandData~%uint64 timestamp_us~%bool light_enable~%endpoint_msgs/TurnSignal turn_signal~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WindowCommand~%uint8 WINDOW_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WindowCommandData window_command_data~%~%================================================================================~%MSG: endpoint_msgs/WindowCommandData~%uint64 timestamp_us~%bool window_lock~%endpoint_msgs/WindowType window_left_front~%endpoint_msgs/WindowType window_right_front~%endpoint_msgs/WindowType window_left_rear~%endpoint_msgs/WindowType window_right_rear~%endpoint_msgs/WindowType window_top~%~%================================================================================~%MSG: endpoint_msgs/WindowType~%uint8 LIFT_STOP = 0~%uint8 LIFT_UP = 1~%uint8 LIFT_DOWN = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryCommand~%uint8 AUXILIARY_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AuxiliaryCommandData auxiliary_command_data~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryCommandData~%uint64 timestamp_us~%bool wiper_enable~%endpoint_msgs/WiperCommandType front_wiper~%endpoint_msgs/WiperCommandType rear_wiper~%endpoint_msgs/MirrorState rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power~%endpoint_msgs/VehicleLockType vehicle_lock~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%bool horn_enable~%endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode~%bool emergencybraking_enable~%bool gradualbraking_enable~%bool shared_control_enable~%bool shared_contro_state~%float32 shared_control_steer_gain_level~%float32 shared_control_eps_torque_limit~%~%================================================================================~%MSG: endpoint_msgs/WiperCommandType~%uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLockType~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ApaVcurCtlMode~%uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AcceCommand~%uint8 ACCE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AcceCommandData acce_command_data~%~%================================================================================~%MSG: endpoint_msgs/AcceCommandData~%uint64 timestamp_us~%float32 command_value~%bool acce_command_enable~%~%================================================================================~%MSG: endpoint_msgs/ControlCommandExtra~%uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%================================================================================~%MSG: endpoint_msgs/SpeedCommand~%uint8 SPEED_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/SpeedCommandData speed_command_data~%~%================================================================================~%MSG: endpoint_msgs/SpeedCommandData~%bool speed_enable~%bool toque_unload_enable~%float32 speed_command~%float32 torque_ffwd_command~%endpoint_msgs/TargetControlMotor target_control_motor~%endpoint_msgs/TargetControlMode target_control_mode~%float32 wheel_torque_lim_max~%float32 wheel_torque_lim_min~%float32 wheel_torque_rate_max~%float32 wheel_torque_rate_min~%float32 torque_unload_rate~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMotor~%uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMode~%uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wire_type_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aeb_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_light_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'window_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auxiliary_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acce_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extra))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommand
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':wire_type_command (wire_type_command msg))
    (cl:cons ':brake_command (brake_command msg))
    (cl:cons ':gear_command (gear_command msg))
    (cl:cons ':steering_command (steering_command msg))
    (cl:cons ':throttle_command (throttle_command msg))
    (cl:cons ':aeb_command (aeb_command msg))
    (cl:cons ':vehicle_light_command (vehicle_light_command msg))
    (cl:cons ':window_command (window_command msg))
    (cl:cons ':auxiliary_command (auxiliary_command msg))
    (cl:cons ':acce_command (acce_command msg))
    (cl:cons ':extra (extra msg))
    (cl:cons ':speed_command (speed_command msg))
))
