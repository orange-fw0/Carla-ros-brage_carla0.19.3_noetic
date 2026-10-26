;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarRotationResult)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarRotationResult (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARROTATIONRESULT")
  (make-package "SENSOR_LIDAR_MSGS::LIDARROTATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude LidarRotationResult.msg.html


(defclass sensor_lidar_msgs::LidarRotationResult
  :super ros::object
  :slots (_value ))

(defmethod sensor_lidar_msgs::LidarRotationResult
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

(setf (get sensor_lidar_msgs::LidarRotationResult :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get sensor_lidar_msgs::LidarRotationResult :datatype-) "sensor_lidar_msgs/LidarRotationResult")
(setf (get sensor_lidar_msgs::LidarRotationResult :definition-)
      "uint8 value

")



(provide :sensor_lidar_msgs/LidarRotationResult "e4da51e86d3bac963ee2bb1f41031407")


