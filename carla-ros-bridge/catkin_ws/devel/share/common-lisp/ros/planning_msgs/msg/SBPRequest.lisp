; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SBPRequest.msg.html

(cl:defclass <SBPRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type planning_msgs-msg:SBPRequestMeta
    :initform (cl:make-instance 'planning_msgs-msg:SBPRequestMeta))
   (task_info
    :reader task_info
    :initarg :task_info
    :type planning_msgs-msg:TaskInfo
    :initform (cl:make-instance 'planning_msgs-msg:TaskInfo))
   (task_config
    :reader task_config
    :initarg :task_config
    :type planning_msgs-msg:TaskConfig
    :initform (cl:make-instance 'planning_msgs-msg:TaskConfig)))
)

(cl:defclass SBPRequest (<SBPRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SBPRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SBPRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SBPRequest> is deprecated: use planning_msgs-msg:SBPRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SBPRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:header-val is deprecated.  Use planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <SBPRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:meta-val is deprecated.  Use planning_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'task_info-val :lambda-list '(m))
(cl:defmethod task_info-val ((m <SBPRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:task_info-val is deprecated.  Use planning_msgs-msg:task_info instead.")
  (task_info m))

(cl:ensure-generic-function 'task_config-val :lambda-list '(m))
(cl:defmethod task_config-val ((m <SBPRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:task_config-val is deprecated.  Use planning_msgs-msg:task_config instead.")
  (task_config m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SBPRequest>) ostream)
  "Serializes a message object of type '<SBPRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_config) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SBPRequest>) istream)
  "Deserializes a message object of type '<SBPRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_config) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SBPRequest>)))
  "Returns string type for a message object of type '<SBPRequest>"
  "planning_msgs/SBPRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SBPRequest)))
  "Returns string type for a message object of type 'SBPRequest"
  "planning_msgs/SBPRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SBPRequest>)))
  "Returns md5sum for a message object of type '<SBPRequest>"
  "913807cc43a2266128d9dca40995d277")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SBPRequest)))
  "Returns md5sum for a message object of type 'SBPRequest"
  "913807cc43a2266128d9dca40995d277")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SBPRequest>)))
  "Returns full string definition for message of type '<SBPRequest>"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/SBPRequestMeta meta~%planning_msgs/TaskInfo task_info~%planning_msgs/TaskConfig task_config~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/SBPRequestMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: planning_msgs/TaskInfo~%uint8 REQUEST = 1~%uint8 GOAL_ID = 2~%uint8 available~%planning_msgs/RequestEnum request~%actionlib_msgs/GoalID goal_id~%~%================================================================================~%MSG: planning_msgs/RequestEnum~%uint8 START_TASK = 1~%uint8 ABORT_TASK = 2~%uint8 value~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: planning_msgs/TaskConfig~%uint8 CONFIG = 1~%uint8 ENVIRONMENT_DATA = 2~%uint8 BOUNDARY = 4~%uint8 available~%planning_msgs/ProblemConfig problem_config~%planning_msgs/EnvironmentData environment_data~%planning_msgs/Boundary boundary~%~%================================================================================~%MSG: planning_msgs/ProblemConfig~%uint8 PARAMS = 1~%uint8 PARAMS_STRING = 2~%uint8 INIT_STATE = 4~%uint8 TARGET_STATE = 8~%uint8 available~%planning_msgs/TaskParams params~%string params_string~%planning_msgs/SBPVehicleState init_state~%planning_msgs/SBPVehicleState goal_state~%~%================================================================================~%MSG: planning_msgs/TaskParams~%uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/EnvironmentData~%uint8 OBSTACLES = 1~%uint8 OBSTACLE_BOXES = 2~%uint8 OBSTACLE_LINES = 4~%uint8 LINES = 8~%uint8 POINTS = 16~%uint8 STEP_POINTS = 32~%uint8 available~%planning_msgs/Obstacle[] obstacles~%planning_msgs/Box2d[] obstacle_boxes~%planning_msgs/Line[] obstacle_lines~%planning_msgs/Line[] lines~%geometry_msgs/Point[] points~%geometry_msgs/Point[] step_points~%~%================================================================================~%MSG: planning_msgs/Obstacle~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Box2d~%geometry_msgs/Point center~%float64 heading~%float64 length~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/Line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%================================================================================~%MSG: planning_msgs/Boundary~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 available~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SBPRequest)))
  "Returns full string definition for message of type 'SBPRequest"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/SBPRequestMeta meta~%planning_msgs/TaskInfo task_info~%planning_msgs/TaskConfig task_config~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/SBPRequestMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: planning_msgs/TaskInfo~%uint8 REQUEST = 1~%uint8 GOAL_ID = 2~%uint8 available~%planning_msgs/RequestEnum request~%actionlib_msgs/GoalID goal_id~%~%================================================================================~%MSG: planning_msgs/RequestEnum~%uint8 START_TASK = 1~%uint8 ABORT_TASK = 2~%uint8 value~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: planning_msgs/TaskConfig~%uint8 CONFIG = 1~%uint8 ENVIRONMENT_DATA = 2~%uint8 BOUNDARY = 4~%uint8 available~%planning_msgs/ProblemConfig problem_config~%planning_msgs/EnvironmentData environment_data~%planning_msgs/Boundary boundary~%~%================================================================================~%MSG: planning_msgs/ProblemConfig~%uint8 PARAMS = 1~%uint8 PARAMS_STRING = 2~%uint8 INIT_STATE = 4~%uint8 TARGET_STATE = 8~%uint8 available~%planning_msgs/TaskParams params~%string params_string~%planning_msgs/SBPVehicleState init_state~%planning_msgs/SBPVehicleState goal_state~%~%================================================================================~%MSG: planning_msgs/TaskParams~%uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/EnvironmentData~%uint8 OBSTACLES = 1~%uint8 OBSTACLE_BOXES = 2~%uint8 OBSTACLE_LINES = 4~%uint8 LINES = 8~%uint8 POINTS = 16~%uint8 STEP_POINTS = 32~%uint8 available~%planning_msgs/Obstacle[] obstacles~%planning_msgs/Box2d[] obstacle_boxes~%planning_msgs/Line[] obstacle_lines~%planning_msgs/Line[] lines~%geometry_msgs/Point[] points~%geometry_msgs/Point[] step_points~%~%================================================================================~%MSG: planning_msgs/Obstacle~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Box2d~%geometry_msgs/Point center~%float64 heading~%float64 length~%float64 width~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/Line~%geometry_msgs/Point start~%geometry_msgs/Point end~%~%================================================================================~%MSG: planning_msgs/Boundary~%uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 available~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SBPRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SBPRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'SBPRequest
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':task_info (task_info msg))
    (cl:cons ':task_config (task_config msg))
))
