;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Acceleration)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Acceleration (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::ACCELERATION")
  (make-package "PLANNING_MSGS::ACCELERATION"))

(in-package "ROS")
;;//! \htmlinclude Acceleration.msg.html


(intern "*RANGE_LIMIT*" (find-package "PLANNING_MSGS::ACCELERATION"))
(shadow '*RANGE_LIMIT* (find-package "PLANNING_MSGS::ACCELERATION"))
(defconstant planning_msgs::Acceleration::*RANGE_LIMIT* 1)
(intern "*ACC_POINTS*" (find-package "PLANNING_MSGS::ACCELERATION"))
(shadow '*ACC_POINTS* (find-package "PLANNING_MSGS::ACCELERATION"))
(defconstant planning_msgs::Acceleration::*ACC_POINTS* 2)

(defun planning_msgs::Acceleration-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Acceleration::*RANGE_LIMIT*)
        ((= const 2) 'planning_msgs::Acceleration::*ACC_POINTS*)
        (t nil)))

(defclass planning_msgs::Acceleration
  :super ros::object
  :slots (_available _range_limit _acc_points ))

(defmethod planning_msgs::Acceleration
  (:init
   (&key
    ((:available __available) 0)
    ((:range_limit __range_limit) (instance planning_msgs::AccelerationRange :init))
    ((:acc_points __acc_points) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _range_limit __range_limit)
   (setq _acc_points __acc_points)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:range_limit
   (&rest __range_limit)
   (if (keywordp (car __range_limit))
       (send* _range_limit __range_limit)
     (progn
       (if __range_limit (setq _range_limit (car __range_limit)))
       _range_limit)))
  (:acc_points
   (&rest __acc_points)
   (if (keywordp (car __acc_points))
       (send* _acc_points __acc_points)
     (progn
       (if __acc_points (setq _acc_points (car __acc_points)))
       _acc_points)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/AccelerationRange _range_limit
    (send _range_limit :serialization-length)
    ;; planning_msgs/AccelerationPoint[] _acc_points
    (apply #'+ (send-all _acc_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/AccelerationRange _range_limit
       (send _range_limit :serialize s)
     ;; planning_msgs/AccelerationPoint[] _acc_points
     (write-long (length _acc_points) s)
     (dolist (elem _acc_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/AccelerationRange _range_limit
     (send _range_limit :deserialize buf ptr-) (incf ptr- (send _range_limit :serialization-length))
   ;; planning_msgs/AccelerationPoint[] _acc_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc_points (let (r) (dotimes (i n) (push (instance planning_msgs::AccelerationPoint :init) r)) r))
     (dolist (elem- _acc_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::Acceleration :md5sum-) "3fa08f11b412938ffaeb5a5b0b8fa0a1")
(setf (get planning_msgs::Acceleration :datatype-) "planning_msgs/Acceleration")
(setf (get planning_msgs::Acceleration :definition-)
      "uint8 RANGE_LIMIT = 1
uint8 ACC_POINTS = 2
uint8 available
planning_msgs/AccelerationRange range_limit
planning_msgs/AccelerationPoint[] acc_points

================================================================================
MSG: planning_msgs/AccelerationRange
float64 max
float64 min

================================================================================
MSG: planning_msgs/AccelerationPoint
float64 acc
float64 jerk

")



(provide :planning_msgs/Acceleration "3fa08f11b412938ffaeb5a5b0b8fa0a1")


