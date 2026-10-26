;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::DynamicSafetyCheckResult)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'DynamicSafetyCheckResult (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::DYNAMICSAFETYCHECKRESULT")
  (make-package "PLANNING_MSGS::DYNAMICSAFETYCHECKRESULT"))

(in-package "ROS")
;;//! \htmlinclude DynamicSafetyCheckResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planning_msgs::DynamicSafetyCheckResult
  :super ros::object
  :slots (_header _trajectory_main _trajectory_slave ))

(defmethod planning_msgs::DynamicSafetyCheckResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory_main __trajectory_main) (instance planning_msgs::TrajectorySafetyInfo :init))
    ((:trajectory_slave __trajectory_slave) (instance planning_msgs::TrajectorySafetyInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory_main __trajectory_main)
   (setq _trajectory_slave __trajectory_slave)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory_main
   (&rest __trajectory_main)
   (if (keywordp (car __trajectory_main))
       (send* _trajectory_main __trajectory_main)
     (progn
       (if __trajectory_main (setq _trajectory_main (car __trajectory_main)))
       _trajectory_main)))
  (:trajectory_slave
   (&rest __trajectory_slave)
   (if (keywordp (car __trajectory_slave))
       (send* _trajectory_slave __trajectory_slave)
     (progn
       (if __trajectory_slave (setq _trajectory_slave (car __trajectory_slave)))
       _trajectory_slave)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; planning_msgs/TrajectorySafetyInfo _trajectory_main
    (send _trajectory_main :serialization-length)
    ;; planning_msgs/TrajectorySafetyInfo _trajectory_slave
    (send _trajectory_slave :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; planning_msgs/TrajectorySafetyInfo _trajectory_main
       (send _trajectory_main :serialize s)
     ;; planning_msgs/TrajectorySafetyInfo _trajectory_slave
       (send _trajectory_slave :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; planning_msgs/TrajectorySafetyInfo _trajectory_main
     (send _trajectory_main :deserialize buf ptr-) (incf ptr- (send _trajectory_main :serialization-length))
   ;; planning_msgs/TrajectorySafetyInfo _trajectory_slave
     (send _trajectory_slave :deserialize buf ptr-) (incf ptr- (send _trajectory_slave :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::DynamicSafetyCheckResult :md5sum-) "c4170daad7ae698f585166ef802d7ae2")
(setf (get planning_msgs::DynamicSafetyCheckResult :datatype-) "planning_msgs/DynamicSafetyCheckResult")
(setf (get planning_msgs::DynamicSafetyCheckResult :definition-)
      "std_msgs/Header header
planning_msgs/TrajectorySafetyInfo trajectory_main
planning_msgs/TrajectorySafetyInfo trajectory_slave

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: planning_msgs/TrajectorySafetyInfo
uint8 NO_RISK = 1
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



(provide :planning_msgs/DynamicSafetyCheckResult "c4170daad7ae698f585166ef802d7ae2")


