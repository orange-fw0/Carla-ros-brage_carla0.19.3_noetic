;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TaskConfig)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TaskConfig (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TASKCONFIG")
  (make-package "PLANNING_MSGS::TASKCONFIG"))

(in-package "ROS")
;;//! \htmlinclude TaskConfig.msg.html


(intern "*CONFIG*" (find-package "PLANNING_MSGS::TASKCONFIG"))
(shadow '*CONFIG* (find-package "PLANNING_MSGS::TASKCONFIG"))
(defconstant planning_msgs::TaskConfig::*CONFIG* 1)
(intern "*ENVIRONMENT_DATA*" (find-package "PLANNING_MSGS::TASKCONFIG"))
(shadow '*ENVIRONMENT_DATA* (find-package "PLANNING_MSGS::TASKCONFIG"))
(defconstant planning_msgs::TaskConfig::*ENVIRONMENT_DATA* 2)
(intern "*BOUNDARY*" (find-package "PLANNING_MSGS::TASKCONFIG"))
(shadow '*BOUNDARY* (find-package "PLANNING_MSGS::TASKCONFIG"))
(defconstant planning_msgs::TaskConfig::*BOUNDARY* 4)

(defun planning_msgs::TaskConfig-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::TaskConfig::*CONFIG*)
        ((= const 2) 'planning_msgs::TaskConfig::*ENVIRONMENT_DATA*)
        ((= const 4) 'planning_msgs::TaskConfig::*BOUNDARY*)
        (t nil)))

(defclass planning_msgs::TaskConfig
  :super ros::object
  :slots (_available _problem_config _environment_data _boundary ))

(defmethod planning_msgs::TaskConfig
  (:init
   (&key
    ((:available __available) 0)
    ((:problem_config __problem_config) (instance planning_msgs::ProblemConfig :init))
    ((:environment_data __environment_data) (instance planning_msgs::EnvironmentData :init))
    ((:boundary __boundary) (instance planning_msgs::Boundary :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _problem_config __problem_config)
   (setq _environment_data __environment_data)
   (setq _boundary __boundary)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:problem_config
   (&rest __problem_config)
   (if (keywordp (car __problem_config))
       (send* _problem_config __problem_config)
     (progn
       (if __problem_config (setq _problem_config (car __problem_config)))
       _problem_config)))
  (:environment_data
   (&rest __environment_data)
   (if (keywordp (car __environment_data))
       (send* _environment_data __environment_data)
     (progn
       (if __environment_data (setq _environment_data (car __environment_data)))
       _environment_data)))
  (:boundary
   (&rest __boundary)
   (if (keywordp (car __boundary))
       (send* _boundary __boundary)
     (progn
       (if __boundary (setq _boundary (car __boundary)))
       _boundary)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/ProblemConfig _problem_config
    (send _problem_config :serialization-length)
    ;; planning_msgs/EnvironmentData _environment_data
    (send _environment_data :serialization-length)
    ;; planning_msgs/Boundary _boundary
    (send _boundary :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/ProblemConfig _problem_config
       (send _problem_config :serialize s)
     ;; planning_msgs/EnvironmentData _environment_data
       (send _environment_data :serialize s)
     ;; planning_msgs/Boundary _boundary
       (send _boundary :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/ProblemConfig _problem_config
     (send _problem_config :deserialize buf ptr-) (incf ptr- (send _problem_config :serialization-length))
   ;; planning_msgs/EnvironmentData _environment_data
     (send _environment_data :deserialize buf ptr-) (incf ptr- (send _environment_data :serialization-length))
   ;; planning_msgs/Boundary _boundary
     (send _boundary :deserialize buf ptr-) (incf ptr- (send _boundary :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::TaskConfig :md5sum-) "77e843b5a486a3fd847ea02506086c27")
(setf (get planning_msgs::TaskConfig :datatype-) "planning_msgs/TaskConfig")
(setf (get planning_msgs::TaskConfig :definition-)
      "uint8 CONFIG = 1
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



(provide :planning_msgs/TaskConfig "77e843b5a486a3fd847ea02506086c27")


