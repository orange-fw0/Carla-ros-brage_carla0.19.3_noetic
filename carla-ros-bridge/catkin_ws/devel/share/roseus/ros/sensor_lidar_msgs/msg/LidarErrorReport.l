;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarErrorReport)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarErrorReport (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT")
  (make-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))

(in-package "ROS")
;;//! \htmlinclude LidarErrorReport.msg.html


(intern "*NORMAL*" (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(shadow '*NORMAL* (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(defconstant sensor_lidar_msgs::LidarErrorReport::*NORMAL* 0)
(intern "*HARDWARE_ERROR*" (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(shadow '*HARDWARE_ERROR* (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(defconstant sensor_lidar_msgs::LidarErrorReport::*HARDWARE_ERROR* 1)
(intern "*WINDOWCONTAMINATION_ERR*" (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(shadow '*WINDOWCONTAMINATION_ERR* (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(defconstant sensor_lidar_msgs::LidarErrorReport::*WINDOWCONTAMINATION_ERR* 2)
(intern "*FAILSAFE_ERROR*" (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(shadow '*FAILSAFE_ERROR* (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(defconstant sensor_lidar_msgs::LidarErrorReport::*FAILSAFE_ERROR* 3)
(intern "*NO_CALIBRATION_ERROR*" (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(shadow '*NO_CALIBRATION_ERROR* (find-package "SENSOR_LIDAR_MSGS::LIDARERRORREPORT"))
(defconstant sensor_lidar_msgs::LidarErrorReport::*NO_CALIBRATION_ERROR* 4)

(defun sensor_lidar_msgs::LidarErrorReport-to-symbol (const)
  (cond
        ((= const 0) 'sensor_lidar_msgs::LidarErrorReport::*Normal*)
        ((= const 1) 'sensor_lidar_msgs::LidarErrorReport::*Hardware_error*)
        ((= const 2) 'sensor_lidar_msgs::LidarErrorReport::*WindowContamination_Err*)
        ((= const 3) 'sensor_lidar_msgs::LidarErrorReport::*FailSafe_error*)
        ((= const 4) 'sensor_lidar_msgs::LidarErrorReport::*No_Calibration_error*)
        (t nil)))

(defclass sensor_lidar_msgs::LidarErrorReport
  :super ros::object
  :slots (_id _error_mode ))

(defmethod sensor_lidar_msgs::LidarErrorReport
  (:init
   (&key
    ((:id __id) (instance sensor_lidar_msgs::LidarID :init))
    ((:error_mode __error_mode) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _error_mode (round __error_mode))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:error_mode
   (&optional __error_mode)
   (if __error_mode (setq _error_mode __error_mode)) _error_mode)
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarID _id
    (send _id :serialization-length)
    ;; uint32 _error_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarID _id
       (send _id :serialize s)
     ;; uint32 _error_mode
       (write-long _error_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uint32 _error_mode
     (setq _error_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarErrorReport :md5sum-) "64113973402cc388561582a486791df9")
(setf (get sensor_lidar_msgs::LidarErrorReport :datatype-) "sensor_lidar_msgs/LidarErrorReport")
(setf (get sensor_lidar_msgs::LidarErrorReport :definition-)
      "uint32 Normal = 0
uint32 Hardware_error = 1
uint32 WindowContamination_Err = 2
uint32 FailSafe_error = 3
uint32 No_Calibration_error = 4
sensor_lidar_msgs/LidarID id
uint32 error_mode

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

")



(provide :sensor_lidar_msgs/LidarErrorReport "64113973402cc388561582a486791df9")


