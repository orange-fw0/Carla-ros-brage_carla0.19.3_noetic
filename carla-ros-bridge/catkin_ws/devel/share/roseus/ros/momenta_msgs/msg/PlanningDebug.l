;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PlanningDebug)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PlanningDebug (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PLANNINGDEBUG")
  (make-package "MOMENTA_MSGS::PLANNINGDEBUG"))

(in-package "ROS")
;;//! \htmlinclude PlanningDebug.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::PlanningDebug
  :super ros::object
  :slots (_header _lat_error _lon_error _flag_closelead _flag_invalid _flag_type0 _flag_softbrake _flag_fastcutin _v_set _ds_set _t_set _v_limit _num_yield _vl_yield _dsl_yield _type_yield _id_yield _tag_yield _type_merge _dis2cross _dsl_overtake _type_overtake _id_overtake _dis2merge _cutin_score _id_nudge _avd_info _lead_one_drel _lead_one_vrel _v_target _a_target _dis_to_stop _traffic_light_decision _lon_follow_obstacles _lon_overtake_obstacles _lat_nudge_obstacles _blocking_obstacle_id ))

(defmethod momenta_msgs::PlanningDebug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lat_error __lat_error) 0.0)
    ((:lon_error __lon_error) 0.0)
    ((:flag_closelead __flag_closelead) 0)
    ((:flag_invalid __flag_invalid) 0)
    ((:flag_type0 __flag_type0) 0)
    ((:flag_softbrake __flag_softbrake) 0)
    ((:flag_fastcutin __flag_fastcutin) 0)
    ((:v_set __v_set) 0.0)
    ((:ds_set __ds_set) 0.0)
    ((:t_set __t_set) 0.0)
    ((:v_limit __v_limit) 0.0)
    ((:num_yield __num_yield) 0)
    ((:vl_yield __vl_yield) 0.0)
    ((:dsl_yield __dsl_yield) 0.0)
    ((:type_yield __type_yield) 0)
    ((:id_yield __id_yield) 0)
    ((:tag_yield __tag_yield) 0)
    ((:type_merge __type_merge) 0)
    ((:dis2cross __dis2cross) 0.0)
    ((:dsl_overtake __dsl_overtake) 0.0)
    ((:type_overtake __type_overtake) 0)
    ((:id_overtake __id_overtake) 0)
    ((:dis2merge __dis2merge) 0.0)
    ((:cutin_score __cutin_score) 0.0)
    ((:id_nudge __id_nudge) 0)
    ((:avd_info __avd_info) ())
    ((:lead_one_drel __lead_one_drel) 0.0)
    ((:lead_one_vrel __lead_one_vrel) 0.0)
    ((:v_target __v_target) 0.0)
    ((:a_target __a_target) 0.0)
    ((:dis_to_stop __dis_to_stop) 0.0)
    ((:traffic_light_decision __traffic_light_decision) (make-array 0 :initial-element 0 :element-type :char))
    ((:lon_follow_obstacles __lon_follow_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lon_overtake_obstacles __lon_overtake_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lat_nudge_obstacles __lat_nudge_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:blocking_obstacle_id __blocking_obstacle_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lat_error (float __lat_error))
   (setq _lon_error (float __lon_error))
   (setq _flag_closelead (round __flag_closelead))
   (setq _flag_invalid (round __flag_invalid))
   (setq _flag_type0 (round __flag_type0))
   (setq _flag_softbrake (round __flag_softbrake))
   (setq _flag_fastcutin (round __flag_fastcutin))
   (setq _v_set (float __v_set))
   (setq _ds_set (float __ds_set))
   (setq _t_set (float __t_set))
   (setq _v_limit (float __v_limit))
   (setq _num_yield (round __num_yield))
   (setq _vl_yield (float __vl_yield))
   (setq _dsl_yield (float __dsl_yield))
   (setq _type_yield (round __type_yield))
   (setq _id_yield (round __id_yield))
   (setq _tag_yield (round __tag_yield))
   (setq _type_merge (round __type_merge))
   (setq _dis2cross (float __dis2cross))
   (setq _dsl_overtake (float __dsl_overtake))
   (setq _type_overtake (round __type_overtake))
   (setq _id_overtake (round __id_overtake))
   (setq _dis2merge (float __dis2merge))
   (setq _cutin_score (float __cutin_score))
   (setq _id_nudge (round __id_nudge))
   (setq _avd_info __avd_info)
   (setq _lead_one_drel (float __lead_one_drel))
   (setq _lead_one_vrel (float __lead_one_vrel))
   (setq _v_target (float __v_target))
   (setq _a_target (float __a_target))
   (setq _dis_to_stop (float __dis_to_stop))
   (setq _traffic_light_decision __traffic_light_decision)
   (setq _lon_follow_obstacles __lon_follow_obstacles)
   (setq _lon_overtake_obstacles __lon_overtake_obstacles)
   (setq _lat_nudge_obstacles __lat_nudge_obstacles)
   (setq _blocking_obstacle_id (round __blocking_obstacle_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lat_error
   (&optional __lat_error)
   (if __lat_error (setq _lat_error __lat_error)) _lat_error)
  (:lon_error
   (&optional __lon_error)
   (if __lon_error (setq _lon_error __lon_error)) _lon_error)
  (:flag_closelead
   (&optional __flag_closelead)
   (if __flag_closelead (setq _flag_closelead __flag_closelead)) _flag_closelead)
  (:flag_invalid
   (&optional __flag_invalid)
   (if __flag_invalid (setq _flag_invalid __flag_invalid)) _flag_invalid)
  (:flag_type0
   (&optional __flag_type0)
   (if __flag_type0 (setq _flag_type0 __flag_type0)) _flag_type0)
  (:flag_softbrake
   (&optional __flag_softbrake)
   (if __flag_softbrake (setq _flag_softbrake __flag_softbrake)) _flag_softbrake)
  (:flag_fastcutin
   (&optional __flag_fastcutin)
   (if __flag_fastcutin (setq _flag_fastcutin __flag_fastcutin)) _flag_fastcutin)
  (:v_set
   (&optional __v_set)
   (if __v_set (setq _v_set __v_set)) _v_set)
  (:ds_set
   (&optional __ds_set)
   (if __ds_set (setq _ds_set __ds_set)) _ds_set)
  (:t_set
   (&optional __t_set)
   (if __t_set (setq _t_set __t_set)) _t_set)
  (:v_limit
   (&optional __v_limit)
   (if __v_limit (setq _v_limit __v_limit)) _v_limit)
  (:num_yield
   (&optional __num_yield)
   (if __num_yield (setq _num_yield __num_yield)) _num_yield)
  (:vl_yield
   (&optional __vl_yield)
   (if __vl_yield (setq _vl_yield __vl_yield)) _vl_yield)
  (:dsl_yield
   (&optional __dsl_yield)
   (if __dsl_yield (setq _dsl_yield __dsl_yield)) _dsl_yield)
  (:type_yield
   (&optional __type_yield)
   (if __type_yield (setq _type_yield __type_yield)) _type_yield)
  (:id_yield
   (&optional __id_yield)
   (if __id_yield (setq _id_yield __id_yield)) _id_yield)
  (:tag_yield
   (&optional __tag_yield)
   (if __tag_yield (setq _tag_yield __tag_yield)) _tag_yield)
  (:type_merge
   (&optional __type_merge)
   (if __type_merge (setq _type_merge __type_merge)) _type_merge)
  (:dis2cross
   (&optional __dis2cross)
   (if __dis2cross (setq _dis2cross __dis2cross)) _dis2cross)
  (:dsl_overtake
   (&optional __dsl_overtake)
   (if __dsl_overtake (setq _dsl_overtake __dsl_overtake)) _dsl_overtake)
  (:type_overtake
   (&optional __type_overtake)
   (if __type_overtake (setq _type_overtake __type_overtake)) _type_overtake)
  (:id_overtake
   (&optional __id_overtake)
   (if __id_overtake (setq _id_overtake __id_overtake)) _id_overtake)
  (:dis2merge
   (&optional __dis2merge)
   (if __dis2merge (setq _dis2merge __dis2merge)) _dis2merge)
  (:cutin_score
   (&optional __cutin_score)
   (if __cutin_score (setq _cutin_score __cutin_score)) _cutin_score)
  (:id_nudge
   (&optional __id_nudge)
   (if __id_nudge (setq _id_nudge __id_nudge)) _id_nudge)
  (:avd_info
   (&rest __avd_info)
   (if (keywordp (car __avd_info))
       (send* _avd_info __avd_info)
     (progn
       (if __avd_info (setq _avd_info (car __avd_info)))
       _avd_info)))
  (:lead_one_drel
   (&optional __lead_one_drel)
   (if __lead_one_drel (setq _lead_one_drel __lead_one_drel)) _lead_one_drel)
  (:lead_one_vrel
   (&optional __lead_one_vrel)
   (if __lead_one_vrel (setq _lead_one_vrel __lead_one_vrel)) _lead_one_vrel)
  (:v_target
   (&optional __v_target)
   (if __v_target (setq _v_target __v_target)) _v_target)
  (:a_target
   (&optional __a_target)
   (if __a_target (setq _a_target __a_target)) _a_target)
  (:dis_to_stop
   (&optional __dis_to_stop)
   (if __dis_to_stop (setq _dis_to_stop __dis_to_stop)) _dis_to_stop)
  (:traffic_light_decision
   (&optional __traffic_light_decision)
   (if __traffic_light_decision (setq _traffic_light_decision __traffic_light_decision)) _traffic_light_decision)
  (:lon_follow_obstacles
   (&optional __lon_follow_obstacles)
   (if __lon_follow_obstacles (setq _lon_follow_obstacles __lon_follow_obstacles)) _lon_follow_obstacles)
  (:lon_overtake_obstacles
   (&optional __lon_overtake_obstacles)
   (if __lon_overtake_obstacles (setq _lon_overtake_obstacles __lon_overtake_obstacles)) _lon_overtake_obstacles)
  (:lat_nudge_obstacles
   (&optional __lat_nudge_obstacles)
   (if __lat_nudge_obstacles (setq _lat_nudge_obstacles __lat_nudge_obstacles)) _lat_nudge_obstacles)
  (:blocking_obstacle_id
   (&optional __blocking_obstacle_id)
   (if __blocking_obstacle_id (setq _blocking_obstacle_id __blocking_obstacle_id)) _blocking_obstacle_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _lat_error
    4
    ;; float32 _lon_error
    4
    ;; uint32 _flag_closelead
    4
    ;; uint32 _flag_invalid
    4
    ;; uint32 _flag_type0
    4
    ;; uint32 _flag_softbrake
    4
    ;; uint32 _flag_fastcutin
    4
    ;; float32 _v_set
    4
    ;; float32 _ds_set
    4
    ;; float32 _t_set
    4
    ;; float32 _v_limit
    4
    ;; uint32 _num_yield
    4
    ;; float32 _vl_yield
    4
    ;; float32 _dsl_yield
    4
    ;; uint32 _type_yield
    4
    ;; int32 _id_yield
    4
    ;; uint32 _tag_yield
    4
    ;; uint32 _type_merge
    4
    ;; float32 _dis2cross
    4
    ;; float32 _dsl_overtake
    4
    ;; uint32 _type_overtake
    4
    ;; int32 _id_overtake
    4
    ;; float32 _dis2merge
    4
    ;; float32 _cutin_score
    4
    ;; int32 _id_nudge
    4
    ;; momenta_msgs/AvdMsg[] _avd_info
    (apply #'+ (send-all _avd_info :serialization-length)) 4
    ;; float64 _lead_one_drel
    8
    ;; float64 _lead_one_vrel
    8
    ;; float32 _v_target
    4
    ;; float32 _a_target
    4
    ;; float32 _dis_to_stop
    4
    ;; uint8[] _traffic_light_decision
    (* 1    (length _traffic_light_decision)) 4
    ;; uint32[] _lon_follow_obstacles
    (* 4    (length _lon_follow_obstacles)) 4
    ;; uint32[] _lon_overtake_obstacles
    (* 4    (length _lon_overtake_obstacles)) 4
    ;; uint32[] _lat_nudge_obstacles
    (* 4    (length _lat_nudge_obstacles)) 4
    ;; uint32 _blocking_obstacle_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _lat_error
       (sys::poke _lat_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lon_error
       (sys::poke _lon_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _flag_closelead
       (write-long _flag_closelead s)
     ;; uint32 _flag_invalid
       (write-long _flag_invalid s)
     ;; uint32 _flag_type0
       (write-long _flag_type0 s)
     ;; uint32 _flag_softbrake
       (write-long _flag_softbrake s)
     ;; uint32 _flag_fastcutin
       (write-long _flag_fastcutin s)
     ;; float32 _v_set
       (sys::poke _v_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ds_set
       (sys::poke _ds_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_set
       (sys::poke _t_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_limit
       (sys::poke _v_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _num_yield
       (write-long _num_yield s)
     ;; float32 _vl_yield
       (sys::poke _vl_yield (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dsl_yield
       (sys::poke _dsl_yield (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _type_yield
       (write-long _type_yield s)
     ;; int32 _id_yield
       (write-long _id_yield s)
     ;; uint32 _tag_yield
       (write-long _tag_yield s)
     ;; uint32 _type_merge
       (write-long _type_merge s)
     ;; float32 _dis2cross
       (sys::poke _dis2cross (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dsl_overtake
       (sys::poke _dsl_overtake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _type_overtake
       (write-long _type_overtake s)
     ;; int32 _id_overtake
       (write-long _id_overtake s)
     ;; float32 _dis2merge
       (sys::poke _dis2merge (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cutin_score
       (sys::poke _cutin_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _id_nudge
       (write-long _id_nudge s)
     ;; momenta_msgs/AvdMsg[] _avd_info
     (write-long (length _avd_info) s)
     (dolist (elem _avd_info)
       (send elem :serialize s)
       )
     ;; float64 _lead_one_drel
       (sys::poke _lead_one_drel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lead_one_vrel
       (sys::poke _lead_one_vrel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _v_target
       (sys::poke _v_target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_target
       (sys::poke _a_target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_to_stop
       (sys::poke _dis_to_stop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8[] _traffic_light_decision
     (write-long (length _traffic_light_decision) s)
     (princ _traffic_light_decision s)
     ;; uint32[] _lon_follow_obstacles
     (write-long (length _lon_follow_obstacles) s)
     (dotimes (i (length _lon_follow_obstacles))
       (write-long (elt _lon_follow_obstacles i) s)
       )
     ;; uint32[] _lon_overtake_obstacles
     (write-long (length _lon_overtake_obstacles) s)
     (dotimes (i (length _lon_overtake_obstacles))
       (write-long (elt _lon_overtake_obstacles i) s)
       )
     ;; uint32[] _lat_nudge_obstacles
     (write-long (length _lat_nudge_obstacles) s)
     (dotimes (i (length _lat_nudge_obstacles))
       (write-long (elt _lat_nudge_obstacles i) s)
       )
     ;; uint32 _blocking_obstacle_id
       (write-long _blocking_obstacle_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _lat_error
     (setq _lat_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lon_error
     (setq _lon_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _flag_closelead
     (setq _flag_closelead (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _flag_invalid
     (setq _flag_invalid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _flag_type0
     (setq _flag_type0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _flag_softbrake
     (setq _flag_softbrake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _flag_fastcutin
     (setq _flag_fastcutin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _v_set
     (setq _v_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ds_set
     (setq _ds_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_set
     (setq _t_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_limit
     (setq _v_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _num_yield
     (setq _num_yield (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _vl_yield
     (setq _vl_yield (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dsl_yield
     (setq _dsl_yield (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _type_yield
     (setq _type_yield (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id_yield
     (setq _id_yield (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _tag_yield
     (setq _tag_yield (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _type_merge
     (setq _type_merge (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dis2cross
     (setq _dis2cross (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dsl_overtake
     (setq _dsl_overtake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _type_overtake
     (setq _type_overtake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _id_overtake
     (setq _id_overtake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dis2merge
     (setq _dis2merge (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cutin_score
     (setq _cutin_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _id_nudge
     (setq _id_nudge (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; momenta_msgs/AvdMsg[] _avd_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avd_info (let (r) (dotimes (i n) (push (instance momenta_msgs::AvdMsg :init) r)) r))
     (dolist (elem- _avd_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _lead_one_drel
     (setq _lead_one_drel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lead_one_vrel
     (setq _lead_one_vrel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _v_target
     (setq _v_target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_target
     (setq _a_target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_to_stop
     (setq _dis_to_stop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8[] _traffic_light_decision
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _traffic_light_decision (make-array n :element-type :char))
     (replace _traffic_light_decision buf :start2 ptr-) (incf ptr- n))
   ;; uint32[] _lon_follow_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lon_follow_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lon_follow_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _lon_overtake_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lon_overtake_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lon_overtake_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _lat_nudge_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lat_nudge_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lat_nudge_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _blocking_obstacle_id
     (setq _blocking_obstacle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::PlanningDebug :md5sum-) "61b16e947e5da19cb40ee8b20a1e8261")
(setf (get momenta_msgs::PlanningDebug :datatype-) "momenta_msgs/PlanningDebug")
(setf (get momenta_msgs::PlanningDebug :definition-)
      "std_msgs/Header header
float32 lat_error
float32 lon_error
uint32 flag_closelead
uint32 flag_invalid
uint32 flag_type0
uint32 flag_softbrake
uint32 flag_fastcutin
float32 v_set
float32 ds_set
float32 t_set
float32 v_limit
uint32 num_yield
float32 vl_yield
float32 dsl_yield
uint32 type_yield
int32 id_yield
uint32 tag_yield
uint32 type_merge
float32 dis2cross
float32 dsl_overtake
uint32 type_overtake
int32 id_overtake
float32 dis2merge
float32 cutin_score
int32 id_nudge
momenta_msgs/AvdMsg[] avd_info
float64 lead_one_drel
float64 lead_one_vrel
float32 v_target
float32 a_target
float32 dis_to_stop
uint8[] traffic_light_decision
uint32[] lon_follow_obstacles
uint32[] lon_overtake_obstacles
uint32[] lat_nudge_obstacles
uint32 blocking_obstacle_id

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
MSG: momenta_msgs/AvdMsg
int32 Id
string Property
bool Ignore
string AvdDirection

")



(provide :momenta_msgs/PlanningDebug "61b16e947e5da19cb40ee8b20a1e8261")


