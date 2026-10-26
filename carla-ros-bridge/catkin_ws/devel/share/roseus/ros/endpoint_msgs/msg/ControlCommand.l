;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ControlCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ControlCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::CONTROLCOMMAND")
  (make-package "ENDPOINT_MSGS::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass endpoint_msgs::ControlCommand
  :super ros::object
  :slots (_header _meta _wire_type_command _brake_command _gear_command _steering_command _throttle_command _aeb_command _vehicle_light_command _window_command _auxiliary_command _acce_command _extra _speed_command ))

(defmethod endpoint_msgs::ControlCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance endpoint_msgs::ControlCommandMeta :init))
    ((:wire_type_command __wire_type_command) (instance endpoint_msgs::WireControlTypeCommand :init))
    ((:brake_command __brake_command) (instance endpoint_msgs::BrakeCommand :init))
    ((:gear_command __gear_command) (instance endpoint_msgs::GearCommand :init))
    ((:steering_command __steering_command) (instance endpoint_msgs::SteeringCommand :init))
    ((:throttle_command __throttle_command) (instance endpoint_msgs::ThrottleCommand :init))
    ((:aeb_command __aeb_command) (instance endpoint_msgs::AebCommand :init))
    ((:vehicle_light_command __vehicle_light_command) (instance endpoint_msgs::VehicleLightCommand :init))
    ((:window_command __window_command) (instance endpoint_msgs::WindowCommand :init))
    ((:auxiliary_command __auxiliary_command) (instance endpoint_msgs::AuxiliaryCommand :init))
    ((:acce_command __acce_command) (instance endpoint_msgs::AcceCommand :init))
    ((:extra __extra) (instance endpoint_msgs::ControlCommandExtra :init))
    ((:speed_command __speed_command) (instance endpoint_msgs::SpeedCommand :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _wire_type_command __wire_type_command)
   (setq _brake_command __brake_command)
   (setq _gear_command __gear_command)
   (setq _steering_command __steering_command)
   (setq _throttle_command __throttle_command)
   (setq _aeb_command __aeb_command)
   (setq _vehicle_light_command __vehicle_light_command)
   (setq _window_command __window_command)
   (setq _auxiliary_command __auxiliary_command)
   (setq _acce_command __acce_command)
   (setq _extra __extra)
   (setq _speed_command __speed_command)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:wire_type_command
   (&rest __wire_type_command)
   (if (keywordp (car __wire_type_command))
       (send* _wire_type_command __wire_type_command)
     (progn
       (if __wire_type_command (setq _wire_type_command (car __wire_type_command)))
       _wire_type_command)))
  (:brake_command
   (&rest __brake_command)
   (if (keywordp (car __brake_command))
       (send* _brake_command __brake_command)
     (progn
       (if __brake_command (setq _brake_command (car __brake_command)))
       _brake_command)))
  (:gear_command
   (&rest __gear_command)
   (if (keywordp (car __gear_command))
       (send* _gear_command __gear_command)
     (progn
       (if __gear_command (setq _gear_command (car __gear_command)))
       _gear_command)))
  (:steering_command
   (&rest __steering_command)
   (if (keywordp (car __steering_command))
       (send* _steering_command __steering_command)
     (progn
       (if __steering_command (setq _steering_command (car __steering_command)))
       _steering_command)))
  (:throttle_command
   (&rest __throttle_command)
   (if (keywordp (car __throttle_command))
       (send* _throttle_command __throttle_command)
     (progn
       (if __throttle_command (setq _throttle_command (car __throttle_command)))
       _throttle_command)))
  (:aeb_command
   (&rest __aeb_command)
   (if (keywordp (car __aeb_command))
       (send* _aeb_command __aeb_command)
     (progn
       (if __aeb_command (setq _aeb_command (car __aeb_command)))
       _aeb_command)))
  (:vehicle_light_command
   (&rest __vehicle_light_command)
   (if (keywordp (car __vehicle_light_command))
       (send* _vehicle_light_command __vehicle_light_command)
     (progn
       (if __vehicle_light_command (setq _vehicle_light_command (car __vehicle_light_command)))
       _vehicle_light_command)))
  (:window_command
   (&rest __window_command)
   (if (keywordp (car __window_command))
       (send* _window_command __window_command)
     (progn
       (if __window_command (setq _window_command (car __window_command)))
       _window_command)))
  (:auxiliary_command
   (&rest __auxiliary_command)
   (if (keywordp (car __auxiliary_command))
       (send* _auxiliary_command __auxiliary_command)
     (progn
       (if __auxiliary_command (setq _auxiliary_command (car __auxiliary_command)))
       _auxiliary_command)))
  (:acce_command
   (&rest __acce_command)
   (if (keywordp (car __acce_command))
       (send* _acce_command __acce_command)
     (progn
       (if __acce_command (setq _acce_command (car __acce_command)))
       _acce_command)))
  (:extra
   (&rest __extra)
   (if (keywordp (car __extra))
       (send* _extra __extra)
     (progn
       (if __extra (setq _extra (car __extra)))
       _extra)))
  (:speed_command
   (&rest __speed_command)
   (if (keywordp (car __speed_command))
       (send* _speed_command __speed_command)
     (progn
       (if __speed_command (setq _speed_command (car __speed_command)))
       _speed_command)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; endpoint_msgs/ControlCommandMeta _meta
    (send _meta :serialization-length)
    ;; endpoint_msgs/WireControlTypeCommand _wire_type_command
    (send _wire_type_command :serialization-length)
    ;; endpoint_msgs/BrakeCommand _brake_command
    (send _brake_command :serialization-length)
    ;; endpoint_msgs/GearCommand _gear_command
    (send _gear_command :serialization-length)
    ;; endpoint_msgs/SteeringCommand _steering_command
    (send _steering_command :serialization-length)
    ;; endpoint_msgs/ThrottleCommand _throttle_command
    (send _throttle_command :serialization-length)
    ;; endpoint_msgs/AebCommand _aeb_command
    (send _aeb_command :serialization-length)
    ;; endpoint_msgs/VehicleLightCommand _vehicle_light_command
    (send _vehicle_light_command :serialization-length)
    ;; endpoint_msgs/WindowCommand _window_command
    (send _window_command :serialization-length)
    ;; endpoint_msgs/AuxiliaryCommand _auxiliary_command
    (send _auxiliary_command :serialization-length)
    ;; endpoint_msgs/AcceCommand _acce_command
    (send _acce_command :serialization-length)
    ;; endpoint_msgs/ControlCommandExtra _extra
    (send _extra :serialization-length)
    ;; endpoint_msgs/SpeedCommand _speed_command
    (send _speed_command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; endpoint_msgs/ControlCommandMeta _meta
       (send _meta :serialize s)
     ;; endpoint_msgs/WireControlTypeCommand _wire_type_command
       (send _wire_type_command :serialize s)
     ;; endpoint_msgs/BrakeCommand _brake_command
       (send _brake_command :serialize s)
     ;; endpoint_msgs/GearCommand _gear_command
       (send _gear_command :serialize s)
     ;; endpoint_msgs/SteeringCommand _steering_command
       (send _steering_command :serialize s)
     ;; endpoint_msgs/ThrottleCommand _throttle_command
       (send _throttle_command :serialize s)
     ;; endpoint_msgs/AebCommand _aeb_command
       (send _aeb_command :serialize s)
     ;; endpoint_msgs/VehicleLightCommand _vehicle_light_command
       (send _vehicle_light_command :serialize s)
     ;; endpoint_msgs/WindowCommand _window_command
       (send _window_command :serialize s)
     ;; endpoint_msgs/AuxiliaryCommand _auxiliary_command
       (send _auxiliary_command :serialize s)
     ;; endpoint_msgs/AcceCommand _acce_command
       (send _acce_command :serialize s)
     ;; endpoint_msgs/ControlCommandExtra _extra
       (send _extra :serialize s)
     ;; endpoint_msgs/SpeedCommand _speed_command
       (send _speed_command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; endpoint_msgs/ControlCommandMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; endpoint_msgs/WireControlTypeCommand _wire_type_command
     (send _wire_type_command :deserialize buf ptr-) (incf ptr- (send _wire_type_command :serialization-length))
   ;; endpoint_msgs/BrakeCommand _brake_command
     (send _brake_command :deserialize buf ptr-) (incf ptr- (send _brake_command :serialization-length))
   ;; endpoint_msgs/GearCommand _gear_command
     (send _gear_command :deserialize buf ptr-) (incf ptr- (send _gear_command :serialization-length))
   ;; endpoint_msgs/SteeringCommand _steering_command
     (send _steering_command :deserialize buf ptr-) (incf ptr- (send _steering_command :serialization-length))
   ;; endpoint_msgs/ThrottleCommand _throttle_command
     (send _throttle_command :deserialize buf ptr-) (incf ptr- (send _throttle_command :serialization-length))
   ;; endpoint_msgs/AebCommand _aeb_command
     (send _aeb_command :deserialize buf ptr-) (incf ptr- (send _aeb_command :serialization-length))
   ;; endpoint_msgs/VehicleLightCommand _vehicle_light_command
     (send _vehicle_light_command :deserialize buf ptr-) (incf ptr- (send _vehicle_light_command :serialization-length))
   ;; endpoint_msgs/WindowCommand _window_command
     (send _window_command :deserialize buf ptr-) (incf ptr- (send _window_command :serialization-length))
   ;; endpoint_msgs/AuxiliaryCommand _auxiliary_command
     (send _auxiliary_command :deserialize buf ptr-) (incf ptr- (send _auxiliary_command :serialization-length))
   ;; endpoint_msgs/AcceCommand _acce_command
     (send _acce_command :deserialize buf ptr-) (incf ptr- (send _acce_command :serialization-length))
   ;; endpoint_msgs/ControlCommandExtra _extra
     (send _extra :deserialize buf ptr-) (incf ptr- (send _extra :serialization-length))
   ;; endpoint_msgs/SpeedCommand _speed_command
     (send _speed_command :deserialize buf ptr-) (incf ptr- (send _speed_command :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::ControlCommand :md5sum-) "e3f262e253a4dae1526b55df7859faae")
(setf (get endpoint_msgs::ControlCommand :datatype-) "endpoint_msgs/ControlCommand")
(setf (get endpoint_msgs::ControlCommand :definition-)
      "std_msgs/Header header
endpoint_msgs/ControlCommandMeta meta
endpoint_msgs/WireControlTypeCommand wire_type_command
endpoint_msgs/BrakeCommand brake_command
endpoint_msgs/GearCommand gear_command
endpoint_msgs/SteeringCommand steering_command
endpoint_msgs/ThrottleCommand throttle_command
endpoint_msgs/AebCommand aeb_command
endpoint_msgs/VehicleLightCommand vehicle_light_command
endpoint_msgs/WindowCommand window_command
endpoint_msgs/AuxiliaryCommand auxiliary_command
endpoint_msgs/AcceCommand acce_command
endpoint_msgs/ControlCommandExtra extra
endpoint_msgs/SpeedCommand speed_command

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: endpoint_msgs/ControlCommandMeta
uint64 timestamp_us

================================================================================
MSG: endpoint_msgs/WireControlTypeCommand
uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/WireControlTypeCommandData wire_control_command_data

================================================================================
MSG: endpoint_msgs/WireControlTypeCommandData
uint64 timestamp_us
endpoint_msgs/WireControlType wire_type

================================================================================
MSG: endpoint_msgs/WireControlType
uint8 SYETEM_REQ_NONE = 0
uint8 SYSTEM_REQ_PILOT = 1
uint8 SYSTEM_REQ_APA = 2
uint8 SYSTEM_REQ_ACC = 3
uint8 SYSTEM_REQ_AVP = 4
uint8 SYSTEM_REQ_LVP = 5
uint8 SYSTEM_REQ_MRC = 6
uint8 RESERVED = 7
uint8 wire_control_type

================================================================================
MSG: endpoint_msgs/BrakeCommand
uint8 BRAKE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/BrakeCommandData brake_command_data

================================================================================
MSG: endpoint_msgs/BrakeCommandData
uint64 timestamp_us
bool brake_enable
endpoint_msgs/BrakeType brake_type
float32 brake_command
endpoint_msgs/BrakeControlType brake_control_type
endpoint_msgs/AccStandstillType brake_acc_standstill
bool brake_acc_go
bool epb_enable
bool epb_command
bool auto_hold_command

================================================================================
MSG: endpoint_msgs/BrakeType
uint8 PEDAL = 1
uint8 DECELERATION = 2
uint8 MASTER_CYLINDERPRESSURE = 3
uint8 WHEEL_CYLINDERPRESSURE = 4
uint8 TORQUE = 5
uint8 DISTANCE = 6
uint8 SV = 7
uint8 RESERVED = 8
uint8 value

================================================================================
MSG: endpoint_msgs/BrakeControlType
uint8 NORMAL = 1
uint8 EMERGENT = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AccStandstillType
uint8 NO_REQUEST = 0
uint8 REQUEST = 1
uint8 REMIND_DRIVE_GO = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/GearCommand
uint8 GEAR_COMMAND_DATA = 1
uint8 available
endpoint_msgs/GearCommandData gear_command_data

================================================================================
MSG: endpoint_msgs/GearCommandData
uint64 timestamp_us
bool gear_enable
endpoint_msgs/Gear gear_type

================================================================================
MSG: endpoint_msgs/Gear
uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

================================================================================
MSG: endpoint_msgs/SteeringCommand
uint8 STEERING_COMMAND_DATA = 1
uint8 available
endpoint_msgs/SteeringCommandData steering_command_data

================================================================================
MSG: endpoint_msgs/SteeringCommandData
uint64 timestamp_us
bool steering_enable
endpoint_msgs/SteeringType steering_type
float32 steering_command
float32 steering_rate
endpoint_msgs/RWhSteerModType rwheel_steer_mode
float32 rwheel_command
endpoint_msgs/RWhSteerDirection rwheel_steer_direction

================================================================================
MSG: endpoint_msgs/SteeringType
uint8 STEERING_ANGLE = 1
uint8 FRONT_WHEEL_ANGLE = 2
uint8 YAW_RATE = 3
uint8 TORQUE = 4
uint8 ANGLE_SPEED = 5
uint8 CURVATURE = 6
uint8 RESERVED = 7
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerModType
uint8 NO_REQUEST = 0
uint8 CONTROL_REQUEST = 1
uint8 LOCK_REQUEST = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerDirection
uint8 NONE = 0
uint8 SAME_DIRECTION = 1
uint8 OPPOSITE_DIRECTION = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/ThrottleCommand
uint8 THROTTLE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/ThrottleCommandData throttle_command_data

================================================================================
MSG: endpoint_msgs/ThrottleCommandData
uint64 timestamp_us
bool throttle_enable
endpoint_msgs/ThrottleType throttle_type
float32 throttle_command

================================================================================
MSG: endpoint_msgs/ThrottleType
uint8 PEDAL = 0
uint8 THROTTLE = 1
uint8 TORQUE = 2
uint8 ACCELERATION = 3
uint8 SPEED = 4
uint8 SV = 5
uint8 RESERVED = 6
uint8 value

================================================================================
MSG: endpoint_msgs/AebCommand
uint8 AEB_COMMAND_DATA = 1
uint8 available
endpoint_msgs/AebCommandData aeb_command_data

================================================================================
MSG: endpoint_msgs/AebCommandData
uint64 timestamp_us
endpoint_msgs/AebBrkJerkReq awb_request
endpoint_msgs/AebDclReqSts dcl_req_state
float32 dcl_req_command
endpoint_msgs/AebHydBrkReq hba_request_level
bool prefill_request

================================================================================
MSG: endpoint_msgs/AebBrkJerkReq
uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1
uint8 AEB_BRAKE_JERK_MID_LEVEL = 2
uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3
uint8 AEV_BRAKE_JERK_RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AebDclReqSts
uint8 AEB_DLC_STATE_NO_REQUEST = 0
uint8 AEB_DLC_STATE_DECELERATION = 1
uint8 AEB_DLC_STATE_RESERVED = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AebHydBrkReq
uint8 AEB_HYD_BRAKE_NO_REQUEST = 0
uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1
uint8 AEB_HYD_BRAKE_MID_LEVEL = 2
uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3
uint8 AEB_HYD_BRAKE_RESERVED1 = 4
uint8 AEB_HYD_BRAKE_RESERVED2 = 5
uint8 AEB_HYD_BRAKE_RESERVED3 = 6
uint8 AEB_HYD_BRAKE_RESERVED4 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleLightCommand
uint8 VEHICLE_LIGHT_COMMAND_DATA = 1
uint8 available
endpoint_msgs/VehicleLightCommandData vehicle_light_command_data

================================================================================
MSG: endpoint_msgs/VehicleLightCommandData
uint64 timestamp_us
bool light_enable
endpoint_msgs/TurnSignal turn_signal
endpoint_msgs/FrontLightState front_light
bool width_light
bool reversing_light
bool front_fog_light
bool rear_fog_light

================================================================================
MSG: endpoint_msgs/TurnSignal
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/FrontLightState
uint8 LIGHT_OFF = 0
uint8 LOW_BEAM_LIGHT = 1
uint8 HIGH_BEAM_LIGHT = 2
uint8 OVERTAKING_FLASH = 3
uint8 LIGHT_AUTO = 4
uint8 value

================================================================================
MSG: endpoint_msgs/WindowCommand
uint8 WINDOW_COMMAND_DATA = 1
uint8 available
endpoint_msgs/WindowCommandData window_command_data

================================================================================
MSG: endpoint_msgs/WindowCommandData
uint64 timestamp_us
bool window_lock
endpoint_msgs/WindowType window_left_front
endpoint_msgs/WindowType window_right_front
endpoint_msgs/WindowType window_left_rear
endpoint_msgs/WindowType window_right_rear
endpoint_msgs/WindowType window_top

================================================================================
MSG: endpoint_msgs/WindowType
uint8 LIFT_STOP = 0
uint8 LIFT_UP = 1
uint8 LIFT_DOWN = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AuxiliaryCommand
uint8 AUXILIARY_COMMAND_DATA = 1
uint8 available
endpoint_msgs/AuxiliaryCommandData auxiliary_command_data

================================================================================
MSG: endpoint_msgs/AuxiliaryCommandData
uint64 timestamp_us
bool wiper_enable
endpoint_msgs/WiperCommandType front_wiper
endpoint_msgs/WiperCommandType rear_wiper
endpoint_msgs/MirrorState rearview_mirror
endpoint_msgs/PowerModeType vehicle_power
endpoint_msgs/VehicleLockType vehicle_lock
bool seat_belt_alarm
bool seat_belt_tightening
bool steering_wheel_alarm
bool buzzer_alarm
bool horn_enable
endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode
bool emergencybraking_enable
bool gradualbraking_enable
bool shared_control_enable
bool shared_contro_state
float32 shared_control_steer_gain_level
float32 shared_control_eps_torque_limit

================================================================================
MSG: endpoint_msgs/WiperCommandType
uint8 OFF = 0
uint8 LOW = 1
uint8 HIGH = 2
uint8 AUTO = 3
uint8 SPRAY = 4
uint8 RESERVED = 5
uint8 value

================================================================================
MSG: endpoint_msgs/MirrorState
uint8 NO_REQUEST = 0
uint8 REQUEST_UNFOLD = 1
uint8 REQUEST_FOLD = 2
uint8 RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/PowerModeType
uint8 VEHILCE_POWER_MODE_OFF = 0
uint8 VEHILCE_POWER_MODE_NORMAL = 1
uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2
uint8 VEHILCE_POWER_MODE_RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleLockType
uint8 NONE = 0
uint8 UNLOCK = 1
uint8 LOCK = 2
uint8 value

================================================================================
MSG: endpoint_msgs/ApaVcurCtlMode
uint8 NORMAL = 0
uint8 DR_SWITCH_MODE = 1
uint8 OBSTACLE_CROSSING_MODE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 RESERVED4 = 6
uint8 RESERVED5 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/AcceCommand
uint8 ACCE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/AcceCommandData acce_command_data

================================================================================
MSG: endpoint_msgs/AcceCommandData
uint64 timestamp_us
float32 command_value
bool acce_command_enable

================================================================================
MSG: endpoint_msgs/ControlCommandExtra
uint8 VERSION = 1
uint8 JSON = 2
uint8 available
string version
string json

================================================================================
MSG: endpoint_msgs/SpeedCommand
uint8 SPEED_COMMAND_DATA = 1
uint8 available
endpoint_msgs/SpeedCommandData speed_command_data

================================================================================
MSG: endpoint_msgs/SpeedCommandData
bool speed_enable
bool toque_unload_enable
float32 speed_command
float32 torque_ffwd_command
endpoint_msgs/TargetControlMotor target_control_motor
endpoint_msgs/TargetControlMode target_control_mode
float32 wheel_torque_lim_max
float32 wheel_torque_lim_min
float32 wheel_torque_rate_max
float32 wheel_torque_rate_min
float32 torque_unload_rate

================================================================================
MSG: endpoint_msgs/TargetControlMotor
uint8 FL = 0
uint8 FR = 1
uint8 RL = 2
uint8 RR = 3
uint8 FLFR = 4
uint8 RLRR = 5
uint8 RESERVED1 = 6
uint8 RESERVED2 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/TargetControlMode
uint8 NONE = 0
uint8 TORQUE = 1
uint8 SPEED = 2
uint8 RESERVE = 3
uint8 value

")



(provide :endpoint_msgs/ControlCommand "e3f262e253a4dae1526b55df7859faae")


