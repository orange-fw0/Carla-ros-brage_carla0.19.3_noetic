;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarMode)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarMode (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARMODE")
  (make-package "SENSOR_LIDAR_MSGS::LIDARMODE"))

(in-package "ROS")
;;//! \htmlinclude LidarMode.msg.html


(intern "*NORMAL_MODE*" (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(shadow '*NORMAL_MODE* (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(defconstant sensor_lidar_msgs::LidarMode::*NORMAL_MODE* 0)
(intern "*EOL_CALIBRATION_MODE*" (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(shadow '*EOL_CALIBRATION_MODE* (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(defconstant sensor_lidar_msgs::LidarMode::*EOL_CALIBRATION_MODE* 1)
(intern "*AFTERSALE_CALIBRATION_MODE*" (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(shadow '*AFTERSALE_CALIBRATION_MODE* (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(defconstant sensor_lidar_msgs::LidarMode::*AFTERSALE_CALIBRATION_MODE* 2)
(intern "*SUPERECO*" (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(shadow '*SUPERECO* (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(defconstant sensor_lidar_msgs::LidarMode::*SUPERECO* 3)
(intern "*STANDBY*" (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(shadow '*STANDBY* (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(defconstant sensor_lidar_msgs::LidarMode::*STANDBY* 4)
(intern "*PLAYBACK*" (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(shadow '*PLAYBACK* (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(defconstant sensor_lidar_msgs::LidarMode::*PLAYBACK* 5)
(intern "*RESERVED*" (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(shadow '*RESERVED* (find-package "SENSOR_LIDAR_MSGS::LIDARMODE"))
(defconstant sensor_lidar_msgs::LidarMode::*RESERVED* 6)

(defun sensor_lidar_msgs::LidarMode-to-symbol (const)
  (cond
        ((= const 0) 'sensor_lidar_msgs::LidarMode::*Normal_Mode*)
        ((= const 1) 'sensor_lidar_msgs::LidarMode::*EOL_Calibration_Mode*)
        ((= const 2) 'sensor_lidar_msgs::LidarMode::*AfterSale_Calibration_Mode*)
        ((= const 3) 'sensor_lidar_msgs::LidarMode::*SuperEco*)
        ((= const 4) 'sensor_lidar_msgs::LidarMode::*StandBy*)
        ((= const 5) 'sensor_lidar_msgs::LidarMode::*PlayBack*)
        ((= const 6) 'sensor_lidar_msgs::LidarMode::*Reserved*)
        (t nil)))

(defclass sensor_lidar_msgs::LidarMode
  :super ros::object
  :slots (_value ))

(defmethod sensor_lidar_msgs::LidarMode
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarMode :md5sum-) "4024931a4d53ded66e606c97ee6cf6e7")
(setf (get sensor_lidar_msgs::LidarMode :datatype-) "sensor_lidar_msgs/LidarMode")
(setf (get sensor_lidar_msgs::LidarMode :definition-)
      "uint8 Normal_Mode = 0
uint8 EOL_Calibration_Mode = 1
uint8 AfterSale_Calibration_Mode = 2
uint8 SuperEco = 3
uint8 StandBy = 4
uint8 PlayBack = 5
uint8 Reserved = 6
uint8 value

")



(provide :sensor_lidar_msgs/LidarMode "4024931a4d53ded66e606c97ee6cf6e7")


