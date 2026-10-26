;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::StationaryObstacleCarInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'StationaryObstacleCarInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::STATIONARYOBSTACLECARINFO")
  (make-package "PLANNING_MSGS::STATIONARYOBSTACLECARINFO"))

(in-package "ROS")
;;//! \htmlinclude StationaryObstacleCarInfo.msg.html


(defclass planning_msgs::StationaryObstacleCarInfo
  :super ros::object
  :slots (_close_to_obstacle _steering_wheel_rad_limit ))

(defmethod planning_msgs::StationaryObstacleCarInfo
  (:init
   (&key
    ((:close_to_obstacle __close_to_obstacle) nil)
    ((:steering_wheel_rad_limit __steering_wheel_rad_limit) 0.0)
    )
   (send-super :init)
   (setq _close_to_obstacle __close_to_obstacle)
   (setq _steering_wheel_rad_limit (float __steering_wheel_rad_limit))
   self)
  (:close_to_obstacle
   (&optional (__close_to_obstacle :null))
   (if (not (eq __close_to_obstacle :null)) (setq _close_to_obstacle __close_to_obstacle)) _close_to_obstacle)
  (:steering_wheel_rad_limit
   (&optional __steering_wheel_rad_limit)
   (if __steering_wheel_rad_limit (setq _steering_wheel_rad_limit __steering_wheel_rad_limit)) _steering_wheel_rad_limit)
  (:serialization-length
   ()
   (+
    ;; bool _close_to_obstacle
    1
    ;; float64 _steering_wheel_rad_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _close_to_obstacle
       (if _close_to_obstacle (write-byte -1 s) (write-byte 0 s))
     ;; float64 _steering_wheel_rad_limit
       (sys::poke _steering_wheel_rad_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _close_to_obstacle
     (setq _close_to_obstacle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _steering_wheel_rad_limit
     (setq _steering_wheel_rad_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::StationaryObstacleCarInfo :md5sum-) "0165017c0b62d496f0fe338d65fcd41e")
(setf (get planning_msgs::StationaryObstacleCarInfo :datatype-) "planning_msgs/StationaryObstacleCarInfo")
(setf (get planning_msgs::StationaryObstacleCarInfo :definition-)
      "bool close_to_obstacle
float64 steering_wheel_rad_limit

")



(provide :planning_msgs/StationaryObstacleCarInfo "0165017c0b62d496f0fe338d65fcd41e")


