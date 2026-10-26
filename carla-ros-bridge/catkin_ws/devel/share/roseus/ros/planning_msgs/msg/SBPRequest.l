;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SBPRequest)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SBPRequest (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SBPREQUEST")
  (make-package "PLANNING_MSGS::SBPREQUEST"))

(in-package "ROS")
;;//! \htmlinclude SBPRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planning_msgs::SBPRequest
  :super ros::object
  :slots (_header _meta _task_info _task_config ))

(defmethod planning_msgs::SBPRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance planning_msgs::SBPRequestMeta :init))
    ((:task_info __task_info) (instance planning_msgs::TaskInfo :init))
    ((:task_config __task_config) (instance planning_msgs::TaskConfig :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _task_info __task_info)
   (setq _task_config __task_config)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:task_info
   (&rest __task_info)
   (if (keywordp (car __task_info))
       (send* _task_info __task_info)
     (progn
       (if __task_info (setq _task_info (car __task_info)))
       _task_info)))
  (:task_config
   (&rest __task_config)
   (if (keywordp (car __task_config))
       (send* _task_config __task_config)
     (progn
       (if __task_config (setq _task_config (car __task_config)))
       _task_config)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; planning_msgs/SBPRequestMeta _meta
    (send _meta :serialization-length)
    ;; planning_msgs/TaskInfo _task_info
    (send _task_info :serialization-length)
    ;; planning_msgs/TaskConfig _task_config
    (send _task_config :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; planning_msgs/SBPRequestMeta _meta
       (send _meta :serialize s)
     ;; planning_msgs/TaskInfo _task_info
       (send _task_info :serialize s)
     ;; planning_msgs/TaskConfig _task_config
       (send _task_config :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; planning_msgs/SBPRequestMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; planning_msgs/TaskInfo _task_info
     (send _task_info :deserialize buf ptr-) (incf ptr- (send _task_info :serialization-length))
   ;; planning_msgs/TaskConfig _task_config
     (send _task_config :deserialize buf ptr-) (incf ptr- (send _task_config :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::SBPRequest :md5sum-) "913807cc43a2266128d9dca40995d277")
(setf (get planning_msgs::SBPRequest :datatype-) "planning_msgs/SBPRequest")
(setf (get planning_msgs::SBPRequest :definition-)
      "std_msgs/Header header
planning_msgs/SBPRequestMeta meta
planning_msgs/TaskInfo task_info
planning_msgs/TaskConfig task_config

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
MSG: planning_msgs/SBPRequestMeta
uint64 timestamp_us

================================================================================
MSG: planning_msgs/TaskInfo
uint8 REQUEST = 1
uint8 GOAL_ID = 2
uint8 available
planning_msgs/RequestEnum request
actionlib_msgs/GoalID goal_id

================================================================================
MSG: planning_msgs/RequestEnum
uint8 START_TASK = 1
uint8 ABORT_TASK = 2
uint8 value

================================================================================
MSG: actionlib_msgs/GoalID
uint64 stamp
string id

================================================================================
MSG: planning_msgs/TaskConfig
uint8 CONFIG = 1
uint8 ENVIRONMENT_DATA = 2
uint8 BOUNDARY = 4
uint8 available
planning_msgs/ProblemConfig problem_config
planning_msgs/EnvironmentData environment_data
planning_msgs/Boundary boundary

================================================================================
MSG: planning_msgs/ProblemConfig
uint8 PARAMS = 1
uint8 PARAMS_STRING = 2
uint8 INIT_STATE = 4
uint8 TARGET_STATE = 8
uint8 available
planning_msgs/TaskParams params
string params_string
planning_msgs/SBPVehicleState init_state
planning_msgs/SBPVehicleState goal_state

================================================================================
MSG: planning_msgs/TaskParams
uint8 verbose
uint8 planning_core
uint8 footprint_model
uint8 footprint_model_precise
float32 lon_inflation
float32 lat_inflation
float32 inflation_rearview_mirror
float32 shrink_ratio_for_lines
float32 max_steer_angle
float32 max_steer_angle_rate
float32 max_steer_angle_rear
float32 max_steer_angle_rate_rear
bool enable_analytic_expansion
float32 analytic_expansion_end_size_threshold
int8 force_analytic_expansion_end_direction
bool enable_multiple_steer_modes
float32 xy_grid_resolution
float32 phi_grid_resolution
float32 grid_dijkstra_xy_resolution
float32 traj_forward_penalty
float32 traj_back_penalty
float32 traj_gear_switch_penalty
float32 traj_steer_penalty
float32 traj_steer_change_penalty
float32 step_size
uint8 next_node_num
float32 max_iteration
float32 holonomic_with_obs_heuristic
float32 non_holonomic_without_obs_heuristic

================================================================================
MSG: planning_msgs/SBPVehicleState
geometry_msgs/Pose2D pose
float32 steer
planning_msgs/SteerModeEnum steer_mode
int8 gear

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: planning_msgs/SteerModeEnum
uint8 NORMAL = 0
uint8 TWIST = 1
uint8 TRANSLATION = 2
uint8 value

================================================================================
MSG: planning_msgs/EnvironmentData
uint8 OBSTACLES = 1
uint8 OBSTACLE_BOXES = 2
uint8 OBSTACLE_LINES = 4
uint8 LINES = 8
uint8 POINTS = 16
uint8 STEP_POINTS = 32
uint8 available
planning_msgs/Obstacle[] obstacles
planning_msgs/Box2d[] obstacle_boxes
planning_msgs/Line[] obstacle_lines
planning_msgs/Line[] lines
geometry_msgs/Point[] points
geometry_msgs/Point[] step_points

================================================================================
MSG: planning_msgs/Obstacle
uint8 BOX = 1
uint8 POLYGON = 2
uint8 POLYLINE = 4
uint8 POINT = 8
uint8 available
planning_msgs/ObstacleTypeEnum obstacle_type
planning_msgs/Box2f box
planning_msgs/Polygon2f polygon
planning_msgs/Polyline2f polyline
geometry_msgs/Point32 point

================================================================================
MSG: planning_msgs/ObstacleTypeEnum
uint8 PHYSICAL = 1
uint8 LOGICAL = 2
uint8 PARKING_SLOT = 4
uint8 value

================================================================================
MSG: planning_msgs/Box2f
geometry_msgs/Point32 center
float32 heading
float32 length
float32 width

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: planning_msgs/Polygon2f
geometry_msgs/Point32[] points

================================================================================
MSG: planning_msgs/Polyline2f
geometry_msgs/Point32[] points

================================================================================
MSG: planning_msgs/Box2d
geometry_msgs/Point center
float64 heading
float64 length
float64 width

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: planning_msgs/Line
geometry_msgs/Point start
geometry_msgs/Point end

================================================================================
MSG: planning_msgs/Boundary
uint8 BOX = 1
uint8 POLYGON = 2
uint8 available
planning_msgs/Box2f box
planning_msgs/Polygon2f polygon

")



(provide :planning_msgs/SBPRequest "913807cc43a2266128d9dca40995d277")


