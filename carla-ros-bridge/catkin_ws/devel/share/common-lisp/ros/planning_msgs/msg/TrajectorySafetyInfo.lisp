; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TrajectorySafetyInfo.msg.html

(cl:defclass <TrajectorySafetyInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (meta
    :reader meta
    :initarg :meta
    :type planning_msgs-msg:PlanMeta
    :initform (cl:make-instance 'planning_msgs-msg:PlanMeta))
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type planning_msgs-msg:Trajectory
    :initform (cl:make-instance 'planning_msgs-msg:Trajectory))
   (safety_score
    :reader safety_score
    :initarg :safety_score
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ttc
    :reader ttc
    :initarg :ttc
    :type cl:float
    :initform 0.0)
   (safety_evaluators
    :reader safety_evaluators
    :initarg :safety_evaluators
    :type (cl:vector planning_msgs-msg:SafetyEvaluator)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:SafetyEvaluator :initial-element (cl:make-instance 'planning_msgs-msg:SafetyEvaluator)))
   (risk_info
    :reader risk_info
    :initarg :risk_info
    :type cl:fixnum
    :initform 0)
   (risk_extended_info
    :reader risk_extended_info
    :initarg :risk_extended_info
    :type cl:fixnum
    :initform 0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass TrajectorySafetyInfo (<TrajectorySafetyInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectorySafetyInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectorySafetyInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TrajectorySafetyInfo> is deprecated: use planning_msgs-msg:TrajectorySafetyInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:meta-val is deprecated.  Use planning_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:trajectory-val is deprecated.  Use planning_msgs-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'safety_score-val :lambda-list '(m))
(cl:defmethod safety_score-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:safety_score-val is deprecated.  Use planning_msgs-msg:safety_score instead.")
  (safety_score m))

(cl:ensure-generic-function 'ttc-val :lambda-list '(m))
(cl:defmethod ttc-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ttc-val is deprecated.  Use planning_msgs-msg:ttc instead.")
  (ttc m))

(cl:ensure-generic-function 'safety_evaluators-val :lambda-list '(m))
(cl:defmethod safety_evaluators-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:safety_evaluators-val is deprecated.  Use planning_msgs-msg:safety_evaluators instead.")
  (safety_evaluators m))

(cl:ensure-generic-function 'risk_info-val :lambda-list '(m))
(cl:defmethod risk_info-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:risk_info-val is deprecated.  Use planning_msgs-msg:risk_info instead.")
  (risk_info m))

(cl:ensure-generic-function 'risk_extended_info-val :lambda-list '(m))
(cl:defmethod risk_extended_info-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:risk_extended_info-val is deprecated.  Use planning_msgs-msg:risk_extended_info instead.")
  (risk_extended_info m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <TrajectorySafetyInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:reserved_info-val is deprecated.  Use planning_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrajectorySafetyInfo>)))
    "Constants for message type '<TrajectorySafetyInfo>"
  '((:NO_RISK . 1)
    (:RISK_STATIC_OBSTACLE_COLLISION . 2)
    (:RISK_STATIC_VRU_COLLISION . 3)
    (:RISK_STATIC_NON_VRU_COLLISION . 4)
    (:RISK_STATIC_UNKNOWN_OBJECT_COLLISION . 5)
    (:RISK_DYNAMIC_VRU_COLLISION . 6)
    (:RISK_DYNAMIC_NON_VRU_COLLISION . 7)
    (:RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION . 8)
    (:RISK_RB_COLLISION . 9)
    (:RISK_UNSAFE_CONTROL . 10)
    (:UNKNOWN . 21)
    (:IN_LANE . 22)
    (:FREE_SPACE . 23)
    (:ADJACENT_LANE . 24)
    (:CROSSING . 25))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrajectorySafetyInfo)))
    "Constants for message type 'TrajectorySafetyInfo"
  '((:NO_RISK . 1)
    (:RISK_STATIC_OBSTACLE_COLLISION . 2)
    (:RISK_STATIC_VRU_COLLISION . 3)
    (:RISK_STATIC_NON_VRU_COLLISION . 4)
    (:RISK_STATIC_UNKNOWN_OBJECT_COLLISION . 5)
    (:RISK_DYNAMIC_VRU_COLLISION . 6)
    (:RISK_DYNAMIC_NON_VRU_COLLISION . 7)
    (:RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION . 8)
    (:RISK_RB_COLLISION . 9)
    (:RISK_UNSAFE_CONTROL . 10)
    (:UNKNOWN . 21)
    (:IN_LANE . 22)
    (:FREE_SPACE . 23)
    (:ADJACENT_LANE . 24)
    (:CROSSING . 25))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectorySafetyInfo>) ostream)
  "Serializes a message object of type '<TrajectorySafetyInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'safety_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'safety_score))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ttc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'safety_evaluators))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'safety_evaluators))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'risk_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'risk_extended_info)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectorySafetyInfo>) istream)
  "Deserializes a message object of type '<TrajectorySafetyInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'safety_score) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'safety_score)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ttc) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'safety_evaluators) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'safety_evaluators)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:SafetyEvaluator))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'risk_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'risk_extended_info)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectorySafetyInfo>)))
  "Returns string type for a message object of type '<TrajectorySafetyInfo>"
  "planning_msgs/TrajectorySafetyInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectorySafetyInfo)))
  "Returns string type for a message object of type 'TrajectorySafetyInfo"
  "planning_msgs/TrajectorySafetyInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectorySafetyInfo>)))
  "Returns md5sum for a message object of type '<TrajectorySafetyInfo>"
  "b4561828eb5e985e506894754e07780b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectorySafetyInfo)))
  "Returns md5sum for a message object of type 'TrajectorySafetyInfo"
  "b4561828eb5e985e506894754e07780b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectorySafetyInfo>)))
  "Returns full string definition for message of type '<TrajectorySafetyInfo>"
  (cl:format cl:nil "uint8 NO_RISK = 1~%uint8 RISK_STATIC_OBSTACLE_COLLISION = 2~%uint8 RISK_STATIC_VRU_COLLISION = 3~%uint8 RISK_STATIC_NON_VRU_COLLISION = 4~%uint8 RISK_STATIC_UNKNOWN_OBJECT_COLLISION = 5~%uint8 RISK_DYNAMIC_VRU_COLLISION = 6~%uint8 RISK_DYNAMIC_NON_VRU_COLLISION = 7~%uint8 RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION = 8~%uint8 RISK_RB_COLLISION = 9~%uint8 RISK_UNSAFE_CONTROL = 10~%uint8 UNKNOWN = 21~%uint8 IN_LANE = 22~%uint8 FREE_SPACE = 23~%uint8 ADJACENT_LANE = 24~%uint8 CROSSING = 25~%uint8 available~%planning_msgs/PlanMeta meta~%planning_msgs/Trajectory trajectory~%float64[] safety_score~%float64 ttc~%planning_msgs/SafetyEvaluator[] safety_evaluators~%uint8 risk_info~%uint8 risk_extended_info~%string reserved_info~%~%================================================================================~%MSG: planning_msgs/PlanMeta~%uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%================================================================================~%MSG: planning_msgs/Trajectory~%uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/SafetyEvaluator~%uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectorySafetyInfo)))
  "Returns full string definition for message of type 'TrajectorySafetyInfo"
  (cl:format cl:nil "uint8 NO_RISK = 1~%uint8 RISK_STATIC_OBSTACLE_COLLISION = 2~%uint8 RISK_STATIC_VRU_COLLISION = 3~%uint8 RISK_STATIC_NON_VRU_COLLISION = 4~%uint8 RISK_STATIC_UNKNOWN_OBJECT_COLLISION = 5~%uint8 RISK_DYNAMIC_VRU_COLLISION = 6~%uint8 RISK_DYNAMIC_NON_VRU_COLLISION = 7~%uint8 RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION = 8~%uint8 RISK_RB_COLLISION = 9~%uint8 RISK_UNSAFE_CONTROL = 10~%uint8 UNKNOWN = 21~%uint8 IN_LANE = 22~%uint8 FREE_SPACE = 23~%uint8 ADJACENT_LANE = 24~%uint8 CROSSING = 25~%uint8 available~%planning_msgs/PlanMeta meta~%planning_msgs/Trajectory trajectory~%float64[] safety_score~%float64 ttc~%planning_msgs/SafetyEvaluator[] safety_evaluators~%uint8 risk_info~%uint8 risk_extended_info~%string reserved_info~%~%================================================================================~%MSG: planning_msgs/PlanMeta~%uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%================================================================================~%MSG: planning_msgs/Trajectory~%uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/SafetyEvaluator~%uint8 id~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectorySafetyInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'safety_score) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'safety_evaluators) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectorySafetyInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectorySafetyInfo
    (cl:cons ':available (available msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':safety_score (safety_score msg))
    (cl:cons ':ttc (ttc msg))
    (cl:cons ':safety_evaluators (safety_evaluators msg))
    (cl:cons ':risk_info (risk_info msg))
    (cl:cons ':risk_extended_info (risk_extended_info msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
