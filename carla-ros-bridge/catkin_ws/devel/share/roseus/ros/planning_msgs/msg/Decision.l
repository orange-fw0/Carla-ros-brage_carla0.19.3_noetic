;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Decision)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Decision (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::DECISION")
  (make-package "PLANNING_MSGS::DECISION"))

(in-package "ROS")
;;//! \htmlinclude Decision.msg.html


(intern "*LON_DECISION*" (find-package "PLANNING_MSGS::DECISION"))
(shadow '*LON_DECISION* (find-package "PLANNING_MSGS::DECISION"))
(defconstant planning_msgs::Decision::*LON_DECISION* 1)
(intern "*LAT_DECISION*" (find-package "PLANNING_MSGS::DECISION"))
(shadow '*LAT_DECISION* (find-package "PLANNING_MSGS::DECISION"))
(defconstant planning_msgs::Decision::*LAT_DECISION* 2)
(intern "*TRAFFIC_LIGHT_DECISION*" (find-package "PLANNING_MSGS::DECISION"))
(shadow '*TRAFFIC_LIGHT_DECISION* (find-package "PLANNING_MSGS::DECISION"))
(defconstant planning_msgs::Decision::*TRAFFIC_LIGHT_DECISION* 4)

(defun planning_msgs::Decision-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Decision::*LON_DECISION*)
        ((= const 2) 'planning_msgs::Decision::*LAT_DECISION*)
        ((= const 4) 'planning_msgs::Decision::*TRAFFIC_LIGHT_DECISION*)
        (t nil)))

(defclass planning_msgs::Decision
  :super ros::object
  :slots (_available _lon_decision _lat_decision _traffic_light_decision _replan_info ))

(defmethod planning_msgs::Decision
  (:init
   (&key
    ((:available __available) 0)
    ((:lon_decision __lon_decision) (instance planning_msgs::LongitudinalDecision :init))
    ((:lat_decision __lat_decision) (instance planning_msgs::LateralDecision :init))
    ((:traffic_light_decision __traffic_light_decision) (instance planning_msgs::TrafficLightDecision :init))
    ((:replan_info __replan_info) (instance planning_msgs::ReplanInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lon_decision __lon_decision)
   (setq _lat_decision __lat_decision)
   (setq _traffic_light_decision __traffic_light_decision)
   (setq _replan_info __replan_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lon_decision
   (&rest __lon_decision)
   (if (keywordp (car __lon_decision))
       (send* _lon_decision __lon_decision)
     (progn
       (if __lon_decision (setq _lon_decision (car __lon_decision)))
       _lon_decision)))
  (:lat_decision
   (&rest __lat_decision)
   (if (keywordp (car __lat_decision))
       (send* _lat_decision __lat_decision)
     (progn
       (if __lat_decision (setq _lat_decision (car __lat_decision)))
       _lat_decision)))
  (:traffic_light_decision
   (&rest __traffic_light_decision)
   (if (keywordp (car __traffic_light_decision))
       (send* _traffic_light_decision __traffic_light_decision)
     (progn
       (if __traffic_light_decision (setq _traffic_light_decision (car __traffic_light_decision)))
       _traffic_light_decision)))
  (:replan_info
   (&rest __replan_info)
   (if (keywordp (car __replan_info))
       (send* _replan_info __replan_info)
     (progn
       (if __replan_info (setq _replan_info (car __replan_info)))
       _replan_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/LongitudinalDecision _lon_decision
    (send _lon_decision :serialization-length)
    ;; planning_msgs/LateralDecision _lat_decision
    (send _lat_decision :serialization-length)
    ;; planning_msgs/TrafficLightDecision _traffic_light_decision
    (send _traffic_light_decision :serialization-length)
    ;; planning_msgs/ReplanInfo _replan_info
    (send _replan_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/LongitudinalDecision _lon_decision
       (send _lon_decision :serialize s)
     ;; planning_msgs/LateralDecision _lat_decision
       (send _lat_decision :serialize s)
     ;; planning_msgs/TrafficLightDecision _traffic_light_decision
       (send _traffic_light_decision :serialize s)
     ;; planning_msgs/ReplanInfo _replan_info
       (send _replan_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/LongitudinalDecision _lon_decision
     (send _lon_decision :deserialize buf ptr-) (incf ptr- (send _lon_decision :serialization-length))
   ;; planning_msgs/LateralDecision _lat_decision
     (send _lat_decision :deserialize buf ptr-) (incf ptr- (send _lat_decision :serialization-length))
   ;; planning_msgs/TrafficLightDecision _traffic_light_decision
     (send _traffic_light_decision :deserialize buf ptr-) (incf ptr- (send _traffic_light_decision :serialization-length))
   ;; planning_msgs/ReplanInfo _replan_info
     (send _replan_info :deserialize buf ptr-) (incf ptr- (send _replan_info :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::Decision :md5sum-) "d8a43ea041f569c0e6cbee0f7d88925e")
(setf (get planning_msgs::Decision :datatype-) "planning_msgs/Decision")
(setf (get planning_msgs::Decision :definition-)
      "uint8 LON_DECISION = 1
uint8 LAT_DECISION = 2
uint8 TRAFFIC_LIGHT_DECISION = 4
uint8 available
planning_msgs/LongitudinalDecision lon_decision
planning_msgs/LateralDecision lat_decision
planning_msgs/TrafficLightDecision traffic_light_decision
planning_msgs/ReplanInfo replan_info

================================================================================
MSG: planning_msgs/LongitudinalDecision
int32[] follow_obstacles
int32[] overtake_obstacles
int32[] lon_nudge_obstacles
int32[] lead_obstacles
int32[] tlead_obstacles
int32[] lc_gap_info
int32 id_yield_closest
int32 id_overtake_closest
int32 tag_yield
int32 N_hard
float32 dt_yield
float32 dt_set
float32 ds_set
float32 ds_yield
float32 ds_overtake
float32 v_set
float32 v_yield_closest
float32 v_overtake_closest
float32 v_lim
float32 v_lim_map
float32 a_set
float32 dis_close
float32[] ds_lon
float32[] ttc_lon
float32[] dt_lon
float32[] s_max
float32[] d_safe
float32[] ds_flag
float32[] v_ref
float32[] weights
bool enable_prebrake
bool enable_preacc
bool need_aeb
bool pnc_start
bool pnc_stop
bool blocked

================================================================================
MSG: planning_msgs/LateralDecision
int32[] nudge_obstacles
int32[] lat_motion_decider
float32[] desire_offset
planning_msgs/AvdMsg[] avd_info
bool accident_ahead
bool disable_left
bool disable_right
bool enable_left
bool enable_right
bool lane_borrow
int32 lane_borrow_range
float32 lat_offset
int32 fix_refline_index
int32 origin_refline_index
int32 target_refline_index
bool sb_Blane
bool sb_lane
float32[] avd_car_past_fisrt
float32[] avd_car_past_second
float32[] avd_sp_car_past_first
float32[] avd_sp_car_past_second
int32[] alc_car_id
int32[] lb_car_id
int32 lc_back_id
int32 lc_invalid_id
float32 dl_lat
float32 ttc_lat
float32 dt_lat
bool fvfdead
bool svfdead
bool premoving
float32 premove_dist
planning_msgs/Pose2d[] init_val
planning_msgs/Pose2d[] via_points

================================================================================
MSG: planning_msgs/AvdMsg
int32 id
string property
bool ignore
string avd_direction
int32 avd_priority
float32 blocked_time_begin
float32 blocked_time_end
planning_msgs/Point2d[] polygon

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

================================================================================
MSG: planning_msgs/Pose2d
planning_msgs/Point2d position
float64 theta

================================================================================
MSG: planning_msgs/TrafficLightDecision
int32 traffic_light_state
int32 stop_reason
bool stop_flag
bool is_passed_stop_line
bool faster_pass

================================================================================
MSG: planning_msgs/ReplanInfo
bool lat_replan
bool lon_replan

")



(provide :planning_msgs/Decision "d8a43ea041f569c0e6cbee0f7d88925e")


