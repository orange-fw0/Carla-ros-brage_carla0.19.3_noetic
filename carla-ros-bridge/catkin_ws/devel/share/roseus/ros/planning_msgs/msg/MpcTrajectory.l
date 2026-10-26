;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::MpcTrajectory)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'MpcTrajectory (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::MPCTRAJECTORY")
  (make-package "PLANNING_MSGS::MPCTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude MpcTrajectory.msg.html


(intern "*PATH_POINTS*" (find-package "PLANNING_MSGS::MPCTRAJECTORY"))
(shadow '*PATH_POINTS* (find-package "PLANNING_MSGS::MPCTRAJECTORY"))
(defconstant planning_msgs::MpcTrajectory::*PATH_POINTS* 1)

(defun planning_msgs::MpcTrajectory-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::MpcTrajectory::*PATH_POINTS*)
        (t nil)))

(defclass planning_msgs::MpcTrajectory
  :super ros::object
  :slots (_available _path_points ))

(defmethod planning_msgs::MpcTrajectory
  (:init
   (&key
    ((:available __available) 0)
    ((:path_points __path_points) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _path_points __path_points)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:path_points
   (&rest __path_points)
   (if (keywordp (car __path_points))
       (send* _path_points __path_points)
     (progn
       (if __path_points (setq _path_points (car __path_points)))
       _path_points)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/MpcTrajectoryPoint[] _path_points
    (apply #'+ (send-all _path_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/MpcTrajectoryPoint[] _path_points
     (write-long (length _path_points) s)
     (dolist (elem _path_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/MpcTrajectoryPoint[] _path_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_points (let (r) (dotimes (i n) (push (instance planning_msgs::MpcTrajectoryPoint :init) r)) r))
     (dolist (elem- _path_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::MpcTrajectory :md5sum-) "7b8eefe241d56cb45b880a40fc4d7a0a")
(setf (get planning_msgs::MpcTrajectory :datatype-) "planning_msgs/MpcTrajectory")
(setf (get planning_msgs::MpcTrajectory :definition-)
      "uint8 PATH_POINTS = 1
uint8 available
planning_msgs/MpcTrajectoryPoint[] path_points

================================================================================
MSG: planning_msgs/MpcTrajectoryPoint
planning_msgs/Point2d position_enu
float64 heading_yaw

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

")



(provide :planning_msgs/MpcTrajectory "7b8eefe241d56cb45b880a40fc4d7a0a")


