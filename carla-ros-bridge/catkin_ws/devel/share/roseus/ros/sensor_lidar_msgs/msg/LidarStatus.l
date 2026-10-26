;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarStatus)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarStatus (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS")
  (make-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LidarStatus.msg.html


(intern "*NORMAL*" (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(shadow '*NORMAL* (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(defconstant sensor_lidar_msgs::LidarStatus::*NORMAL* 0)
(intern "*NO_CALIBRATION*" (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(shadow '*NO_CALIBRATION* (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(defconstant sensor_lidar_msgs::LidarStatus::*NO_CALIBRATION* 1)
(intern "*ON_CALIBRATION*" (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(shadow '*ON_CALIBRATION* (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(defconstant sensor_lidar_msgs::LidarStatus::*ON_CALIBRATION* 2)
(intern "*CALIBRATION_FAILED*" (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(shadow '*CALIBRATION_FAILED* (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(defconstant sensor_lidar_msgs::LidarStatus::*CALIBRATION_FAILED* 3)
(intern "*NONE*" (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(shadow '*NONE* (find-package "SENSOR_LIDAR_MSGS::LIDARSTATUS"))
(defconstant sensor_lidar_msgs::LidarStatus::*NONE* 4)

(defun sensor_lidar_msgs::LidarStatus-to-symbol (const)
  (cond
        ((= const 0) 'sensor_lidar_msgs::LidarStatus::*Normal*)
        ((= const 1) 'sensor_lidar_msgs::LidarStatus::*No_Calibration*)
        ((= const 2) 'sensor_lidar_msgs::LidarStatus::*On_Calibration*)
        ((= const 3) 'sensor_lidar_msgs::LidarStatus::*Calibration_Failed*)
        ((= const 4) 'sensor_lidar_msgs::LidarStatus::*None*)
        (t nil)))

(defclass sensor_lidar_msgs::LidarStatus
  :super ros::object
  :slots (_id _progress_result _calib_progress _error _calib_mode ))

(defmethod sensor_lidar_msgs::LidarStatus
  (:init
   (&key
    ((:id __id) (instance sensor_lidar_msgs::LidarID :init))
    ((:progress_result __progress_result) (instance sensor_lidar_msgs::LidarCalibrationProgressResult :init))
    ((:calib_progress __calib_progress) 0)
    ((:error __error) (instance sensor_lidar_msgs::LidarError :init))
    ((:calib_mode __calib_mode) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _progress_result __progress_result)
   (setq _calib_progress (round __calib_progress))
   (setq _error __error)
   (setq _calib_mode (round __calib_mode))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:progress_result
   (&rest __progress_result)
   (if (keywordp (car __progress_result))
       (send* _progress_result __progress_result)
     (progn
       (if __progress_result (setq _progress_result (car __progress_result)))
       _progress_result)))
  (:calib_progress
   (&optional __calib_progress)
   (if __calib_progress (setq _calib_progress __calib_progress)) _calib_progress)
  (:error
   (&rest __error)
   (if (keywordp (car __error))
       (send* _error __error)
     (progn
       (if __error (setq _error (car __error)))
       _error)))
  (:calib_mode
   (&optional __calib_mode)
   (if __calib_mode (setq _calib_mode __calib_mode)) _calib_mode)
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarID _id
    (send _id :serialization-length)
    ;; sensor_lidar_msgs/LidarCalibrationProgressResult _progress_result
    (send _progress_result :serialization-length)
    ;; uint8 _calib_progress
    1
    ;; sensor_lidar_msgs/LidarError _error
    (send _error :serialization-length)
    ;; uint32 _calib_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarID _id
       (send _id :serialize s)
     ;; sensor_lidar_msgs/LidarCalibrationProgressResult _progress_result
       (send _progress_result :serialize s)
     ;; uint8 _calib_progress
       (write-byte _calib_progress s)
     ;; sensor_lidar_msgs/LidarError _error
       (send _error :serialize s)
     ;; uint32 _calib_mode
       (write-long _calib_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; sensor_lidar_msgs/LidarCalibrationProgressResult _progress_result
     (send _progress_result :deserialize buf ptr-) (incf ptr- (send _progress_result :serialization-length))
   ;; uint8 _calib_progress
     (setq _calib_progress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_lidar_msgs/LidarError _error
     (send _error :deserialize buf ptr-) (incf ptr- (send _error :serialization-length))
   ;; uint32 _calib_mode
     (setq _calib_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarStatus :md5sum-) "824d0217e9b2d6099bff37b24ed51e2c")
(setf (get sensor_lidar_msgs::LidarStatus :datatype-) "sensor_lidar_msgs/LidarStatus")
(setf (get sensor_lidar_msgs::LidarStatus :definition-)
      "uint32 Normal = 0
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



(provide :sensor_lidar_msgs/LidarStatus "824d0217e9b2d6099bff37b24ed51e2c")


