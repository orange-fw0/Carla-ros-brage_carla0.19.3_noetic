; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TaskParams.msg.html

(cl:defclass <TaskParams> (roslisp-msg-protocol:ros-message)
  ((verbose
    :reader verbose
    :initarg :verbose
    :type cl:fixnum
    :initform 0)
   (planning_core
    :reader planning_core
    :initarg :planning_core
    :type cl:fixnum
    :initform 0)
   (footprint_model
    :reader footprint_model
    :initarg :footprint_model
    :type cl:fixnum
    :initform 0)
   (footprint_model_precise
    :reader footprint_model_precise
    :initarg :footprint_model_precise
    :type cl:fixnum
    :initform 0)
   (lon_inflation
    :reader lon_inflation
    :initarg :lon_inflation
    :type cl:float
    :initform 0.0)
   (lat_inflation
    :reader lat_inflation
    :initarg :lat_inflation
    :type cl:float
    :initform 0.0)
   (inflation_rearview_mirror
    :reader inflation_rearview_mirror
    :initarg :inflation_rearview_mirror
    :type cl:float
    :initform 0.0)
   (shrink_ratio_for_lines
    :reader shrink_ratio_for_lines
    :initarg :shrink_ratio_for_lines
    :type cl:float
    :initform 0.0)
   (max_steer_angle
    :reader max_steer_angle
    :initarg :max_steer_angle
    :type cl:float
    :initform 0.0)
   (max_steer_angle_rate
    :reader max_steer_angle_rate
    :initarg :max_steer_angle_rate
    :type cl:float
    :initform 0.0)
   (max_steer_angle_rear
    :reader max_steer_angle_rear
    :initarg :max_steer_angle_rear
    :type cl:float
    :initform 0.0)
   (max_steer_angle_rate_rear
    :reader max_steer_angle_rate_rear
    :initarg :max_steer_angle_rate_rear
    :type cl:float
    :initform 0.0)
   (enable_analytic_expansion
    :reader enable_analytic_expansion
    :initarg :enable_analytic_expansion
    :type cl:boolean
    :initform cl:nil)
   (analytic_expansion_end_size_threshold
    :reader analytic_expansion_end_size_threshold
    :initarg :analytic_expansion_end_size_threshold
    :type cl:float
    :initform 0.0)
   (force_analytic_expansion_end_direction
    :reader force_analytic_expansion_end_direction
    :initarg :force_analytic_expansion_end_direction
    :type cl:fixnum
    :initform 0)
   (enable_multiple_steer_modes
    :reader enable_multiple_steer_modes
    :initarg :enable_multiple_steer_modes
    :type cl:boolean
    :initform cl:nil)
   (xy_grid_resolution
    :reader xy_grid_resolution
    :initarg :xy_grid_resolution
    :type cl:float
    :initform 0.0)
   (phi_grid_resolution
    :reader phi_grid_resolution
    :initarg :phi_grid_resolution
    :type cl:float
    :initform 0.0)
   (grid_dijkstra_xy_resolution
    :reader grid_dijkstra_xy_resolution
    :initarg :grid_dijkstra_xy_resolution
    :type cl:float
    :initform 0.0)
   (traj_forward_penalty
    :reader traj_forward_penalty
    :initarg :traj_forward_penalty
    :type cl:float
    :initform 0.0)
   (traj_back_penalty
    :reader traj_back_penalty
    :initarg :traj_back_penalty
    :type cl:float
    :initform 0.0)
   (traj_gear_switch_penalty
    :reader traj_gear_switch_penalty
    :initarg :traj_gear_switch_penalty
    :type cl:float
    :initform 0.0)
   (traj_steer_penalty
    :reader traj_steer_penalty
    :initarg :traj_steer_penalty
    :type cl:float
    :initform 0.0)
   (traj_steer_change_penalty
    :reader traj_steer_change_penalty
    :initarg :traj_steer_change_penalty
    :type cl:float
    :initform 0.0)
   (step_size
    :reader step_size
    :initarg :step_size
    :type cl:float
    :initform 0.0)
   (next_node_num
    :reader next_node_num
    :initarg :next_node_num
    :type cl:fixnum
    :initform 0)
   (max_iteration
    :reader max_iteration
    :initarg :max_iteration
    :type cl:float
    :initform 0.0)
   (holonomic_with_obs_heuristic
    :reader holonomic_with_obs_heuristic
    :initarg :holonomic_with_obs_heuristic
    :type cl:float
    :initform 0.0)
   (non_holonomic_without_obs_heuristic
    :reader non_holonomic_without_obs_heuristic
    :initarg :non_holonomic_without_obs_heuristic
    :type cl:float
    :initform 0.0))
)

