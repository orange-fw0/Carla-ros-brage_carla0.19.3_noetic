; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude DynamicSafetyCheckResult.msg.html

(cl:defclass <DynamicSafetyCheckResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectory_main
    :reader trajectory_main
    :initarg :trajectory_main
    :type planning_msgs-msg:TrajectorySafetyInfo
    :initform (cl:make-instance 'planning_msgs-msg:TrajectorySafetyInfo))
   (trajectory_slave
    :reader trajectory_slave
    :initarg :trajectory_slave
    :type planning_msgs-msg:TrajectorySafetyInfo
    :initform (cl:make-instance 'planning_msgs-msg:TrajectorySafetyInfo)))
)

(cl:defclass DynamicSafetyCheckResult (<DynamicSafetyCheckResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicSafetyCheckResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicSafetyCheckResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<DynamicSafetyCheckResult> is deprecated: use planning_msgs-msg:DynamicSafetyCheckResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DynamicSafetyCheckResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:header-val is deprecated.  Use planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectory_main-val :lambda-list '(m))
(cl:defmethod trajectory_main-val ((m <DynamicSafetyCheckResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:trajectory_main-val is deprecated.  Use planning_msgs-msg:trajectory_main instead.")
  (trajectory_main m))

(cl:ensure-generic-function 'trajectory_slave-val :lambda-list '(m))
(cl:defmethod trajectory_slave-val ((m <DynamicSafetyCheckResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:trajectory_slave-val is deprecated.  Use planning_msgs-msg:trajectory_slave instead.")
  (trajectory_slave m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicSafetyCheckResult>) ostream)
  "Serializes a message object of type '<DynamicSafetyCheckResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_main) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_slave) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicSafetyCheckResult>) istream)
  "Deserializes a message object of type '<DynamicSafetyCheckResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_main) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_slave) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicSafetyCheckResult>)))
  "Returns string type for a message object of type '<DynamicSafetyCheckResult>"
  "planning_msgs/DynamicSafetyCheckResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicSafetyCheckResult)))
  "Returns string type for a message object of type 'DynamicSafetyCheckResult"
  "planning_msgs/DynamicSafetyCheckResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicSafetyCheckResult>)))
  "Returns md5sum for a message object of type '<DynamicSafetyCheckResult>"
  "c4170daad7ae698f585166ef802d7ae2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicSafetyCheckResult)))
  "Returns md5sum for a message object of type 'DynamicSafetyCheckResult"
  "c4170daad7ae698f585166ef802d7ae2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicSafetyCheckResult>)))
  "Returns full string definition for message of type '<DynamicSafetyCheckResult>"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/TrajectorySafetyInfo trajectory_main~%planning_msgs/TrajectorySafetyInfo trajectory_slave~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/TrajectorySafetyInfo~%uint8 NO_RISK = 1~%uint8 RISK_STATIC_OBSTACLE_COLLISION = 2~%uint8 RISK_STATIC_VRU_COLLISION = 3~%uint8 RISK_STATIC_NON_VRU_COLLISION = 4~%uint8 RISK_STATIC_UNKNOWN_OBJECT_COLLISION = 5~%uint8 RISK_DYNAMIC_VRU_COLLISION = 6~%uint8 RISK_DYNAMIC_NON_VRU_COLLISION = 7~%uint8 RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION = 8~%uint8 RISK_RB_COLLISION = 9~%uint8 RISK_UNSAFE_CONTROL = 10~%uint8 UNKNOWN = 21~%uint8 IN_LANE = 22~%uint8 FREE_SPACE = 23~%uint8 ADJACENT_LANE = 24~%uint8 CROSSING = 25~%uint8 available~%planning_msgs/PlanMeta meta~%planning_msgs/Trajectory trajectory~%float64[] safety_score~%float64 ttc~%planning_msgs/SafetyEvaluator[] safety_evaluators~%uint8 risk_info~%uint8 risk_extended_info~%string reserved_info~%~%================================================================================~%MSG: planning_msgs/PlanMeta~%uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%================================================================================~%MSG: planning_msgs/Trajectory~%uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/SafetyEvaluator~%uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicSafetyCheckResult)))
  "Returns full string definition for message of type 'DynamicSafetyCheckResult"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/TrajectorySafetyInfo trajectory_main~%planning_msgs/TrajectorySafetyInfo trajectory_slave~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/TrajectorySafetyInfo~%uint8 NO_RISK = 1~%uint8 RISK_STATIC_OBSTACLE_COLLISION = 2~%uint8 RISK_STATIC_VRU_COLLISION = 3~%uint8 RISK_STATIC_NON_VRU_COLLISION = 4~%uint8 RISK_STATIC_UNKNOWN_OBJECT_COLLISION = 5~%uint8 RISK_DYNAMIC_VRU_COLLISION = 6~%uint8 RISK_DYNAMIC_NON_VRU_COLLISION = 7~%uint8 RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION = 8~%uint8 RISK_RB_COLLISION = 9~%uint8 RISK_UNSAFE_CONTROL = 10~%uint8 UNKNOWN = 21~%uint8 IN_LANE = 22~%uint8 FREE_SPACE = 23~%uint8 ADJACENT_LANE = 24~%uint8 CROSSING = 25~%uint8 available~%planning_msgs/PlanMeta meta~%planning_msgs/Trajectory trajectory~%float64[] safety_score~%float64 ttc~%planning_msgs/SafetyEvaluator[] safety_evaluators~%uint8 risk_info~%uint8 risk_extended_info~%string reserved_info~%~%================================================================================~%MSG: planning_msgs/PlanMeta~%uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%================================================================================~%MSG: planning_msgs/Trajectory~%uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/SafetyEvaluator~%uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicSafetyCheckResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_main))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_slave))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicSafetyCheckResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicSafetyCheckResult
    (cl:cons ':header (header msg))
    (cl:cons ':trajectory_main (trajectory_main msg))
    (cl:cons ':trajectory_slave (trajectory_slave msg))
))
