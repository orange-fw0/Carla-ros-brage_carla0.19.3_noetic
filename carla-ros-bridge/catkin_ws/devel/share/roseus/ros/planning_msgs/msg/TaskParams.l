;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TaskParams)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TaskParams (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TASKPARAMS")
  (make-package "PLANNING_MSGS::TASKPARAMS"))

(in-package "ROS")
;;//! \htmlinclude TaskParams.msg.html


(defclass planning_msgs::TaskParams
  :super ros::object
  :slots (_verbose _planning_core _footprint_model _footprint_model_precise _lon_inflation _lat_inflation _inflation_rearview_mirror _shrink_ratio_for_lines _max_steer_angle _max_steer_angle_rate _max_steer_angle_rear _max_steer_angle_rate_rear _enable_analytic_expansion _analytic_expansion_end_size_threshold _force_analytic_expansion_end_direction _enable_multiple_steer_modes _xy_grid_resolution _phi_grid_resolution _grid_dijkstra_xy_resolution _traj_forward_penalty _traj_back_penalty _traj_gear_switch_penalty _traj_steer_penalty _traj_steer_change_penalty _step_size _next_node_num _max_iteration _holonomic_with_obs_heuristic _non_holonomic_without_obs_heuristic ))

(defmethod planning_msgs::TaskParams
  (:init
   (&key
    ((:verbose __verbose) 0)
    ((:planning_core __planning_core) 0)
    ((:footprint_model __footprint_model) 0)
    ((:footprint_model_precise __footprint_model_precise) 0)
    ((:lon_inflation __lon_inflation) 0.0)
    ((:lat_inflation __lat_inflation) 0.0)
    ((:inflation_rearview_mirror __inflation_rearview_mirror) 0.0)
    ((:shrink_ratio_for_lines __shrink_ratio_for_lines) 0.0)
    ((:max_steer_angle __max_steer_angle) 0.0)
    ((:max_steer_angle_rate __max_steer_angle_rate) 0.0)
    ((:max_steer_angle_rear __max_steer_angle_rear) 0.0)
    ((:max_steer_angle_rate_rear __max_steer_angle_rate_rear) 0.0)
    ((:enable_analytic_expansion __enable_analytic_expansion) nil)
    ((:analytic_expansion_end_size_threshold __analytic_expansion_end_size_threshold) 0.0)
    ((:force_analytic_expansion_end_direction __force_analytic_expansion_end_direction) 0)
    ((:enable_multiple_steer_modes __enable_multiple_steer_modes) nil)
    ((:xy_grid_resolution __xy_grid_resolution) 0.0)
    ((:phi_grid_resolution __phi_grid_resolution) 0.0)
    ((:grid_dijkstra_xy_resolution __grid_dijkstra_xy_resolution) 0.0)
    ((:traj_forward_penalty __traj_forward_penalty) 0.0)
    ((:traj_back_penalty __traj_back_penalty) 0.0)
    ((:traj_gear_switch_penalty __traj_gear_switch_penalty) 0.0)
    ((:traj_steer_penalty __traj_steer_penalty) 0.0)
    ((:traj_steer_change_penalty __traj_steer_change_penalty) 0.0)
    ((:step_size __step_size) 0.0)
    ((:next_node_num __next_node_num) 0)
    ((:max_iteration __max_iteration) 0.0)
    ((:holonomic_with_obs_heuristic __holonomic_with_obs_heuristic) 0.0)
    ((:non_holonomic_without_obs_heuristic __non_holonomic_without_obs_heuristic) 0.0)
    )
   (send-super :init)
   (setq _verbose (round __verbose))
   (setq _planning_core (round __planning_core))
   (setq _footprint_model (round __footprint_model))
   (setq _footprint_model_precise (round __footprint_model_precise))
   (setq _lon_inflation (float __lon_inflation))
   (setq _lat_inflation (float __lat_inflation))
   (setq _inflation_rearview_mirror (float __inflation_rearview_mirror))
   (setq _shrink_ratio_for_lines (float __shrink_ratio_for_lines))
   (setq _max_steer_angle (float __max_steer_angle))
   (setq _max_steer_angle_rate (float __max_steer_angle_rate))
   (setq _max_steer_angle_rear (float __max_steer_angle_rear))
   (setq _max_steer_angle_rate_rear (float __max_steer_angle_rate_rear))
   (setq _enable_analytic_expansion __enable_analytic_expansion)
   (setq _analytic_expansion_end_size_threshold (float __analytic_expansion_end_size_threshold))
   (setq _force_analytic_expansion_end_direction (round __force_analytic_expansion_end_direction))
   (setq _enable_multiple_steer_modes __enable_multiple_steer_modes)
   (setq _xy_grid_resolution (float __xy_grid_resolution))
   (setq _phi_grid_resolution (float __phi_grid_resolution))
   (setq _grid_dijkstra_xy_resolution (float __grid_dijkstra_xy_resolution))
   (setq _traj_forward_penalty (float __traj_forward_penalty))
   (setq _traj_back_penalty (float __traj_back_penalty))
   (setq _traj_gear_switch_penalty (float __traj_gear_switch_penalty))
   (setq _traj_steer_penalty (float __traj_steer_penalty))
   (setq _traj_steer_change_penalty (float __traj_steer_change_penalty))
   (setq _step_size (float __step_size))
   (setq _next_node_num (round __next_node_num))
   (setq _max_iteration (float __max_iteration))
   (setq _holonomic_with_obs_heuristic (float __holonomic_with_obs_heuristic))
   (setq _non_holonomic_without_obs_heuristic (float __non_holonomic_without_obs_heuristic))
   self)
  (:verbose
   (&optional __verbose)
   (if __verbose (setq _verbose __verbose)) _verbose)
  (:planning_core
   (&optional __planning_core)
   (if __planning_core (setq _planning_core __planning_core)) _planning_core)
  (:footprint_model
   (&optional __footprint_model)
   (if __footprint_model (setq _footprint_model __footprint_model)) _footprint_model)
  (:footprint_model_precise
   (&optional __footprint_model_precise)
   (if __footprint_model_precise (setq _footprint_model_precise __footprint_model_precise)) _footprint_model_precise)
  (:lon_inflation
   (&optional __lon_inflation)
   (if __lon_inflation (setq _lon_inflation __lon_inflation)) _lon_inflation)
  (:lat_inflation
   (&optional __lat_inflation)
   (if __lat_inflation (setq _lat_inflation __lat_inflation)) _lat_inflation)
  (:inflation_rearview_mirror
   (&optional __inflation_rearview_mirror)
   (if __inflation_rearview_mirror (setq _inflation_rearview_mirror __inflation_rearview_mirror)) _inflation_rearview_mirror)
  (:shrink_ratio_for_lines
   (&optional __shrink_ratio_for_lines)
   (if __shrink_ratio_for_lines (setq _shrink_ratio_for_lines __shrink_ratio_for_lines)) _shrink_ratio_for_lines)
  (:max_steer_angle
   (&optional __max_steer_angle)
   (if __max_steer_angle (setq _max_steer_angle __max_steer_angle)) _max_steer_angle)
  (:max_steer_angle_rate
   (&optional __max_steer_angle_rate)
   (if __max_steer_angle_rate (setq _max_steer_angle_rate __max_steer_angle_rate)) _max_steer_angle_rate)
  (:max_steer_angle_rear
   (&optional __max_steer_angle_rear)
   (if __max_steer_angle_rear (setq _max_steer_angle_rear __max_steer_angle_rear)) _max_steer_angle_rear)
  (:max_steer_angle_rate_rear
   (&optional __max_steer_angle_rate_rear)
   (if __max_steer_angle_rate_rear (setq _max_steer_angle_rate_rear __max_steer_angle_rate_rear)) _max_steer_angle_rate_rear)
  (:enable_analytic_expansion
   (&optional (__enable_analytic_expansion :null))
   (if (not (eq __enable_analytic_expansion :null)) (setq _enable_analytic_expansion __enable_analytic_expansion)) _enable_analytic_expansion)
  (:analytic_expansion_end_size_threshold
   (&optional __analytic_expansion_end_size_threshold)
   (if __analytic_expansion_end_size_threshold (setq _analytic_expansion_end_size_threshold __analytic_expansion_end_size_threshold)) _analytic_expansion_end_size_threshold)
  (:force_analytic_expansion_end_direction
   (&optional __force_analytic_expansion_end_direction)
   (if __force_analytic_expansion_end_direction (setq _force_analytic_expansion_end_direction __force_analytic_expansion_end_direction)) _force_analytic_expansion_end_direction)
  (:enable_multiple_steer_modes
   (&optional (__enable_multiple_steer_modes :null))
   (if (not (eq __enable_multiple_steer_modes :null)) (setq _enable_multiple_steer_modes __enable_multiple_steer_modes)) _enable_multiple_steer_modes)
  (:xy_grid_resolution
   (&optional __xy_grid_resolution)
   (if __xy_grid_resolution (setq _xy_grid_resolution __xy_grid_resolution)) _xy_grid_resolution)
  (:phi_grid_resolution
   (&optional __phi_grid_resolution)
   (if __phi_grid_resolution (setq _phi_grid_resolution __phi_grid_resolution)) _phi_grid_resolution)
  (:grid_dijkstra_xy_resolution
   (&optional __grid_dijkstra_xy_resolution)
   (if __grid_dijkstra_xy_resolution (setq _grid_dijkstra_xy_resolution __grid_dijkstra_xy_resolution)) _grid_dijkstra_xy_resolution)
  (:traj_forward_penalty
   (&optional __traj_forward_penalty)
   (if __traj_forward_penalty (setq _traj_forward_penalty __traj_forward_penalty)) _traj_forward_penalty)
  (:traj_back_penalty
   (&optional __traj_back_penalty)
   (if __traj_back_penalty (setq _traj_back_penalty __traj_back_penalty)) _traj_back_penalty)
  (:traj_gear_switch_penalty
   (&optional __traj_gear_switch_penalty)
   (if __traj_gear_switch_penalty (setq _traj_gear_switch_penalty __traj_gear_switch_penalty)) _traj_gear_switch_penalty)
  (:traj_steer_penalty
   (&optional __traj_steer_penalty)
   (if __traj_steer_penalty (setq _traj_steer_penalty __traj_steer_penalty)) _traj_steer_penalty)
  (:traj_steer_change_penalty
   (&optional __traj_steer_change_penalty)
   (if __traj_steer_change_penalty (setq _traj_steer_change_penalty __traj_steer_change_penalty)) _traj_steer_change_penalty)
  (:step_size
   (&optional __step_size)
   (if __step_size (setq _step_size __step_size)) _step_size)
  (:next_node_num
   (&optional __next_node_num)
   (if __next_node_num (setq _next_node_num __next_node_num)) _next_node_num)
  (:max_iteration
   (&optional __max_iteration)
   (if __max_iteration (setq _max_iteration __max_iteration)) _max_iteration)
  (:holonomic_with_obs_heuristic
   (&optional __holonomic_with_obs_heuristic)
   (if __holonomic_with_obs_heuristic (setq _holonomic_with_obs_heuristic __holonomic_with_obs_heuristic)) _holonomic_with_obs_heuristic)
  (:non_holonomic_without_obs_heuristic
   (&optional __non_holonomic_without_obs_heuristic)
   (if __non_holonomic_without_obs_heuristic (setq _non_holonomic_without_obs_heuristic __non_holonomic_without_obs_heuristic)) _non_holonomic_without_obs_heuristic)
  (:serialization-length
   ()
   (+
    ;; uint8 _verbose
    1
    ;; uint8 _planning_core
    1
    ;; uint8 _footprint_model
    1
    ;; uint8 _footprint_model_precise
    1
    ;; float32 _lon_inflation
    4
    ;; float32 _lat_inflation
    4
    ;; float32 _inflation_rearview_mirror
    4
    ;; float32 _shrink_ratio_for_lines
    4
    ;; float32 _max_steer_angle
    4
    ;; float32 _max_steer_angle_rate
    4
    ;; float32 _max_steer_angle_rear
    4
    ;; float32 _max_steer_angle_rate_rear
    4
    ;; bool _enable_analytic_expansion
    1
    ;; float32 _analytic_expansion_end_size_threshold
    4
    ;; int8 _force_analytic_expansion_end_direction
    1
    ;; bool _enable_multiple_steer_modes
    1
    ;; float32 _xy_grid_resolution
    4
    ;; float32 _phi_grid_resolution
    4
    ;; float32 _grid_dijkstra_xy_resolution
    4
    ;; float32 _traj_forward_penalty
    4
    ;; float32 _traj_back_penalty
    4
    ;; float32 _traj_gear_switch_penalty
    4
    ;; float32 _traj_steer_penalty
    4
    ;; float32 _traj_steer_change_penalty
    4
    ;; float32 _step_size
    4
    ;; uint8 _next_node_num
    1
    ;; float32 _max_iteration
    4
    ;; float32 _holonomic_with_obs_heuristic
    4
    ;; float32 _non_holonomic_without_obs_heuristic
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _verbose
       (write-byte _verbose s)
     ;; uint8 _planning_core
       (write-byte _planning_core s)
     ;; uint8 _footprint_model
       (write-byte _footprint_model s)
     ;; uint8 _footprint_model_precise
       (write-byte _footprint_model_precise s)
     ;; float32 _lon_inflation
       (sys::poke _lon_inflation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lat_inflation
       (sys::poke _lat_inflation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _inflation_rearview_mirror
       (sys::poke _inflation_rearview_mirror (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _shrink_ratio_for_lines
       (sys::poke _shrink_ratio_for_lines (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_steer_angle
       (sys::poke _max_steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_steer_angle_rate
       (sys::poke _max_steer_angle_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_steer_angle_rear
       (sys::poke _max_steer_angle_rear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_steer_angle_rate_rear
       (sys::poke _max_steer_angle_rate_rear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _enable_analytic_expansion
       (if _enable_analytic_expansion (write-byte -1 s) (write-byte 0 s))
     ;; float32 _analytic_expansion_end_size_threshold
       (sys::poke _analytic_expansion_end_size_threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _force_analytic_expansion_end_direction
       (write-byte _force_analytic_expansion_end_direction s)
     ;; bool _enable_multiple_steer_modes
       (if _enable_multiple_steer_modes (write-byte -1 s) (write-byte 0 s))
     ;; float32 _xy_grid_resolution
       (sys::poke _xy_grid_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi_grid_resolution
       (sys::poke _phi_grid_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _grid_dijkstra_xy_resolution
       (sys::poke _grid_dijkstra_xy_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _traj_forward_penalty
       (sys::poke _traj_forward_penalty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _traj_back_penalty
       (sys::poke _traj_back_penalty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _traj_gear_switch_penalty
       (sys::poke _traj_gear_switch_penalty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _traj_steer_penalty
       (sys::poke _traj_steer_penalty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _traj_steer_change_penalty
       (sys::poke _traj_steer_change_penalty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _step_size
       (sys::poke _step_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _next_node_num
       (write-byte _next_node_num s)
     ;; float32 _max_iteration
       (sys::poke _max_iteration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _holonomic_with_obs_heuristic
       (sys::poke _holonomic_with_obs_heuristic (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _non_holonomic_without_obs_heuristic
       (sys::poke _non_holonomic_without_obs_heuristic (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _verbose
     (setq _verbose (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _planning_core
     (setq _planning_core (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _footprint_model
     (setq _footprint_model (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _footprint_model_precise
     (setq _footprint_model_precise (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _lon_inflation
     (setq _lon_inflation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lat_inflation
     (setq _lat_inflation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _inflation_rearview_mirror
     (setq _inflation_rearview_mirror (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _shrink_ratio_for_lines
     (setq _shrink_ratio_for_lines (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_steer_angle
     (setq _max_steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_steer_angle_rate
     (setq _max_steer_angle_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_steer_angle_rear
     (setq _max_steer_angle_rear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_steer_angle_rate_rear
     (setq _max_steer_angle_rate_rear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _enable_analytic_expansion
     (setq _enable_analytic_expansion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _analytic_expansion_end_size_threshold
     (setq _analytic_expansion_end_size_threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _force_analytic_expansion_end_direction
     (setq _force_analytic_expansion_end_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _force_analytic_expansion_end_direction 127) (setq _force_analytic_expansion_end_direction (- _force_analytic_expansion_end_direction 256)))
   ;; bool _enable_multiple_steer_modes
     (setq _enable_multiple_steer_modes (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _xy_grid_resolution
     (setq _xy_grid_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi_grid_resolution
     (setq _phi_grid_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _grid_dijkstra_xy_resolution
     (setq _grid_dijkstra_xy_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _traj_forward_penalty
     (setq _traj_forward_penalty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _traj_back_penalty
     (setq _traj_back_penalty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _traj_gear_switch_penalty
     (setq _traj_gear_switch_penalty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _traj_steer_penalty
     (setq _traj_steer_penalty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _traj_steer_change_penalty
     (setq _traj_steer_change_penalty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _step_size
     (setq _step_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _next_node_num
     (setq _next_node_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _max_iteration
     (setq _max_iteration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _holonomic_with_obs_heuristic
     (setq _holonomic_with_obs_heuristic (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _non_holonomic_without_obs_heuristic
     (setq _non_holonomic_without_obs_heuristic (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::TaskParams :md5sum-) "78b4cb56a3be2e336865863627a57df7")
(setf (get planning_msgs::TaskParams :datatype-) "planning_msgs/TaskParams")
(setf (get planning_msgs::TaskParams :definition-)
      "uint8 verbose
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

")



(provide :planning_msgs/TaskParams "78b4cb56a3be2e336865863627a57df7")


