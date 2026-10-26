;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ChassisReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ChassisReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::CHASSISREPORT")
  (make-package "ENDPOINT_MSGS::CHASSISREPORT"))

(in-package "ROS")
;;//! \htmlinclude ChassisReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass endpoint_msgs::ChassisReport
  :super ros::object
  :slots (_header _meta _brake_report _brake_info_report _throttle_report _throttle_info_report _steering_report _gear_report _epb_report _motor_speed_report _extra ))

(defmethod endpoint_msgs::ChassisReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance endpoint_msgs::StateReportMeta :init))
    ((:brake_report __brake_report) (instance endpoint_msgs::BrakeReport :init))
    ((:brake_info_report __brake_info_report) (instance endpoint_msgs::BrakeInfoReport :init))
    ((:throttle_report __throttle_report) (instance endpoint_msgs::ThrottleReport :init))
    ((:throttle_info_report __throttle_info_report) (instance endpoint_msgs::ThrottleInfoReport :init))
    ((:steering_report __steering_report) (instance endpoint_msgs::SteeringReport :init))
    ((:gear_report __gear_report) (instance endpoint_msgs::GearReport :init))
    ((:epb_report __epb_report) (instance endpoint_msgs::EpbReport :init))
    ((:motor_speed_report __motor_speed_report) (instance endpoint_msgs::MotorSpeedReport :init))
    ((:extra __extra) (instance endpoint_msgs::ExtraReport :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _brake_report __brake_report)
   (setq _brake_info_report __brake_info_report)
   (setq _throttle_report __throttle_report)
   (setq _throttle_info_report __throttle_info_report)
   (setq _steering_report __steering_report)
   (setq _gear_report __gear_report)
   (setq _epb_report __epb_report)
   (setq _motor_speed_report __motor_speed_report)
   (setq _extra __extra)
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
  (:brake_report
   (&rest __brake_report)
   (if (keywordp (car __brake_report))
       (send* _brake_report __brake_report)
     (progn
       (if __brake_report (setq _brake_report (car __brake_report)))
       _brake_report)))
  (:brake_info_report
   (&rest __brake_info_report)
   (if (keywordp (car __brake_info_report))
       (send* _brake_info_report __brake_info_report)
     (progn
       (if __brake_info_report (setq _brake_info_report (car __brake_info_report)))
       _brake_info_report)))
  (:throttle_report
   (&rest __throttle_report)
   (if (keywordp (car __throttle_report))
       (send* _throttle_report __throttle_report)
     (progn
       (if __throttle_report (setq _throttle_report (car __throttle_report)))
       _throttle_report)))
  (:throttle_info_report
   (&rest __throttle_info_report)
   (if (keywordp (car __throttle_info_report))
       (send* _throttle_info_report __throttle_info_report)
     (progn
       (if __throttle_info_report (setq _throttle_info_report (car __throttle_info_report)))
       _throttle_info_report)))
  (:steering_report
   (&rest __steering_report)
   (if (keywordp (car __steering_report))
       (send* _steering_report __steering_report)
     (progn
       (if __steering_report (setq _steering_report (car __steering_report)))
       _steering_report)))
  (:gear_report
   (&rest __gear_report)
   (if (keywordp (car __gear_report))
       (send* _gear_report __gear_report)
     (progn
       (if __gear_report (setq _gear_report (car __gear_report)))
       _gear_report)))
  (:epb_report
   (&rest __epb_report)
   (if (keywordp (car __epb_report))
       (send* _epb_report __epb_report)
     (progn
       (if __epb_report (setq _epb_report (car __epb_report)))
       _epb_report)))
  (:motor_speed_report
   (&rest __motor_speed_report)
   (if (keywordp (car __motor_speed_report))
       (send* _motor_speed_report __motor_speed_report)
     (progn
       (if __motor_speed_report (setq _motor_speed_report (car __motor_speed_report)))
       _motor_speed_report)))
  (:extra
   (&rest __extra)
   (if (keywordp (car __extra))
       (send* _extra __extra)
     (progn
       (if __extra (setq _extra (car __extra)))
       _extra)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; endpoint_msgs/StateReportMeta _meta
    (send _meta :serialization-length)
    ;; endpoint_msgs/BrakeReport _brake_report
    (send _brake_report :serialization-length)
    ;; endpoint_msgs/BrakeInfoReport _brake_info_report
    (send _brake_info_report :serialization-length)
    ;; endpoint_msgs/ThrottleReport _throttle_report
    (send _throttle_report :serialization-length)
    ;; endpoint_msgs/ThrottleInfoReport _throttle_info_report
    (send _throttle_info_report :serialization-length)
    ;; endpoint_msgs/SteeringReport _steering_report
    (send _steering_report :serialization-length)
    ;; endpoint_msgs/GearReport _gear_report
    (send _gear_report :serialization-length)
    ;; endpoint_msgs/EpbReport _epb_report
    (send _epb_report :serialization-length)
    ;; endpoint_msgs/MotorSpeedReport _motor_speed_report
    (send _motor_speed_report :serialization-length)
    ;; endpoint_msgs/ExtraReport _extra
    (send _extra :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; endpoint_msgs/StateReportMeta _meta
       (send _meta :serialize s)
     ;; endpoint_msgs/BrakeReport _brake_report
       (send _brake_report :serialize s)
     ;; endpoint_msgs/BrakeInfoReport _brake_info_report
       (send _brake_info_report :serialize s)
     ;; endpoint_msgs/ThrottleReport _throttle_report
       (send _throttle_report :serialize s)
     ;; endpoint_msgs/ThrottleInfoReport _throttle_info_report
       (send _throttle_info_report :serialize s)
     ;; endpoint_msgs/SteeringReport _steering_report
       (send _steering_report :serialize s)
     ;; endpoint_msgs/GearReport _gear_report
       (send _gear_report :serialize s)
     ;; endpoint_msgs/EpbReport _epb_report
       (send _epb_report :serialize s)
     ;; endpoint_msgs/MotorSpeedReport _motor_speed_report
       (send _motor_speed_report :serialize s)
     ;; endpoint_msgs/ExtraReport _extra
       (send _extra :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; endpoint_msgs/StateReportMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; endpoint_msgs/BrakeReport _brake_report
     (send _brake_report :deserialize buf ptr-) (incf ptr- (send _brake_report :serialization-length))
   ;; endpoint_msgs/BrakeInfoReport _brake_info_report
     (send _brake_info_report :deserialize buf ptr-) (incf ptr- (send _brake_info_report :serialization-length))
   ;; endpoint_msgs/ThrottleReport _throttle_report
     (send _throttle_report :deserialize buf ptr-) (incf ptr- (send _throttle_report :serialization-length))
   ;; endpoint_msgs/ThrottleInfoReport _throttle_info_report
     (send _throttle_info_report :deserialize buf ptr-) (incf ptr- (send _throttle_info_report :serialization-length))
   ;; endpoint_msgs/SteeringReport _steering_report
     (send _steering_report :deserialize buf ptr-) (incf ptr- (send _steering_report :serialization-length))
   ;; endpoint_msgs/GearReport _gear_report
     (send _gear_report :deserialize buf ptr-) (incf ptr- (send _gear_report :serialization-length))
   ;; endpoint_msgs/EpbReport _epb_report
     (send _epb_report :deserialize buf ptr-) (incf ptr- (send _epb_report :serialization-length))
   ;; endpoint_msgs/MotorSpeedReport _motor_speed_report
     (send _motor_speed_report :deserialize buf ptr-) (incf ptr- (send _motor_speed_report :serialization-length))
   ;; endpoint_msgs/ExtraReport _extra
     (send _extra :deserialize buf ptr-) (incf ptr- (send _extra :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::ChassisReport :md5sum-) "7c6fefc7c1d138a1152b7425cfe0d650")
(setf (get endpoint_msgs::ChassisReport :datatype-) "endpoint_msgs/ChassisReport")
(setf (get endpoint_msgs::ChassisReport :definition-)
      "std_msgs/Header header
endpoint_msgs/StateReportMeta meta
endpoint_msgs/BrakeReport brake_report
endpoint_msgs/BrakeInfoReport brake_info_report
endpoint_msgs/ThrottleReport throttle_report
endpoint_msgs/ThrottleInfoReport throttle_info_report
endpoint_msgs/SteeringReport steering_report
endpoint_msgs/GearReport gear_report
endpoint_msgs/EpbReport epb_report
endpoint_msgs/MotorSpeedReport motor_speed_report
endpoint_msgs/ExtraReport extra

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
MSG: endpoint_msgs/BrakeReport
uint8 BRAKE_REPORT_DATA = 1
uint8 available
endpoint_msgs/BrakeReportData brake_report_data

================================================================================
MSG: endpoint_msgs/BrakeReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/BrakeType brake_type
float32 pedal_input
float32 brake_command
float32 brake_output
bool override
float32 ahb_exec_brake_force
bool ahb_exec_brake_force_valid
bool ready
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
MSG: endpoint_msgs/BrakeInfoReport
uint8 BRAKE_INFO_REPORT_DATA = 1
uint8 available
endpoint_msgs/BrakeInfoReportData brake_info_report_data

================================================================================
MSG: endpoint_msgs/BrakeInfoReportData
uint64 timestamp_us
float32 accleration_on_wheel
float32 lateral_accleration_on_wheel
bool stationary
bool abs_active
bool abs_fault
bool tcs_active
bool tcs_fault
bool msr_active
bool msr_fault
bool esp_active
bool esp_fault
bool tsr_active
bool tsr_fault
bool pressure
float32 brake_torque_delivery
bool brake_torque_delivery_valid
float32 brake_regen_torque_delivery
bool brake_regen_torque_delivery_valid
float32 brake_frct_torque_delivery
bool brake_frct_torque_delivery_valid
float32 master_pressure_delivery
bool master_pressure_delivery_valid
float32 pedal_brake_torque
bool pedal_brake_torque_valid
bool pkg_fastswitch_enable
bool vehicle_block
endpoint_msgs/VehESPSwitch esp_status
bool vdc_active
bool vdc_fault
uint8 reserved

================================================================================
MSG: endpoint_msgs/VehESPSwitch
uint8 NONE = 0
uint8 ON = 1
uint8 OFF = 2
uint8 RESVERD = 3
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/ThrottleReport
uint8 THROTTLE_REPORT_DATA = 1
uint8 available
endpoint_msgs/ThrottleReportData throttle_report_data

================================================================================
MSG: endpoint_msgs/ThrottleReportData
uint64 timestamp_us
endpoint_msgs/ThrottleType type
endpoint_msgs/WorkType driver_work_type
float32 pedal_input
float32 command
float32 throttle_output
bool override
float32 vcu_max_neg_torque
float32 vcu_max_pos_torque
bool vcu_max_neg_torque_valid
bool vcu_max_pos_torque_valid
float32 vcu_exec_throttle_torque
bool vcu_exec_throttle_torque_valid
bool ready
bool valid

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
MSG: endpoint_msgs/ThrottleInfoReport
uint8 THROTTLE_INFO_REPORT_DATA = 1
uint8 available
endpoint_msgs/ThrottleInfoReportData throttle_info_report_data

================================================================================
MSG: endpoint_msgs/ThrottleInfoReportData
uint64 timestamp_us
float32 front_left_mot_rpm
bool front_left_mot_rpm_valid
float32 front_right_mot_rpm
bool front_right_mot_rpm_valid
float32 rear_left_mot_rpm
bool rear_left_mot_rpm_valid
float32 rear_right_mot_rpm
bool rear_right_mot_rpm_valid
float32 throttle_pedal_percent
float32 throttle_pedal_rate
float32 vehicle_speed_average
bool vehicle_speed_average_valid
float32 vehicle_mileage
float32 throttle_torque_delivery
bool throttle_torque_delivery_valid
bool pressure
float32 input_shaft_speed
float32 output_shaft_speed
int8 curr_transmission_gear
float32 curr_gear_ration
bool input_shaft_speed_valid
bool output_shaft_speed_valid
bool curr_transmission_gear_valid
bool curr_gear_ration_valid
float32 reserved1
float32 reserved2

================================================================================
MSG: endpoint_msgs/SteeringReport
uint8 STEERING_REPORT_DATA = 1
uint8 available
endpoint_msgs/SteeringReportData steering_report_data

================================================================================
MSG: endpoint_msgs/SteeringReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/SteeringType steering_type
float32 steering_cmd
float32 steering_report
float32 steering_wheel_angle_report
float32 steering_wheel_torque_report
float32 steering_follow_rate
endpoint_msgs/RWhSteerModType rws_mode_report
float32 rws_angle
bool override
float32 steering_elc_assist_torque
bool steering_elc_assist_torque_valid
float32 steering_total_torque
bool steering_total_torque_valid
endpoint_msgs/CalibrationType eps_calibration_state
endpoint_msgs/RWhSteerDirection rws_direction_report
bool ready
bool valid

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
MSG: endpoint_msgs/CalibrationType
uint8 NONE = 0
uint8 CALIBRATION = 1
uint8 NOT_CALIBRATION = 2
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
MSG: endpoint_msgs/GearReport
uint8 GEAR_REPORT_DATA = 1
uint8 available
endpoint_msgs/GearReportData gear_report_data

================================================================================
MSG: endpoint_msgs/GearReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/Gear command
endpoint_msgs/Gear current_state
endpoint_msgs/GearReject reject
bool override
bool ready
bool valid

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
MSG: endpoint_msgs/GearReject
uint8 NONE = 0
uint8 SHIFT_IN_PROGRESS = 1
uint8 OVERRIDE = 2
uint8 ROTARY_LOW = 3
uint8 ROTARY_PARK = 4
uint8 VEHICLE = 5
uint8 value

================================================================================
MSG: endpoint_msgs/EpbReport
uint8 EPB_REPORT_DATA = 1
uint8 available
endpoint_msgs/EpbReportData epb_report_data

================================================================================
MSG: endpoint_msgs/EpbReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/EpbStatus epb_report
endpoint_msgs/AutoHoldStatus auto_hold_state
bool vehicle_hold_active
bool overide
bool valid

================================================================================
MSG: endpoint_msgs/EpbStatus
uint8 RELEASE = 0
uint8 PULLING = 1
uint8 PULL = 2
uint8 RELEASING = 3
uint8 RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AutoHoldStatus
uint8 SYS_OFF = 0
uint8 SYS_INTERVENTION = 1
uint8 SYS_STANDBY = 2
uint8 SYS_ERR = 3
uint8 RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/MotorSpeedReport
uint8 MOTOR_SPEED_REPORT_DATA = 1
uint8 available
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr

================================================================================
MSG: endpoint_msgs/MotorSpeedReportData
endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status
float32 motor_speed
float32 motor_raw_speed
bool motor_raw_speed_valid
endpoint_msgs/McuStuckStatus mcu_stuck_status
endpoint_msgs/McuStandstillStatus mcu_standstill_status
endpoint_msgs/SpdctlFaultMode spdctl_fault_mode
bool spdctl_valid
endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status
float32 mcu_req_torque
bool mcu_req_torque_valid
float32 motor_actual_toruqe
bool motor_actual_toruqe_valid
float32 motor_wheel_regen_torque
bool motor_wheel_regen_torque_valid
bool valid

================================================================================
MSG: endpoint_msgs/MotorSpeedControlStatus
uint8 NONE = 0
uint8 NO_ACTIVE = 1
uint8 ACTIVE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/McuStuckStatus
uint8 NONE = 0
uint8 NO_STUCK = 1
uint8 STUCK = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/McuStandstillStatus
uint8 NONE = 0
uint8 NO_STANDSTILL = 1
uint8 STANDSTILL = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/SpdctlFaultMode
uint8 NONE = 0
uint8 NO_FAULT = 1
uint8 FAULT1 = 2
uint8 FAULT2 = 3
uint8 RESERVED1 = 4
uint8 RESERVED2 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/SpdctlRollingbackStatus
uint8 NONE = 0
uint8 NO_SILDE = 1
uint8 SILDE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/ExtraReport
uint8 available
string json

")



(provide :endpoint_msgs/ChassisReport "7c6fefc7c1d138a1152b7425cfe0d650")


