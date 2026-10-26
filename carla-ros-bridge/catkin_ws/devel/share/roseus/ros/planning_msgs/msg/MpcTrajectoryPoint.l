;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::MpcTrajectoryPoint)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'MpcTrajectoryPoint (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::MPCTRAJECTORYPOINT")
  (make-package "PLANNING_MSGS::MPCTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude MpcTrajectoryPoint.msg.html


(defclass planning_msgs::MpcTrajectoryPoint
  :super ros::object
  :slots (_position_enu _heading_yaw ))

(defmethod planning_msgs::MpcTrajectoryPoint
  (:init
   (&key
    ((:position_enu __position_enu) (instance planning_msgs::Point2d :init))
    ((:heading_yaw __heading_yaw) 0.0)
    )
   (send-super :init)
   (setq _position_enu __position_enu)
   (setq _heading_yaw (float __heading_yaw))
   self)
  (:position_enu
   (&rest __position_enu)
   (if (keywordp (car __position_enu))
       (send* _position_enu __position_enu)
     (progn
       (if __position_enu (setq _position_enu (car __position_enu)))
       _position_enu)))
  (:heading_yaw
   (&optional __heading_yaw)
   (if __heading_yaw (setq _heading_yaw __heading_yaw)) _heading_yaw)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Point2d _position_enu
    (send _position_enu :serialization-length)
    ;; float64 _heading_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Point2d _position_enu
       (send _position_enu :serialize s)
     ;; float64 _heading_yaw
       (sys::poke _heading_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Point2d _position_enu
     (send _position_enu :deserialize buf ptr-) (incf ptr- (send _position_enu :serialization-length))
   ;; float64 _heading_yaw
     (setq _heading_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::MpcTrajectoryPoint :md5sum-) "3dfd753fd6abdafb1475efd8ba5e0668")
(setf (get planning_msgs::MpcTrajectoryPoint :datatype-) "planning_msgs/MpcTrajectoryPoint")
(setf (get planning_msgs::MpcTrajectoryPoint :definition-)
      "planning_msgs/Point2d position_enu
float64 heading_yaw

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

")



(provide :planning_msgs/MpcTrajectoryPoint "3dfd753fd6abdafb1475efd8ba5e0668")


