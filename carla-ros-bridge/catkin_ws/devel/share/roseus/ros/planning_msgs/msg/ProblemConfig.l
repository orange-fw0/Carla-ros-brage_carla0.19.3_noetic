;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ProblemConfig)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ProblemConfig (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PROBLEMCONFIG")
  (make-package "PLANNING_MSGS::PROBLEMCONFIG"))

(in-package "ROS")
;;//! \htmlinclude ProblemConfig.msg.html


(intern "*PARAMS*" (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(shadow '*PARAMS* (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(defconstant planning_msgs::ProblemConfig::*PARAMS* 1)
(intern "*PARAMS_STRING*" (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(shadow '*PARAMS_STRING* (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(defconstant planning_msgs::ProblemConfig::*PARAMS_STRING* 2)
(intern "*INIT_STATE*" (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(shadow '*INIT_STATE* (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(defconstant planning_msgs::ProblemConfig::*INIT_STATE* 4)
(intern "*TARGET_STATE*" (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(shadow '*TARGET_STATE* (find-package "PLANNING_MSGS::PROBLEMCONFIG"))
(defconstant planning_msgs::ProblemConfig::*TARGET_STATE* 8)

(defun planning_msgs::ProblemConfig-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::ProblemConfig::*PARAMS*)
        ((= const 2) 'planning_msgs::ProblemConfig::*PARAMS_STRING*)
        ((= const 4) 'planning_msgs::ProblemConfig::*INIT_STATE*)
        ((= const 8) 'planning_msgs::ProblemConfig::*TARGET_STATE*)
        (t nil)))

(defclass planning_msgs::ProblemConfig
  :super ros::object
  :slots (_available _params _params_string _init_state _goal_state ))

(defmethod planning_msgs::ProblemConfig
  (:init
   (&key
    ((:available __available) 0)
    ((:params __params) (instance planning_msgs::TaskParams :init))
    ((:params_string __params_string) "")
    ((:init_state __init_state) (instance planning_msgs::SBPVehicleState :init))
    ((:goal_state __goal_state) (instance planning_msgs::SBPVehicleState :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _params __params)
   (setq _params_string (string __params_string))
   (setq _init_state __init_state)
   (setq _goal_state __goal_state)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:params_string
   (&optional __params_string)
   (if __params_string (setq _params_string __params_string)) _params_string)
  (:init_state
   (&rest __init_state)
   (if (keywordp (car __init_state))
       (send* _init_state __init_state)
     (progn
       (if __init_state (setq _init_state (car __init_state)))
       _init_state)))
  (:goal_state
   (&rest __goal_state)
   (if (keywordp (car __goal_state))
       (send* _goal_state __goal_state)
     (progn
       (if __goal_state (setq _goal_state (car __goal_state)))
       _goal_state)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/TaskParams _params
    (send _params :serialization-length)
    ;; string _params_string
    4 (length _params_string)
    ;; planning_msgs/SBPVehicleState _init_state
    (send _init_state :serialization-length)
    ;; planning_msgs/SBPVehicleState _goal_state
    (send _goal_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/TaskParams _params
       (send _params :serialize s)
     ;; string _params_string
       (write-long (length _params_string) s) (princ _params_string s)
     ;; planning_msgs/SBPVehicleState _init_state
       (send _init_state :serialize s)
     ;; planning_msgs/SBPVehicleState _goal_state
       (send _goal_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/TaskParams _params
     (send _params :deserialize buf ptr-) (incf ptr- (send _params :serialization-length))
   ;; string _params_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _params_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; planning_msgs/SBPVehicleState _init_state
     (send _init_state :deserialize buf ptr-) (incf ptr- (send _init_state :serialization-length))
   ;; planning_msgs/SBPVehicleState _goal_state
     (send _goal_state :deserialize buf ptr-) (incf ptr- (send _goal_state :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::ProblemConfig :md5sum-) "383668c668a1b23920e681bf7ada99f5")
(setf (get planning_msgs::ProblemConfig :datatype-) "planning_msgs/ProblemConfig")
(setf (get planning_msgs::ProblemConfig :definition-)
      "uint8 PARAMS = 1
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

")



(provide :planning_msgs/ProblemConfig "383668c668a1b23920e681bf7ada99f5")


