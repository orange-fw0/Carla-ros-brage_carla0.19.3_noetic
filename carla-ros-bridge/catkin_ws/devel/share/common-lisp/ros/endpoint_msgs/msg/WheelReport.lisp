; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelReport.msg.html

(cl:defclass <WheelReport> (roslisp-msg-protocol:ros-message)
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
   (wheel_position_report
    :reader wheel_position_report
    :initarg :wheel_position_report
    :type endpoint_msgs-msg:WheelPositionReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelPositionReport))
   (wheel_speed_report
    :reader wheel_speed_report
    :initarg :wheel_speed_report
    :type endpoint_msgs-msg:WheelSpeedReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelSpeedReport))
   (wheel_angle_report
    :reader wheel_angle_report
    :initarg :wheel_angle_report
    :type endpoint_msgs-msg:WheelAngleReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelAngleReport))
   (vehicle_imu_report
    :reader vehicle_imu_report
    :initarg :vehicle_imu_report
    :type endpoint_msgs-msg:VehicleImuReport
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleImuReport))
   (wheel_cylinder_press_report
    :reader wheel_cylinder_press_report
    :initarg :wheel_cylinder_press_report
    :type endpoint_msgs-msg:WheelCylinderPressReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelCylinderPressReport))
   (wheel_frct_torque_report
    :reader wheel_frct_torque_report
    :initarg :wheel_frct_torque_report
    :type endpoint_msgs-msg:WheelFrctTorqueReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelFrctTorqueReport))
   (wheel_drv_torque_report
    :reader wheel_drv_torque_report
    :initarg :wheel_drv_torque_report
    :type endpoint_msgs-msg:WheelDrvTorqueReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelDrvTorqueReport))
   (wheel_brake_pad_temp_report
    :reader wheel_brake_pad_temp_report
    :initarg :wheel_brake_pad_temp_report
    :type endpoint_msgs-msg:WheelBrakePadTempReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelBrakePadTempReport)))
)

