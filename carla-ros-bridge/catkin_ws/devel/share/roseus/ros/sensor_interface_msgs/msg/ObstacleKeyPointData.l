;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::ObstacleKeyPointData)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'ObstacleKeyPointData (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::OBSTACLEKEYPOINTDATA")
  (make-package "SENSOR_INTERFACE_MSGS::OBSTACLEKEYPOINTDATA"))

(in-package "ROS")
;;//! \htmlinclude ObstacleKeyPointData.msg.html


(defclass sensor_interface_msgs::ObstacleKeyPointData
  :super ros::object
  :slots (_point_x _point_y ))

(defmethod sensor_interface_msgs::ObstacleKeyPointData
  (:init
   (&key
    ((:point_x __point_x) 0.0)
    ((:point_y __point_y) 0.0)
    )
   (send-super :init)
   (setq _point_x (float __point_x))
   (setq _point_y (float __point_y))
   self)
  (:point_x
   (&optional __point_x)
   (if __point_x (setq _point_x __point_x)) _point_x)
  (:point_y
   (&optional __point_y)
   (if __point_y (setq _point_y __point_y)) _point_y)
  (:serialization-length
   ()
   (+
    ;; float32 _point_x
    4
    ;; float32 _point_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _point_x
       (sys::poke _point_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _point_y
       (sys::poke _point_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _point_x
     (setq _point_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _point_y
     (setq _point_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_interface_msgs::ObstacleKeyPointData :md5sum-) "ded096c89bb10760d1911fa12d549ebe")
(setf (get sensor_interface_msgs::ObstacleKeyPointData :datatype-) "sensor_interface_msgs/ObstacleKeyPointData")
(setf (get sensor_interface_msgs::ObstacleKeyPointData :definition-)
      "float32 point_x
float32 point_y

")



(provide :sensor_interface_msgs/ObstacleKeyPointData "ded096c89bb10760d1911fa12d549ebe")


