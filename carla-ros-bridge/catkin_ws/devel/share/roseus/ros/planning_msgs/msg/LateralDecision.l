;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::LateralDecision)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'LateralDecision (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::LATERALDECISION")
  (make-package "PLANNING_MSGS::LATERALDECISION"))

(in-package "ROS")
;;//! \htmlinclude LateralDecision.msg.html


(defclass planning_msgs::LateralDecision
  :super ros::object
  :slots (_nudge_obstacles _lat_motion_decider _desire_offset _avd_info _accident_ahead _disable_left _disable_right _enable_left _enable_right _lane_borrow _lane_borrow_range _lat_offset _fix_refline_index _origin_refline_index _target_refline_index _sb_Blane _sb_lane _avd_car_past_fisrt _avd_car_past_second _avd_sp_car_past_first _avd_sp_car_past_second _alc_car_id _lb_car_id _lc_back_id _lc_invalid_id _dl_lat _ttc_lat _dt_lat _fvfdead _svfdead _premoving _premove_dist _init_val _via_points ))

(defmethod planning_msgs::LateralDecision
  (:init
   (&key
    ((:nudge_obstacles __nudge_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lat_motion_decider __lat_motion_decider) (make-array 0 :initial-element 0 :element-type :integer))
    ((:desire_offset __desire_offset) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:avd_info __avd_info) ())
    ((:accident_ahead __accident_ahead) nil)
    ((:disable_left __disable_left) nil)
    ((:disable_right __disable_right) nil)
    ((:enable_left __enable_left) nil)
    ((:enable_right __enable_right) nil)
    ((:lane_borrow __lane_borrow) nil)
    ((:lane_borrow_range __lane_borrow_range) 0)
    ((:lat_offset __lat_offset) 0.0)
    ((:fix_refline_index __fix_refline_index) 0)
    ((:origin_refline_index __origin_refline_index) 0)
    ((:target_refline_index __target_refline_index) 0)
    ((:sb_Blane __sb_Blane) nil)
    ((:sb_lane __sb_lane) nil)
    ((:avd_car_past_fisrt __avd_car_past_fisrt) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:avd_car_past_second __avd_car_past_second) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:avd_sp_car_past_first __avd_sp_car_past_first) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:avd_sp_car_past_second __avd_sp_car_past_second) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:alc_car_id __alc_car_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lb_car_id __lb_car_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lc_back_id __lc_back_id) 0)
    ((:lc_invalid_id __lc_invalid_id) 0)
    ((:dl_lat __dl_lat) 0.0)
    ((:ttc_lat __ttc_lat) 0.0)
    ((:dt_lat __dt_lat) 0.0)
    ((:fvfdead __fvfdead) nil)
    ((:svfdead __svfdead) nil)
    ((:premoving __premoving) nil)
    ((:premove_dist __premove_dist) 0.0)
    ((:init_val __init_val) ())
    ((:via_points __via_points) ())
    )
   (send-super :init)
   (setq _nudge_obstacles __nudge_obstacles)
   (setq _lat_motion_decider __lat_motion_decider)
   (setq _desire_offset __desire_offset)
   (setq _avd_info __avd_info)
   (setq _accident_ahead __accident_ahead)
   (setq _disable_left __disable_left)
   (setq _disable_right __disable_right)
   (setq _enable_left __enable_left)
   (setq _enable_right __enable_right)
   (setq _lane_borrow __lane_borrow)
   (setq _lane_borrow_range (round __lane_borrow_range))
   (setq _lat_offset (float __lat_offset))
   (setq _fix_refline_index (round __fix_refline_index))
   (setq _origin_refline_index (round __origin_refline_index))
   (setq _target_refline_index (round __target_refline_index))
   (setq _sb_Blane __sb_Blane)
   (setq _sb_lane __sb_lane)
   (setq _avd_car_past_fisrt __avd_car_past_fisrt)
   (setq _avd_car_past_second __avd_car_past_second)
   (setq _avd_sp_car_past_first __avd_sp_car_past_first)
   (setq _avd_sp_car_past_second __avd_sp_car_past_second)
   (setq _alc_car_id __alc_car_id)
   (setq _lb_car_id __lb_car_id)
   (setq _lc_back_id (round __lc_back_id))
   (setq _lc_invalid_id (round __lc_invalid_id))
   (setq _dl_lat (float __dl_lat))
   (setq _ttc_lat (float __ttc_lat))
   (setq _dt_lat (float __dt_lat))
   (setq _fvfdead __fvfdead)
   (setq _svfdead __svfdead)
   (setq _premoving __premoving)
   (setq _premove_dist (float __premove_dist))
   (setq _init_val __init_val)
   (setq _via_points __via_points)
   self)
  (:nudge_obstacles
   (&optional __nudge_obstacles)
   (if __nudge_obstacles (setq _nudge_obstacles __nudge_obstacles)) _nudge_obstacles)
  (:lat_motion_decider
   (&optional __lat_motion_decider)
   (if __lat_motion_decider (setq _lat_motion_decider __lat_motion_decider)) _lat_motion_decider)
  (:desire_offset
   (&optional __desire_offset)
   (if __desire_offset (setq _desire_offset __desire_offset)) _desire_offset)
  (:avd_info
   (&rest __avd_info)
   (if (keywordp (car __avd_info))
       (send* _avd_info __avd_info)
     (progn
       (if __avd_info (setq _avd_info (car __avd_info)))
       _avd_info)))
  (:accident_ahead
   (&optional (__accident_ahead :null))
   (if (not (eq __accident_ahead :null)) (setq _accident_ahead __accident_ahead)) _accident_ahead)
  (:disable_left
   (&optional (__disable_left :null))
   (if (not (eq __disable_left :null)) (setq _disable_left __disable_left)) _disable_left)
  (:disable_right
   (&optional (__disable_right :null))
   (if (not (eq __disable_right :null)) (setq _disable_right __disable_right)) _disable_right)
  (:enable_left
   (&optional (__enable_left :null))
   (if (not (eq __enable_left :null)) (setq _enable_left __enable_left)) _enable_left)
  (:enable_right
   (&optional (__enable_right :null))
   (if (not (eq __enable_right :null)) (setq _enable_right __enable_right)) _enable_right)
  (:lane_borrow
   (&optional (__lane_borrow :null))
   (if (not (eq __lane_borrow :null)) (setq _lane_borrow __lane_borrow)) _lane_borrow)
  (:lane_borrow_range
   (&optional __lane_borrow_range)
   (if __lane_borrow_range (setq _lane_borrow_range __lane_borrow_range)) _lane_borrow_range)
  (:lat_offset
   (&optional __lat_offset)
   (if __lat_offset (setq _lat_offset __lat_offset)) _lat_offset)
  (:fix_refline_index
   (&optional __fix_refline_index)
   (if __fix_refline_index (setq _fix_refline_index __fix_refline_index)) _fix_refline_index)
  (:origin_refline_index
   (&optional __origin_refline_index)
   (if __origin_refline_index (setq _origin_refline_index __origin_refline_index)) _origin_refline_index)
  (:target_refline_index
   (&optional __target_refline_index)
   (if __target_refline_index (setq _target_refline_index __target_refline_index)) _target_refline_index)
  (:sb_Blane
   (&optional (__sb_Blane :null))
   (if (not (eq __sb_Blane :null)) (setq _sb_Blane __sb_Blane)) _sb_Blane)
  (:sb_lane
   (&optional (__sb_lane :null))
   (if (not (eq __sb_lane :null)) (setq _sb_lane __sb_lane)) _sb_lane)
  (:avd_car_past_fisrt
   (&optional __avd_car_past_fisrt)
   (if __avd_car_past_fisrt (setq _avd_car_past_fisrt __avd_car_past_fisrt)) _avd_car_past_fisrt)
  (:avd_car_past_second
   (&optional __avd_car_past_second)
   (if __avd_car_past_second (setq _avd_car_past_second __avd_car_past_second)) _avd_car_past_second)
  (:avd_sp_car_past_first
   (&optional __avd_sp_car_past_first)
   (if __avd_sp_car_past_first (setq _avd_sp_car_past_first __avd_sp_car_past_first)) _avd_sp_car_past_first)
  (:avd_sp_car_past_second
   (&optional __avd_sp_car_past_second)
   (if __avd_sp_car_past_second (setq _avd_sp_car_past_second __avd_sp_car_past_second)) _avd_sp_car_past_second)
  (:alc_car_id
   (&optional __alc_car_id)
   (if __alc_car_id (setq _alc_car_id __alc_car_id)) _alc_car_id)
  (:lb_car_id
   (&optional __lb_car_id)
   (if __lb_car_id (setq _lb_car_id __lb_car_id)) _lb_car_id)
  (:lc_back_id
   (&optional __lc_back_id)
   (if __lc_back_id (setq _lc_back_id __lc_back_id)) _lc_back_id)
  (:lc_invalid_id
   (&optional __lc_invalid_id)
   (if __lc_invalid_id (setq _lc_invalid_id __lc_invalid_id)) _lc_invalid_id)
  (:dl_lat
   (&optional __dl_lat)
   (if __dl_lat (setq _dl_lat __dl_lat)) _dl_lat)
  (:ttc_lat
   (&optional __ttc_lat)
   (if __ttc_lat (setq _ttc_lat __ttc_lat)) _ttc_lat)
  (:dt_lat
   (&optional __dt_lat)
   (if __dt_lat (setq _dt_lat __dt_lat)) _dt_lat)
  (:fvfdead
   (&optional (__fvfdead :null))
   (if (not (eq __fvfdead :null)) (setq _fvfdead __fvfdead)) _fvfdead)
  (:svfdead
   (&optional (__svfdead :null))
   (if (not (eq __svfdead :null)) (setq _svfdead __svfdead)) _svfdead)
  (:premoving
   (&optional (__premoving :null))
   (if (not (eq __premoving :null)) (setq _premoving __premoving)) _premoving)
  (:premove_dist
   (&optional __premove_dist)
   (if __premove_dist (setq _premove_dist __premove_dist)) _premove_dist)
  (:init_val
   (&rest __init_val)
   (if (keywordp (car __init_val))
       (send* _init_val __init_val)
     (progn
       (if __init_val (setq _init_val (car __init_val)))
       _init_val)))
  (:via_points
   (&rest __via_points)
   (if (keywordp (car __via_points))
       (send* _via_points __via_points)
     (progn
       (if __via_points (setq _via_points (car __via_points)))
       _via_points)))
  (:serialization-length
   ()
   (+
    ;; int32[] _nudge_obstacles
    (* 4    (length _nudge_obstacles)) 4
    ;; int32[] _lat_motion_decider
    (* 4    (length _lat_motion_decider)) 4
    ;; float32[] _desire_offset
    (* 4    (length _desire_offset)) 4
    ;; planning_msgs/AvdMsg[] _avd_info
    (apply #'+ (send-all _avd_info :serialization-length)) 4
    ;; bool _accident_ahead
    1
    ;; bool _disable_left
    1
    ;; bool _disable_right
    1
    ;; bool _enable_left
    1
    ;; bool _enable_right
    1
    ;; bool _lane_borrow
    1
    ;; int32 _lane_borrow_range
    4
    ;; float32 _lat_offset
    4
    ;; int32 _fix_refline_index
    4
    ;; int32 _origin_refline_index
    4
    ;; int32 _target_refline_index
    4
    ;; bool _sb_Blane
    1
    ;; bool _sb_lane
    1
    ;; float32[] _avd_car_past_fisrt
    (* 4    (length _avd_car_past_fisrt)) 4
    ;; float32[] _avd_car_past_second
    (* 4    (length _avd_car_past_second)) 4
    ;; float32[] _avd_sp_car_past_first
    (* 4    (length _avd_sp_car_past_first)) 4
    ;; float32[] _avd_sp_car_past_second
    (* 4    (length _avd_sp_car_past_second)) 4
    ;; int32[] _alc_car_id
    (* 4    (length _alc_car_id)) 4
    ;; int32[] _lb_car_id
    (* 4    (length _lb_car_id)) 4
    ;; int32 _lc_back_id
    4
    ;; int32 _lc_invalid_id
    4
    ;; float32 _dl_lat
    4
    ;; float32 _ttc_lat
    4
    ;; float32 _dt_lat
    4
    ;; bool _fvfdead
    1
    ;; bool _svfdead
    1
    ;; bool _premoving
    1
    ;; float32 _premove_dist
    4
    ;; planning_msgs/Pose2d[] _init_val
    (apply #'+ (send-all _init_val :serialization-length)) 4
    ;; planning_msgs/Pose2d[] _via_points
    (apply #'+ (send-all _via_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _nudge_obstacles
     (write-long (length _nudge_obstacles) s)
     (dotimes (i (length _nudge_obstacles))
       (write-long (elt _nudge_obstacles i) s)
       )
     ;; int32[] _lat_motion_decider
     (write-long (length _lat_motion_decider) s)
     (dotimes (i (length _lat_motion_decider))
       (write-long (elt _lat_motion_decider i) s)
       )
     ;; float32[] _desire_offset
     (write-long (length _desire_offset) s)
     (dotimes (i (length _desire_offset))
       (sys::poke (elt _desire_offset i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; planning_msgs/AvdMsg[] _avd_info
     (write-long (length _avd_info) s)
     (dolist (elem _avd_info)
       (send elem :serialize s)
       )
     ;; bool _accident_ahead
       (if _accident_ahead (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_left
       (if _disable_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_right
       (if _disable_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_left
       (if _enable_left (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_right
       (if _enable_right (write-byte -1 s) (write-byte 0 s))
     ;; bool _lane_borrow
       (if _lane_borrow (write-byte -1 s) (write-byte 0 s))
     ;; int32 _lane_borrow_range
       (write-long _lane_borrow_range s)
     ;; float32 _lat_offset
       (sys::poke _lat_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _fix_refline_index
       (write-long _fix_refline_index s)
     ;; int32 _origin_refline_index
       (write-long _origin_refline_index s)
     ;; int32 _target_refline_index
       (write-long _target_refline_index s)
     ;; bool _sb_Blane
       (if _sb_Blane (write-byte -1 s) (write-byte 0 s))
     ;; bool _sb_lane
       (if _sb_lane (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _avd_car_past_fisrt
     (write-long (length _avd_car_past_fisrt) s)
     (dotimes (i (length _avd_car_past_fisrt))
       (sys::poke (elt _avd_car_past_fisrt i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _avd_car_past_second
     (write-long (length _avd_car_past_second) s)
     (dotimes (i (length _avd_car_past_second))
       (sys::poke (elt _avd_car_past_second i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _avd_sp_car_past_first
     (write-long (length _avd_sp_car_past_first) s)
     (dotimes (i (length _avd_sp_car_past_first))
       (sys::poke (elt _avd_sp_car_past_first i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _avd_sp_car_past_second
     (write-long (length _avd_sp_car_past_second) s)
     (dotimes (i (length _avd_sp_car_past_second))
       (sys::poke (elt _avd_sp_car_past_second i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _alc_car_id
     (write-long (length _alc_car_id) s)
     (dotimes (i (length _alc_car_id))
       (write-long (elt _alc_car_id i) s)
       )
     ;; int32[] _lb_car_id
     (write-long (length _lb_car_id) s)
     (dotimes (i (length _lb_car_id))
       (write-long (elt _lb_car_id i) s)
       )
     ;; int32 _lc_back_id
       (write-long _lc_back_id s)
     ;; int32 _lc_invalid_id
       (write-long _lc_invalid_id s)
     ;; float32 _dl_lat
       (sys::poke _dl_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ttc_lat
       (sys::poke _ttc_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dt_lat
       (sys::poke _dt_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _fvfdead
       (if _fvfdead (write-byte -1 s) (write-byte 0 s))
     ;; bool _svfdead
       (if _svfdead (write-byte -1 s) (write-byte 0 s))
     ;; bool _premoving
       (if _premoving (write-byte -1 s) (write-byte 0 s))
     ;; float32 _premove_dist
       (sys::poke _premove_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; planning_msgs/Pose2d[] _init_val
     (write-long (length _init_val) s)
     (dolist (elem _init_val)
       (send elem :serialize s)
       )
     ;; planning_msgs/Pose2d[] _via_points
     (write-long (length _via_points) s)
     (dolist (elem _via_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _nudge_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nudge_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _nudge_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _lat_motion_decider
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lat_motion_decider (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lat_motion_decider i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _desire_offset
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desire_offset (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _desire_offset i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; planning_msgs/AvdMsg[] _avd_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avd_info (let (r) (dotimes (i n) (push (instance planning_msgs::AvdMsg :init) r)) r))
     (dolist (elem- _avd_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _accident_ahead
     (setq _accident_ahead (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_left
     (setq _disable_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_right
     (setq _disable_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_left
     (setq _enable_left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_right
     (setq _enable_right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lane_borrow
     (setq _lane_borrow (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _lane_borrow_range
     (setq _lane_borrow_range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _lat_offset
     (setq _lat_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _fix_refline_index
     (setq _fix_refline_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _origin_refline_index
     (setq _origin_refline_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_refline_index
     (setq _target_refline_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _sb_Blane
     (setq _sb_Blane (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sb_lane
     (setq _sb_lane (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _avd_car_past_fisrt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avd_car_past_fisrt (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _avd_car_past_fisrt i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _avd_car_past_second
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avd_car_past_second (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _avd_car_past_second i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _avd_sp_car_past_first
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avd_sp_car_past_first (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _avd_sp_car_past_first i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _avd_sp_car_past_second
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avd_sp_car_past_second (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _avd_sp_car_past_second i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _alc_car_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alc_car_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _alc_car_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _lb_car_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lb_car_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lb_car_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _lc_back_id
     (setq _lc_back_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lc_invalid_id
     (setq _lc_invalid_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dl_lat
     (setq _dl_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ttc_lat
     (setq _ttc_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dt_lat
     (setq _dt_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _fvfdead
     (setq _fvfdead (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _svfdead
     (setq _svfdead (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _premoving
     (setq _premoving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _premove_dist
     (setq _premove_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; planning_msgs/Pose2d[] _init_val
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _init_val (let (r) (dotimes (i n) (push (instance planning_msgs::Pose2d :init) r)) r))
     (dolist (elem- _init_val)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/Pose2d[] _via_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _via_points (let (r) (dotimes (i n) (push (instance planning_msgs::Pose2d :init) r)) r))
     (dolist (elem- _via_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::LateralDecision :md5sum-) "abbf66c2e9bbbb15772b9ad765baa0a9")
(setf (get planning_msgs::LateralDecision :datatype-) "planning_msgs/LateralDecision")
(setf (get planning_msgs::LateralDecision :definition-)
      "int32[] nudge_obstacles
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

")



(provide :planning_msgs/LateralDecision "abbf66c2e9bbbb15772b9ad765baa0a9")


