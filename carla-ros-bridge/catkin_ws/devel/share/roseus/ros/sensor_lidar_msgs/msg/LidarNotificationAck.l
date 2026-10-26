;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarNotificationAck)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarNotificationAck (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK")
  (make-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK"))

(in-package "ROS")
;;//! \htmlinclude LidarNotificationAck.msg.html


(intern "*NONE*" (find-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK"))
(shadow '*NONE* (find-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK"))
(defconstant sensor_lidar_msgs::LidarNotificationAck::*NONE* 0)
(intern "*SN*" (find-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK"))
(shadow '*SN* (find-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK"))
(defconstant sensor_lidar_msgs::LidarNotificationAck::*SN* 1)
(intern "*PARAMETER*" (find-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK"))
(shadow '*PARAMETER* (find-package "SENSOR_LIDAR_MSGS::LIDARNOTIFICATIONACK"))
(defconstant sensor_lidar_msgs::LidarNotificationAck::*PARAMETER* 2)

(defun sensor_lidar_msgs::LidarNotificationAck-to-symbol (const)
  (cond
        ((= const 0) 'sensor_lidar_msgs::LidarNotificationAck::*None*)
        ((= const 1) 'sensor_lidar_msgs::LidarNotificationAck::*SN*)
        ((= const 2) 'sensor_lidar_msgs::LidarNotificationAck::*Parameter*)
        (t nil)))

(defclass sensor_lidar_msgs::LidarNotificationAck
  :super ros::object
  :slots (_id _value _ack ))

(defmethod sensor_lidar_msgs::LidarNotificationAck
  (:init
   (&key
    ((:id __id) (instance sensor_lidar_msgs::LidarID :init))
    ((:value __value) 0)
    ((:ack __ack) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _value (round __value))
   (setq _ack (round __ack))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:ack
   (&optional __ack)
   (if __ack (setq _ack __ack)) _ack)
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarID _id
    (send _id :serialization-length)
    ;; uint32 _value
    4
    ;; uint8 _ack
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarID _id
       (send _id :serialize s)
     ;; uint32 _value
       (write-long _value s)
     ;; uint8 _ack
       (write-byte _ack s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _ack
     (setq _ack (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarNotificationAck :md5sum-) "bb93490d1fe826883ec8537e5551344f")
(setf (get sensor_lidar_msgs::LidarNotificationAck :datatype-) "sensor_lidar_msgs/LidarNotificationAck")
(setf (get sensor_lidar_msgs::LidarNotificationAck :definition-)
      "uint32 None = 0
uint32 SN = 1
uint32 Parameter = 2
sensor_lidar_msgs/LidarID id
uint32 value
uint8 ack

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



(provide :sensor_lidar_msgs/LidarNotificationAck "bb93490d1fe826883ec8537e5551344f")


