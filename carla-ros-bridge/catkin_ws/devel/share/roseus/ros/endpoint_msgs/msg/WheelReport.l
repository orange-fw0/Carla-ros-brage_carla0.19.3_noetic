;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELREPORT")
  (make-package "ENDPOINT_MSGS::WHEELREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass endpoint_msgs::WheelReport
  :super ros::object
  :slots (_header _meta _wheel_position_report _wheel_speed_report _wheel_angle_report _vehicle_imu_report _wheel_cylinder_press_report _wheel_frct_torque_report _wheel_drv_torque_report _wheel_brake_pad_temp_report ))

(defmethod endpoint_msgs::WheelReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance endpoint_msgs::StateReportMeta :init))
    ((:wheel_position_report __wheel_position_report) (instance endpoint_msgs::WheelPositionReport :init))
    ((:wheel_speed_report __wheel_speed_report) (instance endpoint_msgs::WheelSpeedReport :init))
    ((:wheel_angle_report __wheel_angle_report) (instance endpoint_msgs::WheelAngleReport :init))
    ((:vehicle_imu_report __vehicle_imu_report) (instance endpoint_msgs::VehicleImuReport :init))
    ((:wheel_cylinder_press_report __wheel_cylinder_press_report) (instance endpoint_msgs::WheelCylinderPressReport :init))
    ((:wheel_frct_torque_report __wheel_frct_torque_report) (instance endpoint_msgs::WheelFrctTorqueReport :init))
    ((:wheel_drv_torque_report __wheel_drv_torque_report) (instance endpoint_msgs::WheelDrvTorqueReport :init))
    ((:wheel_brake_pad_temp_report __wheel_brake_pad_temp_report) (instance endpoint_msgs::WheelBrakePadTempReport :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _wheel_position_report __wheel_position_report)
   (setq _wheel_speed_report __wheel_speed_report)
   (setq _wheel_angle_report __wheel_angle_report)
   (setq _vehicle_imu_report __vehicle_imu_report)
   (setq _wheel_cylinder_press_report __wheel_cylinder_press_report)
   (setq _wheel_frct_torque_report __wheel_frct_torque_report)
   (setq _wheel_drv_torque_report __wheel_drv_torque_report)
   (setq _wheel_brake_pad_temp_report __wheel_brake_pad_temp_report)
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
  (:wheel_position_report
   (&rest __wheel_position_report)
   (if (keywordp (car __wheel_position_report))
       (send* _wheel_position_report __wheel_position_report)
     (progn
       (if __wheel_position_report (setq _wheel_position_report (car __wheel_position_report)))
       _wheel_position_report)))
  (:wheel_speed_report
   (&rest __wheel_speed_report)
   (if (keywordp (car __wheel_speed_report))
       (send* _wheel_speed_report __wheel_speed_report)
     (progn
       (if __wheel_speed_report (setq _wheel_speed_report (car __wheel_speed_report)))
       _wheel_speed_report)))
  (:wheel_angle_report
   (&rest __wheel_angle_report)
   (if (keywordp (car __wheel_angle_report))
       (send* _wheel_angle_report __wheel_angle_report)
     (progn
       (if __wheel_angle_report (setq _wheel_angle_report (car __wheel_angle_report)))
       _wheel_angle_report)))
  (:vehicle_imu_report
   (&rest __vehicle_imu_report)
   (if (keywordp (car __vehicle_imu_report))
       (send* _vehicle_imu_report __vehicle_imu_report)
     (progn
       (if __vehicle_imu_report (setq _vehicle_imu_report (car __vehicle_imu_report)))
       _vehicle_imu_report)))
  (:wheel_cylinder_press_report
   (&rest __wheel_cylinder_press_report)
   (if (keywordp (car __wheel_cylinder_press_report))
       (send* _wheel_cylinder_press_report __wheel_cylinder_press_report)
     (progn
       (if __wheel_cylinder_press_report (setq _wheel_cylinder_press_report (car __wheel_cylinder_press_report)))
       _wheel_cylinder_press_report)))
  (:wheel_frct_torque_report
   (&rest __wheel_frct_torque_report)
   (if (keywordp (car __wheel_frct_torque_report))
       (send* _wheel_frct_torque_report __wheel_frct_torque_report)
     (progn
       (if __wheel_frct_torque_report (setq _wheel_frct_torque_report (car __wheel_frct_torque_report)))
       _wheel_frct_torque_report)))
  (:wheel_drv_torque_report
   (&rest __wheel_drv_torque_report)
   (if (keywordp (car __wheel_drv_torque_report))
       (send* _wheel_drv_torque_report __wheel_drv_torque_report)
     (progn
       (if __wheel_drv_torque_report (setq _wheel_drv_torque_report (car __wheel_drv_torque_report)))
       _wheel_drv_torque_report)))
  (:wheel_brake_pad_temp_report
   (&rest __wheel_brake_pad_temp_report)
   (if (keywordp (car __wheel_brake_pad_temp_report))
       (send* _wheel_brake_pad_temp_report __wheel_brake_pad_temp_report)
     (progn
       (if __wheel_brake_pad_temp_report (setq _wheel_brake_pad_temp_report (car __wheel_brake_pad_temp_report)))
       _wheel_brake_pad_temp_report)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; endpoint_msgs/StateReportMeta _meta
    (send _meta :serialization-length)
    ;; endpoint_msgs/WheelPositionReport _wheel_position_report
    (send _wheel_position_report :serialization-length)
    ;; endpoint_msgs/WheelSpeedReport _wheel_speed_report
    (send _wheel_speed_report :serialization-length)
    ;; endpoint_msgs/WheelAngleReport _wheel_angle_report
    (send _wheel_angle_report :serialization-length)
    ;; endpoint_msgs/VehicleImuReport _vehicle_imu_report
    (send _vehicle_imu_report :serialization-length)
    ;; endpoint_msgs/WheelCylinderPressReport _wheel_cylinder_press_report
    (send _wheel_cylinder_press_report :serialization-length)
    ;; endpoint_msgs/WheelFrctTorqueReport _wheel_frct_torque_report
    (send _wheel_frct_torque_report :serialization-length)
    ;; endpoint_msgs/WheelDrvTorqueReport _wheel_drv_torque_report
    (send _wheel_drv_torque_report :serialization-length)
    ;; endpoint_msgs/WheelBrakePadTempReport _wheel_brake_pad_temp_report
    (send _wheel_brake_pad_temp_report :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; endpoint_msgs/StateReportMeta _meta
       (send _meta :serialize s)
     ;; endpoint_msgs/WheelPositionReport _wheel_position_report
       (send _wheel_position_report :serialize s)
     ;; endpoint_msgs/WheelSpeedReport _wheel_speed_report
       (send _wheel_speed_report :serialize s)
     ;; endpoint_msgs/WheelAngleReport _wheel_angle_report
       (send _wheel_angle_report :serialize s)
     ;; endpoint_msgs/VehicleImuReport _vehicle_imu_report
       (send _vehicle_imu_report :serialize s)
     ;; endpoint_msgs/WheelCylinderPressReport _wheel_cylinder_press_report
       (send _wheel_cylinder_press_report :serialize s)
     ;; endpoint_msgs/WheelFrctTorqueReport _wheel_frct_torque_report
       (send _wheel_frct_torque_report :serialize s)
     ;; endpoint_msgs/WheelDrvTorqueReport _wheel_drv_torque_report
       (send _wheel_drv_torque_report :serialize s)
     ;; endpoint_msgs/WheelBrakePadTempReport _wheel_brake_pad_temp_report
       (send _wheel_brake_pad_temp_report :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; endpoint_msgs/StateReportMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; endpoint_msgs/WheelPositionReport _wheel_position_report
     (send _wheel_position_report :deserialize buf ptr-) (incf ptr- (send _wheel_position_report :serialization-length))
   ;; endpoint_msgs/WheelSpeedReport _wheel_speed_report
     (send _wheel_speed_report :deserialize buf ptr-) (incf ptr- (send _wheel_speed_report :serialization-length))
   ;; endpoint_msgs/WheelAngleReport _wheel_angle_report
     (send _wheel_angle_report :deserialize buf ptr-) (incf ptr- (send _wheel_angle_report :serialization-length))
   ;; endpoint_msgs/VehicleImuReport _vehicle_imu_report
     (send _vehicle_imu_report :deserialize buf ptr-) (incf ptr- (send _vehicle_imu_report :serialization-length))
   ;; endpoint_msgs/WheelCylinderPressReport _wheel_cylinder_press_report
     (send _wheel_cylinder_press_report :deserialize buf ptr-) (incf ptr- (send _wheel_cylinder_press_report :serialization-length))
   ;; endpoint_msgs/WheelFrctTorqueReport _wheel_frct_torque_report
     (send _wheel_frct_torque_report :deserialize buf ptr-) (incf ptr- (send _wheel_frct_torque_report :serialization-length))
   ;; endpoint_msgs/WheelDrvTorqueReport _wheel_drv_torque_report
     (send _wheel_drv_torque_report :deserialize buf ptr-) (incf ptr- (send _wheel_drv_torque_report :serialization-length))
   ;; endpoint_msgs/WheelBrakePadTempReport _wheel_brake_pad_temp_report
     (send _wheel_brake_pad_temp_report :deserialize buf ptr-) (incf ptr- (send _wheel_brake_pad_temp_report :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelReport :md5sum-) "5eaa9679464497957c659c089f910072")
(setf (get endpoint_msgs::WheelReport :datatype-) "endpoint_msgs/WheelReport")
(setf (get endpoint_msgs::WheelReport :definition-)
      "std_msgs/Header header
endpoint_msgs/StateReportMeta meta
endpoint_msgs/WheelPositionReport wheel_position_report
endpoint_msgs/WheelSpeedReport wheel_speed_report
endpoint_msgs/WheelAngleReport wheel_angle_report
endpoint_msgs/VehicleImuReport vehicle_imu_report
endpoint_msgs/WheelCylinderPressReport wheel_cylinder_press_report
endpoint_msgs/WheelFrctTorqueReport wheel_frct_torque_report
endpoint_msgs/WheelDrvTorqueReport wheel_drv_torque_report
endpoint_msgs/WheelBrakePadTempReport wheel_brake_pad_temp_report

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
MSG: endpoint_msgs/WheelPositionReport
uint8 WHEEL_POSITION_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelPositionReportData wheel_position_report_data

================================================================================
MSG: endpoint_msgs/WheelPositionReportData
uint64 timestamp_us
int16 front_left
int16 front_right
int16 rear_left
int16 rear_right
bool valid

================================================================================
MSG: endpoint_msgs/WheelSpeedReport
uint8 WHEEL_SPEED_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelSpeedReportData wheel_speed_report_data

================================================================================
MSG: endpoint_msgs/WheelSpeedReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
float32 front_left_mps
float32 front_right_mps
float32 rear_left_mps
float32 rear_right_mps
bool valid

================================================================================
MSG: endpoint_msgs/WheelAngleReport
uint8 WHEEL_ANGLE_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelAngleReportData wheel_angle_report_data

================================================================================
MSG: endpoint_msgs/WheelAngleReportData
uint64 timestamp_us
endpoint_msgs/RwsSysStatus rws_state
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

================================================================================
MSG: endpoint_msgs/RwsSysStatus
uint8 STANDARD_MODE = 0
uint8 COMFORTABLE_MODE = 1
uint8 SPORT_MODE = 2
uint8 AD_MODE = 3
uint8 ADLOCK_MODE = 4
uint8 RESERVED = 5
bool valid
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleImuReport
uint8 VEHICLE_IMU_REPORT_DATA = 1
uint8 available
endpoint_msgs/VehicleImuReportData vehicle_imu_report_data

================================================================================
MSG: endpoint_msgs/VehicleImuReportData
uint64 timestamp_us
float32 linear_acceleration_lat
float32 linear_acceleration_lon
float32 linear_acceleration_vert
float32 angular_velocity_roll
float32 angular_velocity_pitch
float32 angular_velocity_yaw
bool valid

================================================================================
MSG: endpoint_msgs/WheelCylinderPressReport
uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data

================================================================================
MSG: endpoint_msgs/WheelCylinderPressReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

================================================================================
MSG: endpoint_msgs/WheelFrctTorqueReport
uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data

================================================================================
MSG: endpoint_msgs/WheelFrctTorqueReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

================================================================================
MSG: endpoint_msgs/WheelDrvTorqueReport
uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data

================================================================================
MSG: endpoint_msgs/WheelDrvTorqueReportData
uint64 timestamp_us
float32 front_left
bool front_left_valid
float32 front_right
float32 front_right_valid
float32 rear_left
float32 rear_left_valid
float32 rear_right
float32 rear_right_valid

================================================================================
MSG: endpoint_msgs/WheelBrakePadTempReport
uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data

================================================================================
MSG: endpoint_msgs/WheelBrakePadTempData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

")



(provide :endpoint_msgs/WheelReport "5eaa9679464497957c659c089f910072")


