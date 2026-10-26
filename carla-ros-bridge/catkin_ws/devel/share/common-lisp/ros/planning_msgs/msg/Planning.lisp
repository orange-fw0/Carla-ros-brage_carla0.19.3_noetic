; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Planning.msg.html

(cl:defclass <Planning> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
   (emergency
    :reader emergency
    :initarg :emergency
    :type planning_msgs-msg:Emergency
    :initform (cl:make-instance 'planning_msgs-msg:Emergency))
   (turn_signal_command
    :reader turn_signal_command
    :initarg :turn_signal_command
    :type planning_msgs-msg:TurnSignalCommand
    :initform (cl:make-instance 'planning_msgs-msg:TurnSignalCommand))
   (gear_command
    :reader gear_command
    :initarg :gear_command
    :type planning_msgs-msg:GearCommand
    :initform (cl:make-instance 'planning_msgs-msg:GearCommand))
   (vehicle_lock_command
    :reader vehicle_lock_command
    :initarg :vehicle_lock_command
    :type planning_msgs-msg:VehicleLockCommand
    :initform (cl:make-instance 'planning_msgs-msg:VehicleLockCommand))
   (plan_status
    :reader plan_status
    :initarg :plan_status
    :type planning_msgs-msg:PlanStatus
    :initform (cl:make-instance 'planning_msgs-msg:PlanStatus))
   (comfort
    :reader comfort
    :initarg :comfort
    :type planning_msgs-msg:Comfort
    :initform (cl:make-instance 'planning_msgs-msg:Comfort))
   (decision
    :reader decision
    :initarg :decision
    :type planning_msgs-msg:Decision
    :initform (cl:make-instance 'planning_msgs-msg:Decision))
   (extra
    :reader extra
    :initarg :extra
    :type planning_msgs-msg:PlanExtra
    :initform (cl:make-instance 'planning_msgs-msg:PlanExtra))
   (apa_extra
    :reader apa_extra
    :initarg :apa_extra
    :type planning_msgs-msg:APAExtra
    :initform (cl:make-instance 'planning_msgs-msg:APAExtra))
   (epb_command
    :reader epb_command
    :initarg :epb_command
    :type planning_msgs-msg:EpbCommand
    :initform (cl:make-instance 'planning_msgs-msg:EpbCommand)))
)

(cl:defclass Planning (<Planning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Planning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Planning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Planning> is deprecated: use planning_msgs-msg:Planning instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:header-val is deprecated.  Use planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:meta-val is deprecated.  Use planning_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:trajectory-val is deprecated.  Use planning_msgs-msg:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:emergency-val is deprecated.  Use planning_msgs-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'turn_signal_command-val :lambda-list '(m))
(cl:defmethod turn_signal_command-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:turn_signal_command-val is deprecated.  Use planning_msgs-msg:turn_signal_command instead.")
  (turn_signal_command m))

(cl:ensure-generic-function 'gear_command-val :lambda-list '(m))
(cl:defmethod gear_command-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:gear_command-val is deprecated.  Use planning_msgs-msg:gear_command instead.")
  (gear_command m))

(cl:ensure-generic-function 'vehicle_lock_command-val :lambda-list '(m))
(cl:defmethod vehicle_lock_command-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:vehicle_lock_command-val is deprecated.  Use planning_msgs-msg:vehicle_lock_command instead.")
  (vehicle_lock_command m))

(cl:ensure-generic-function 'plan_status-val :lambda-list '(m))
(cl:defmethod plan_status-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:plan_status-val is deprecated.  Use planning_msgs-msg:plan_status instead.")
  (plan_status m))

(cl:ensure-generic-function 'comfort-val :lambda-list '(m))
(cl:defmethod comfort-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:comfort-val is deprecated.  Use planning_msgs-msg:comfort instead.")
  (comfort m))

(cl:ensure-generic-function 'decision-val :lambda-list '(m))
(cl:defmethod decision-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:decision-val is deprecated.  Use planning_msgs-msg:decision instead.")
  (decision m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:extra-val is deprecated.  Use planning_msgs-msg:extra instead.")
  (extra m))

(cl:ensure-generic-function 'apa_extra-val :lambda-list '(m))
(cl:defmethod apa_extra-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:apa_extra-val is deprecated.  Use planning_msgs-msg:apa_extra instead.")
  (apa_extra m))

(cl:ensure-generic-function 'epb_command-val :lambda-list '(m))
(cl:defmethod epb_command-val ((m <Planning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:epb_command-val is deprecated.  Use planning_msgs-msg:epb_command instead.")
  (epb_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Planning>) ostream)
  "Serializes a message object of type '<Planning>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'emergency) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_lock_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'comfort) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'decision) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extra) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'apa_extra) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'epb_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Planning>) istream)
  "Deserializes a message object of type '<Planning>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'emergency) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_lock_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'comfort) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'decision) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extra) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'apa_extra) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'epb_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Planning>)))
  "Returns string type for a message object of type '<Planning>"
  "planning_msgs/Planning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Planning)))
  "Returns string type for a message object of type 'Planning"
  "planning_msgs/Planning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Planning>)))
  "Returns md5sum for a message object of type '<Planning>"
  "0bc8873d46d277fc8f988022ddc0cc8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Planning)))
  "Returns md5sum for a message object of type 'Planning"
  "0bc8873d46d277fc8f988022ddc0cc8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Planning>)))
  "Returns full string definition for message of type '<Planning>"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/PlanMeta meta~%planning_msgs/Trajectory trajectory~%planning_msgs/Emergency emergency~%planning_msgs/TurnSignalCommand turn_signal_command~%planning_msgs/GearCommand gear_command~%planning_msgs/VehicleLockCommand vehicle_lock_command~%planning_msgs/PlanStatus plan_status~%planning_msgs/Comfort comfort~%planning_msgs/Decision decision~%planning_msgs/PlanExtra extra~%planning_msgs/APAExtra apa_extra~%planning_msgs/EpbCommand epb_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/PlanMeta~%uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%================================================================================~%MSG: planning_msgs/Trajectory~%uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/Emergency~%uint8 JERK_FACTOR = 1~%uint8 STATIONARY_OBSTACLE_CAR_INFO = 2~%uint8 available~%float64 jerk_factor~%planning_msgs/StationaryObstacleCarInfo stationary_obstacle_car_info~%~%================================================================================~%MSG: planning_msgs/StationaryObstacleCarInfo~%bool close_to_obstacle~%float64 steering_wheel_rad_limit~%~%================================================================================~%MSG: planning_msgs/TurnSignalCommand~%uint8 TURN_SIGNAL_DATA = 1~%uint8 TURN_SIGNAL_SOURCE = 2~%uint8 available~%planning_msgs/TurnSignal turn_signal_data~%planning_msgs/TurnSignalSource turn_signal_source~%~%================================================================================~%MSG: planning_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/TurnSignalSource~%uint8 NONE = 0~%uint8 MAP = 1~%uint8 LC = 2~%uint8 LB = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/GearCommand~%uint8 GEAR_DATA = 1~%uint8 available~%planning_msgs/Gear gear_data~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: planning_msgs/VehicleLockCommand~%uint8 VEHICLE_LOCK = 1~%uint8 available~%planning_msgs/VehicleLock vehicle_lock~%~%================================================================================~%MSG: planning_msgs/VehicleLock~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/PlanStatus~%uint8 ALGORITHM_STATUS = 1~%uint8 WARNING_STATUS = 2~%uint8 SOLVER_STATUS = 4~%uint8 STEER_MODE = 8~%uint8 available~%planning_msgs/PlanAlgorithmStatus algorithm_status~%planning_msgs/WarningStatus warning_status~%planning_msgs/SolverStatus solver_status~%planning_msgs/SteerModeEnum steer_mode~%bool hdmap_valid~%~%================================================================================~%MSG: planning_msgs/PlanAlgorithmStatus~%uint64 NORMAL_ROAD = 1~%uint64 INTERSECT = 2~%uint64 PARKING_SVP = 4~%uint64 PARKING_LVP = 8~%uint64 PARKING_APA = 16~%uint64 REMOTE_CONTROL = 32~%uint64 LANE_CHANGE_LEFT = 1~%uint64 LANE_CHANGE_RIGHT = 2~%uint64 LANE_BORROW_LEFT = 4~%uint64 LANE_BORROW_RIGHT = 8~%uint64 INTERSECT_GO_STRAIGHT = 16~%uint64 INTERSECT_TURN_LEFT = 32~%uint64 INTERSECT_TURN_RIGHT = 64~%uint64 INTERSECT_U_TURN = 128~%uint64 LANE_BORROW_IN_NON_MOTORIZED_LANE = 256~%uint64 LANE_KEEP = 512~%uint64 PULL_OVER = 1024~%uint64 OPEN_SPACE_PASS = 2048~%uint64 PARKING = 4096~%uint64 SEARCH = 1~%uint64 CRUISE = 2~%uint64 APA = 4~%uint64 APOA = 8~%uint64 WAIT = 16~%uint64 LANE_CHANGE_WAITING = 1~%uint64 LANE_CHANGEING = 2~%uint64 LANE_CHANGE_BACK = 4~%uint64 LANE_BORROWING = 8~%uint64 LANE_BORROW_BACK = 16~%uint64 LANE_BORROW_RETURN = 32~%uint64 LANE_BORROW_SUSPEND = 64~%uint64 OPEN_SPACE_STANDBY = 128~%uint64 OPEN_SPACE_PLANNING = 256~%uint64 OPEN_SPACE_RUNNING = 512~%uint64 OPEN_SPACE_FALLBACK = 1024~%uint64 LANE_KEEPING = 2048~%uint64 SIDE_PASS = 4096~%uint64 RUNNING = 1~%uint64 SUCCEEDED = 2~%uint64 FAILED = 4~%uint64 PAUSED = 8~%uint64 NONE = 1~%uint64 NO_FRONT_VIEW = 2~%uint64 NO_SIDE_VIEW = 4~%uint64 SIDE_VIEW_BACK = 8~%uint64 FRONT_VIEW_BACK = 16~%uint64 BACK_CNT_BELOW_THRESHOLD = 32~%uint64 EXCEED_MOVE_THRESHOLD = 64~%uint64 NOT_OPTIMAL = 128~%uint64 INVALID_GAP_SELECTION = 256~%uint64 INVALID_REQUEST = 512~%uint64 CANCELED = 1024~%uint64 FRONT_VIEW_FORBID = 2048~%uint64 SIDE_VIEW_FORBID = 4096~%uint64 EXCEED_GAP_REMOTE_CAR = 1024~%uint64 NOT_EXCEED_GAP_PROXIMAL_CAR = 2048~%uint64 NO_VALID_GAP = 4096~%uint64 TARGET_LANE_INVALID = 8192~%uint64 MAP_REQUEST = 2~%uint64 ALC_REQUEST = 4~%uint64 ALC_BY_MERGE_REQUEST = 8~%uint64 ALC_BY_YPOINT_REQUEST = 16~%uint64 INT_REQUEST = 32~%uint64 LB_REQUEST = 64~%uint64 scene~%uint64 action~%uint64 action_status~%uint64 function~%uint64 function_status~%uint64 Reason~%uint64 source~%~%================================================================================~%MSG: planning_msgs/WarningStatus~%uint64 NARROW_ROAD = 1~%uint64 OVERTAKE_CUTIN = 2~%uint64 OVERTAKE_WISDOM_DODGE = 4~%uint64 LANE_CHANGE_REMIND_LANE_END = 8~%uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16~%uint64 LANE_CHANGE_REMIND_ACCIDENT = 32~%uint64 DECEL_WARNING = 64~%uint64 PEDESTRIAN_WARNING = 128~%uint64 LANE_CHANGE_START = 256~%uint64 LANE_CHANGE_STOP = 512~%uint64 FROINT_COLLISION = 1024~%uint64 REAR_COLLISION = 2048~%uint64 LANE_DEPARTURE = 4096~%uint64 PARKING_LOT_UNAVALIABLE = 8192~%uint64 AVOID_IN_LANE = 16384~%uint64 warning_status~%~%================================================================================~%MSG: planning_msgs/SolverStatus~%uint8[] lat_motion_status~%uint8[] lat_solver_status~%uint8[] lon_motion_status~%uint8[] lon_solver_status~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Comfort~%uint8 MANEUVER_GEAR = 1~%uint8 available~%planning_msgs/ManeuverGear maneuver_gear~%~%================================================================================~%MSG: planning_msgs/ManeuverGear~%uint8 SLOW = 0~%uint8 NORMAL = 1~%uint8 FAST = 2~%uint8 ACCIDENT = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Decision~%uint8 LON_DECISION = 1~%uint8 LAT_DECISION = 2~%uint8 TRAFFIC_LIGHT_DECISION = 4~%uint8 available~%planning_msgs/LongitudinalDecision lon_decision~%planning_msgs/LateralDecision lat_decision~%planning_msgs/TrafficLightDecision traffic_light_decision~%planning_msgs/ReplanInfo replan_info~%~%================================================================================~%MSG: planning_msgs/LongitudinalDecision~%int32[] follow_obstacles~%int32[] overtake_obstacles~%int32[] lon_nudge_obstacles~%int32[] lead_obstacles~%int32[] tlead_obstacles~%int32[] lc_gap_info~%int32 id_yield_closest~%int32 id_overtake_closest~%int32 tag_yield~%int32 N_hard~%float32 dt_yield~%float32 dt_set~%float32 ds_set~%float32 ds_yield~%float32 ds_overtake~%float32 v_set~%float32 v_yield_closest~%float32 v_overtake_closest~%float32 v_lim~%float32 v_lim_map~%float32 a_set~%float32 dis_close~%float32[] ds_lon~%float32[] ttc_lon~%float32[] dt_lon~%float32[] s_max~%float32[] d_safe~%float32[] ds_flag~%float32[] v_ref~%float32[] weights~%bool enable_prebrake~%bool enable_preacc~%bool need_aeb~%bool pnc_start~%bool pnc_stop~%bool blocked~%~%================================================================================~%MSG: planning_msgs/LateralDecision~%int32[] nudge_obstacles~%int32[] lat_motion_decider~%float32[] desire_offset~%planning_msgs/AvdMsg[] avd_info~%bool accident_ahead~%bool disable_left~%bool disable_right~%bool enable_left~%bool enable_right~%bool lane_borrow~%int32 lane_borrow_range~%float32 lat_offset~%int32 fix_refline_index~%int32 origin_refline_index~%int32 target_refline_index~%bool sb_Blane~%bool sb_lane~%float32[] avd_car_past_fisrt~%float32[] avd_car_past_second~%float32[] avd_sp_car_past_first~%float32[] avd_sp_car_past_second~%int32[] alc_car_id~%int32[] lb_car_id~%int32 lc_back_id~%int32 lc_invalid_id~%float32 dl_lat~%float32 ttc_lat~%float32 dt_lat~%bool fvfdead~%bool svfdead~%bool premoving~%float32 premove_dist~%planning_msgs/Pose2d[] init_val~%planning_msgs/Pose2d[] via_points~%~%================================================================================~%MSG: planning_msgs/AvdMsg~%int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Pose2d~%planning_msgs/Point2d position~%float64 theta~%~%================================================================================~%MSG: planning_msgs/TrafficLightDecision~%int32 traffic_light_state~%int32 stop_reason~%bool stop_flag~%bool is_passed_stop_line~%bool faster_pass~%~%================================================================================~%MSG: planning_msgs/ReplanInfo~%bool lat_replan~%bool lon_replan~%~%================================================================================~%MSG: planning_msgs/PlanExtra~%uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%================================================================================~%MSG: planning_msgs/APAExtra~%uint8 PARKIN_INFO = 1~%uint8 PARKOUT_INFO = 2~%uint8 RPA_STRAIGHT_INFO = 4~%uint8 SLOT_INFO = 8~%uint8 TRAJ_INFO = 16~%uint8 CONTROL_CMD = 32~%uint8 DEBUG_INFO = 64~%uint64 available~%planning_msgs/ParkInInfo parkin_info~%planning_msgs/ParkOutInfo parkout_info~%planning_msgs/RpaStraightInfo rpa_straight_info~%planning_msgs/ParkingSlotInfo slot_info~%planning_msgs/APATrajectoryInfo traj_info~%planning_msgs/APAControlCommand control_cmd~%planning_msgs/APADebugInfo debug_info~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkInInfo~%uint32 parkin_direction~%planning_msgs/WlcStatus wlc_status~%string reserved~%~%================================================================================~%MSG: planning_msgs/WlcStatus~%uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%================================================================================~%MSG: planning_msgs/ParkOutInfo~%uint32 available_direction~%uint32 recommend_direction~%planning_msgs/ParkOutDisableReason disable_reason~%bool reached_take_over_point~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkOutDisableReason~%uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%================================================================================~%MSG: planning_msgs/RpaStraightInfo~%float32 forward_distance~%float32 backward_distance~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkingSlotInfo~%geometry_msgs/Point[] optimized_corners~%planning_msgs/ParkingSlotType slot_type~%bool has_wheel_stopper~%float32 ego_slot_iou~%float32 front_wheel_to_stopper~%float32 front_wheel_to_opening~%float32 front_wheel_to_bottom~%float32 rear_wheel_to_stopper~%float32 rear_wheel_to_opening~%float32 rear_wheel_to_bottom~%string reserved~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/ParkingSlotType~%uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APATrajectoryInfo~%planning_msgs/APATrajectoryExtendType extend_type~%bool at_last_segment~%float32 remain_safe_distance~%float32 first_remain_distance~%float32 second_remain_distance~%float32 second_target_v~%planning_msgs/Gear first_gear~%planning_msgs/Gear second_gear~%uint32 second_start_index~%string reserved~%~%================================================================================~%MSG: planning_msgs/APATrajectoryExtendType~%uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APAControlCommand~%planning_msgs/APABrakeMode brake_mode~%planning_msgs/APASteeringMode steering_mode~%uint8 special_scenario_type~%bool use_second_traj_sv~%string reserved~%~%================================================================================~%MSG: planning_msgs/APABrakeMode~%uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APASteeringMode~%uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APADebugInfo~%planning_msgs/MultiCircleFootprintModel mc_footprint_model~%string reserved~%~%================================================================================~%MSG: planning_msgs/MultiCircleFootprintModel~%planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%================================================================================~%MSG: planning_msgs/EpbCommand~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Planning)))
  "Returns full string definition for message of type 'Planning"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/PlanMeta meta~%planning_msgs/Trajectory trajectory~%planning_msgs/Emergency emergency~%planning_msgs/TurnSignalCommand turn_signal_command~%planning_msgs/GearCommand gear_command~%planning_msgs/VehicleLockCommand vehicle_lock_command~%planning_msgs/PlanStatus plan_status~%planning_msgs/Comfort comfort~%planning_msgs/Decision decision~%planning_msgs/PlanExtra extra~%planning_msgs/APAExtra apa_extra~%planning_msgs/EpbCommand epb_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/PlanMeta~%uint64 timestamp_us~%uint64 plan_timestamp_us~%string plan_strategy_name~%~%================================================================================~%MSG: planning_msgs/Trajectory~%uint8 POLYNOMIAL_CURVE = 1~%uint8 PATH = 2~%uint8 VELOCITY = 4~%uint8 ACCELERATION = 8~%uint8 FRENET_STATE = 16~%uint8 available~%planning_msgs/Curve polynomial_curve~%planning_msgs/PathPoint[] path~%planning_msgs/Velocity velocity~%planning_msgs/Acceleration acceleration~%planning_msgs/FrenetState[] frenet_state~%~%================================================================================~%MSG: planning_msgs/Curve~%float64[] polynomial~%float64 start_x~%float64 end_x~%~%================================================================================~%MSG: planning_msgs/PathPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%float64 curvature~%float64 path_follow_strength~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Velocity~%uint8 TARGET_VALUE = 1~%uint8 VEL_POINTS = 2~%uint8 CRUISE_VELOCITY = 4~%uint8 available~%float64 target_value~%planning_msgs/VelocityPoint[] vel_points~%float64 cruise_velocity~%~%================================================================================~%MSG: planning_msgs/VelocityPoint~%float64 target_velocity~%float64 relative_time~%float64 distance~%~%================================================================================~%MSG: planning_msgs/Acceleration~%uint8 RANGE_LIMIT = 1~%uint8 ACC_POINTS = 2~%uint8 available~%planning_msgs/AccelerationRange range_limit~%planning_msgs/AccelerationPoint[] acc_points~%~%================================================================================~%MSG: planning_msgs/AccelerationRange~%float64 max~%float64 min~%~%================================================================================~%MSG: planning_msgs/AccelerationPoint~%float64 acc~%float64 jerk~%~%================================================================================~%MSG: planning_msgs/FrenetState~%planning_msgs/Point2d position_frenet~%float64 dl~%float64 ddl~%~%================================================================================~%MSG: planning_msgs/Emergency~%uint8 JERK_FACTOR = 1~%uint8 STATIONARY_OBSTACLE_CAR_INFO = 2~%uint8 available~%float64 jerk_factor~%planning_msgs/StationaryObstacleCarInfo stationary_obstacle_car_info~%~%================================================================================~%MSG: planning_msgs/StationaryObstacleCarInfo~%bool close_to_obstacle~%float64 steering_wheel_rad_limit~%~%================================================================================~%MSG: planning_msgs/TurnSignalCommand~%uint8 TURN_SIGNAL_DATA = 1~%uint8 TURN_SIGNAL_SOURCE = 2~%uint8 available~%planning_msgs/TurnSignal turn_signal_data~%planning_msgs/TurnSignalSource turn_signal_source~%~%================================================================================~%MSG: planning_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/TurnSignalSource~%uint8 NONE = 0~%uint8 MAP = 1~%uint8 LC = 2~%uint8 LB = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/GearCommand~%uint8 GEAR_DATA = 1~%uint8 available~%planning_msgs/Gear gear_data~%~%================================================================================~%MSG: planning_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: planning_msgs/VehicleLockCommand~%uint8 VEHICLE_LOCK = 1~%uint8 available~%planning_msgs/VehicleLock vehicle_lock~%~%================================================================================~%MSG: planning_msgs/VehicleLock~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/PlanStatus~%uint8 ALGORITHM_STATUS = 1~%uint8 WARNING_STATUS = 2~%uint8 SOLVER_STATUS = 4~%uint8 STEER_MODE = 8~%uint8 available~%planning_msgs/PlanAlgorithmStatus algorithm_status~%planning_msgs/WarningStatus warning_status~%planning_msgs/SolverStatus solver_status~%planning_msgs/SteerModeEnum steer_mode~%bool hdmap_valid~%~%================================================================================~%MSG: planning_msgs/PlanAlgorithmStatus~%uint64 NORMAL_ROAD = 1~%uint64 INTERSECT = 2~%uint64 PARKING_SVP = 4~%uint64 PARKING_LVP = 8~%uint64 PARKING_APA = 16~%uint64 REMOTE_CONTROL = 32~%uint64 LANE_CHANGE_LEFT = 1~%uint64 LANE_CHANGE_RIGHT = 2~%uint64 LANE_BORROW_LEFT = 4~%uint64 LANE_BORROW_RIGHT = 8~%uint64 INTERSECT_GO_STRAIGHT = 16~%uint64 INTERSECT_TURN_LEFT = 32~%uint64 INTERSECT_TURN_RIGHT = 64~%uint64 INTERSECT_U_TURN = 128~%uint64 LANE_BORROW_IN_NON_MOTORIZED_LANE = 256~%uint64 LANE_KEEP = 512~%uint64 PULL_OVER = 1024~%uint64 OPEN_SPACE_PASS = 2048~%uint64 PARKING = 4096~%uint64 SEARCH = 1~%uint64 CRUISE = 2~%uint64 APA = 4~%uint64 APOA = 8~%uint64 WAIT = 16~%uint64 LANE_CHANGE_WAITING = 1~%uint64 LANE_CHANGEING = 2~%uint64 LANE_CHANGE_BACK = 4~%uint64 LANE_BORROWING = 8~%uint64 LANE_BORROW_BACK = 16~%uint64 LANE_BORROW_RETURN = 32~%uint64 LANE_BORROW_SUSPEND = 64~%uint64 OPEN_SPACE_STANDBY = 128~%uint64 OPEN_SPACE_PLANNING = 256~%uint64 OPEN_SPACE_RUNNING = 512~%uint64 OPEN_SPACE_FALLBACK = 1024~%uint64 LANE_KEEPING = 2048~%uint64 SIDE_PASS = 4096~%uint64 RUNNING = 1~%uint64 SUCCEEDED = 2~%uint64 FAILED = 4~%uint64 PAUSED = 8~%uint64 NONE = 1~%uint64 NO_FRONT_VIEW = 2~%uint64 NO_SIDE_VIEW = 4~%uint64 SIDE_VIEW_BACK = 8~%uint64 FRONT_VIEW_BACK = 16~%uint64 BACK_CNT_BELOW_THRESHOLD = 32~%uint64 EXCEED_MOVE_THRESHOLD = 64~%uint64 NOT_OPTIMAL = 128~%uint64 INVALID_GAP_SELECTION = 256~%uint64 INVALID_REQUEST = 512~%uint64 CANCELED = 1024~%uint64 FRONT_VIEW_FORBID = 2048~%uint64 SIDE_VIEW_FORBID = 4096~%uint64 EXCEED_GAP_REMOTE_CAR = 1024~%uint64 NOT_EXCEED_GAP_PROXIMAL_CAR = 2048~%uint64 NO_VALID_GAP = 4096~%uint64 TARGET_LANE_INVALID = 8192~%uint64 MAP_REQUEST = 2~%uint64 ALC_REQUEST = 4~%uint64 ALC_BY_MERGE_REQUEST = 8~%uint64 ALC_BY_YPOINT_REQUEST = 16~%uint64 INT_REQUEST = 32~%uint64 LB_REQUEST = 64~%uint64 scene~%uint64 action~%uint64 action_status~%uint64 function~%uint64 function_status~%uint64 Reason~%uint64 source~%~%================================================================================~%MSG: planning_msgs/WarningStatus~%uint64 NARROW_ROAD = 1~%uint64 OVERTAKE_CUTIN = 2~%uint64 OVERTAKE_WISDOM_DODGE = 4~%uint64 LANE_CHANGE_REMIND_LANE_END = 8~%uint64 LANE_CHANGE_REMIND_CONSTRUCTION = 16~%uint64 LANE_CHANGE_REMIND_ACCIDENT = 32~%uint64 DECEL_WARNING = 64~%uint64 PEDESTRIAN_WARNING = 128~%uint64 LANE_CHANGE_START = 256~%uint64 LANE_CHANGE_STOP = 512~%uint64 FROINT_COLLISION = 1024~%uint64 REAR_COLLISION = 2048~%uint64 LANE_DEPARTURE = 4096~%uint64 PARKING_LOT_UNAVALIABLE = 8192~%uint64 AVOID_IN_LANE = 16384~%uint64 warning_status~%~%================================================================================~%MSG: planning_msgs/SolverStatus~%uint8[] lat_motion_status~%uint8[] lat_solver_status~%uint8[] lon_motion_status~%uint8[] lon_solver_status~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Comfort~%uint8 MANEUVER_GEAR = 1~%uint8 available~%planning_msgs/ManeuverGear maneuver_gear~%~%================================================================================~%MSG: planning_msgs/ManeuverGear~%uint8 SLOW = 0~%uint8 NORMAL = 1~%uint8 FAST = 2~%uint8 ACCIDENT = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Decision~%uint8 LON_DECISION = 1~%uint8 LAT_DECISION = 2~%uint8 TRAFFIC_LIGHT_DECISION = 4~%uint8 available~%planning_msgs/LongitudinalDecision lon_decision~%planning_msgs/LateralDecision lat_decision~%planning_msgs/TrafficLightDecision traffic_light_decision~%planning_msgs/ReplanInfo replan_info~%~%================================================================================~%MSG: planning_msgs/LongitudinalDecision~%int32[] follow_obstacles~%int32[] overtake_obstacles~%int32[] lon_nudge_obstacles~%int32[] lead_obstacles~%int32[] tlead_obstacles~%int32[] lc_gap_info~%int32 id_yield_closest~%int32 id_overtake_closest~%int32 tag_yield~%int32 N_hard~%float32 dt_yield~%float32 dt_set~%float32 ds_set~%float32 ds_yield~%float32 ds_overtake~%float32 v_set~%float32 v_yield_closest~%float32 v_overtake_closest~%float32 v_lim~%float32 v_lim_map~%float32 a_set~%float32 dis_close~%float32[] ds_lon~%float32[] ttc_lon~%float32[] dt_lon~%float32[] s_max~%float32[] d_safe~%float32[] ds_flag~%float32[] v_ref~%float32[] weights~%bool enable_prebrake~%bool enable_preacc~%bool need_aeb~%bool pnc_start~%bool pnc_stop~%bool blocked~%~%================================================================================~%MSG: planning_msgs/LateralDecision~%int32[] nudge_obstacles~%int32[] lat_motion_decider~%float32[] desire_offset~%planning_msgs/AvdMsg[] avd_info~%bool accident_ahead~%bool disable_left~%bool disable_right~%bool enable_left~%bool enable_right~%bool lane_borrow~%int32 lane_borrow_range~%float32 lat_offset~%int32 fix_refline_index~%int32 origin_refline_index~%int32 target_refline_index~%bool sb_Blane~%bool sb_lane~%float32[] avd_car_past_fisrt~%float32[] avd_car_past_second~%float32[] avd_sp_car_past_first~%float32[] avd_sp_car_past_second~%int32[] alc_car_id~%int32[] lb_car_id~%int32 lc_back_id~%int32 lc_invalid_id~%float32 dl_lat~%float32 ttc_lat~%float32 dt_lat~%bool fvfdead~%bool svfdead~%bool premoving~%float32 premove_dist~%planning_msgs/Pose2d[] init_val~%planning_msgs/Pose2d[] via_points~%~%================================================================================~%MSG: planning_msgs/AvdMsg~%int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Pose2d~%planning_msgs/Point2d position~%float64 theta~%~%================================================================================~%MSG: planning_msgs/TrafficLightDecision~%int32 traffic_light_state~%int32 stop_reason~%bool stop_flag~%bool is_passed_stop_line~%bool faster_pass~%~%================================================================================~%MSG: planning_msgs/ReplanInfo~%bool lat_replan~%bool lon_replan~%~%================================================================================~%MSG: planning_msgs/PlanExtra~%uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%================================================================================~%MSG: planning_msgs/APAExtra~%uint8 PARKIN_INFO = 1~%uint8 PARKOUT_INFO = 2~%uint8 RPA_STRAIGHT_INFO = 4~%uint8 SLOT_INFO = 8~%uint8 TRAJ_INFO = 16~%uint8 CONTROL_CMD = 32~%uint8 DEBUG_INFO = 64~%uint64 available~%planning_msgs/ParkInInfo parkin_info~%planning_msgs/ParkOutInfo parkout_info~%planning_msgs/RpaStraightInfo rpa_straight_info~%planning_msgs/ParkingSlotInfo slot_info~%planning_msgs/APATrajectoryInfo traj_info~%planning_msgs/APAControlCommand control_cmd~%planning_msgs/APADebugInfo debug_info~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkInInfo~%uint32 parkin_direction~%planning_msgs/WlcStatus wlc_status~%string reserved~%~%================================================================================~%MSG: planning_msgs/WlcStatus~%uint32 NO_WLC = 0~%uint32 APPROACHING = 1~%uint32 APPROACHED = 2~%uint32 value~%~%================================================================================~%MSG: planning_msgs/ParkOutInfo~%uint32 available_direction~%uint32 recommend_direction~%planning_msgs/ParkOutDisableReason disable_reason~%bool reached_take_over_point~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkOutDisableReason~%uint32 NONE = 0~%uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1~%uint32 DISABLED_NON_PARALLEL = 2~%uint32 NOT_IN_PARKING_SLOT = 3~%uint32 PARKOUT_NOT_READY = 4~%uint32 SLOT_TOO_SMALL = 5~%uint32 value~%~%================================================================================~%MSG: planning_msgs/RpaStraightInfo~%float32 forward_distance~%float32 backward_distance~%string reserved~%~%================================================================================~%MSG: planning_msgs/ParkingSlotInfo~%geometry_msgs/Point[] optimized_corners~%planning_msgs/ParkingSlotType slot_type~%bool has_wheel_stopper~%float32 ego_slot_iou~%float32 front_wheel_to_stopper~%float32 front_wheel_to_opening~%float32 front_wheel_to_bottom~%float32 rear_wheel_to_stopper~%float32 rear_wheel_to_opening~%float32 rear_wheel_to_bottom~%string reserved~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: planning_msgs/ParkingSlotType~%uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APATrajectoryInfo~%planning_msgs/APATrajectoryExtendType extend_type~%bool at_last_segment~%float32 remain_safe_distance~%float32 first_remain_distance~%float32 second_remain_distance~%float32 second_target_v~%planning_msgs/Gear first_gear~%planning_msgs/Gear second_gear~%uint32 second_start_index~%string reserved~%~%================================================================================~%MSG: planning_msgs/APATrajectoryExtendType~%uint8 UNEXTENDED = 0~%uint8 STRAIGHT = 1~%uint8 CIRCULAR_CURVE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APAControlCommand~%planning_msgs/APABrakeMode brake_mode~%planning_msgs/APASteeringMode steering_mode~%uint8 special_scenario_type~%bool use_second_traj_sv~%string reserved~%~%================================================================================~%MSG: planning_msgs/APABrakeMode~%uint8 DEFAULT = 0~%uint8 HARD_BRAKE = 1~%uint8 GENTLE_BRAKE = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APASteeringMode~%uint8 NONE = 0~%uint8 STEERING_RESET = 1~%uint8 value~%~%================================================================================~%MSG: planning_msgs/APADebugInfo~%planning_msgs/MultiCircleFootprintModel mc_footprint_model~%string reserved~%~%================================================================================~%MSG: planning_msgs/MultiCircleFootprintModel~%planning_msgs/Circle[] circles~%~%================================================================================~%MSG: planning_msgs/Circle~%float64 x~%float64 y~%float64 z~%float64 r~%~%================================================================================~%MSG: planning_msgs/EpbCommand~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Planning>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'emergency))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_lock_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'comfort))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'decision))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extra))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'apa_extra))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'epb_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Planning>))
  "Converts a ROS message object to a list"
  (cl:list 'Planning
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':turn_signal_command (turn_signal_command msg))
    (cl:cons ':gear_command (gear_command msg))
    (cl:cons ':vehicle_lock_command (vehicle_lock_command msg))
    (cl:cons ':plan_status (plan_status msg))
    (cl:cons ':comfort (comfort msg))
    (cl:cons ':decision (decision msg))
    (cl:cons ':extra (extra msg))
    (cl:cons ':apa_extra (apa_extra msg))
    (cl:cons ':epb_command (epb_command msg))
))
