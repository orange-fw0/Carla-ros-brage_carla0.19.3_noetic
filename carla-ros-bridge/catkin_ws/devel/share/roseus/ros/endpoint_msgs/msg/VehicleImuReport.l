;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleImuReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleImuReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEIMUREPORT")
  (make-package "ENDPOINT_MSGS::VEHICLEIMUREPORT"))

(in-package "ROS")
;;//! \htmlinclude VehicleImuReport.msg.html


(intern "*VEHICLE_IMU_REPORT_DATA*" (find-package "ENDPOINT_MSGS::VEHICLEIMUREPORT"))
(shadow '*VEHICLE_IMU_REPORT_DATA* (find-package "ENDPOINT_MSGS::VEHICLEIMUREPORT"))
(defconstant endpoint_msgs::VehicleImuReport::*VEHICLE_IMU_REPORT_DATA* 1)

(defun endpoint_msgs::VehicleImuReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::VehicleImuReport::*VEHICLE_IMU_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::VehicleImuReport
  :super ros::object
  :slots (_available _vehicle_imu_report_data ))

(defmethod endpoint_msgs::VehicleImuReport
  (:init
   (&key
    ((:available __available) 0)
    ((:vehicle_imu_report_data __vehicle_imu_report_data) (instance endpoint_msgs::VehicleImuReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vehicle_imu_report_data __vehicle_imu_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vehicle_imu_report_data
   (&rest __vehicle_imu_report_data)
   (if (keywordp (car __vehicle_imu_report_data))
       (send* _vehicle_imu_report_data __vehicle_imu_report_data)
     (progn
       (if __vehicle_imu_report_data (setq _vehicle_imu_report_data (car __vehicle_imu_report_data)))
       _vehicle_imu_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/VehicleImuReportData _vehicle_imu_report_data
    (send _vehicle_imu_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/VehicleImuReportData _vehicle_imu_report_data
       (send _vehicle_imu_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/VehicleImuReportData _vehicle_imu_report_data
     (send _vehicle_imu_report_data :deserialize buf ptr-) (incf ptr- (send _vehicle_imu_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleImuReport :md5sum-) "83ca2c3fbaefb42f5985663e0527c06d")
(setf (get endpoint_msgs::VehicleImuReport :datatype-) "endpoint_msgs/VehicleImuReport")
(setf (get endpoint_msgs::VehicleImuReport :definition-)
      "uint8 VEHICLE_IMU_REPORT_DATA = 1
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

")



(provide :endpoint_msgs/VehicleImuReport "83ca2c3fbaefb42f5985663e0527c06d")


