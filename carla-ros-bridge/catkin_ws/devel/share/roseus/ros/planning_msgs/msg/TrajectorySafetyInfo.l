;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TrajectorySafetyInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TrajectorySafetyInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO")
  (make-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))

(in-package "ROS")
;;//! \htmlinclude TrajectorySafetyInfo.msg.html


(intern "*NO_RISK*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*NO_RISK* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*NO_RISK* 1)
(intern "*RISK_STATIC_OBSTACLE_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_STATIC_OBSTACLE_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_OBSTACLE_COLLISION* 2)
(intern "*RISK_STATIC_VRU_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_STATIC_VRU_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_VRU_COLLISION* 3)
(intern "*RISK_STATIC_NON_VRU_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_STATIC_NON_VRU_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_NON_VRU_COLLISION* 4)
(intern "*RISK_STATIC_UNKNOWN_OBJECT_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_STATIC_UNKNOWN_OBJECT_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_UNKNOWN_OBJECT_COLLISION* 5)
(intern "*RISK_DYNAMIC_VRU_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_DYNAMIC_VRU_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_DYNAMIC_VRU_COLLISION* 6)
(intern "*RISK_DYNAMIC_NON_VRU_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_DYNAMIC_NON_VRU_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_DYNAMIC_NON_VRU_COLLISION* 7)
(intern "*RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION* 8)
(intern "*RISK_RB_COLLISION*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_RB_COLLISION* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_RB_COLLISION* 9)
(intern "*RISK_UNSAFE_CONTROL*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*RISK_UNSAFE_CONTROL* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*RISK_UNSAFE_CONTROL* 10)
(intern "*UNKNOWN*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*UNKNOWN* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*UNKNOWN* 21)
(intern "*IN_LANE*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*IN_LANE* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*IN_LANE* 22)
(intern "*FREE_SPACE*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*FREE_SPACE* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*FREE_SPACE* 23)
(intern "*ADJACENT_LANE*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*ADJACENT_LANE* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*ADJACENT_LANE* 24)
(intern "*CROSSING*" (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(shadow '*CROSSING* (find-package "PLANNING_MSGS::TRAJECTORYSAFETYINFO"))
(defconstant planning_msgs::TrajectorySafetyInfo::*CROSSING* 25)

(defun planning_msgs::TrajectorySafetyInfo-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::TrajectorySafetyInfo::*NO_RISK*)
        ((= const 2) 'planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_OBSTACLE_COLLISION*)
        ((= const 3) 'planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_VRU_COLLISION*)
        ((= const 4) 'planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_NON_VRU_COLLISION*)
        ((= const 5) 'planning_msgs::TrajectorySafetyInfo::*RISK_STATIC_UNKNOWN_OBJECT_COLLISION*)
        ((= const 6) 'planning_msgs::TrajectorySafetyInfo::*RISK_DYNAMIC_VRU_COLLISION*)
        ((= const 7) 'planning_msgs::TrajectorySafetyInfo::*RISK_DYNAMIC_NON_VRU_COLLISION*)
        ((= const 8) 'planning_msgs::TrajectorySafetyInfo::*RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION*)
        ((= const 9) 'planning_msgs::TrajectorySafetyInfo::*RISK_RB_COLLISION*)
        ((= const 10) 'planning_msgs::TrajectorySafetyInfo::*RISK_UNSAFE_CONTROL*)
        ((= const 21) 'planning_msgs::TrajectorySafetyInfo::*UNKNOWN*)
        ((= const 22) 'planning_msgs::TrajectorySafetyInfo::*IN_LANE*)
        ((= const 23) 'planning_msgs::TrajectorySafetyInfo::*FREE_SPACE*)
        ((= const 24) 'planning_msgs::TrajectorySafetyInfo::*ADJACENT_LANE*)
        ((= const 25) 'planning_msgs::TrajectorySafetyInfo::*CROSSING*)
        (t nil)))

(defclass planning_msgs::TrajectorySafetyInfo
  :super ros::object
  :slots (_available _meta _trajectory _safety_score _ttc _safety_evaluators _risk_info _risk_extended_info _reserved_info ))

(defmethod planning_msgs::TrajectorySafetyInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:meta __meta) (instance planning_msgs::PlanMeta :init))
    ((:trajectory __trajectory) (instance planning_msgs::Trajectory :init))
    ((:safety_score __safety_score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ttc __ttc) 0.0)
    ((:safety_evaluators __safety_evaluators) ())
    ((:risk_info __risk_info) 0)
    ((:risk_extended_info __risk_extended_info) 0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _meta __meta)
   (setq _trajectory __trajectory)
   (setq _safety_score __safety_score)
   (setq _ttc (float __ttc))
   (setq _safety_evaluators __safety_evaluators)
   (setq _risk_info (round __risk_info))
   (setq _risk_extended_info (round __risk_extended_info))
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:safety_score
   (&optional __safety_score)
   (if __safety_score (setq _safety_score __safety_score)) _safety_score)
  (:ttc
   (&optional __ttc)
   (if __ttc (setq _ttc __ttc)) _ttc)
  (:safety_evaluators
   (&rest __safety_evaluators)
   (if (keywordp (car __safety_evaluators))
       (send* _safety_evaluators __safety_evaluators)
     (progn
       (if __safety_evaluators (setq _safety_evaluators (car __safety_evaluators)))
       _safety_evaluators)))
  (:risk_info
   (&optional __risk_info)
   (if __risk_info (setq _risk_info __risk_info)) _risk_info)
  (:risk_extended_info
   (&optional __risk_extended_info)
   (if __risk_extended_info (setq _risk_extended_info __risk_extended_info)) _risk_extended_info)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/PlanMeta _meta
    (send _meta :serialization-length)
    ;; planning_msgs/Trajectory _trajectory
    (send _trajectory :serialization-length)
    ;; float64[] _safety_score
    (* 8    (length _safety_score)) 4
    ;; float64 _ttc
    8
    ;; planning_msgs/SafetyEvaluator[] _safety_evaluators
    (apply #'+ (send-all _safety_evaluators :serialization-length)) 4
    ;; uint8 _risk_info
    1
    ;; uint8 _risk_extended_info
    1
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/PlanMeta _meta
       (send _meta :serialize s)
     ;; planning_msgs/Trajectory _trajectory
       (send _trajectory :serialize s)
     ;; float64[] _safety_score
     (write-long (length _safety_score) s)
     (dotimes (i (length _safety_score))
       (sys::poke (elt _safety_score i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _ttc
       (sys::poke _ttc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; planning_msgs/SafetyEvaluator[] _safety_evaluators
     (write-long (length _safety_evaluators) s)
     (dolist (elem _safety_evaluators)
       (send elem :serialize s)
       )
     ;; uint8 _risk_info
       (write-byte _risk_info s)
     ;; uint8 _risk_extended_info
       (write-byte _risk_extended_info s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/PlanMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; planning_msgs/Trajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;; float64[] _safety_score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _safety_score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _safety_score i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _ttc
     (setq _ttc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; planning_msgs/SafetyEvaluator[] _safety_evaluators
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _safety_evaluators (let (r) (dotimes (i n) (push (instance planning_msgs::SafetyEvaluator :init) r)) r))
     (dolist (elem- _safety_evaluators)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _risk_info
     (setq _risk_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _risk_extended_info
     (setq _risk_extended_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::TrajectorySafetyInfo :md5sum-) "b4561828eb5e985e506894754e07780b")
(setf (get planning_msgs::TrajectorySafetyInfo :datatype-) "planning_msgs/TrajectorySafetyInfo")
(setf (get planning_msgs::TrajectorySafetyInfo :definition-)
      "uint8 NO_RISK = 1
uint8 RISK_STATIC_OBSTACLE_COLLISION = 2
uint8 RISK_STATIC_VRU_COLLISION = 3
uint8 RISK_STATIC_NON_VRU_COLLISION = 4
uint8 RISK_STATIC_UNKNOWN_OBJECT_COLLISION = 5
uint8 RISK_DYNAMIC_VRU_COLLISION = 6
uint8 RISK_DYNAMIC_NON_VRU_COLLISION = 7
uint8 RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION = 8
uint8 RISK_RB_COLLISION = 9
uint8 RISK_UNSAFE_CONTROL = 10
uint8 UNKNOWN = 21
uint8 IN_LANE = 22
uint8 FREE_SPACE = 23
uint8 ADJACENT_LANE = 24
uint8 CROSSING = 25
uint8 available
planning_msgs/PlanMeta meta
planning_msgs/Trajectory trajectory
float64[] safety_score
float64 ttc
planning_msgs/SafetyEvaluator[] safety_evaluators
uint8 risk_info
uint8 risk_extended_info
string reserved_info

================================================================================
MSG: planning_msgs/PlanMeta
uint64 timestamp_us
uint64 plan_timestamp_us
string plan_strategy_name

================================================================================
MSG: planning_msgs/Trajectory
uint8 POLYNOMIAL_CURVE = 1
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

================================================================================
MSG: planning_msgs/SafetyEvaluator
uint8 id
string name

")



(provide :planning_msgs/TrajectorySafetyInfo "b4561828eb5e985e506894754e07780b")


