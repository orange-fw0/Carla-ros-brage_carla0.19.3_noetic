;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarStatusReport)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarStatusReport (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUSREPORT")
  (make-package "SENSOR_LIDAR_MSGS::LIDARSTATUSREPORT"))

(in-package "ROS")
;;//! \htmlinclude LidarStatusReport.msg.html


(defclass sensor_lidar_msgs::LidarStatusReport
  :super ros::object
  :slots (_lidar_service_mode _status ))

(defmethod sensor_lidar_msgs::LidarStatusReport
  (:init
   (&key
    ((:lidar_service_mode __lidar_service_mode) (instance sensor_lidar_msgs::LidarMode :init))
    ((:status __status) ())
    )
   (send-super :init)
   (setq _lidar_service_mode __lidar_service_mode)
   (setq _status __status)
   self)
  (:lidar_service_mode
   (&rest __lidar_service_mode)
   (if (keywordp (car __lidar_service_mode))
       (send* _lidar_service_mode __lidar_service_mode)
     (progn
       (if __lidar_service_mode (setq _lidar_service_mode (car __lidar_service_mode)))
       _lidar_service_mode)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarMode _lidar_service_mode
    (send _lidar_service_mode :serialization-length)
    ;; sensor_lidar_msgs/LidarStatus[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarMode _lidar_service_mode
       (send _lidar_service_mode :serialize s)
     ;; sensor_lidar_msgs/LidarStatus[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarMode _lidar_service_mode
     (send _lidar_service_mode :deserialize buf ptr-) (incf ptr- (send _lidar_service_mode :serialization-length))
   ;; sensor_lidar_msgs/LidarStatus[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance sensor_lidar_msgs::LidarStatus :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarStatusReport :md5sum-) "062867f8099d28209fbcb16d94267f6c")
(setf (get sensor_lidar_msgs::LidarStatusReport :datatype-) "sensor_lidar_msgs/LidarStatusReport")
(setf (get sensor_lidar_msgs::LidarStatusReport :definition-)
      "sensor_lidar_msgs/LidarMode lidar_service_mode
sensor_lidar_msgs/LidarStatus[] status

================================================================================
MSG: sensor_lidar_msgs/LidarMode
uint8 Normal_Mode = 0
uint8 EOL_Calibration_Mode = 1
uint8 AfterSale_Calibration_Mode = 2
uint8 SuperEco = 3
uint8 StandBy = 4
uint8 PlayBack = 5
uint8 Reserved = 6
uint8 value

================================================================================
MSG: sensor_lidar_msgs/LidarStatus
uint32 Normal = 0
uint32 No_Calibration = 1
uint32 On_Calibration = 2
uint32 Calibration_Failed = 3
uint32 None = 4
sensor_lidar_msgs/LidarID id
sensor_lidar_msgs/LidarCalibrationProgressResult progress_result
uint8 calib_progress
sensor_lidar_msgs/LidarError error
uint32 calib_mode

================================================================================
MSG: sensor_lidar_msgs/LidarID
uint32 None = 0
uint32 Front_Left = 1
uint32 Front_Right = 2
uint32 Middle_Left = 4
uint32 Middle_Right = 8
uint32 Rear_Left = 16
uint32 Rear_Right = 32
uint32 Front_Down = 64
uint32 Front_Up = 128
uint32 Rear_Down = 256
uint32 Rear_Up = 512
uint32 Centre = 1024
uint32 value

================================================================================
MSG: sensor_lidar_msgs/LidarCalibrationProgressResult
uint8 None = 0
uint8 Init = 1
uint8 Ongoing = 2
uint8 Complete_Successful = 3
uint8 Complete_With_Error = 4
uint8 value

================================================================================
MSG: sensor_lidar_msgs/LidarError
uint8 MemsIntialization_Err
uint8 MemsOperating_Err
uint8 LidarTransmitting_Err
uint8 LidarReceiving_Err
uint8 Lidar_Fusa_Err
uint8 WindowContamination_Err
uint8 SunBlind_Err
uint8 WindowHeating_Err
uint8 LidarInternal_Err
uint8 LidarExternal_Err
uint8 LidarInternal_Volt_Err
uint32 Lidar_Temp_Err
uint8 Clock_Err
uint8 Sync_Err
uint8 reserved1
uint8 reserved2

")



(provide :sensor_lidar_msgs/LidarStatusReport "062867f8099d28209fbcb16d94267f6c")