(cl:defclass TaskParams (<TaskParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TaskParams> is deprecated: use planning_msgs-msg:TaskParams instead.")))

(cl:ensure-generic-function 'verbose-val :lambda-list '(m))
(cl:defmethod verbose-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:verbose-val is deprecated.  Use planning_msgs-msg:verbose instead.")
  (verbose m))

(cl:ensure-generic-function 'planning_core-val :lambda-list '(m))
(cl:defmethod planning_core-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:planning_core-val is deprecated.  Use planning_msgs-msg:planning_core instead.")
  (planning_core m))

(cl:ensure-generic-function 'footprint_model-val :lambda-list '(m))
(cl:defmethod footprint_model-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:footprint_model-val is deprecated.  Use planning_msgs-msg:footprint_model instead.")
  (footprint_model m))

(cl:ensure-generic-function 'footprint_model_precise-val :lambda-list '(m))
(cl:defmethod footprint_model_precise-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:footprint_model_precise-val is deprecated.  Use planning_msgs-msg:footprint_model_precise instead.")
  (footprint_model_precise m))

(cl:ensure-generic-function 'lon_inflation-val :lambda-list '(m))
(cl:defmethod lon_inflation-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_inflation-val is deprecated.  Use planning_msgs-msg:lon_inflation instead.")
  (lon_inflation m))

(cl:ensure-generic-function 'lat_inflation-val :lambda-list '(m))
(cl:defmethod lat_inflation-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_inflation-val is deprecated.  Use planning_msgs-msg:lat_inflation instead.")
  (lat_inflation m))

(cl:ensure-generic-function 'inflation_rearview_mirror-val :lambda-list '(m))
(cl:defmethod inflation_rearview_mirror-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:inflation_rearview_mirror-val is deprecated.  Use planning_msgs-msg:inflation_rearview_mirror instead.")
  (inflation_rearview_mirror m))

(cl:ensure-generic-function 'shrink_ratio_for_lines-val :lambda-list '(m))
(cl:defmethod shrink_ratio_for_lines-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:shrink_ratio_for_lines-val is deprecated.  Use planning_msgs-msg:shrink_ratio_for_lines instead.")
  (shrink_ratio_for_lines m))

(cl:ensure-generic-function 'max_steer_angle-val :lambda-list '(m))
(cl:defmethod max_steer_angle-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_steer_angle-val is deprecated.  Use planning_msgs-msg:max_steer_angle instead.")
  (max_steer_angle m))

(cl:ensure-generic-function 'max_steer_angle_rate-val :lambda-list '(m))
(cl:defmethod max_steer_angle_rate-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_steer_angle_rate-val is deprecated.  Use planning_msgs-msg:max_steer_angle_rate instead.")
  (max_steer_angle_rate m))

(cl:ensure-generic-function 'max_steer_angle_rear-val :lambda-list '(m))
(cl:defmethod max_steer_angle_rear-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_steer_angle_rear-val is deprecated.  Use planning_msgs-msg:max_steer_angle_rear instead.")
  (max_steer_angle_rear m))

(cl:ensure-generic-function 'max_steer_angle_rate_rear-val :lambda-list '(m))
(cl:defmethod max_steer_angle_rate_rear-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_steer_angle_rate_rear-val is deprecated.  Use planning_msgs-msg:max_steer_angle_rate_rear instead.")
  (max_steer_angle_rate_rear m))

(cl:ensure-generic-function 'enable_analytic_expansion-val :lambda-list '(m))
(cl:defmethod enable_analytic_expansion-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enable_analytic_expansion-val is deprecated.  Use planning_msgs-msg:enable_analytic_expansion instead.")
  (enable_analytic_expansion m))

(cl:ensure-generic-function 'analytic_expansion_end_size_threshold-val :lambda-list '(m))
(cl:defmethod analytic_expansion_end_size_threshold-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:analytic_expansion_end_size_threshold-val is deprecated.  Use planning_msgs-msg:analytic_expansion_end_size_threshold instead.")
  (analytic_expansion_end_size_threshold m))

(cl:ensure-generic-function 'force_analytic_expansion_end_direction-val :lambda-list '(m))
(cl:defmethod force_analytic_expansion_end_direction-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:force_analytic_expansion_end_direction-val is deprecated.  Use planning_msgs-msg:force_analytic_expansion_end_direction instead.")
  (force_analytic_expansion_end_direction m))

(cl:ensure-generic-function 'enable_multiple_steer_modes-val :lambda-list '(m))
(cl:defmethod enable_multiple_steer_modes-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enable_multiple_steer_modes-val is deprecated.  Use planning_msgs-msg:enable_multiple_steer_modes instead.")
  (enable_multiple_steer_modes m))

(cl:ensure-generic-function 'xy_grid_resolution-val :lambda-list '(m))
(cl:defmethod xy_grid_resolution-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:xy_grid_resolution-val is deprecated.  Use planning_msgs-msg:xy_grid_resolution instead.")
  (xy_grid_resolution m))

(cl:ensure-generic-function 'phi_grid_resolution-val :lambda-list '(m))
(cl:defmethod phi_grid_resolution-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:phi_grid_resolution-val is deprecated.  Use planning_msgs-msg:phi_grid_resolution instead.")
  (phi_grid_resolution m))

(cl:ensure-generic-function 'grid_dijkstra_xy_resolution-val :lambda-list '(m))
(cl:defmethod grid_dijkstra_xy_resolution-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:grid_dijkstra_xy_resolution-val is deprecated.  Use planning_msgs-msg:grid_dijkstra_xy_resolution instead.")
  (grid_dijkstra_xy_resolution m))

(cl:ensure-generic-function 'traj_forward_penalty-val :lambda-list '(m))
(cl:defmethod traj_forward_penalty-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traj_forward_penalty-val is deprecated.  Use planning_msgs-msg:traj_forward_penalty instead.")
  (traj_forward_penalty m))

(cl:ensure-generic-function 'traj_back_penalty-val :lambda-list '(m))
(cl:defmethod traj_back_penalty-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traj_back_penalty-val is deprecated.  Use planning_msgs-msg:traj_back_penalty instead.")
  (traj_back_penalty m))

(cl:ensure-generic-function 'traj_gear_switch_penalty-val :lambda-list '(m))
(cl:defmethod traj_gear_switch_penalty-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traj_gear_switch_penalty-val is deprecated.  Use planning_msgs-msg:traj_gear_switch_penalty instead.")
  (traj_gear_switch_penalty m))

(cl:ensure-generic-function 'traj_steer_penalty-val :lambda-list '(m))
(cl:defmethod traj_steer_penalty-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traj_steer_penalty-val is deprecated.  Use planning_msgs-msg:traj_steer_penalty instead.")
  (traj_steer_penalty m))

(cl:ensure-generic-function 'traj_steer_change_penalty-val :lambda-list '(m))
(cl:defmethod traj_steer_change_penalty-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traj_steer_change_penalty-val is deprecated.  Use planning_msgs-msg:traj_steer_change_penalty instead.")
  (traj_steer_change_penalty m))

(cl:ensure-generic-function 'step_size-val :lambda-list '(m))
(cl:defmethod step_size-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:step_size-val is deprecated.  Use planning_msgs-msg:step_size instead.")
  (step_size m))

(cl:ensure-generic-function 'next_node_num-val :lambda-list '(m))
(cl:defmethod next_node_num-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:next_node_num-val is deprecated.  Use planning_msgs-msg:next_node_num instead.")
  (next_node_num m))

(cl:ensure-generic-function 'max_iteration-val :lambda-list '(m))
(cl:defmethod max_iteration-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max_iteration-val is deprecated.  Use planning_msgs-msg:max_iteration instead.")
  (max_iteration m))

(cl:ensure-generic-function 'holonomic_with_obs_heuristic-val :lambda-list '(m))
(cl:defmethod holonomic_with_obs_heuristic-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:holonomic_with_obs_heuristic-val is deprecated.  Use planning_msgs-msg:holonomic_with_obs_heuristic instead.")
  (holonomic_with_obs_heuristic m))

(cl:ensure-generic-function 'non_holonomic_without_obs_heuristic-val :lambda-list '(m))
(cl:defmethod non_holonomic_without_obs_heuristic-val ((m <TaskParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:non_holonomic_without_obs_heuristic-val is deprecated.  Use planning_msgs-msg:non_holonomic_without_obs_heuristic instead.")
  (non_holonomic_without_obs_heuristic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskParams>) ostream)
  "Serializes a message object of type '<TaskParams>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'verbose)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planning_core)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'footprint_model)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'footprint_model_precise)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon_inflation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_inflation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inflation_rearview_mirror))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shrink_ratio_for_lines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_steer_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_steer_angle_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_steer_angle_rear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_steer_angle_rate_rear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_analytic_expansion) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'analytic_expansion_end_size_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'force_analytic_expansion_end_direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_multiple_steer_modes) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xy_grid_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi_grid_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grid_dijkstra_xy_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'traj_forward_penalty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'traj_back_penalty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'traj_gear_switch_penalty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'traj_steer_penalty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'traj_steer_change_penalty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'step_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_node_num)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_iteration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'holonomic_with_obs_heuristic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'non_holonomic_without_obs_heuristic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskParams>) istream)
  "Deserializes a message object of type '<TaskParams>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'verbose)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'planning_core)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'footprint_model)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'footprint_model_precise)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_inflation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_inflation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inflation_rearview_mirror) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shrink_ratio_for_lines) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_steer_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_steer_angle_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_steer_angle_rear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_steer_angle_rate_rear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'enable_analytic_expansion) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'analytic_expansion_end_size_threshold) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force_analytic_expansion_end_direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'enable_multiple_steer_modes) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xy_grid_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi_grid_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_dijkstra_xy_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traj_forward_penalty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traj_back_penalty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traj_gear_switch_penalty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traj_steer_penalty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traj_steer_change_penalty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_size) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_node_num)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_iteration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'holonomic_with_obs_heuristic) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'non_holonomic_without_obs_heuristic) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskParams>)))
  "Returns string type for a message object of type '<TaskParams>"
  "planning_msgs/TaskParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskParams)))
  "Returns string type for a message object of type 'TaskParams"
  "planning_msgs/TaskParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskParams>)))
  "Returns md5sum for a message object of type '<TaskParams>"
  "78b4cb56a3be2e336865863627a57df7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskParams)))
  "Returns md5sum for a message object of type 'TaskParams"
  "78b4cb56a3be2e336865863627a57df7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskParams>)))
  "Returns full string definition for message of type '<TaskParams>"
  (cl:format cl:nil "uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskParams)))
  "Returns full string definition for message of type 'TaskParams"
  (cl:format cl:nil "uint8 verbose~%uint8 planning_core~%uint8 footprint_model~%uint8 footprint_model_precise~%float32 lon_inflation~%float32 lat_inflation~%float32 inflation_rearview_mirror~%float32 shrink_ratio_for_lines~%float32 max_steer_angle~%float32 max_steer_angle_rate~%float32 max_steer_angle_rear~%float32 max_steer_angle_rate_rear~%bool enable_analytic_expansion~%float32 analytic_expansion_end_size_threshold~%int8 force_analytic_expansion_end_direction~%bool enable_multiple_steer_modes~%float32 xy_grid_resolution~%float32 phi_grid_resolution~%float32 grid_dijkstra_xy_resolution~%float32 traj_forward_penalty~%float32 traj_back_penalty~%float32 traj_gear_switch_penalty~%float32 traj_steer_penalty~%float32 traj_steer_change_penalty~%float32 step_size~%uint8 next_node_num~%float32 max_iteration~%float32 holonomic_with_obs_heuristic~%float32 non_holonomic_without_obs_heuristic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskParams>))
  (cl:+ 0
     1
     1
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     1
     4
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskParams>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskParams
    (cl:cons ':verbose (verbose msg))
    (cl:cons ':planning_core (planning_core msg))
    (cl:cons ':footprint_model (footprint_model msg))
    (cl:cons ':footprint_model_precise (footprint_model_precise msg))
    (cl:cons ':lon_inflation (lon_inflation msg))
    (cl:cons ':lat_inflation (lat_inflation msg))
    (cl:cons ':inflation_rearview_mirror (inflation_rearview_mirror msg))
    (cl:cons ':shrink_ratio_for_lines (shrink_ratio_for_lines msg))
    (cl:cons ':max_steer_angle (max_steer_angle msg))
    (cl:cons ':max_steer_angle_rate (max_steer_angle_rate msg))
    (cl:cons ':max_steer_angle_rear (max_steer_angle_rear msg))
    (cl:cons ':max_steer_angle_rate_rear (max_steer_angle_rate_rear msg))
    (cl:cons ':enable_analytic_expansion (enable_analytic_expansion msg))
    (cl:cons ':analytic_expansion_end_size_threshold (analytic_expansion_end_size_threshold msg))
    (cl:cons ':force_analytic_expansion_end_direction (force_analytic_expansion_end_direction msg))
    (cl:cons ':enable_multiple_steer_modes (enable_multiple_steer_modes msg))
    (cl:cons ':xy_grid_resolution (xy_grid_resolution msg))
    (cl:cons ':phi_grid_resolution (phi_grid_resolution msg))
    (cl:cons ':grid_dijkstra_xy_resolution (grid_dijkstra_xy_resolution msg))
    (cl:cons ':traj_forward_penalty (traj_forward_penalty msg))
    (cl:cons ':traj_back_penalty (traj_back_penalty msg))
    (cl:cons ':traj_gear_switch_penalty (traj_gear_switch_penalty msg))
    (cl:cons ':traj_steer_penalty (traj_steer_penalty msg))
    (cl:cons ':traj_steer_change_penalty (traj_steer_change_penalty msg))
    (cl:cons ':step_size (step_size msg))
    (cl:cons ':next_node_num (next_node_num msg))
    (cl:cons ':max_iteration (max_iteration msg))
    (cl:cons ':holonomic_with_obs_heuristic (holonomic_with_obs_heuristic msg))
    (cl:cons ':non_holonomic_without_obs_heuristic (non_holonomic_without_obs_heuristic msg))
))
