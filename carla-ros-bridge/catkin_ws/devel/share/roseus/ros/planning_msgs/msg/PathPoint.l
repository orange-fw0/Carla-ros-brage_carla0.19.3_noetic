;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PathPoint)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PathPoint (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PATHPOINT")
  (make-package "PLANNING_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html


(defclass planning_msgs::PathPoint
  :super ros::object
  :slots (_position_enu _heading_yaw _curvature _path_follow_strength ))

(defmethod planning_msgs::PathPoint
  (:init
   (&key
    ((:position_enu __position_enu) (instance planning_msgs::Point2d :init))
    ((:heading_yaw __heading_yaw) 0.0)
    ((:curvature __curvature) 0.0)
    ((:path_follow_strength __path_follow_strength) 0.0)
    )
   (send-super :init)
   (setq _position_enu __position_enu)
   (setq _heading_yaw (float __heading_yaw))
   (setq _curvature (float __curvature))
   (setq _path_follow_strength (float __path_follow_strength))
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
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:path_follow_strength
   (&optional __path_follow_strength)
   (if __path_follow_strength (setq _path_follow_strength __path_follow_strength)) _path_follow_strength)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Point2d _position_enu
    (send _position_enu :serialization-length)
    ;; float64 _heading_yaw
    8
    ;; float64 _curvature
    8
    ;; float64 _path_follow_strength
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
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _path_follow_strength
       (sys::poke _path_follow_strength (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Point2d _position_enu
     (send _position_enu :deserialize buf ptr-) (incf ptr- (send _position_enu :serialization-length))
   ;; float64 _heading_yaw
     (setq _heading_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _path_follow_strength
     (setq _path_follow_strength (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::PathPoint :md5sum-) "6db278a9384888fcf5c39bb98cd14930")
(setf (get planning_msgs::PathPoint :datatype-) "planning_msgs/PathPoint")
(setf (get planning_msgs::PathPoint :definition-)
      "planning_msgs/Point2d position_enu
float64 heading_yaw
float64 curvature
float64 path_follow_strength

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

")



(provide :planning_msgs/PathPoint "6db278a9384888fcf5c39bb98cd14930")


