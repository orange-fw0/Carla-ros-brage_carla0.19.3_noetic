; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ChassisReport.msg.html

(cl:defclass <ChassisReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type endpoint_msgs-msg:StateReportMeta
    :initform (cl:make-instance 'endpoint_msgs-msg:StateReportMeta))
   (brake_report
    :reader brake_report
    :initarg :brake_report
    :type endpoint_msgs-msg:BrakeReport
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeReport))
   (brake_info_report
    :reader brake_info_report
    :initarg :brake_info_report
    :type endpoint_msgs-msg:BrakeInfoReport
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeInfoReport))
   (throttle_report
    :reader throttle_report
    :initarg :throttle_report
    :type endpoint_msgs-msg:ThrottleReport
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleReport))
   (throttle_info_report
    :reader throttle_info_report
    :initarg :throttle_info_report
    :type endpoint_msgs-msg:ThrottleInfoReport
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleInfoReport))
   (steering_report
    :reader steering_report
    :initarg :steering_report
    :type endpoint_msgs-msg:SteeringReport
    :initform (cl:make-instance 'endpoint_msgs-msg:SteeringReport))
   (gear_report
    :reader gear_report
    :initarg :gear_report
    :type endpoint_msgs-msg:GearReport
    :initform (cl:make-instance 'endpoint_msgs-msg:GearReport))
   (epb_report
    :reader epb_report
    :initarg :epb_report
    :type endpoint_msgs-msg:EpbReport
    :initform (cl:make-instance 'endpoint_msgs-msg:EpbReport))
   (motor_speed_report
    :reader motor_speed_report
    :initarg :motor_speed_report
    :type endpoint_msgs-msg:MotorSpeedReport
    :initform (cl:make-instance 'endpoint_msgs-msg:MotorSpeedReport))
   (extra
    :reader extra
    :initarg :extra
    :type endpoint_msgs-msg:ExtraReport
    :initform (cl:make-instance 'endpoint_msgs-msg:ExtraReport)))
)

(cl:defclass ChassisReport (<ChassisReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ChassisReport> is deprecated: use endpoint_msgs-msg:ChassisReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:header-val is deprecated.  Use endpoint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:meta-val is deprecated.  Use endpoint_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'brake_report-val :lambda-list '(m))
(cl:defmethod brake_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_report-val is deprecated.  Use endpoint_msgs-msg:brake_report instead.")
  (brake_report m))

(cl:ensure-generic-function 'brake_info_report-val :lambda-list '(m))
(cl:defmethod brake_info_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_info_report-val is deprecated.  Use endpoint_msgs-msg:brake_info_report instead.")
  (brake_info_report m))

(cl:ensure-generic-function 'throttle_report-val :lambda-list '(m))
(cl:defmethod throttle_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_report-val is deprecated.  Use endpoint_msgs-msg:throttle_report instead.")
  (throttle_report m))

(cl:ensure-generic-function 'throttle_info_report-val :lambda-list '(m))
(cl:defmethod throttle_info_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_info_report-val is deprecated.  Use endpoint_msgs-msg:throttle_info_report instead.")
  (throttle_info_report m))

(cl:ensure-generic-function 'steering_report-val :lambda-list '(m))
(cl:defmethod steering_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_report-val is deprecated.  Use endpoint_msgs-msg:steering_report instead.")
  (steering_report m))

(cl:ensure-generic-function 'gear_report-val :lambda-list '(m))
(cl:defmethod gear_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:gear_report-val is deprecated.  Use endpoint_msgs-msg:gear_report instead.")
  (gear_report m))

(cl:ensure-generic-function 'epb_report-val :lambda-list '(m))
(cl:defmethod epb_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:epb_report-val is deprecated.  Use endpoint_msgs-msg:epb_report instead.")
  (epb_report m))

(cl:ensure-generic-function 'motor_speed_report-val :lambda-list '(m))
(cl:defmethod motor_speed_report-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_speed_report-val is deprecated.  Use endpoint_msgs-msg:motor_speed_report instead.")
  (motor_speed_report m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <ChassisReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:extra-val is deprecated.  Use endpoint_msgs-msg:extra instead.")
  (extra m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisReport>) ostream)
  "Serializes a message object of type '<ChassisReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_info_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_info_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'epb_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_speed_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extra) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisReport>) istream)
  "Deserializes a message object of type '<ChassisReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_info_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_info_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'epb_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_speed_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extra) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisReport>)))
  "Returns string type for a message object of type '<ChassisReport>"
  "endpoint_msgs/ChassisReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisReport)))
  "Returns string type for a message object of type 'ChassisReport"
  "endpoint_msgs/ChassisReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisReport>)))
  "Returns md5sum for a message object of type '<ChassisReport>"
  "7c6fefc7c1d138a1152b7425cfe0d650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisReport)))
  "Returns md5sum for a message object of type 'ChassisReport"
  "7c6fefc7c1d138a1152b7425cfe0d650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisReport>)))
  "Returns full string definition for message of type '<ChassisReport>"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/StateReportMeta meta~%endpoint_msgs/BrakeReport brake_report~%endpoint_msgs/BrakeInfoReport brake_info_report~%endpoint_msgs/ThrottleReport throttle_report~%endpoint_msgs/ThrottleInfoReport throttle_info_report~%endpoint_msgs/SteeringReport steering_report~%endpoint_msgs/GearReport gear_report~%endpoint_msgs/EpbReport epb_report~%endpoint_msgs/MotorSpeedReport motor_speed_report~%endpoint_msgs/ExtraReport extra~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/StateReportMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/BrakeReport~%uint8 BRAKE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeReportData brake_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/BrakeType brake_type~%float32 pedal_input~%float32 brake_command~%float32 brake_output~%bool override~%float32 ahb_exec_brake_force~%bool ahb_exec_brake_force_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeInfoReport~%uint8 BRAKE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeInfoReportData brake_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeInfoReportData~%uint64 timestamp_us~%float32 accleration_on_wheel~%float32 lateral_accleration_on_wheel~%bool stationary~%bool abs_active~%bool abs_fault~%bool tcs_active~%bool tcs_fault~%bool msr_active~%bool msr_fault~%bool esp_active~%bool esp_fault~%bool tsr_active~%bool tsr_fault~%bool pressure~%float32 brake_torque_delivery~%bool brake_torque_delivery_valid~%float32 brake_regen_torque_delivery~%bool brake_regen_torque_delivery_valid~%float32 brake_frct_torque_delivery~%bool brake_frct_torque_delivery_valid~%float32 master_pressure_delivery~%bool master_pressure_delivery_valid~%float32 pedal_brake_torque~%bool pedal_brake_torque_valid~%bool pkg_fastswitch_enable~%bool vehicle_block~%endpoint_msgs/VehESPSwitch esp_status~%bool vdc_active~%bool vdc_fault~%uint8 reserved~%~%================================================================================~%MSG: endpoint_msgs/VehESPSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ThrottleReport~%uint8 THROTTLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleReportData throttle_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleReportData~%uint64 timestamp_us~%endpoint_msgs/ThrottleType type~%endpoint_msgs/WorkType driver_work_type~%float32 pedal_input~%float32 command~%float32 throttle_output~%bool override~%float32 vcu_max_neg_torque~%float32 vcu_max_pos_torque~%bool vcu_max_neg_torque_valid~%bool vcu_max_pos_torque_valid~%float32 vcu_exec_throttle_torque~%bool vcu_exec_throttle_torque_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ThrottleInfoReport~%uint8 THROTTLE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleInfoReportData throttle_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleInfoReportData~%uint64 timestamp_us~%float32 front_left_mot_rpm~%bool front_left_mot_rpm_valid~%float32 front_right_mot_rpm~%bool front_right_mot_rpm_valid~%float32 rear_left_mot_rpm~%bool rear_left_mot_rpm_valid~%float32 rear_right_mot_rpm~%bool rear_right_mot_rpm_valid~%float32 throttle_pedal_percent~%float32 throttle_pedal_rate~%float32 vehicle_speed_average~%bool vehicle_speed_average_valid~%float32 vehicle_mileage~%float32 throttle_torque_delivery~%bool throttle_torque_delivery_valid~%bool pressure~%float32 input_shaft_speed~%float32 output_shaft_speed~%int8 curr_transmission_gear~%float32 curr_gear_ration~%bool input_shaft_speed_valid~%bool output_shaft_speed_valid~%bool curr_transmission_gear_valid~%bool curr_gear_ration_valid~%float32 reserved1~%float32 reserved2~%~%================================================================================~%MSG: endpoint_msgs/SteeringReport~%uint8 STEERING_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/SteeringReportData steering_report_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/SteeringType steering_type~%float32 steering_cmd~%float32 steering_report~%float32 steering_wheel_angle_report~%float32 steering_wheel_torque_report~%float32 steering_follow_rate~%endpoint_msgs/RWhSteerModType rws_mode_report~%float32 rws_angle~%bool override~%float32 steering_elc_assist_torque~%bool steering_elc_assist_torque_valid~%float32 steering_total_torque~%bool steering_total_torque_valid~%endpoint_msgs/CalibrationType eps_calibration_state~%endpoint_msgs/RWhSteerDirection rws_direction_report~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/CalibrationType~%uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReport~%uint8 GEAR_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/GearReportData gear_report_data~%~%================================================================================~%MSG: endpoint_msgs/GearReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/Gear command~%endpoint_msgs/Gear current_state~%endpoint_msgs/GearReject reject~%bool override~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReject~%uint8 NONE = 0~%uint8 SHIFT_IN_PROGRESS = 1~%uint8 OVERRIDE = 2~%uint8 ROTARY_LOW = 3~%uint8 ROTARY_PARK = 4~%uint8 VEHICLE = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/EpbReport~%uint8 EPB_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/EpbReportData epb_report_data~%~%================================================================================~%MSG: endpoint_msgs/EpbReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/EpbStatus epb_report~%endpoint_msgs/AutoHoldStatus auto_hold_state~%bool vehicle_hold_active~%bool overide~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/EpbStatus~%uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoHoldStatus~%uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedReport~%uint8 MOTOR_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedReportData~%endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status~%float32 motor_speed~%float32 motor_raw_speed~%bool motor_raw_speed_valid~%endpoint_msgs/McuStuckStatus mcu_stuck_status~%endpoint_msgs/McuStandstillStatus mcu_standstill_status~%endpoint_msgs/SpdctlFaultMode spdctl_fault_mode~%bool spdctl_valid~%endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status~%float32 mcu_req_torque~%bool mcu_req_torque_valid~%float32 motor_actual_toruqe~%bool motor_actual_toruqe_valid~%float32 motor_wheel_regen_torque~%bool motor_wheel_regen_torque_valid~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedControlStatus~%uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStuckStatus~%uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStandstillStatus~%uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlFaultMode~%uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlRollingbackStatus~%uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ExtraReport~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisReport)))
  "Returns full string definition for message of type 'ChassisReport"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/StateReportMeta meta~%endpoint_msgs/BrakeReport brake_report~%endpoint_msgs/BrakeInfoReport brake_info_report~%endpoint_msgs/ThrottleReport throttle_report~%endpoint_msgs/ThrottleInfoReport throttle_info_report~%endpoint_msgs/SteeringReport steering_report~%endpoint_msgs/GearReport gear_report~%endpoint_msgs/EpbReport epb_report~%endpoint_msgs/MotorSpeedReport motor_speed_report~%endpoint_msgs/ExtraReport extra~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/StateReportMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/BrakeReport~%uint8 BRAKE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeReportData brake_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/BrakeType brake_type~%float32 pedal_input~%float32 brake_command~%float32 brake_output~%bool override~%float32 ahb_exec_brake_force~%bool ahb_exec_brake_force_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeInfoReport~%uint8 BRAKE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeInfoReportData brake_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeInfoReportData~%uint64 timestamp_us~%float32 accleration_on_wheel~%float32 lateral_accleration_on_wheel~%bool stationary~%bool abs_active~%bool abs_fault~%bool tcs_active~%bool tcs_fault~%bool msr_active~%bool msr_fault~%bool esp_active~%bool esp_fault~%bool tsr_active~%bool tsr_fault~%bool pressure~%float32 brake_torque_delivery~%bool brake_torque_delivery_valid~%float32 brake_regen_torque_delivery~%bool brake_regen_torque_delivery_valid~%float32 brake_frct_torque_delivery~%bool brake_frct_torque_delivery_valid~%float32 master_pressure_delivery~%bool master_pressure_delivery_valid~%float32 pedal_brake_torque~%bool pedal_brake_torque_valid~%bool pkg_fastswitch_enable~%bool vehicle_block~%endpoint_msgs/VehESPSwitch esp_status~%bool vdc_active~%bool vdc_fault~%uint8 reserved~%~%================================================================================~%MSG: endpoint_msgs/VehESPSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ThrottleReport~%uint8 THROTTLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleReportData throttle_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleReportData~%uint64 timestamp_us~%endpoint_msgs/ThrottleType type~%endpoint_msgs/WorkType driver_work_type~%float32 pedal_input~%float32 command~%float32 throttle_output~%bool override~%float32 vcu_max_neg_torque~%float32 vcu_max_pos_torque~%bool vcu_max_neg_torque_valid~%bool vcu_max_pos_torque_valid~%float32 vcu_exec_throttle_torque~%bool vcu_exec_throttle_torque_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ThrottleInfoReport~%uint8 THROTTLE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleInfoReportData throttle_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleInfoReportData~%uint64 timestamp_us~%float32 front_left_mot_rpm~%bool front_left_mot_rpm_valid~%float32 front_right_mot_rpm~%bool front_right_mot_rpm_valid~%float32 rear_left_mot_rpm~%bool rear_left_mot_rpm_valid~%float32 rear_right_mot_rpm~%bool rear_right_mot_rpm_valid~%float32 throttle_pedal_percent~%float32 throttle_pedal_rate~%float32 vehicle_speed_average~%bool vehicle_speed_average_valid~%float32 vehicle_mileage~%float32 throttle_torque_delivery~%bool throttle_torque_delivery_valid~%bool pressure~%float32 input_shaft_speed~%float32 output_shaft_speed~%int8 curr_transmission_gear~%float32 curr_gear_ration~%bool input_shaft_speed_valid~%bool output_shaft_speed_valid~%bool curr_transmission_gear_valid~%bool curr_gear_ration_valid~%float32 reserved1~%float32 reserved2~%~%================================================================================~%MSG: endpoint_msgs/SteeringReport~%uint8 STEERING_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/SteeringReportData steering_report_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/SteeringType steering_type~%float32 steering_cmd~%float32 steering_report~%float32 steering_wheel_angle_report~%float32 steering_wheel_torque_report~%float32 steering_follow_rate~%endpoint_msgs/RWhSteerModType rws_mode_report~%float32 rws_angle~%bool override~%float32 steering_elc_assist_torque~%bool steering_elc_assist_torque_valid~%float32 steering_total_torque~%bool steering_total_torque_valid~%endpoint_msgs/CalibrationType eps_calibration_state~%endpoint_msgs/RWhSteerDirection rws_direction_report~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/CalibrationType~%uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReport~%uint8 GEAR_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/GearReportData gear_report_data~%~%================================================================================~%MSG: endpoint_msgs/GearReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/Gear command~%endpoint_msgs/Gear current_state~%endpoint_msgs/GearReject reject~%bool override~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReject~%uint8 NONE = 0~%uint8 SHIFT_IN_PROGRESS = 1~%uint8 OVERRIDE = 2~%uint8 ROTARY_LOW = 3~%uint8 ROTARY_PARK = 4~%uint8 VEHICLE = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/EpbReport~%uint8 EPB_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/EpbReportData epb_report_data~%~%================================================================================~%MSG: endpoint_msgs/EpbReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/EpbStatus epb_report~%endpoint_msgs/AutoHoldStatus auto_hold_state~%bool vehicle_hold_active~%bool overide~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/EpbStatus~%uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoHoldStatus~%uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedReport~%uint8 MOTOR_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedReportData~%endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status~%float32 motor_speed~%float32 motor_raw_speed~%bool motor_raw_speed_valid~%endpoint_msgs/McuStuckStatus mcu_stuck_status~%endpoint_msgs/McuStandstillStatus mcu_standstill_status~%endpoint_msgs/SpdctlFaultMode spdctl_fault_mode~%bool spdctl_valid~%endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status~%float32 mcu_req_torque~%bool mcu_req_torque_valid~%float32 motor_actual_toruqe~%bool motor_actual_toruqe_valid~%float32 motor_wheel_regen_torque~%bool motor_wheel_regen_torque_valid~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedControlStatus~%uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStuckStatus~%uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStandstillStatus~%uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlFaultMode~%uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlRollingbackStatus~%uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ExtraReport~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_info_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_info_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'epb_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_speed_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extra))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisReport
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':brake_report (brake_report msg))
    (cl:cons ':brake_info_report (brake_info_report msg))
    (cl:cons ':throttle_report (throttle_report msg))
    (cl:cons ':throttle_info_report (throttle_info_report msg))
    (cl:cons ':steering_report (steering_report msg))
    (cl:cons ':gear_report (gear_report msg))
    (cl:cons ':epb_report (epb_report msg))
    (cl:cons ':motor_speed_report (motor_speed_report msg))
    (cl:cons ':extra (extra msg))
))
