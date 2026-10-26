;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarCalibResult)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarCalibResult (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRESULT")
  (make-package "SENSOR_LIDAR_MSGS::LIDARCALIBRESULT"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibResult.msg.html


(defclass sensor_lidar_msgs::LidarCalibResult
  :super ros::object
  :slots (_value ))

(defmethod sensor_lidar_msgs::LidarCalibResult
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

(setf (get sensor_lidar_msgs::LidarCalibResult :md5sum-) "e4da51e86d3bac963ee2bb1f41031407")
(setf (get sensor_lidar_msgs::LidarCalibResult :datatype-) "sensor_lidar_msgs/LidarCalibResult")
(setf (get sensor_lidar_msgs::LidarCalibResult :definition-)
      "uint8 value

")



(provide :sensor_lidar_msgs/LidarCalibResult "e4da51e86d3bac963ee2bb1f41031407")


