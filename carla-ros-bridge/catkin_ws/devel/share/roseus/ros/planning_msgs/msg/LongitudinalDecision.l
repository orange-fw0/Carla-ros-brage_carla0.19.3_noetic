;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::LongitudinalDecision)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'LongitudinalDecision (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::LONGITUDINALDECISION")
  (make-package "PLANNING_MSGS::LONGITUDINALDECISION"))

(in-package "ROS")
;;//! \htmlinclude LongitudinalDecision.msg.html


(defclass planning_msgs::LongitudinalDecision
  :super ros::object
  :slots (_follow_obstacles _overtake_obstacles _lon_nudge_obstacles _lead_obstacles _tlead_obstacles _lc_gap_info _id_yield_closest _id_overtake_closest _tag_yield _N_hard _dt_yield _dt_set _ds_set _ds_yield _ds_overtake _v_set _v_yield_closest _v_overtake_closest _v_lim _v_lim_map _a_set _dis_close _ds_lon _ttc_lon _dt_lon _s_max _d_safe _ds_flag _v_ref _weights _enable_prebrake _enable_preacc _need_aeb _pnc_start _pnc_stop _blocked ))

(defmethod planning_msgs::LongitudinalDecision
  (:init
   (&key
    ((:follow_obstacles __follow_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:overtake_obstacles __overtake_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lon_nudge_obstacles __lon_nudge_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lead_obstacles __lead_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tlead_obstacles __tlead_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lc_gap_info __lc_gap_info) (make-array 0 :initial-element 0 :element-type :integer))
    ((:id_yield_closest __id_yield_closest) 0)
    ((:id_overtake_closest __id_overtake_closest) 0)
    ((:tag_yield __tag_yield) 0)
    ((:N_hard __N_hard) 0)
    ((:dt_yield __dt_yield) 0.0)
    ((:dt_set __dt_set) 0.0)
    ((:ds_set __ds_set) 0.0)
    ((:ds_yield __ds_yield) 0.0)
    ((:ds_overtake __ds_overtake) 0.0)
    ((:v_set __v_set) 0.0)
    ((:v_yield_closest __v_yield_closest) 0.0)
    ((:v_overtake_closest __v_overtake_closest) 0.0)
    ((:v_lim __v_lim) 0.0)
    ((:v_lim_map __v_lim_map) 0.0)
    ((:a_set __a_set) 0.0)
    ((:dis_close __dis_close) 0.0)
    ((:ds_lon __ds_lon) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ttc_lon __ttc_lon) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dt_lon __dt_lon) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:s_max __s_max) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d_safe __d_safe) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ds_flag __ds_flag) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v_ref __v_ref) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:weights __weights) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:enable_prebrake __enable_prebrake) nil)
    ((:enable_preacc __enable_preacc) nil)
    ((:need_aeb __need_aeb) nil)
    ((:pnc_start __pnc_start) nil)
    ((:pnc_stop __pnc_stop) nil)
    ((:blocked __blocked) nil)
    )
   (send-super :init)
   (setq _follow_obstacles __follow_obstacles)
   (setq _overtake_obstacles __overtake_obstacles)
   (setq _lon_nudge_obstacles __lon_nudge_obstacles)
   (setq _lead_obstacles __lead_obstacles)
   (setq _tlead_obstacles __tlead_obstacles)
   (setq _lc_gap_info __lc_gap_info)
   (setq _id_yield_closest (round __id_yield_closest))
   (setq _id_overtake_closest (round __id_overtake_closest))
   (setq _tag_yield (round __tag_yield))
   (setq _N_hard (round __N_hard))
   (setq _dt_yield (float __dt_yield))
   (setq _dt_set (float __dt_set))
   (setq _ds_set (float __ds_set))
   (setq _ds_yield (float __ds_yield))
   (setq _ds_overtake (float __ds_overtake))
   (setq _v_set (float __v_set))
   (setq _v_yield_closest (float __v_yield_closest))
   (setq _v_overtake_closest (float __v_overtake_closest))
   (setq _v_lim (float __v_lim))
   (setq _v_lim_map (float __v_lim_map))
   (setq _a_set (float __a_set))
   (setq _dis_close (float __dis_close))
   (setq _ds_lon __ds_lon)
   (setq _ttc_lon __ttc_lon)
   (setq _dt_lon __dt_lon)
   (setq _s_max __s_max)
   (setq _d_safe __d_safe)
   (setq _ds_flag __ds_flag)
   (setq _v_ref __v_ref)
   (setq _weights __weights)
   (setq _enable_prebrake __enable_prebrake)
   (setq _enable_preacc __enable_preacc)
   (setq _need_aeb __need_aeb)
   (setq _pnc_start __pnc_start)
   (setq _pnc_stop __pnc_stop)
   (setq _blocked __blocked)
   self)
  (:follow_obstacles
   (&optional __follow_obstacles)
   (if __follow_obstacles (setq _follow_obstacles __follow_obstacles)) _follow_obstacles)
  (:overtake_obstacles
   (&optional __overtake_obstacles)
   (if __overtake_obstacles (setq _overtake_obstacles __overtake_obstacles)) _overtake_obstacles)
  (:lon_nudge_obstacles
   (&optional __lon_nudge_obstacles)
   (if __lon_nudge_obstacles (setq _lon_nudge_obstacles __lon_nudge_obstacles)) _lon_nudge_obstacles)
  (:lead_obstacles
   (&optional __lead_obstacles)
   (if __lead_obstacles (setq _lead_obstacles __lead_obstacles)) _lead_obstacles)
  (:tlead_obstacles
   (&optional __tlead_obstacles)
   (if __tlead_obstacles (setq _tlead_obstacles __tlead_obstacles)) _tlead_obstacles)
  (:lc_gap_info
   (&optional __lc_gap_info)
   (if __lc_gap_info (setq _lc_gap_info __lc_gap_info)) _lc_gap_info)
  (:id_yield_closest
   (&optional __id_yield_closest)
   (if __id_yield_closest (setq _id_yield_closest __id_yield_closest)) _id_yield_closest)
  (:id_overtake_closest
   (&optional __id_overtake_closest)
   (if __id_overtake_closest (setq _id_overtake_closest __id_overtake_closest)) _id_overtake_closest)
  (:tag_yield
   (&optional __tag_yield)
   (if __tag_yield (setq _tag_yield __tag_yield)) _tag_yield)
  (:N_hard
   (&optional __N_hard)
   (if __N_hard (setq _N_hard __N_hard)) _N_hard)
  (:dt_yield
   (&optional __dt_yield)
   (if __dt_yield (setq _dt_yield __dt_yield)) _dt_yield)
  (:dt_set
   (&optional __dt_set)
   (if __dt_set (setq _dt_set __dt_set)) _dt_set)
  (:ds_set
   (&optional __ds_set)
   (if __ds_set (setq _ds_set __ds_set)) _ds_set)
  (:ds_yield
   (&optional __ds_yield)
   (if __ds_yield (setq _ds_yield __ds_yield)) _ds_yield)
  (:ds_overtake
   (&optional __ds_overtake)
   (if __ds_overtake (setq _ds_overtake __ds_overtake)) _ds_overtake)
  (:v_set
   (&optional __v_set)
   (if __v_set (setq _v_set __v_set)) _v_set)
  (:v_yield_closest
   (&optional __v_yield_closest)
   (if __v_yield_closest (setq _v_yield_closest __v_yield_closest)) _v_yield_closest)
  (:v_overtake_closest
   (&optional __v_overtake_closest)
   (if __v_overtake_closest (setq _v_overtake_closest __v_overtake_closest)) _v_overtake_closest)
  (:v_lim
   (&optional __v_lim)
   (if __v_lim (setq _v_lim __v_lim)) _v_lim)
  (:v_lim_map
   (&optional __v_lim_map)
   (if __v_lim_map (setq _v_lim_map __v_lim_map)) _v_lim_map)
  (:a_set
   (&optional __a_set)
   (if __a_set (setq _a_set __a_set)) _a_set)
  (:dis_close
   (&optional __dis_close)
   (if __dis_close (setq _dis_close __dis_close)) _dis_close)
  (:ds_lon
   (&optional __ds_lon)
   (if __ds_lon (setq _ds_lon __ds_lon)) _ds_lon)
  (:ttc_lon
   (&optional __ttc_lon)
   (if __ttc_lon (setq _ttc_lon __ttc_lon)) _ttc_lon)
  (:dt_lon
   (&optional __dt_lon)
   (if __dt_lon (setq _dt_lon __dt_lon)) _dt_lon)
  (:s_max
   (&optional __s_max)
   (if __s_max (setq _s_max __s_max)) _s_max)
  (:d_safe
   (&optional __d_safe)
   (if __d_safe (setq _d_safe __d_safe)) _d_safe)
  (:ds_flag
   (&optional __ds_flag)
   (if __ds_flag (setq _ds_flag __ds_flag)) _ds_flag)
  (:v_ref
   (&optional __v_ref)
   (if __v_ref (setq _v_ref __v_ref)) _v_ref)
  (:weights
   (&optional __weights)
   (if __weights (setq _weights __weights)) _weights)
  (:enable_prebrake
   (&optional (__enable_prebrake :null))
   (if (not (eq __enable_prebrake :null)) (setq _enable_prebrake __enable_prebrake)) _enable_prebrake)
  (:enable_preacc
   (&optional (__enable_preacc :null))
   (if (not (eq __enable_preacc :null)) (setq _enable_preacc __enable_preacc)) _enable_preacc)
  (:need_aeb
   (&optional (__need_aeb :null))
   (if (not (eq __need_aeb :null)) (setq _need_aeb __need_aeb)) _need_aeb)
  (:pnc_start
   (&optional (__pnc_start :null))
   (if (not (eq __pnc_start :null)) (setq _pnc_start __pnc_start)) _pnc_start)
  (:pnc_stop
   (&optional (__pnc_stop :null))
   (if (not (eq __pnc_stop :null)) (setq _pnc_stop __pnc_stop)) _pnc_stop)
  (:blocked
   (&optional (__blocked :null))
   (if (not (eq __blocked :null)) (setq _blocked __blocked)) _blocked)
  (:serialization-length
   ()
   (+
    ;; int32[] _follow_obstacles
    (* 4    (length _follow_obstacles)) 4
    ;; int32[] _overtake_obstacles
    (* 4    (length _overtake_obstacles)) 4
    ;; int32[] _lon_nudge_obstacles
    (* 4    (length _lon_nudge_obstacles)) 4
    ;; int32[] _lead_obstacles
    (* 4    (length _lead_obstacles)) 4
    ;; int32[] _tlead_obstacles
    (* 4    (length _tlead_obstacles)) 4
    ;; int32[] _lc_gap_info
    (* 4    (length _lc_gap_info)) 4
    ;; int32 _id_yield_closest
    4
    ;; int32 _id_overtake_closest
    4
    ;; int32 _tag_yield
    4
    ;; int32 _N_hard
    4
    ;; float32 _dt_yield
    4
    ;; float32 _dt_set
    4
    ;; float32 _ds_set
    4
    ;; float32 _ds_yield
    4
    ;; float32 _ds_overtake
    4
    ;; float32 _v_set
    4
    ;; float32 _v_yield_closest
    4
    ;; float32 _v_overtake_closest
    4
    ;; float32 _v_lim
    4
    ;; float32 _v_lim_map
    4
    ;; float32 _a_set
    4
    ;; float32 _dis_close
    4
    ;; float32[] _ds_lon
    (* 4    (length _ds_lon)) 4
    ;; float32[] _ttc_lon
    (* 4    (length _ttc_lon)) 4
    ;; float32[] _dt_lon
    (* 4    (length _dt_lon)) 4
    ;; float32[] _s_max
    (* 4    (length _s_max)) 4
    ;; float32[] _d_safe
    (* 4    (length _d_safe)) 4
    ;; float32[] _ds_flag
    (* 4    (length _ds_flag)) 4
    ;; float32[] _v_ref
    (* 4    (length _v_ref)) 4
    ;; float32[] _weights
    (* 4    (length _weights)) 4
    ;; bool _enable_prebrake
    1
    ;; bool _enable_preacc
    1
    ;; bool _need_aeb
    1
    ;; bool _pnc_start
    1
    ;; bool _pnc_stop
    1
    ;; bool _blocked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _follow_obstacles
     (write-long (length _follow_obstacles) s)
     (dotimes (i (length _follow_obstacles))
       (write-long (elt _follow_obstacles i) s)
       )
     ;; int32[] _overtake_obstacles
     (write-long (length _overtake_obstacles) s)
     (dotimes (i (length _overtake_obstacles))
       (write-long (elt _overtake_obstacles i) s)
       )
     ;; int32[] _lon_nudge_obstacles
     (write-long (length _lon_nudge_obstacles) s)
     (dotimes (i (length _lon_nudge_obstacles))
       (write-long (elt _lon_nudge_obstacles i) s)
       )
     ;; int32[] _lead_obstacles
     (write-long (length _lead_obstacles) s)
     (dotimes (i (length _lead_obstacles))
       (write-long (elt _lead_obstacles i) s)
       )
     ;; int32[] _tlead_obstacles
     (write-long (length _tlead_obstacles) s)
     (dotimes (i (length _tlead_obstacles))
       (write-long (elt _tlead_obstacles i) s)
       )
     ;; int32[] _lc_gap_info
     (write-long (length _lc_gap_info) s)
     (dotimes (i (length _lc_gap_info))
       (write-long (elt _lc_gap_info i) s)
       )
     ;; int32 _id_yield_closest
       (write-long _id_yield_closest s)
     ;; int32 _id_overtake_closest
       (write-long _id_overtake_closest s)
     ;; int32 _tag_yield
       (write-long _tag_yield s)
     ;; int32 _N_hard
       (write-long _N_hard s)
     ;; float32 _dt_yield
       (sys::poke _dt_yield (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dt_set
       (sys::poke _dt_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ds_set
       (sys::poke _ds_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ds_yield
       (sys::poke _ds_yield (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ds_overtake
       (sys::poke _ds_overtake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_set
       (sys::poke _v_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_yield_closest
       (sys::poke _v_yield_closest (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_overtake_closest
       (sys::poke _v_overtake_closest (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_lim
       (sys::poke _v_lim (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_lim_map
       (sys::poke _v_lim_map (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_set
       (sys::poke _a_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_close
       (sys::poke _dis_close (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _ds_lon
     (write-long (length _ds_lon) s)
     (dotimes (i (length _ds_lon))
       (sys::poke (elt _ds_lon i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ttc_lon
     (write-long (length _ttc_lon) s)
     (dotimes (i (length _ttc_lon))
       (sys::poke (elt _ttc_lon i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _dt_lon
     (write-long (length _dt_lon) s)
     (dotimes (i (length _dt_lon))
       (sys::poke (elt _dt_lon i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _s_max
     (write-long (length _s_max) s)
     (dotimes (i (length _s_max))
       (sys::poke (elt _s_max i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _d_safe
     (write-long (length _d_safe) s)
     (dotimes (i (length _d_safe))
       (sys::poke (elt _d_safe i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ds_flag
     (write-long (length _ds_flag) s)
     (dotimes (i (length _ds_flag))
       (sys::poke (elt _ds_flag i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v_ref
     (write-long (length _v_ref) s)
     (dotimes (i (length _v_ref))
       (sys::poke (elt _v_ref i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _weights
     (write-long (length _weights) s)
     (dotimes (i (length _weights))
       (sys::poke (elt _weights i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _enable_prebrake
       (if _enable_prebrake (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_preacc
       (if _enable_preacc (write-byte -1 s) (write-byte 0 s))
     ;; bool _need_aeb
       (if _need_aeb (write-byte -1 s) (write-byte 0 s))
     ;; bool _pnc_start
       (if _pnc_start (write-byte -1 s) (write-byte 0 s))
     ;; bool _pnc_stop
       (if _pnc_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _blocked
       (if _blocked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _follow_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _follow_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _follow_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _overtake_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _overtake_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _overtake_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _lon_nudge_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lon_nudge_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lon_nudge_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _lead_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lead_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lead_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _tlead_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tlead_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tlead_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _lc_gap_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lc_gap_info (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lc_gap_info i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _id_yield_closest
     (setq _id_yield_closest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id_overtake_closest
     (setq _id_overtake_closest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tag_yield
     (setq _tag_yield (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _N_hard
     (setq _N_hard (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dt_yield
     (setq _dt_yield (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dt_set
     (setq _dt_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ds_set
     (setq _ds_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ds_yield
     (setq _ds_yield (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ds_overtake
     (setq _ds_overtake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_set
     (setq _v_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_yield_closest
     (setq _v_yield_closest (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_overtake_closest
     (setq _v_overtake_closest (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_lim
     (setq _v_lim (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_lim_map
     (setq _v_lim_map (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_set
     (setq _a_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_close
     (setq _dis_close (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _ds_lon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ds_lon (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ds_lon i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ttc_lon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ttc_lon (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ttc_lon i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _dt_lon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dt_lon (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dt_lon i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _s_max
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _s_max (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _s_max i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _d_safe
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d_safe (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d_safe i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ds_flag
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ds_flag (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ds_flag i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v_ref
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v_ref (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v_ref i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _weights
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weights (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _weights i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _enable_prebrake
     (setq _enable_prebrake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_preacc
     (setq _enable_preacc (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _need_aeb
     (setq _need_aeb (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pnc_start
     (setq _pnc_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pnc_stop
     (setq _pnc_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _blocked
     (setq _blocked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planning_msgs::LongitudinalDecision :md5sum-) "8b6fef25961d1618500e9ad81fa5cb3f")
(setf (get planning_msgs::LongitudinalDecision :datatype-) "planning_msgs/LongitudinalDecision")
(setf (get planning_msgs::LongitudinalDecision :definition-)
      "int32[] follow_obstacles
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

")



(provide :planning_msgs/LongitudinalDecision "8b6fef25961d1618500e9ad81fa5cb3f")


