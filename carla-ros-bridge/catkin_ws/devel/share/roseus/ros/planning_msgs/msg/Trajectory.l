;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Trajectory)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Trajectory (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TRAJECTORY")
  (make-package "PLANNING_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(intern "*POLYNOMIAL_CURVE*" (find-package "PLANNING_MSGS::TRAJECTORY"))
(shadow '*POLYNOMIAL_CURVE* (find-package "PLANNING_MSGS::TRAJECTORY"))
(defconstant planning_msgs::Trajectory::*POLYNOMIAL_CURVE* 1)
(intern "*PATH*" (find-package "PLANNING_MSGS::TRAJECTORY"))
(shadow '*PATH* (find-package "PLANNING_MSGS::TRAJECTORY"))
(defconstant planning_msgs::Trajectory::*PATH* 2)
(intern "*VELOCITY*" (find-package "PLANNING_MSGS::TRAJECTORY"))
(shadow '*VELOCITY* (find-package "PLANNING_MSGS::TRAJECTORY"))
(defconstant planning_msgs::Trajectory::*VELOCITY* 4)
(intern "*ACCELERATION*" (find-package "PLANNING_MSGS::TRAJECTORY"))
(shadow '*ACCELERATION* (find-package "PLANNING_MSGS::TRAJECTORY"))
(defconstant planning_msgs::Trajectory::*ACCELERATION* 8)
(intern "*FRENET_STATE*" (find-package "PLANNING_MSGS::TRAJECTORY"))
(shadow '*FRENET_STATE* (find-package "PLANNING_MSGS::TRAJECTORY"))
(defconstant planning_msgs::Trajectory::*FRENET_STATE* 16)

(defun planning_msgs::Trajectory-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Trajectory::*POLYNOMIAL_CURVE*)
        ((= const 2) 'planning_msgs::Trajectory::*PATH*)
        ((= const 4) 'planning_msgs::Trajectory::*VELOCITY*)
        ((= const 8) 'planning_msgs::Trajectory::*ACCELERATION*)
        ((= const 16) 'planning_msgs::Trajectory::*FRENET_STATE*)
        (t nil)))

(defclass planning_msgs::Trajectory
  :super ros::object
  :slots (_available _polynomial_curve _path _velocity _acceleration _frenet_state ))

(defmethod planning_msgs::Trajectory
  (:init
   (&key
    ((:available __available) 0)
    ((:polynomial_curve __polynomial_curve) (instance planning_msgs::Curve :init))
    ((:path __path) ())
    ((:velocity __velocity) (instance planning_msgs::Velocity :init))
    ((:acceleration __acceleration) (instance planning_msgs::Acceleration :init))
    ((:frenet_state __frenet_state) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _polynomial_curve __polynomial_curve)
   (setq _path __path)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _frenet_state __frenet_state)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:polynomial_curve
   (&rest __polynomial_curve)
   (if (keywordp (car __polynomial_curve))
       (send* _polynomial_curve __polynomial_curve)
     (progn
       (if __polynomial_curve (setq _polynomial_curve (car __polynomial_curve)))
       _polynomial_curve)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:frenet_state
   (&rest __frenet_state)
   (if (keywordp (car __frenet_state))
       (send* _frenet_state __frenet_state)
     (progn
       (if __frenet_state (setq _frenet_state (car __frenet_state)))
       _frenet_state)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/Curve _polynomial_curve
    (send _polynomial_curve :serialization-length)
    ;; planning_msgs/PathPoint[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; planning_msgs/Velocity _velocity
    (send _velocity :serialization-length)
    ;; planning_msgs/Acceleration _acceleration
    (send _acceleration :serialization-length)
    ;; planning_msgs/FrenetState[] _frenet_state
    (apply #'+ (send-all _frenet_state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/Curve _polynomial_curve
       (send _polynomial_curve :serialize s)
     ;; planning_msgs/PathPoint[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; planning_msgs/Velocity _velocity
       (send _velocity :serialize s)
     ;; planning_msgs/Acceleration _acceleration
       (send _acceleration :serialize s)
     ;; planning_msgs/FrenetState[] _frenet_state
     (write-long (length _frenet_state) s)
     (dolist (elem _frenet_state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/Curve _polynomial_curve
     (send _polynomial_curve :deserialize buf ptr-) (incf ptr- (send _polynomial_curve :serialization-length))
   ;; planning_msgs/PathPoint[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance planning_msgs::PathPoint :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/Velocity _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; planning_msgs/Acceleration _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; planning_msgs/FrenetState[] _frenet_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frenet_state (let (r) (dotimes (i n) (push (instance planning_msgs::FrenetState :init) r)) r))
     (dolist (elem- _frenet_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::Trajectory :md5sum-) "4709d14119face393301256d616e8ba3")
(setf (get planning_msgs::Trajectory :datatype-) "planning_msgs/Trajectory")
(setf (get planning_msgs::Trajectory :definition-)
      "uint8 POLYNOMIAL_CURVE = 1
uint8 PATH = 2
uint8 VELOCITY = 4
uint8 ACCELERATION = 8
uint8 FRENET_STATE = 16
uint8 available
planning_msgs/Curve polynomial_curve
planning_msgs/PathPoint[] path
planning_msgs/Velocity velocity
planning_msgs/Acceleration acceleration
planning_msgs/FrenetState[] frenet_state

================================================================================
MSG: planning_msgs/Curve
float64[] polynomial
float64 start_x
float64 end_x

================================================================================
MSG: planning_msgs/PathPoint
planning_msgs/Point2d position_enu
float64 heading_yaw
float64 curvature
float64 path_follow_strength

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

================================================================================
MSG: planning_msgs/Velocity
uint8 TARGET_VALUE = 1
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

================================================================================
MSG: planning_msgs/Acceleration
uint8 RANGE_LIMIT = 1
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

================================================================================
MSG: planning_msgs/FrenetState
planning_msgs/Point2d position_frenet
float64 dl
float64 ddl

")



(provide :planning_msgs/Trajectory "4709d14119face393301256d616e8ba3")


