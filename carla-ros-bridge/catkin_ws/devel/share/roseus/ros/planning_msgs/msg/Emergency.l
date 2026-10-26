;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Emergency)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Emergency (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::EMERGENCY")
  (make-package "PLANNING_MSGS::EMERGENCY"))

(in-package "ROS")
;;//! \htmlinclude Emergency.msg.html


(intern "*JERK_FACTOR*" (find-package "PLANNING_MSGS::EMERGENCY"))
(shadow '*JERK_FACTOR* (find-package "PLANNING_MSGS::EMERGENCY"))
(defconstant planning_msgs::Emergency::*JERK_FACTOR* 1)
(intern "*STATIONARY_OBSTACLE_CAR_INFO*" (find-package "PLANNING_MSGS::EMERGENCY"))
(shadow '*STATIONARY_OBSTACLE_CAR_INFO* (find-package "PLANNING_MSGS::EMERGENCY"))
(defconstant planning_msgs::Emergency::*STATIONARY_OBSTACLE_CAR_INFO* 2)

(defun planning_msgs::Emergency-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Emergency::*JERK_FACTOR*)
        ((= const 2) 'planning_msgs::Emergency::*STATIONARY_OBSTACLE_CAR_INFO*)
        (t nil)))

(defclass planning_msgs::Emergency
  :super ros::object
  :slots (_available _jerk_factor _stationary_obstacle_car_info ))

(defmethod planning_msgs::Emergency
  (:init
   (&key
    ((:available __available) 0)
    ((:jerk_factor __jerk_factor) 0.0)
    ((:stationary_obstacle_car_info __stationary_obstacle_car_info) (instance planning_msgs::StationaryObstacleCarInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _jerk_factor (float __jerk_factor))
   (setq _stationary_obstacle_car_info __stationary_obstacle_car_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:jerk_factor
   (&optional __jerk_factor)
   (if __jerk_factor (setq _jerk_factor __jerk_factor)) _jerk_factor)
  (:stationary_obstacle_car_info
   (&rest __stationary_obstacle_car_info)
   (if (keywordp (car __stationary_obstacle_car_info))
       (send* _stationary_obstacle_car_info __stationary_obstacle_car_info)
     (progn
       (if __stationary_obstacle_car_info (setq _stationary_obstacle_car_info (car __stationary_obstacle_car_info)))
       _stationary_obstacle_car_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float64 _jerk_factor
    8
    ;; planning_msgs/StationaryObstacleCarInfo _stationary_obstacle_car_info
    (send _stationary_obstacle_car_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float64 _jerk_factor
       (sys::poke _jerk_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; planning_msgs/StationaryObstacleCarInfo _stationary_obstacle_car_info
       (send _stationary_obstacle_car_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _jerk_factor
     (setq _jerk_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; planning_msgs/StationaryObstacleCarInfo _stationary_obstacle_car_info
     (send _stationary_obstacle_car_info :deserialize buf ptr-) (incf ptr- (send _stationary_obstacle_car_info :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::Emergency :md5sum-) "6f83ebd615dbb6d827fe50140fb96456")
(setf (get planning_msgs::Emergency :datatype-) "planning_msgs/Emergency")
(setf (get planning_msgs::Emergency :definition-)
      "uint8 JERK_FACTOR = 1
uint8 STATIONARY_OBSTACLE_CAR_INFO = 2
uint8 available
float64 jerk_factor
planning_msgs/StationaryObstacleCarInfo stationary_obstacle_car_info

================================================================================
MSG: planning_msgs/StationaryObstacleCarInfo
bool close_to_obstacle
float64 steering_wheel_rad_limit

")



(provide :planning_msgs/Emergency "6f83ebd615dbb6d827fe50140fb96456")


