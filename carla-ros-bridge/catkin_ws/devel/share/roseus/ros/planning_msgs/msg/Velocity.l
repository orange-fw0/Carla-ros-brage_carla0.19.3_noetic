;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Velocity)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Velocity (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::VELOCITY")
  (make-package "PLANNING_MSGS::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html


(intern "*TARGET_VALUE*" (find-package "PLANNING_MSGS::VELOCITY"))
(shadow '*TARGET_VALUE* (find-package "PLANNING_MSGS::VELOCITY"))
(defconstant planning_msgs::Velocity::*TARGET_VALUE* 1)
(intern "*VEL_POINTS*" (find-package "PLANNING_MSGS::VELOCITY"))
(shadow '*VEL_POINTS* (find-package "PLANNING_MSGS::VELOCITY"))
(defconstant planning_msgs::Velocity::*VEL_POINTS* 2)
(intern "*CRUISE_VELOCITY*" (find-package "PLANNING_MSGS::VELOCITY"))
(shadow '*CRUISE_VELOCITY* (find-package "PLANNING_MSGS::VELOCITY"))
(defconstant planning_msgs::Velocity::*CRUISE_VELOCITY* 4)

(defun planning_msgs::Velocity-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Velocity::*TARGET_VALUE*)
        ((= const 2) 'planning_msgs::Velocity::*VEL_POINTS*)
        ((= const 4) 'planning_msgs::Velocity::*CRUISE_VELOCITY*)
        (t nil)))

(defclass planning_msgs::Velocity
  :super ros::object
  :slots (_available _target_value _vel_points _cruise_velocity ))

(defmethod planning_msgs::Velocity
  (:init
   (&key
    ((:available __available) 0)
    ((:target_value __target_value) 0.0)
    ((:vel_points __vel_points) ())
    ((:cruise_velocity __cruise_velocity) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _target_value (float __target_value))
   (setq _vel_points __vel_points)
   (setq _cruise_velocity (float __cruise_velocity))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:target_value
   (&optional __target_value)
   (if __target_value (setq _target_value __target_value)) _target_value)
  (:vel_points
   (&rest __vel_points)
   (if (keywordp (car __vel_points))
       (send* _vel_points __vel_points)
     (progn
       (if __vel_points (setq _vel_points (car __vel_points)))
       _vel_points)))
  (:cruise_velocity
   (&optional __cruise_velocity)
   (if __cruise_velocity (setq _cruise_velocity __cruise_velocity)) _cruise_velocity)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; float64 _target_value
    8
    ;; planning_msgs/VelocityPoint[] _vel_points
    (apply #'+ (send-all _vel_points :serialization-length)) 4
    ;; float64 _cruise_velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; float64 _target_value
       (sys::poke _target_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; planning_msgs/VelocityPoint[] _vel_points
     (write-long (length _vel_points) s)
     (dolist (elem _vel_points)
       (send elem :serialize s)
       )
     ;; float64 _cruise_velocity
       (sys::poke _cruise_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _target_value
     (setq _target_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; planning_msgs/VelocityPoint[] _vel_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel_points (let (r) (dotimes (i n) (push (instance planning_msgs::VelocityPoint :init) r)) r))
     (dolist (elem- _vel_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _cruise_velocity
     (setq _cruise_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::Velocity :md5sum-) "5398aa30721f6b627106914fa0b80c03")
(setf (get planning_msgs::Velocity :datatype-) "planning_msgs/Velocity")
(setf (get planning_msgs::Velocity :definition-)
      "uint8 TARGET_VALUE = 1
uint8 VEL_POINTS = 2
uint8 CRUISE_VELOCITY = 4
uint8 available
float64 target_value
planning_msgs/VelocityPoint[] vel_points
float64 cruise_velocity

================================================================================
MSG: planning_msgs/VelocityPoint
float64 target_velocity
float64 relative_time
float64 distance

")



(provide :planning_msgs/Velocity "5398aa30721f6b627106914fa0b80c03")