(cl:defclass WheelReport (<WheelReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelReport> is deprecated: use endpoint_msgs-msg:WheelReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:header-val is deprecated.  Use endpoint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:meta-val is deprecated.  Use endpoint_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'wheel_position_report-val :lambda-list '(m))
(cl:defmethod wheel_position_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_position_report-val is deprecated.  Use endpoint_msgs-msg:wheel_position_report instead.")
  (wheel_position_report m))

(cl:ensure-generic-function 'wheel_speed_report-val :lambda-list '(m))
(cl:defmethod wheel_speed_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_speed_report-val is deprecated.  Use endpoint_msgs-msg:wheel_speed_report instead.")
  (wheel_speed_report m))

(cl:ensure-generic-function 'wheel_angle_report-val :lambda-list '(m))
(cl:defmethod wheel_angle_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_angle_report-val is deprecated.  Use endpoint_msgs-msg:wheel_angle_report instead.")
  (wheel_angle_report m))

(cl:ensure-generic-function 'vehicle_imu_report-val :lambda-list '(m))
(cl:defmethod vehicle_imu_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_imu_report-val is deprecated.  Use endpoint_msgs-msg:vehicle_imu_report instead.")
  (vehicle_imu_report m))

(cl:ensure-generic-function 'wheel_cylinder_press_report-val :lambda-list '(m))
(cl:defmethod wheel_cylinder_press_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_cylinder_press_report-val is deprecated.  Use endpoint_msgs-msg:wheel_cylinder_press_report instead.")
  (wheel_cylinder_press_report m))

(cl:ensure-generic-function 'wheel_frct_torque_report-val :lambda-list '(m))
(cl:defmethod wheel_frct_torque_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_frct_torque_report-val is deprecated.  Use endpoint_msgs-msg:wheel_frct_torque_report instead.")
  (wheel_frct_torque_report m))

(cl:ensure-generic-function 'wheel_drv_torque_report-val :lambda-list '(m))
(cl:defmethod wheel_drv_torque_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_drv_torque_report-val is deprecated.  Use endpoint_msgs-msg:wheel_drv_torque_report instead.")
  (wheel_drv_torque_report m))

(cl:ensure-generic-function 'wheel_brake_pad_temp_report-val :lambda-list '(m))
(cl:defmethod wheel_brake_pad_temp_report-val ((m <WheelReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_brake_pad_temp_report-val is deprecated.  Use endpoint_msgs-msg:wheel_brake_pad_temp_report instead.")
  (wheel_brake_pad_temp_report m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelReport>) ostream)
  "Serializes a message object of type '<WheelReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_position_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_speed_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_angle_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_imu_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_cylinder_press_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_frct_torque_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_drv_torque_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_brake_pad_temp_report) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelReport>) istream)
  "Deserializes a message object of type '<WheelReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_position_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_speed_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_angle_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_imu_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_cylinder_press_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_frct_torque_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_drv_torque_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_brake_pad_temp_report) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelReport>)))
  "Returns string type for a message object of type '<WheelReport>"
  "endpoint_msgs/WheelReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelReport)))
  "Returns string type for a message object of type 'WheelReport"
  "endpoint_msgs/WheelReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelReport>)))
  "Returns md5sum for a message object of type '<WheelReport>"
  "5eaa9679464497957c659c089f910072")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelReport)))
  "Returns md5sum for a message object of type 'WheelReport"
  "5eaa9679464497957c659c089f910072")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelReport>)))
  "Returns full string definition for message of type '<WheelReport>"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/StateReportMeta meta~%endpoint_msgs/WheelPositionReport wheel_position_report~%endpoint_msgs/WheelSpeedReport wheel_speed_report~%endpoint_msgs/WheelAngleReport wheel_angle_report~%endpoint_msgs/VehicleImuReport vehicle_imu_report~%endpoint_msgs/WheelCylinderPressReport wheel_cylinder_press_report~%endpoint_msgs/WheelFrctTorqueReport wheel_frct_torque_report~%endpoint_msgs/WheelDrvTorqueReport wheel_drv_torque_report~%endpoint_msgs/WheelBrakePadTempReport wheel_brake_pad_temp_report~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/StateReportMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/WheelPositionReport~%uint8 WHEEL_POSITION_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelPositionReportData wheel_position_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelPositionReportData~%uint64 timestamp_us~%int16 front_left~%int16 front_right~%int16 rear_left~%int16 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelSpeedReport~%uint8 WHEEL_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelSpeedReportData wheel_speed_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelSpeedReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%float32 front_left_mps~%float32 front_right_mps~%float32 rear_left_mps~%float32 rear_right_mps~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelAngleReport~%uint8 WHEEL_ANGLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelAngleReportData wheel_angle_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelAngleReportData~%uint64 timestamp_us~%endpoint_msgs/RwsSysStatus rws_state~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/RwsSysStatus~%uint8 STANDARD_MODE = 0~%uint8 COMFORTABLE_MODE = 1~%uint8 SPORT_MODE = 2~%uint8 AD_MODE = 3~%uint8 ADLOCK_MODE = 4~%uint8 RESERVED = 5~%bool valid~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleImuReport~%uint8 VEHICLE_IMU_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleImuReportData vehicle_imu_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleImuReportData~%uint64 timestamp_us~%float32 linear_acceleration_lat~%float32 linear_acceleration_lon~%float32 linear_acceleration_vert~%float32 angular_velocity_roll~%float32 angular_velocity_pitch~%float32 angular_velocity_yaw~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelCylinderPressReport~%uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelCylinderPressReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelFrctTorqueReport~%uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelFrctTorqueReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelDrvTorqueReport~%uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelDrvTorqueReportData~%uint64 timestamp_us~%float32 front_left~%bool front_left_valid~%float32 front_right~%float32 front_right_valid~%float32 rear_left~%float32 rear_left_valid~%float32 rear_right~%float32 rear_right_valid~%~%================================================================================~%MSG: endpoint_msgs/WheelBrakePadTempReport~%uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data~%~%================================================================================~%MSG: endpoint_msgs/WheelBrakePadTempData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelReport)))
  "Returns full string definition for message of type 'WheelReport"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/StateReportMeta meta~%endpoint_msgs/WheelPositionReport wheel_position_report~%endpoint_msgs/WheelSpeedReport wheel_speed_report~%endpoint_msgs/WheelAngleReport wheel_angle_report~%endpoint_msgs/VehicleImuReport vehicle_imu_report~%endpoint_msgs/WheelCylinderPressReport wheel_cylinder_press_report~%endpoint_msgs/WheelFrctTorqueReport wheel_frct_torque_report~%endpoint_msgs/WheelDrvTorqueReport wheel_drv_torque_report~%endpoint_msgs/WheelBrakePadTempReport wheel_brake_pad_temp_report~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/StateReportMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/WheelPositionReport~%uint8 WHEEL_POSITION_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelPositionReportData wheel_position_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelPositionReportData~%uint64 timestamp_us~%int16 front_left~%int16 front_right~%int16 rear_left~%int16 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelSpeedReport~%uint8 WHEEL_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelSpeedReportData wheel_speed_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelSpeedReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%float32 front_left_mps~%float32 front_right_mps~%float32 rear_left_mps~%float32 rear_right_mps~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelAngleReport~%uint8 WHEEL_ANGLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelAngleReportData wheel_angle_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelAngleReportData~%uint64 timestamp_us~%endpoint_msgs/RwsSysStatus rws_state~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/RwsSysStatus~%uint8 STANDARD_MODE = 0~%uint8 COMFORTABLE_MODE = 1~%uint8 SPORT_MODE = 2~%uint8 AD_MODE = 3~%uint8 ADLOCK_MODE = 4~%uint8 RESERVED = 5~%bool valid~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleImuReport~%uint8 VEHICLE_IMU_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleImuReportData vehicle_imu_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleImuReportData~%uint64 timestamp_us~%float32 linear_acceleration_lat~%float32 linear_acceleration_lon~%float32 linear_acceleration_vert~%float32 angular_velocity_roll~%float32 angular_velocity_pitch~%float32 angular_velocity_yaw~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelCylinderPressReport~%uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelCylinderPressReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelFrctTorqueReport~%uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelFrctTorqueReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WheelDrvTorqueReport~%uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelDrvTorqueReportData~%uint64 timestamp_us~%float32 front_left~%bool front_left_valid~%float32 front_right~%float32 front_right_valid~%float32 rear_left~%float32 rear_left_valid~%float32 rear_right~%float32 rear_right_valid~%~%================================================================================~%MSG: endpoint_msgs/WheelBrakePadTempReport~%uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data~%~%================================================================================~%MSG: endpoint_msgs/WheelBrakePadTempData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_position_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_speed_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_angle_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_imu_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_cylinder_press_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_frct_torque_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_drv_torque_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_brake_pad_temp_report))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelReport
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':wheel_position_report (wheel_position_report msg))
    (cl:cons ':wheel_speed_report (wheel_speed_report msg))
    (cl:cons ':wheel_angle_report (wheel_angle_report msg))
    (cl:cons ':vehicle_imu_report (vehicle_imu_report msg))
    (cl:cons ':wheel_cylinder_press_report (wheel_cylinder_press_report msg))
    (cl:cons ':wheel_frct_torque_report (wheel_frct_torque_report msg))
    (cl:cons ':wheel_drv_torque_report (wheel_drv_torque_report msg))
    (cl:cons ':wheel_brake_pad_temp_report (wheel_brake_pad_temp_report msg))
))
