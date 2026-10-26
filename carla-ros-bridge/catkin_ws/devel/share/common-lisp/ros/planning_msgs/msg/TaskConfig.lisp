; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TaskConfig.msg.html

(cl:defclass <TaskConfig> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (problem_config
    :reader problem_config
    :initarg :problem_config
    :type planning_msgs-msg:ProblemConfig
    :initform (cl:make-instance 'planning_msgs-msg:ProblemConfig))
   (environment_data
    :reader environment_data
    :initarg :environment_data
    :type planning_msgs-msg:EnvironmentData
    :initform (cl:make-instance 'planning_msgs-msg:EnvironmentData))
   (boundary
    :reader boundary
    :initarg :boundary
    :type planning_msgs-msg:Boundary
    :initform (cl:make-instance 'planning_msgs-msg:Boundary)))
)

(cl:defclass TaskConfig (<TaskConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TaskConfig> is deprecated: use planning_msgs-msg:TaskConfig instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TaskConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'problem_config-val :lambda-list '(m))
(cl:defmethod problem_config-val ((m <TaskConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:problem_config-val is deprecated.  Use planning_msgs-msg:problem_config instead.")
  (problem_config m))

(cl:ensure-generic-function 'environment_data-val :lambda-list '(m))
(cl:defmethod environment_data-val ((m <TaskConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:environment_data-val is deprecated.  Use planning_msgs-msg:environment_data instead.")
  (environment_data m))

(cl:ensure-generic-function 'boundary-val :lambda-list '(m))
(cl:defmethod boundary-val ((m <TaskConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:boundary-val is deprecated.  Use planning_msgs-msg:boundary instead.")
  (boundary m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskConfig>)))
    "Constants for message type '<TaskConfig>"
  '((:CONFIG . 1)
    (:ENVIRONMENT_DATA . 2)
    (:BOUNDARY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskConfig)))
    "Constants for message type 'TaskConfig"
  '((:CONFIG . 1)
    (:ENVIRONMENT_DATA . 2)
    (:BOUNDARY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskConfig>) ostream)
  "Serializes a message object of type '<TaskConfig>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'problem_config) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'environment_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boundary) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskConfig>) istream)
  "Deserializes a message object of type '<TaskConfig>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'problem_config) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'environment_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boundary) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskConfig>)))
  "Returns string type for a message object of type '<TaskConfig>"
  "planning_msgs/TaskConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskConfig)))
  "Returns string type for a message object of type 'TaskConfig"
  "planning_msgs/TaskConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskConfig>)))
  "Returns md5sum for a message object of type '<TaskConfig>"
  "77e843b5a486a3fd847ea02506086c27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskConfig)))
  "Returns md5sum for a message object of type 'TaskConfig"
  "77e843b5a486a3fd847ea02506086c27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskConfig>)))
  "Returns full string definition for message of type '<TaskConfig>"
  (cl:format cl:nil "uint8 CONFIG = 1~%uint8 ENVIRONMENT_DATA = 2~%uint8 BOUNDARY = 4~%uint8 available~%planning_msgs/ProblemConfig problem_config~%planning_msgs/EnvironmentData environment_data~%planning_msgs/Boundary boundary~%~%================================================================================~%MSG: planning_msgs/ProblemConfig~%uint8 PARAMS = 1~%uint8 PARAMS_STRING = 2~%uint8 INIT_STATE = 4~%uint8 TARGET_STATE = 8~%uint8 available~%planning_msgs/TaskParams params~%string params_string~%planning_msgs/SBPVehicleState init_state~%planning_msgs/SBPVehicleState goal_state~%~%================================================================================~%MSG: planning_msgs/TaskParams~%uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/EnvironmentData~%uint8 OBSTACLES = 1~%uint8 OBSTACLE_BOXES = 2~%uint8 OBSTACLE_LINES = 4~%uint8 LINES = 8~%uint8 POINTS = 16~%uint8 STEP_POINTS = 32~%uint8 available~%planning_msgs/Obstacle[] obstacles~%planning_msgs/Box2d[] obstacle_boxes~%planning_msgs/Line[] obstacle_lines~%planning_msgs/Line[] lines~%geometry_msgs/Point[] points~%geometry_msgs/Point[] step_points~%~%================================================================================~%MSG: planning_msgs/Obstacle~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Box2d~%geometry_msgs/Point center~%float64 heading~%float64 length~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/Line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%================================================================================~%MSG: planning_msgs/Boundary~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 available~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskConfig)))
  "Returns full string definition for message of type 'TaskConfig"
  (cl:format cl:nil "uint8 CONFIG = 1~%uint8 ENVIRONMENT_DATA = 2~%uint8 BOUNDARY = 4~%uint8 available~%planning_msgs/ProblemConfig problem_config~%planning_msgs/EnvironmentData environment_data~%planning_msgs/Boundary boundary~%~%================================================================================~%MSG: planning_msgs/ProblemConfig~%uint8 PARAMS = 1~%uint8 PARAMS_STRING = 2~%uint8 INIT_STATE = 4~%uint8 TARGET_STATE = 8~%uint8 available~%planning_msgs/TaskParams params~%string params_string~%planning_msgs/SBPVehicleState init_state~%planning_msgs/SBPVehicleState goal_state~%~%================================================================================~%MSG: planning_msgs/TaskParams~%uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/EnvironmentData~%uint8 OBSTACLES = 1~%uint8 OBSTACLE_BOXES = 2~%uint8 OBSTACLE_LINES = 4~%uint8 LINES = 8~%uint8 POINTS = 16~%uint8 STEP_POINTS = 32~%uint8 available~%planning_msgs/Obstacle[] obstacles~%planning_msgs/Box2d[] obstacle_boxes~%planning_msgs/Line[] obstacle_lines~%planning_msgs/Line[] lines~%geometry_msgs/Point[] points~%geometry_msgs/Point[] step_points~%~%================================================================================~%MSG: planning_msgs/Obstacle~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Box2d~%geometry_msgs/Point center~%float64 heading~%float64 length~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/Line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%================================================================================~%MSG: planning_msgs/Boundary~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 available~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskConfig>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'problem_config))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'environment_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boundary))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskConfig
    (cl:cons ':available (available msg))
    (cl:cons ':problem_config (problem_config msg))
    (cl:cons ':environment_data (environment_data msg))
    (cl:cons ':boundary (boundary msg))
))
