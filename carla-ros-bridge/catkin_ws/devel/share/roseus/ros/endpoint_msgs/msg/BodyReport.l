;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BodyReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BodyReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BODYREPORT")
  (make-package "ENDPOINT_MSGS::BODYREPORT"))

(in-package "ROS")
;;//! \htmlinclude BodyReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass endpoint_msgs::BodyReport
  :super ros::object
  :slots (_header _meta _vehicle_light_report _button_report _door_report _tire_report _window_report _wiper_report _energy_remaining_report _vehicle_alarm_report _vehicle_extra_report _human_protected_device_report _auxiliary_report _suspension_report _air_conditioning_report ))

(defmethod endpoint_msgs::BodyReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance endpoint_msgs::StateReportMeta :init))
    ((:vehicle_light_report __vehicle_light_report) (instance endpoint_msgs::VehicleLightReport :init))
    ((:button_report __button_report) (instance endpoint_msgs::ButtonEventReport :init))
    ((:door_report __door_report) (instance endpoint_msgs::DoorReport :init))
    ((:tire_report __tire_report) (instance endpoint_msgs::TirePressureReport :init))
    ((:window_report __window_report) (instance endpoint_msgs::WindowReport :init))
    ((:wiper_report __wiper_report) (instance endpoint_msgs::WiperReport :init))
    ((:energy_remaining_report __energy_remaining_report) (instance endpoint_msgs::EnergyRemainingReport :init))
    ((:vehicle_alarm_report __vehicle_alarm_report) (instance endpoint_msgs::VehicleAlarmReport :init))
    ((:vehicle_extra_report __vehicle_extra_report) (instance endpoint_msgs::VehicleExtraReport :init))
    ((:human_protected_device_report __human_protected_device_report) (instance endpoint_msgs::HumanProtectedDeviceReport :init))
    ((:auxiliary_report __auxiliary_report) (instance endpoint_msgs::AuxiliaryReport :init))
    ((:suspension_report __suspension_report) (instance endpoint_msgs::SuspensionReport :init))
    ((:air_conditioning_report __air_conditioning_report) (instance endpoint_msgs::AirConditioningReport :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _vehicle_light_report __vehicle_light_report)
   (setq _button_report __button_report)
   (setq _door_report __door_report)
   (setq _tire_report __tire_report)
   (setq _window_report __window_report)
   (setq _wiper_report __wiper_report)
   (setq _energy_remaining_report __energy_remaining_report)
   (setq _vehicle_alarm_report __vehicle_alarm_report)
   (setq _vehicle_extra_report __vehicle_extra_report)
   (setq _human_protected_device_report __human_protected_device_report)
   (setq _auxiliary_report __auxiliary_report)
   (setq _suspension_report __suspension_report)
   (setq _air_conditioning_report __air_conditioning_report)
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
  (:vehicle_light_report
   (&rest __vehicle_light_report)
   (if (keywordp (car __vehicle_light_report))
       (send* _vehicle_light_report __vehicle_light_report)
     (progn
       (if __vehicle_light_report (setq _vehicle_light_report (car __vehicle_light_report)))
       _vehicle_light_report)))
  (:button_report
   (&rest __button_report)
   (if (keywordp (car __button_report))
       (send* _button_report __button_report)
     (progn
       (if __button_report (setq _button_report (car __button_report)))
       _button_report)))
  (:door_report
   (&rest __door_report)
   (if (keywordp (car __door_report))
       (send* _door_report __door_report)
     (progn
       (if __door_report (setq _door_report (car __door_report)))
       _door_report)))
  (:tire_report
   (&rest __tire_report)
   (if (keywordp (car __tire_report))
       (send* _tire_report __tire_report)
     (progn
       (if __tire_report (setq _tire_report (car __tire_report)))
       _tire_report)))
  (:window_report
   (&rest __window_report)
   (if (keywordp (car __window_report))
       (send* _window_report __window_report)
     (progn
       (if __window_report (setq _window_report (car __window_report)))
       _window_report)))
  (:wiper_report
   (&rest __wiper_report)
   (if (keywordp (car __wiper_report))
       (send* _wiper_report __wiper_report)
     (progn
       (if __wiper_report (setq _wiper_report (car __wiper_report)))
       _wiper_report)))
  (:energy_remaining_report
   (&rest __energy_remaining_report)
   (if (keywordp (car __energy_remaining_report))
       (send* _energy_remaining_report __energy_remaining_report)
     (progn
       (if __energy_remaining_report (setq _energy_remaining_report (car __energy_remaining_report)))
       _energy_remaining_report)))
  (:vehicle_alarm_report
   (&rest __vehicle_alarm_report)
   (if (keywordp (car __vehicle_alarm_report))
       (send* _vehicle_alarm_report __vehicle_alarm_report)
     (progn
       (if __vehicle_alarm_report (setq _vehicle_alarm_report (car __vehicle_alarm_report)))
       _vehicle_alarm_report)))
  (:vehicle_extra_report
   (&rest __vehicle_extra_report)
   (if (keywordp (car __vehicle_extra_report))
       (send* _vehicle_extra_report __vehicle_extra_report)
     (progn
       (if __vehicle_extra_report (setq _vehicle_extra_report (car __vehicle_extra_report)))
       _vehicle_extra_report)))
  (:human_protected_device_report
   (&rest __human_protected_device_report)
   (if (keywordp (car __human_protected_device_report))
       (send* _human_protected_device_report __human_protected_device_report)
     (progn
       (if __human_protected_device_report (setq _human_protected_device_report (car __human_protected_device_report)))
       _human_protected_device_report)))
  (:auxiliary_report
   (&rest __auxiliary_report)
   (if (keywordp (car __auxiliary_report))
       (send* _auxiliary_report __auxiliary_report)
     (progn
       (if __auxiliary_report (setq _auxiliary_report (car __auxiliary_report)))
       _auxiliary_report)))
  (:suspension_report
   (&rest __suspension_report)
   (if (keywordp (car __suspension_report))
       (send* _suspension_report __suspension_report)
     (progn
       (if __suspension_report (setq _suspension_report (car __suspension_report)))
       _suspension_report)))
  (:air_conditioning_report
   (&rest __air_conditioning_report)
   (if (keywordp (car __air_conditioning_report))
       (send* _air_conditioning_report __air_conditioning_report)
     (progn
       (if __air_conditioning_report (setq _air_conditioning_report (car __air_conditioning_report)))
       _air_conditioning_report)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; endpoint_msgs/StateReportMeta _meta
    (send _meta :serialization-length)
    ;; endpoint_msgs/VehicleLightReport _vehicle_light_report
    (send _vehicle_light_report :serialization-length)
    ;; endpoint_msgs/ButtonEventReport _button_report
    (send _button_report :serialization-length)
    ;; endpoint_msgs/DoorReport _door_report
    (send _door_report :serialization-length)
    ;; endpoint_msgs/TirePressureReport _tire_report
    (send _tire_report :serialization-length)
    ;; endpoint_msgs/WindowReport _window_report
    (send _window_report :serialization-length)
    ;; endpoint_msgs/WiperReport _wiper_report
    (send _wiper_report :serialization-length)
    ;; endpoint_msgs/EnergyRemainingReport _energy_remaining_report
    (send _energy_remaining_report :serialization-length)
    ;; endpoint_msgs/VehicleAlarmReport _vehicle_alarm_report
    (send _vehicle_alarm_report :serialization-length)
    ;; endpoint_msgs/VehicleExtraReport _vehicle_extra_report
    (send _vehicle_extra_report :serialization-length)
    ;; endpoint_msgs/HumanProtectedDeviceReport _human_protected_device_report
    (send _human_protected_device_report :serialization-length)
    ;; endpoint_msgs/AuxiliaryReport _auxiliary_report
    (send _auxiliary_report :serialization-length)
    ;; endpoint_msgs/SuspensionReport _suspension_report
    (send _suspension_report :serialization-length)
    ;; endpoint_msgs/AirConditioningReport _air_conditioning_report
    (send _air_conditioning_report :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; endpoint_msgs/StateReportMeta _meta
       (send _meta :serialize s)
     ;; endpoint_msgs/VehicleLightReport _vehicle_light_report
       (send _vehicle_light_report :serialize s)
     ;; endpoint_msgs/ButtonEventReport _button_report
       (send _button_report :serialize s)
     ;; endpoint_msgs/DoorReport _door_report
       (send _door_report :serialize s)
     ;; endpoint_msgs/TirePressureReport _tire_report
       (send _tire_report :serialize s)
     ;; endpoint_msgs/WindowReport _window_report
       (send _window_report :serialize s)
     ;; endpoint_msgs/WiperReport _wiper_report
       (send _wiper_report :serialize s)
     ;; endpoint_msgs/EnergyRemainingReport _energy_remaining_report
       (send _energy_remaining_report :serialize s)
     ;; endpoint_msgs/VehicleAlarmReport _vehicle_alarm_report
       (send _vehicle_alarm_report :serialize s)
     ;; endpoint_msgs/VehicleExtraReport _vehicle_extra_report
       (send _vehicle_extra_report :serialize s)
     ;; endpoint_msgs/HumanProtectedDeviceReport _human_protected_device_report
       (send _human_protected_device_report :serialize s)
     ;; endpoint_msgs/AuxiliaryReport _auxiliary_report
       (send _auxiliary_report :serialize s)
     ;; endpoint_msgs/SuspensionReport _suspension_report
       (send _suspension_report :serialize s)
     ;; endpoint_msgs/AirConditioningReport _air_conditioning_report
       (send _air_conditioning_report :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; endpoint_msgs/StateReportMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; endpoint_msgs/VehicleLightReport _vehicle_light_report
     (send _vehicle_light_report :deserialize buf ptr-) (incf ptr- (send _vehicle_light_report :serialization-length))
   ;; endpoint_msgs/ButtonEventReport _button_report
     (send _button_report :deserialize buf ptr-) (incf ptr- (send _button_report :serialization-length))
   ;; endpoint_msgs/DoorReport _door_report
     (send _door_report :deserialize buf ptr-) (incf ptr- (send _door_report :serialization-length))
   ;; endpoint_msgs/TirePressureReport _tire_report
     (send _tire_report :deserialize buf ptr-) (incf ptr- (send _tire_report :serialization-length))
   ;; endpoint_msgs/WindowReport _window_report
     (send _window_report :deserialize buf ptr-) (incf ptr- (send _window_report :serialization-length))
   ;; endpoint_msgs/WiperReport _wiper_report
     (send _wiper_report :deserialize buf ptr-) (incf ptr- (send _wiper_report :serialization-length))
   ;; endpoint_msgs/EnergyRemainingReport _energy_remaining_report
     (send _energy_remaining_report :deserialize buf ptr-) (incf ptr- (send _energy_remaining_report :serialization-length))
   ;; endpoint_msgs/VehicleAlarmReport _vehicle_alarm_report
     (send _vehicle_alarm_report :deserialize buf ptr-) (incf ptr- (send _vehicle_alarm_report :serialization-length))
   ;; endpoint_msgs/VehicleExtraReport _vehicle_extra_report
     (send _vehicle_extra_report :deserialize buf ptr-) (incf ptr- (send _vehicle_extra_report :serialization-length))
   ;; endpoint_msgs/HumanProtectedDeviceReport _human_protected_device_report
     (send _human_protected_device_report :deserialize buf ptr-) (incf ptr- (send _human_protected_device_report :serialization-length))
   ;; endpoint_msgs/AuxiliaryReport _auxiliary_report
     (send _auxiliary_report :deserialize buf ptr-) (incf ptr- (send _auxiliary_report :serialization-length))
   ;; endpoint_msgs/SuspensionReport _suspension_report
     (send _suspension_report :deserialize buf ptr-) (incf ptr- (send _suspension_report :serialization-length))
   ;; endpoint_msgs/AirConditioningReport _air_conditioning_report
     (send _air_conditioning_report :deserialize buf ptr-) (incf ptr- (send _air_conditioning_report :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::BodyReport :md5sum-) "91d305a1630d685d53b157567caebe85")
(setf (get endpoint_msgs::BodyReport :datatype-) "endpoint_msgs/BodyReport")
(setf (get endpoint_msgs::BodyReport :definition-)
      "std_msgs/Header header
endpoint_msgs/StateReportMeta meta
endpoint_msgs/VehicleLightReport vehicle_light_report
endpoint_msgs/ButtonEventReport button_report
endpoint_msgs/DoorReport door_report
endpoint_msgs/TirePressureReport tire_report
endpoint_msgs/WindowReport window_report
endpoint_msgs/WiperReport wiper_report
endpoint_msgs/EnergyRemainingReport energy_remaining_report
endpoint_msgs/VehicleAlarmReport vehicle_alarm_report
endpoint_msgs/VehicleExtraReport vehicle_extra_report
endpoint_msgs/HumanProtectedDeviceReport human_protected_device_report
endpoint_msgs/AuxiliaryReport auxiliary_report
endpoint_msgs/SuspensionReport suspension_report
endpoint_msgs/AirConditioningReport air_conditioning_report

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
MSG: endpoint_msgs/StateReportMeta
uint64 timestamp_us

================================================================================
MSG: endpoint_msgs/VehicleLightReport
uint8 VEHICLE_LIGHT_REPORT_DATA = 1
uint8 available
endpoint_msgs/VehicleLightReportData vehicle_light_report_data

================================================================================
MSG: endpoint_msgs/VehicleLightReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/TurnSignal turn_signal_type
endpoint_msgs/FrontLightState front_light
bool width_light
bool reversing_light
bool front_fog_light
bool rear_fog_light
endpoint_msgs/LeverStatus lever_state
bool position_light_status
endpoint_msgs/BrakeLightStatus brake_light
endpoint_msgs/LeverType lever_type
bool auto_light_ctrl_state
endpoint_msgs/LightModeState light_mode_status
endpoint_msgs/FrontLightSwitchState front_light_switch_state
bool valid

================================================================================
MSG: endpoint_msgs/WorkType
uint8 MANUALPILOT = 0
uint8 AUTOPILOT_PILOT = 1
uint8 AUTOPILOT_APA = 2
uint8 AUTOPILOT_ACC = 3
uint8 AUTOPILOT_RESERVED1 = 4
uint8 AUTOPILOT_RESERVED2 = 5
uint8 AUTOPILOT_RESERVED3 = 6
uint8 AUTOPILOT_RESERVED4 = 7
uint8 value

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
MSG: endpoint_msgs/LeverStatus
uint8 LEVER_STATE_OFF = 0
uint8 LEVER_STATE_LEFT = 1
uint8 LEVER_STATE_RIGHT = 2
uint8 LEVER_STATE_LEFT_INVALID = 3
uint8 LEVER_STATE_RIGHT_INVALID = 4
uint8 LEVER_STATE_LEFT_LIGHT = 5
uint8 LEVER_STATE_RIGHT_LIGHT = 6
uint8 LEVER_STATE_RESERVED1 = 7
uint8 LEVER_STATE_RESERVED3 = 8
uint8 value

================================================================================
MSG: endpoint_msgs/BrakeLightStatus
uint8 BRAKE_LIGHT_NONE = 0
uint8 BRAKE_LIGHT_OFF = 1
uint8 BRAKE_LIGHT_ON = 2
uint8 BRAKE_LIGHT_INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/LeverType
uint8 LEVER_TYPE_MECHANICAL = 0
uint8 LEVER_TYPE_ELECTRONIC = 1
uint8 LEVER_STATE_RESERVED1 = 2
uint8 LEVER_STATE_RESERVED2 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/LightModeState
uint8 LIGHT_OFF = 0
uint8 LIGHT_AUTO = 1
uint8 LIGHT_LOW_BEAM = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/FrontLightSwitchState
uint8 FRONT_LIGHT_OFF = 0
uint8 FRONT_LIGHT_LOW = 1
uint8 FRONT_LIGHT_HIGH = 2
uint8 FRONT_LIGHT_FLASH = 3
uint8 RESERVED1 = 4
uint8 RESERVED2 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/ButtonEventReport
uint8 BUTTON_EVENT_REPORT_DATA = 1
uint8 available
endpoint_msgs/ButtonEventReportData button_event_report_data
int16 roller_steps_L
int16 roller_steps_R

================================================================================
MSG: endpoint_msgs/ButtonEventReportData
uint64 timestamp_us
endpoint_msgs/ButtonEvent[] button_event_array
bool valid

================================================================================
MSG: endpoint_msgs/ButtonEvent
uint8 BUTTON1 = 0
uint8 BUTTON2 = 1
uint8 BUTTON3 = 2
uint8 BUTTON4 = 3
uint8 BUTTON5 = 4
uint8 BUTTON6 = 5
uint8 BUTTON7 = 6
uint8 BUTTON8 = 7
uint8 BUTTON9 = 8
uint8 BUTTON10 = 9
uint8 BUTTON11 = 10
uint8 BUTTON12 = 11
uint8 BUTTON13 = 12
uint8 BUTTON14 = 13
uint8 BUTTON15 = 14
uint8 BUTTON16 = 15
uint8 BUTTON17 = 16
uint8 BUTTON18 = 17
uint8 BUTTON19 = 18
uint8 BUTTON20 = 19
uint8 value

================================================================================
MSG: endpoint_msgs/DoorReport
uint8 DOOR_REPORT_DATA = 1
uint8 available
endpoint_msgs/DoorReportData door_report_data

================================================================================
MSG: endpoint_msgs/DoorReportData
uint64 timestamp_us
endpoint_msgs/DoorType[] opened_door_array
bool valid

================================================================================
MSG: endpoint_msgs/DoorType
uint8 DRIVER = 0
uint8 PASSENGER = 1
uint8 REAR_LEFT = 2
uint8 REAR_RIGHT = 3
uint8 HOOD = 4
uint8 TRUNK = 5
uint8 value

================================================================================
MSG: endpoint_msgs/TirePressureReport
uint8 TIRE_PRESSURE_REPORT_DATA = 1
uint8 available
endpoint_msgs/TirePressureReportData tire_pressure_report_data

================================================================================
MSG: endpoint_msgs/TirePressureReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

================================================================================
MSG: endpoint_msgs/WindowReport
uint8 WINDOW_REPORT_DATA = 1
uint8 available
endpoint_msgs/WindowReportData window_report_data

================================================================================
MSG: endpoint_msgs/WindowReportData
uint64 timestamp_us
bool window_lock
endpoint_msgs/WindowState window_state_left_front
endpoint_msgs/WindowState window_state_right_front
endpoint_msgs/WindowState window_state_left_rear
endpoint_msgs/WindowState window_state_right_rear
endpoint_msgs/WindowState window_state_top
bool valid

================================================================================
MSG: endpoint_msgs/WindowState
uint8 WINDOW_CLOSED = 0
uint8 WINDOW_OPENED = 1
uint8 WINDOW_MIDDLE = 2
uint8 value

================================================================================
MSG: endpoint_msgs/WiperReport
uint8 WIPER_REPORT_DATA = 1
uint8 available
endpoint_msgs/WiperReportData wiper_report_data

================================================================================
MSG: endpoint_msgs/WiperReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/WiperStateType front_wiper_state
endpoint_msgs/WiperStateType rear_wiper_state
bool valid

================================================================================
MSG: endpoint_msgs/WiperStateType
uint8 OFF = 0
uint8 AUTO_OFF = 1
uint8 AUTO_MOVING = 2
uint8 MANUAL_OFF = 3
uint8 MANUAL_ON = 4
uint8 MANUAL_LOW = 5
uint8 MANUAL_HIGH = 6
uint8 MIST_FLICK = 7
uint8 WASH = 8
uint8 AUTO_LOW = 9
uint8 AUTO_HIGH = 10
uint8 COURTESY_WIPE = 11
uint8 AUTO_ADJUST = 12
uint8 RESERVED = 13
uint8 STALLED = 14
uint8 NONE = 15
uint8 value

================================================================================
MSG: endpoint_msgs/EnergyRemainingReport
uint8 ENERGY_REMAINING_REPORT_DATA = 1
uint8 available
endpoint_msgs/EnergyRemainingReportData energy_remaining_report_data

================================================================================
MSG: endpoint_msgs/EnergyRemainingReportData
uint64 timestamp_us
float32 level
float32 remaining_mileage
bool valid

================================================================================
MSG: endpoint_msgs/VehicleAlarmReport
uint8 VEHICLE_ALARM_REPORT_DATA = 1
uint8 available
endpoint_msgs/VehicleAlarmReportData vehicle_alarm_report_data

================================================================================
MSG: endpoint_msgs/VehicleAlarmReportData
uint64 timestamp_us
bool seat_belt_alarm
bool seat_belt_tightening
bool steering_wheel_alarm
bool buzzer_alarm
endpoint_msgs/HandOffStatus steering_handoff
endpoint_msgs/FeetOffStatus feet_off
bool pkg_fastswitch_enable
bool tire_alarm
endpoint_msgs/VehicleCrashStatus vehicle_crash_status
bool valid

================================================================================
MSG: endpoint_msgs/HandOffStatus
uint8 HAND_OFF_STATUS_NONE = 0
uint8 HAND_OFF_STATUS_TRUE = 1
uint8 HAND_OFF_STATUS_FALSE = 2
uint8 HAND_OFF_STATUS_INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/FeetOffStatus
uint8 FEET_OFF_STATUS_NONE = 0
uint8 FEET_OFF_STATUS_TRUE = 1
uint8 FEET_OFF_STATUS_FALSE = 2
uint8 FEET_OFF_STATUS_INVALUD = 255
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleCrashStatus
uint8 NONE = 0
uint8 NO_CRASH = 1
uint8 CRASH = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleExtraReport
uint8 VEHICLE_EXTRA_REPORT_DATA = 1
uint8 available
endpoint_msgs/VehicleExtraReportData vehicle_extra_report_data

================================================================================
MSG: endpoint_msgs/VehicleExtraReportData
uint64 timestamp_us
endpoint_msgs/CtaState cta_lf
endpoint_msgs/CtaState cta_rf
endpoint_msgs/CtaState cta_lr
endpoint_msgs/CtaState cta_rr
bool cta_valid
endpoint_msgs/DlpStatus dlp_state
bool dlp_valid
endpoint_msgs/HdcState hdc_state
bool hdc_valid
endpoint_msgs/LdpStatus ldp_status_left_lane
endpoint_msgs/LdpStatus ldp_status_right_lane
bool ldp_valid
endpoint_msgs/LdwStatus ldw_status
bool ldw_valid
endpoint_msgs/SrsCollosion srs_collosion
endpoint_msgs/ExtraReport extra

================================================================================
MSG: endpoint_msgs/CtaState
uint8 NO_WARNING = 0
uint8 WARNING_LEVE_1 = 1
uint8 WARNING_LEVE_2 = 2
uint8 value

================================================================================
MSG: endpoint_msgs/DlpStatus
uint8 NO_WARNING = 0
uint8 WARNING_LEVEL1 = 1
uint8 WARNING_LEVEL2 = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/HdcState
uint8 NORMAL = 0
uint8 ENABLED = 1
uint8 ACTIVED = 2
uint8 FAILED = 3
uint8 TEMPORARILY_INHIBITED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/LdpStatus
uint8 LDP_STATUS_OFF = 0
uint8 LDP_STATUS_STANDBY = 1
uint8 LDP_STATUS_ACTIVE = 2
uint8 LDP_STATUS_RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/LdwStatus
uint8 LDW_STATUS_OFF = 0
uint8 LDW_STATUS_STANDBY = 1
uint8 LDW_STATUS_DISABLED = 2
uint8 LDW_STATUS_OVERIDE = 3
uint8 LDW_STATUS_ACTIVE = 4
uint8 LDW_STATUS_RESERVED1 = 5
uint8 LDW_STATUS_RESERVED2 = 6
uint8 LDW_STATUS_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/SrsCollosion
uint8 NONE = 0
uint8 NOT_COLLOSION = 1
uint8 COLLOSION = 2
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/ExtraReport
uint8 available
string json

================================================================================
MSG: endpoint_msgs/HumanProtectedDeviceReport
uint8 HUMAN_PROTECTED_DEVICE_REPORT_DATA = 1
uint8 available
endpoint_msgs/HumanProtectedDeviceReportData human_protected_device_report_data
endpoint_msgs/SeatSensorStatusReportData seat_sensor_status_report_data

================================================================================
MSG: endpoint_msgs/HumanProtectedDeviceReportData
uint64 timestamp_us
endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array
bool valid

================================================================================
MSG: endpoint_msgs/HumanProtectedDeviceType
uint8 DRIVER_SEATBELT = 0
uint8 PASSENGER_SEATBELT = 1
uint8 PASSENGER_DETECT = 2
uint8 PASSENGER_AIRBAG = 3
uint8 SECOND_LEFT_BELT = 4
uint8 SECOND_MID_BELT = 5
uint8 SECOND_RIGHT_BELT = 6
uint8 RESERVED1 = 7
uint8 RESERVED2 = 8
uint8 value

================================================================================
MSG: endpoint_msgs/SeatSensorStatusReportData
uint64 timestamp_us
endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array
bool valid

================================================================================
MSG: endpoint_msgs/SeatSensorStatusType
uint8 DRIVER_SEAT_STATUS = 0
uint8 PASSENGER_SEAT_STATUS = 1
uint8 SECOND_LEFT_SEAT_STATUS = 2
uint8 SECOND_MID_SEAT_STATUS = 3
uint8 SECOND_RIGHT_SEAT_STATUS = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 value

================================================================================
MSG: endpoint_msgs/AuxiliaryReport
uint8 AUXILIARY_REPORT_DATA = 1
uint8 available
endpoint_msgs/AuxiliaryReportData auxiliary_report_data

================================================================================
MSG: endpoint_msgs/AuxiliaryReportData
uint64 timestamp_us
endpoint_msgs/RearviewMirrorStatus rearview_mirror
endpoint_msgs/PowerModeType vehicle_power_mode
bool vehicle_power_valid
bool vehicle_lock
bool vehicle_horn
endpoint_msgs/RainSensorLevel rain_sensor_level
float32 vehicle_speed_on_dashboard
bool vehicle_speed_on_dashboard_valid
endpoint_msgs/VehicleSpeedonDashboardUnit vehicle_speed_on_dashboard_unit
float32 vehicle_outside_temp
bool vehicle_outside_temp_valid
float32 vechile_inside_temp
bool vechile_inside_temp_valid
endpoint_msgs/VehicleModeState vehicle_mode_state
endpoint_msgs/VehicledrivingMode vehicle_driving_mode
endpoint_msgs/ChargeConnectState charge_connect_status
endpoint_msgs/AutoDriveStatus auto_driver_status
bool shared_control_state
bool shared_control_enable
endpoint_msgs/RearviewMirrorAdjustSwitch rearview_mirror_adjust_switch
float32 horizontal_light_lumens
bool horizontal_light_lumens_valid
float32 vertical_light_lumens
bool vertical_light_lumens_valid

================================================================================
MSG: endpoint_msgs/RearviewMirrorStatus
uint8 NONE = 0
uint8 OPEN = 1
uint8 CLOSE = 2
uint8 OPENING = 3
uint8 CLOSING = 4
uint8 PROCESSING = 5
uint8 RESERVED = 6
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/PowerModeType
uint8 VEHILCE_POWER_MODE_OFF = 0
uint8 VEHILCE_POWER_MODE_NORMAL = 1
uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2
uint8 VEHILCE_POWER_MODE_RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/RainSensorLevel
uint8 RAIN_SENSOR_OFF = 0
uint8 RARIN_SENSOR_LEVEL_LOW = 1
uint8 RARIN_SENSOR_LEVEL_MID = 2
uint8 RARIN_SENSOR_LEVEL_HIGH = 3
uint8 RARIN_SENSOR_LEVEL_RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleSpeedonDashboardUnit
uint8 NONE = 0
uint8 KMH = 1
uint8 MILEH = 2
uint8 UNKNOWN = 3
uint8 RESVERD = 4
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleModeState
uint8 NONE = 0
uint8 NORMAL_MODE = 1
uint8 MANUFACTURE_MODE = 2
uint8 TRANSPORT_MODE = 3
uint8 SHOWROOM_MODE = 4
uint8 POSTCRASH_MODE = 5
uint8 MAINTENANCE_MODE = 6
uint8 CARWASH_MODE = 7
uint8 BENCHTEST_MODE = 8
uint8 DRAG_MODE = 9
uint8 RESERVED1 = 10
uint8 RESERVED2 = 11
uint8 RESERVED3 = 12
uint8 value

================================================================================
MSG: endpoint_msgs/VehicledrivingMode
uint8 NONE = 0
uint8 NORMAL = 1
uint8 DRIFT_EXP = 2
uint8 WINTER_SPORT = 3
uint8 OFFROAD = 4
uint8 RACE_TRACK = 5
uint8 ROCK = 6
uint8 SAND = 7
uint8 SPORT = 8
uint8 ECO = 9
uint8 MUD = 10
uint8 OPD = 11
uint8 WADING = 12
uint8 SNOW = 13
uint8 ICE = 14
uint8 GRASS = 15
uint8 GRIT = 16
uint8 MOUNTAIN = 17
uint8 SUPER_WADING = 18
uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19
uint8 TURN_IN_PLACE = 20
uint8 ECO_PLUS = 21
uint8 RALLY = 22
uint8 LIMP_MODE = 23
uint8 SPORT_PLUS = 24
uint8 CREEP = 25
uint8 OVERCLOCKING_MODE = 26
uint8 ANTISKID_CHAIN = 27
uint8 STRUCK_ASSISTANT = 28
uint8 TERRAIN_ASSISTANT = 29
uint8 ITAC = 30
uint8 Ext_Endurance = 31
uint8 DEEPSNOW = 32
uint8 TBS_Detn = 33
uint8 AUTOMATIC_MODE = 34
uint8 CUSTOM_MODE = 35
uint8 RESERVED1 = 36
uint8 RESERVED2 = 37
uint8 RESERVED3 = 38
uint8 mode
uint8 sub_mode

================================================================================
MSG: endpoint_msgs/ChargeConnectState
uint8 NONE = 0
uint8 NOT_CONNECTED = 1
uint8 CONNECTED = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/AutoDriveStatus
uint8 NONE = 0
uint8 READY = 1
uint8 NOT_READY = 2
uint8 value

================================================================================
MSG: endpoint_msgs/RearviewMirrorAdjustSwitch
uint8 NONE = 0
uint8 ON = 1
uint8 OFF = 2
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionReport
uint8 SUSPENSION_REPORT_DATA = 1
uint8 available
endpoint_msgs/SuspensionReportData suspension_report_data

================================================================================
MSG: endpoint_msgs/SuspensionReportData
uint64 timestamp_us
bool calibration_completed
endpoint_msgs/HeightLevel requested_target_level
endpoint_msgs/HeightLevel cur_height_status
endpoint_msgs/SuspensionHeight suspension_height
endpoint_msgs/SuspensionHeightValid suspension_hight_valid
endpoint_msgs/FailureStatus failure_status
float32 reserved1
float32 reserved2
endpoint_msgs/SuspensionAdjustStatus adjust_status

================================================================================
MSG: endpoint_msgs/HeightLevel
uint8 NONE = 0
uint8 LEVEL1 = 1
uint8 LEVEL2 = 2
uint8 LEVEL3 = 3
uint8 LEVEL4 = 4
uint8 LEVEL5 = 5
uint8 LEVEL6 = 6
uint8 LEVEL7 = 7
uint8 LEVEL8 = 8
uint8 LEVEL9 = 9
uint8 LEVEL10 = 10
uint8 RESERVED1 = 11
uint8 RESERVED2 = 12
uint8 RESERVED3 = 13
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionHeight
int8 front_left
int8 front_right
int8 rear_left
int8 rear_right

================================================================================
MSG: endpoint_msgs/SuspensionHeightValid
bool front_left
bool front_right
bool rear_left
bool rear_right

================================================================================
MSG: endpoint_msgs/FailureStatus
uint8 NOFAILURE = 0
uint8 TEMPORARYFAILURE = 1
uint8 FAILURE = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionAdjustStatus
uint8 NOACTION = 0
uint8 LOWERING = 1
uint8 LIFTING = 2
uint8 PENDING = 3
uint8 ADJUSTING = 4
uint8 RESERVED = 5
uint8 value

================================================================================
MSG: endpoint_msgs/AirConditioningReport
uint8 AIR_CONDITIONING_DATA = 1
uint8 available
endpoint_msgs/AirConditioningReportData air_conditioning_data

================================================================================
MSG: endpoint_msgs/AirConditioningReportData
uint64 timestamp_us
endpoint_msgs/AirOutletMode[] air_outlet_mode_array
bool air_outlet_mode_array_valid
endpoint_msgs/AirTempMode[] air_temp_mode_array
bool air_temp_mode_array_valid
endpoint_msgs/AirDefrostMode[] air_defrost_mode_array
bool air_defrost_mode_array_valid
endpoint_msgs/AirWorkStatus air_work_status

================================================================================
MSG: endpoint_msgs/AirOutletMode
uint8 AIR_OUTLET_MODE_FACE = 0
uint8 AIR_OUTLET_MODE_FOOT = 1
uint8 AIR_OUTLET_MODE_BODY = 2
uint8 AIR_OUTLET_MODE_KNEE = 3
uint8 AIR_OUTLET_MODE_AUTO = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AirTempMode
uint8 AIR_TEMP_MODE_NORMAL = 0
uint8 AIR_TEMP_MODE_COLD = 1
uint8 AIR_TEMP_MODE_HOT = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AirDefrostMode
uint8 AIR_DEFROS_MODE_OFF = 0
uint8 AIR_DEFROS_MODE_FONT = 1
uint8 AIR_DEFROS_MODE_REAR = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AirWorkStatus
uint8 AIR_WORK_STATUS_NONE = 0
uint8 AIR_WORK_STATUS_CLOSE = 1
uint8 AIR_WORK_STATUS_OPEN = 2
uint8 AIR_WORK_STATUS_INVALID = 255
uint8 value

")



(provide :endpoint_msgs/BodyReport "91d305a1630d685d53b157567caebe85")


