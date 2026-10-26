;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarID)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarID (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARID")
  (make-package "SENSOR_LIDAR_MSGS::LIDARID"))

(in-package "ROS")
;;//! \htmlinclude LidarID.msg.html


(intern "*NONE*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*NONE* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*NONE* 0)
(intern "*FRONT_LEFT*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*FRONT_LEFT* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*FRONT_LEFT* 1)
(intern "*FRONT_RIGHT*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*FRONT_RIGHT* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*FRONT_RIGHT* 2)
(intern "*MIDDLE_LEFT*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*MIDDLE_LEFT* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*MIDDLE_LEFT* 4)
(intern "*MIDDLE_RIGHT*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*MIDDLE_RIGHT* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*MIDDLE_RIGHT* 8)
(intern "*REAR_LEFT*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*REAR_LEFT* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*REAR_LEFT* 16)
(intern "*REAR_RIGHT*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*REAR_RIGHT* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*REAR_RIGHT* 32)
(intern "*FRONT_DOWN*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*FRONT_DOWN* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*FRONT_DOWN* 64)
(intern "*FRONT_UP*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*FRONT_UP* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*FRONT_UP* 128)
(intern "*REAR_DOWN*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*REAR_DOWN* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*REAR_DOWN* 256)
(intern "*REAR_UP*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*REAR_UP* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*REAR_UP* 512)
(intern "*CENTRE*" (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(shadow '*CENTRE* (find-package "SENSOR_LIDAR_MSGS::LIDARID"))
(defconstant sensor_lidar_msgs::LidarID::*CENTRE* 1024)

(defun sensor_lidar_msgs::LidarID-to-symbol (const)
  (cond
        ((= const 0) 'sensor_lidar_msgs::LidarID::*None*)
        ((= const 1) 'sensor_lidar_msgs::LidarID::*Front_Left*)
        ((= const 2) 'sensor_lidar_msgs::LidarID::*Front_Right*)
        ((= const 4) 'sensor_lidar_msgs::LidarID::*Middle_Left*)
        ((= const 8) 'sensor_lidar_msgs::LidarID::*Middle_Right*)
        ((= const 16) 'sensor_lidar_msgs::LidarID::*Rear_Left*)
        ((= const 32) 'sensor_lidar_msgs::LidarID::*Rear_Right*)
        ((= const 64) 'sensor_lidar_msgs::LidarID::*Front_Down*)
        ((= const 128) 'sensor_lidar_msgs::LidarID::*Front_Up*)
        ((= const 256) 'sensor_lidar_msgs::LidarID::*Rear_Down*)
        ((= const 512) 'sensor_lidar_msgs::LidarID::*Rear_Up*)
        ((= const 1024) 'sensor_lidar_msgs::LidarID::*Centre*)
        (t nil)))

(defclass sensor_lidar_msgs::LidarID
  :super ros::object
  :slots (_value ))

(defmethod sensor_lidar_msgs::LidarID
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
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarID :md5sum-) "46959a77a2745922b1e4d8cd620c57a9")
(setf (get sensor_lidar_msgs::LidarID :datatype-) "sensor_lidar_msgs/LidarID")
(setf (get sensor_lidar_msgs::LidarID :definition-)
      "uint32 None = 0
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



(provide :sensor_lidar_msgs/LidarID "46959a77a2745922b1e4d8cd620c57a9")


