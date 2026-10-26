;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarCalibrationType)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarCalibrationType (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE")
  (make-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibrationType.msg.html


(intern "*NONE*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE"))
(shadow '*NONE* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE"))
(defconstant sensor_lidar_msgs::LidarCalibrationType::*NONE* 0)
(intern "*EOL_CALIBRATION*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE"))
(shadow '*EOL_CALIBRATION* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE"))
(defconstant sensor_lidar_msgs::LidarCalibrationType::*EOL_CALIBRATION* 1)
(intern "*AFTERSALE_CALIBRATION*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE"))
(shadow '*AFTERSALE_CALIBRATION* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONTYPE"))
(defconstant sensor_lidar_msgs::LidarCalibrationType::*AFTERSALE_CALIBRATION* 2)

(defun sensor_lidar_msgs::LidarCalibrationType-to-symbol (const)
  (cond
        ((= const 0) 'sensor_lidar_msgs::LidarCalibrationType::*None*)
        ((= const 1) 'sensor_lidar_msgs::LidarCalibrationType::*EOL_Calibration*)
        ((= const 2) 'sensor_lidar_msgs::LidarCalibrationType::*AfterSale_Calibration*)
        (t nil)))

(defclass sensor_lidar_msgs::LidarCalibrationType
  :super ros::object
  :slots (_value ))

(defmethod sensor_lidar_msgs::LidarCalibrationType
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

(setf (get sensor_lidar_msgs::LidarCalibrationType :md5sum-) "ddf76402361ed2bdd24dd050318e30ba")
(setf (get sensor_lidar_msgs::LidarCalibrationType :datatype-) "sensor_lidar_msgs/LidarCalibrationType")
(setf (get sensor_lidar_msgs::LidarCalibrationType :definition-)
      "uint8 None = 0
uint8 EOL_Calibration = 1
uint8 AfterSale_Calibration = 2
uint8 value

")



(provide :sensor_lidar_msgs/LidarCalibrationType "ddf76402361ed2bdd24dd050318e30ba")


