;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Pose2d)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Pose2d (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::POSE2D")
  (make-package "PLANNING_MSGS::POSE2D"))

(in-package "ROS")
;;//! \htmlinclude Pose2d.msg.html


(defclass planning_msgs::Pose2d
  :super ros::object
  :slots (_position _theta ))

(defmethod planning_msgs::Pose2d
  (:init
   (&key
    ((:position __position) (instance planning_msgs::Point2d :init))
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _theta (float __theta))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Point2d _position
    (send _position :serialization-length)
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Point2d _position
       (send _position :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Point2d _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::Pose2d :md5sum-) "d8af0ef1db02b310d0bd6166725bf7b4")
(setf (get planning_msgs::Pose2d :datatype-) "planning_msgs/Pose2d")
(setf (get planning_msgs::Pose2d :definition-)
      "planning_msgs/Point2d position
float64 theta

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

")



(provide :planning_msgs/Pose2d "d8af0ef1db02b310d0bd6166725bf7b4")


