; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Decision.msg.html

(cl:defclass <Decision> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lon_decision
    :reader lon_decision
    :initarg :lon_decision
    :type planning_msgs-msg:LongitudinalDecision
    :initform (cl:make-instance 'planning_msgs-msg:LongitudinalDecision))
   (lat_decision
    :reader lat_decision
    :initarg :lat_decision
    :type planning_msgs-msg:LateralDecision
    :initform (cl:make-instance 'planning_msgs-msg:LateralDecision))
   (traffic_light_decision
    :reader traffic_light_decision
    :initarg :traffic_light_decision
    :type planning_msgs-msg:TrafficLightDecision
    :initform (cl:make-instance 'planning_msgs-msg:TrafficLightDecision))
   (replan_info
    :reader replan_info
    :initarg :replan_info
    :type planning_msgs-msg:ReplanInfo
    :initform (cl:make-instance 'planning_msgs-msg:ReplanInfo)))
)

(cl:defclass Decision (<Decision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Decision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Decision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Decision> is deprecated: use planning_msgs-msg:Decision instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lon_decision-val :lambda-list '(m))
(cl:defmethod lon_decision-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lon_decision-val is deprecated.  Use planning_msgs-msg:lon_decision instead.")
  (lon_decision m))

(cl:ensure-generic-function 'lat_decision-val :lambda-list '(m))
(cl:defmethod lat_decision-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_decision-val is deprecated.  Use planning_msgs-msg:lat_decision instead.")
  (lat_decision m))

(cl:ensure-generic-function 'traffic_light_decision-val :lambda-list '(m))
(cl:defmethod traffic_light_decision-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:traffic_light_decision-val is deprecated.  Use planning_msgs-msg:traffic_light_decision instead.")
  (traffic_light_decision m))

(cl:ensure-generic-function 'replan_info-val :lambda-list '(m))
(cl:defmethod replan_info-val ((m <Decision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:replan_info-val is deprecated.  Use planning_msgs-msg:replan_info instead.")
  (replan_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Decision>)))
    "Constants for message type '<Decision>"
  '((:LON_DECISION . 1)
    (:LAT_DECISION . 2)
    (:TRAFFIC_LIGHT_DECISION . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Decision)))
    "Constants for message type 'Decision"
  '((:LON_DECISION . 1)
    (:LAT_DECISION . 2)
    (:TRAFFIC_LIGHT_DECISION . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Decision>) ostream)
  "Serializes a message object of type '<Decision>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lon_decision) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lat_decision) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traffic_light_decision) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'replan_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Decision>) istream)
  "Deserializes a message object of type '<Decision>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lon_decision) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lat_decision) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traffic_light_decision) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'replan_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Decision>)))
  "Returns string type for a message object of type '<Decision>"
  "planning_msgs/Decision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Decision)))
  "Returns string type for a message object of type 'Decision"
  "planning_msgs/Decision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Decision>)))
  "Returns md5sum for a message object of type '<Decision>"
  "d8a43ea041f569c0e6cbee0f7d88925e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Decision)))
  "Returns md5sum for a message object of type 'Decision"
  "d8a43ea041f569c0e6cbee0f7d88925e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Decision>)))
  "Returns full string definition for message of type '<Decision>"
  (cl:format cl:nil "uint8 LON_DECISION = 1~%uint8 LAT_DECISION = 2~%uint8 TRAFFIC_LIGHT_DECISION = 4~%uint8 available~%planning_msgs/LongitudinalDecision lon_decision~%planning_msgs/LateralDecision lat_decision~%planning_msgs/TrafficLightDecision traffic_light_decision~%planning_msgs/ReplanInfo replan_info~%~%================================================================================~%MSG: planning_msgs/LongitudinalDecision~%int32[] follow_obstacles~%int32[] overtake_obstacles~%int32[] lon_nudge_obstacles~%int32[] lead_obstacles~%int32[] tlead_obstacles~%int32[] lc_gap_info~%int32 id_yield_closest~%int32 id_overtake_closest~%int32 tag_yield~%int32 N_hard~%float32 dt_yield~%float32 dt_set~%float32 ds_set~%float32 ds_yield~%float32 ds_overtake~%float32 v_set~%float32 v_yield_closest~%float32 v_overtake_closest~%float32 v_lim~%float32 v_lim_map~%float32 a_set~%float32 dis_close~%float32[] ds_lon~%float32[] ttc_lon~%float32[] dt_lon~%float32[] s_max~%float32[] d_safe~%float32[] ds_flag~%float32[] v_ref~%float32[] weights~%bool enable_prebrake~%bool enable_preacc~%bool need_aeb~%bool pnc_start~%bool pnc_stop~%bool blocked~%~%================================================================================~%MSG: planning_msgs/LateralDecision~%int32[] nudge_obstacles~%int32[] lat_motion_decider~%float32[] desire_offset~%planning_msgs/AvdMsg[] avd_info~%bool accident_ahead~%bool disable_left~%bool disable_right~%bool enable_left~%bool enable_right~%bool lane_borrow~%int32 lane_borrow_range~%float32 lat_offset~%int32 fix_refline_index~%int32 origin_refline_index~%int32 target_refline_index~%bool sb_Blane~%bool sb_lane~%float32[] avd_car_past_fisrt~%float32[] avd_car_past_second~%float32[] avd_sp_car_past_first~%float32[] avd_sp_car_past_second~%int32[] alc_car_id~%int32[] lb_car_id~%int32 lc_back_id~%int32 lc_invalid_id~%float32 dl_lat~%float32 ttc_lat~%float32 dt_lat~%bool fvfdead~%bool svfdead~%bool premoving~%float32 premove_dist~%planning_msgs/Pose2d[] init_val~%planning_msgs/Pose2d[] via_points~%~%================================================================================~%MSG: planning_msgs/AvdMsg~%int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Pose2d~%planning_msgs/Point2d position~%float64 theta~%~%================================================================================~%MSG: planning_msgs/TrafficLightDecision~%int32 traffic_light_state~%int32 stop_reason~%bool stop_flag~%bool is_passed_stop_line~%bool faster_pass~%~%================================================================================~%MSG: planning_msgs/ReplanInfo~%bool lat_replan~%bool lon_replan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Decision)))
  "Returns full string definition for message of type 'Decision"
  (cl:format cl:nil "uint8 LON_DECISION = 1~%uint8 LAT_DECISION = 2~%uint8 TRAFFIC_LIGHT_DECISION = 4~%uint8 available~%planning_msgs/LongitudinalDecision lon_decision~%planning_msgs/LateralDecision lat_decision~%planning_msgs/TrafficLightDecision traffic_light_decision~%planning_msgs/ReplanInfo replan_info~%~%================================================================================~%MSG: planning_msgs/LongitudinalDecision~%int32[] follow_obstacles~%int32[] overtake_obstacles~%int32[] lon_nudge_obstacles~%int32[] lead_obstacles~%int32[] tlead_obstacles~%int32[] lc_gap_info~%int32 id_yield_closest~%int32 id_overtake_closest~%int32 tag_yield~%int32 N_hard~%float32 dt_yield~%float32 dt_set~%float32 ds_set~%float32 ds_yield~%float32 ds_overtake~%float32 v_set~%float32 v_yield_closest~%float32 v_overtake_closest~%float32 v_lim~%float32 v_lim_map~%float32 a_set~%float32 dis_close~%float32[] ds_lon~%float32[] ttc_lon~%float32[] dt_lon~%float32[] s_max~%float32[] d_safe~%float32[] ds_flag~%float32[] v_ref~%float32[] weights~%bool enable_prebrake~%bool enable_preacc~%bool need_aeb~%bool pnc_start~%bool pnc_stop~%bool blocked~%~%================================================================================~%MSG: planning_msgs/LateralDecision~%int32[] nudge_obstacles~%int32[] lat_motion_decider~%float32[] desire_offset~%planning_msgs/AvdMsg[] avd_info~%bool accident_ahead~%bool disable_left~%bool disable_right~%bool enable_left~%bool enable_right~%bool lane_borrow~%int32 lane_borrow_range~%float32 lat_offset~%int32 fix_refline_index~%int32 origin_refline_index~%int32 target_refline_index~%bool sb_Blane~%bool sb_lane~%float32[] avd_car_past_fisrt~%float32[] avd_car_past_second~%float32[] avd_sp_car_past_first~%float32[] avd_sp_car_past_second~%int32[] alc_car_id~%int32[] lb_car_id~%int32 lc_back_id~%int32 lc_invalid_id~%float32 dl_lat~%float32 ttc_lat~%float32 dt_lat~%bool fvfdead~%bool svfdead~%bool premoving~%float32 premove_dist~%planning_msgs/Pose2d[] init_val~%planning_msgs/Pose2d[] via_points~%~%================================================================================~%MSG: planning_msgs/AvdMsg~%int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Pose2d~%planning_msgs/Point2d position~%float64 theta~%~%================================================================================~%MSG: planning_msgs/TrafficLightDecision~%int32 traffic_light_state~%int32 stop_reason~%bool stop_flag~%bool is_passed_stop_line~%bool faster_pass~%~%================================================================================~%MSG: planning_msgs/ReplanInfo~%bool lat_replan~%bool lon_replan~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Decision>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lon_decision))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lat_decision))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traffic_light_decision))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'replan_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Decision>))
  "Converts a ROS message object to a list"
  (cl:list 'Decision
    (cl:cons ':available (available msg))
    (cl:cons ':lon_decision (lon_decision msg))
    (cl:cons ':lat_decision (lat_decision msg))
    (cl:cons ':traffic_light_decision (traffic_light_decision msg))
    (cl:cons ':replan_info (replan_info msg))
))
