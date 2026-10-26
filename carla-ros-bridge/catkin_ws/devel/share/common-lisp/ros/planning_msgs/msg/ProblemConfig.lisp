; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ProblemConfig.msg.html

(cl:defclass <ProblemConfig> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (params
    :reader params
    :initarg :params
    :type planning_msgs-msg:TaskParams
    :initform (cl:make-instance 'planning_msgs-msg:TaskParams))
   (params_string
    :reader params_string
    :initarg :params_string
    :type cl:string
    :initform "")
   (init_state
    :reader init_state
    :initarg :init_state
    :type planning_msgs-msg:SBPVehicleState
    :initform (cl:make-instance 'planning_msgs-msg:SBPVehicleState))
   (goal_state
    :reader goal_state
    :initarg :goal_state
    :type planning_msgs-msg:SBPVehicleState
    :initform (cl:make-instance 'planning_msgs-msg:SBPVehicleState)))
)

(cl:defclass ProblemConfig (<ProblemConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProblemConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProblemConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ProblemConfig> is deprecated: use planning_msgs-msg:ProblemConfig instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ProblemConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <ProblemConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:params-val is deprecated.  Use planning_msgs-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'params_string-val :lambda-list '(m))
(cl:defmethod params_string-val ((m <ProblemConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:params_string-val is deprecated.  Use planning_msgs-msg:params_string instead.")
  (params_string m))

(cl:ensure-generic-function 'init_state-val :lambda-list '(m))
(cl:defmethod init_state-val ((m <ProblemConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:init_state-val is deprecated.  Use planning_msgs-msg:init_state instead.")
  (init_state m))

(cl:ensure-generic-function 'goal_state-val :lambda-list '(m))
(cl:defmethod goal_state-val ((m <ProblemConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:goal_state-val is deprecated.  Use planning_msgs-msg:goal_state instead.")
  (goal_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProblemConfig>)))
    "Constants for message type '<ProblemConfig>"
  '((:PARAMS . 1)
    (:PARAMS_STRING . 2)
    (:INIT_STATE . 4)
    (:TARGET_STATE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProblemConfig)))
    "Constants for message type 'ProblemConfig"
  '((:PARAMS . 1)
    (:PARAMS_STRING . 2)
    (:INIT_STATE . 4)
    (:TARGET_STATE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProblemConfig>) ostream)
  "Serializes a message object of type '<ProblemConfig>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'params_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'params_string))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProblemConfig>) istream)
  "Deserializes a message object of type '<ProblemConfig>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'params_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'params_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProblemConfig>)))
  "Returns string type for a message object of type '<ProblemConfig>"
  "planning_msgs/ProblemConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProblemConfig)))
  "Returns string type for a message object of type 'ProblemConfig"
  "planning_msgs/ProblemConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProblemConfig>)))
  "Returns md5sum for a message object of type '<ProblemConfig>"
  "383668c668a1b23920e681bf7ada99f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProblemConfig)))
  "Returns md5sum for a message object of type 'ProblemConfig"
  "383668c668a1b23920e681bf7ada99f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProblemConfig>)))
  "Returns full string definition for message of type '<ProblemConfig>"
  (cl:format cl:nil "uint8 PARAMS = 1~%uint8 PARAMS_STRING = 2~%uint8 INIT_STATE = 4~%uint8 TARGET_STATE = 8~%uint8 available~%planning_msgs/TaskParams params~%string params_string~%planning_msgs/SBPVehicleState init_state~%planning_msgs/SBPVehicleState goal_state~%~%================================================================================~%MSG: planning_msgs/TaskParams~%uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProblemConfig)))
  "Returns full string definition for message of type 'ProblemConfig"
  (cl:format cl:nil "uint8 PARAMS = 1~%uint8 PARAMS_STRING = 2~%uint8 INIT_STATE = 4~%uint8 TARGET_STATE = 8~%uint8 available~%planning_msgs/TaskParams params~%string params_string~%planning_msgs/SBPVehicleState init_state~%planning_msgs/SBPVehicleState goal_state~%~%================================================================================~%MSG: planning_msgs/TaskParams~%uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProblemConfig>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
     4 (cl:length (cl:slot-value msg 'params_string))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProblemConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'ProblemConfig
    (cl:cons ':available (available msg))
    (cl:cons ':params (params msg))
    (cl:cons ':params_string (params_string msg))
    (cl:cons ':init_state (init_state msg))
    (cl:cons ':goal_state (goal_state msg))
))
