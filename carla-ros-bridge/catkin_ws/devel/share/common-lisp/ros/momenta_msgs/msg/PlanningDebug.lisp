; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PlanningDebug.msg.html

(cl:defclass <PlanningDebug> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lat_error
    :reader lat_error
    :initarg :lat_error
    :type cl:float
    :initform 0.0)
   (lon_error
    :reader lon_error
    :initarg :lon_error
    :type cl:float
    :initform 0.0)
   (flag_closelead
    :reader flag_closelead
    :initarg :flag_closelead
    :type cl:integer
    :initform 0)
   (flag_invalid
    :reader flag_invalid
    :initarg :flag_invalid
    :type cl:integer
    :initform 0)
   (flag_type0
    :reader flag_type0
    :initarg :flag_type0
    :type cl:integer
    :initform 0)
   (flag_softbrake
    :reader flag_softbrake
    :initarg :flag_softbrake
    :type cl:integer
    :initform 0)
   (flag_fastcutin
    :reader flag_fastcutin
    :initarg :flag_fastcutin
    :type cl:integer
    :initform 0)
   (v_set
    :reader v_set
    :initarg :v_set
    :type cl:float
    :initform 0.0)
   (ds_set
    :reader ds_set
    :initarg :ds_set
    :type cl:float
    :initform 0.0)
   (t_set
    :reader t_set
    :initarg :t_set
    :type cl:float
    :initform 0.0)
   (v_limit
    :reader v_limit
    :initarg :v_limit
    :type cl:float
    :initform 0.0)
   (num_yield
    :reader num_yield
    :initarg :num_yield
    :type cl:integer
    :initform 0)
   (vl_yield
    :reader vl_yield
    :initarg :vl_yield
    :type cl:float
    :initform 0.0)
   (dsl_yield
    :reader dsl_yield
    :initarg :dsl_yield
    :type cl:float
    :initform 0.0)
   (type_yield
    :reader type_yield
    :initarg :type_yield
    :type cl:integer
    :initform 0)
   (id_yield
    :reader id_yield
    :initarg :id_yield
    :type cl:integer
    :initform 0)
   (tag_yield
    :reader tag_yield
    :initarg :tag_yield
    :type cl:integer
    :initform 0)
   (type_merge
    :reader type_merge
    :initarg :type_merge
    :type cl:integer
    :initform 0)
   (dis2cross
    :reader dis2cross
    :initarg :dis2cross
    :type cl:float
    :initform 0.0)
   (dsl_overtake
    :reader dsl_overtake
    :initarg :dsl_overtake
    :type cl:float
    :initform 0.0)
   (type_overtake
    :reader type_overtake
    :initarg :type_overtake
    :type cl:integer
    :initform 0)
   (id_overtake
    :reader id_overtake
    :initarg :id_overtake
    :type cl:integer
    :initform 0)
   (dis2merge
    :reader dis2merge
    :initarg :dis2merge
    :type cl:float
    :initform 0.0)
   (cutin_score
    :reader cutin_score
    :initarg :cutin_score
    :type cl:float
    :initform 0.0)
   (id_nudge
    :reader id_nudge
    :initarg :id_nudge
    :type cl:integer
    :initform 0)
   (avd_info
    :reader avd_info
    :initarg :avd_info
    :type (cl:vector momenta_msgs-msg:AvdMsg)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:AvdMsg :initial-element (cl:make-instance 'momenta_msgs-msg:AvdMsg)))
   (lead_one_drel
    :reader lead_one_drel
    :initarg :lead_one_drel
    :type cl:float
    :initform 0.0)
   (lead_one_vrel
    :reader lead_one_vrel
    :initarg :lead_one_vrel
    :type cl:float
    :initform 0.0)
   (v_target
    :reader v_target
    :initarg :v_target
    :type cl:float
    :initform 0.0)
   (a_target
    :reader a_target
    :initarg :a_target
    :type cl:float
    :initform 0.0)
   (dis_to_stop
    :reader dis_to_stop
    :initarg :dis_to_stop
    :type cl:float
    :initform 0.0)
   (traffic_light_decision
    :reader traffic_light_decision
    :initarg :traffic_light_decision
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (lon_follow_obstacles
    :reader lon_follow_obstacles
    :initarg :lon_follow_obstacles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (lon_overtake_obstacles
    :reader lon_overtake_obstacles
    :initarg :lon_overtake_obstacles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (lat_nudge_obstacles
    :reader lat_nudge_obstacles
    :initarg :lat_nudge_obstacles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (blocking_obstacle_id
    :reader blocking_obstacle_id
    :initarg :blocking_obstacle_id
    :type cl:integer
    :initform 0))
)

(cl:defclass PlanningDebug (<PlanningDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PlanningDebug> is deprecated: use momenta_msgs-msg:PlanningDebug instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lat_error-val :lambda-list '(m))
(cl:defmethod lat_error-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lat_error-val is deprecated.  Use momenta_msgs-msg:lat_error instead.")
  (lat_error m))

(cl:ensure-generic-function 'lon_error-val :lambda-list '(m))
(cl:defmethod lon_error-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lon_error-val is deprecated.  Use momenta_msgs-msg:lon_error instead.")
  (lon_error m))

(cl:ensure-generic-function 'flag_closelead-val :lambda-list '(m))
(cl:defmethod flag_closelead-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:flag_closelead-val is deprecated.  Use momenta_msgs-msg:flag_closelead instead.")
  (flag_closelead m))

(cl:ensure-generic-function 'flag_invalid-val :lambda-list '(m))
(cl:defmethod flag_invalid-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:flag_invalid-val is deprecated.  Use momenta_msgs-msg:flag_invalid instead.")
  (flag_invalid m))

(cl:ensure-generic-function 'flag_type0-val :lambda-list '(m))
(cl:defmethod flag_type0-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:flag_type0-val is deprecated.  Use momenta_msgs-msg:flag_type0 instead.")
  (flag_type0 m))

(cl:ensure-generic-function 'flag_softbrake-val :lambda-list '(m))
(cl:defmethod flag_softbrake-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:flag_softbrake-val is deprecated.  Use momenta_msgs-msg:flag_softbrake instead.")
  (flag_softbrake m))

(cl:ensure-generic-function 'flag_fastcutin-val :lambda-list '(m))
(cl:defmethod flag_fastcutin-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:flag_fastcutin-val is deprecated.  Use momenta_msgs-msg:flag_fastcutin instead.")
  (flag_fastcutin m))

(cl:ensure-generic-function 'v_set-val :lambda-list '(m))
(cl:defmethod v_set-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v_set-val is deprecated.  Use momenta_msgs-msg:v_set instead.")
  (v_set m))

(cl:ensure-generic-function 'ds_set-val :lambda-list '(m))
(cl:defmethod ds_set-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:ds_set-val is deprecated.  Use momenta_msgs-msg:ds_set instead.")
  (ds_set m))

(cl:ensure-generic-function 't_set-val :lambda-list '(m))
(cl:defmethod t_set-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:t_set-val is deprecated.  Use momenta_msgs-msg:t_set instead.")
  (t_set m))

(cl:ensure-generic-function 'v_limit-val :lambda-list '(m))
(cl:defmethod v_limit-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v_limit-val is deprecated.  Use momenta_msgs-msg:v_limit instead.")
  (v_limit m))

(cl:ensure-generic-function 'num_yield-val :lambda-list '(m))
(cl:defmethod num_yield-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:num_yield-val is deprecated.  Use momenta_msgs-msg:num_yield instead.")
  (num_yield m))

(cl:ensure-generic-function 'vl_yield-val :lambda-list '(m))
(cl:defmethod vl_yield-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:vl_yield-val is deprecated.  Use momenta_msgs-msg:vl_yield instead.")
  (vl_yield m))

(cl:ensure-generic-function 'dsl_yield-val :lambda-list '(m))
(cl:defmethod dsl_yield-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dsl_yield-val is deprecated.  Use momenta_msgs-msg:dsl_yield instead.")
  (dsl_yield m))

(cl:ensure-generic-function 'type_yield-val :lambda-list '(m))
(cl:defmethod type_yield-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:type_yield-val is deprecated.  Use momenta_msgs-msg:type_yield instead.")
  (type_yield m))

(cl:ensure-generic-function 'id_yield-val :lambda-list '(m))
(cl:defmethod id_yield-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id_yield-val is deprecated.  Use momenta_msgs-msg:id_yield instead.")
  (id_yield m))

(cl:ensure-generic-function 'tag_yield-val :lambda-list '(m))
(cl:defmethod tag_yield-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:tag_yield-val is deprecated.  Use momenta_msgs-msg:tag_yield instead.")
  (tag_yield m))

(cl:ensure-generic-function 'type_merge-val :lambda-list '(m))
(cl:defmethod type_merge-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:type_merge-val is deprecated.  Use momenta_msgs-msg:type_merge instead.")
  (type_merge m))

(cl:ensure-generic-function 'dis2cross-val :lambda-list '(m))
(cl:defmethod dis2cross-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dis2cross-val is deprecated.  Use momenta_msgs-msg:dis2cross instead.")
  (dis2cross m))

(cl:ensure-generic-function 'dsl_overtake-val :lambda-list '(m))
(cl:defmethod dsl_overtake-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dsl_overtake-val is deprecated.  Use momenta_msgs-msg:dsl_overtake instead.")
  (dsl_overtake m))

(cl:ensure-generic-function 'type_overtake-val :lambda-list '(m))
(cl:defmethod type_overtake-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:type_overtake-val is deprecated.  Use momenta_msgs-msg:type_overtake instead.")
  (type_overtake m))

(cl:ensure-generic-function 'id_overtake-val :lambda-list '(m))
(cl:defmethod id_overtake-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id_overtake-val is deprecated.  Use momenta_msgs-msg:id_overtake instead.")
  (id_overtake m))

(cl:ensure-generic-function 'dis2merge-val :lambda-list '(m))
(cl:defmethod dis2merge-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dis2merge-val is deprecated.  Use momenta_msgs-msg:dis2merge instead.")
  (dis2merge m))

(cl:ensure-generic-function 'cutin_score-val :lambda-list '(m))
(cl:defmethod cutin_score-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:cutin_score-val is deprecated.  Use momenta_msgs-msg:cutin_score instead.")
  (cutin_score m))

(cl:ensure-generic-function 'id_nudge-val :lambda-list '(m))
(cl:defmethod id_nudge-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id_nudge-val is deprecated.  Use momenta_msgs-msg:id_nudge instead.")
  (id_nudge m))

(cl:ensure-generic-function 'avd_info-val :lambda-list '(m))
(cl:defmethod avd_info-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:avd_info-val is deprecated.  Use momenta_msgs-msg:avd_info instead.")
  (avd_info m))

(cl:ensure-generic-function 'lead_one_drel-val :lambda-list '(m))
(cl:defmethod lead_one_drel-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lead_one_drel-val is deprecated.  Use momenta_msgs-msg:lead_one_drel instead.")
  (lead_one_drel m))

(cl:ensure-generic-function 'lead_one_vrel-val :lambda-list '(m))
(cl:defmethod lead_one_vrel-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lead_one_vrel-val is deprecated.  Use momenta_msgs-msg:lead_one_vrel instead.")
  (lead_one_vrel m))

(cl:ensure-generic-function 'v_target-val :lambda-list '(m))
(cl:defmethod v_target-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v_target-val is deprecated.  Use momenta_msgs-msg:v_target instead.")
  (v_target m))

(cl:ensure-generic-function 'a_target-val :lambda-list '(m))
(cl:defmethod a_target-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:a_target-val is deprecated.  Use momenta_msgs-msg:a_target instead.")
  (a_target m))

(cl:ensure-generic-function 'dis_to_stop-val :lambda-list '(m))
(cl:defmethod dis_to_stop-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dis_to_stop-val is deprecated.  Use momenta_msgs-msg:dis_to_stop instead.")
  (dis_to_stop m))

(cl:ensure-generic-function 'traffic_light_decision-val :lambda-list '(m))
(cl:defmethod traffic_light_decision-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:traffic_light_decision-val is deprecated.  Use momenta_msgs-msg:traffic_light_decision instead.")
  (traffic_light_decision m))

(cl:ensure-generic-function 'lon_follow_obstacles-val :lambda-list '(m))
(cl:defmethod lon_follow_obstacles-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lon_follow_obstacles-val is deprecated.  Use momenta_msgs-msg:lon_follow_obstacles instead.")
  (lon_follow_obstacles m))

(cl:ensure-generic-function 'lon_overtake_obstacles-val :lambda-list '(m))
(cl:defmethod lon_overtake_obstacles-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lon_overtake_obstacles-val is deprecated.  Use momenta_msgs-msg:lon_overtake_obstacles instead.")
  (lon_overtake_obstacles m))

(cl:ensure-generic-function 'lat_nudge_obstacles-val :lambda-list '(m))
(cl:defmethod lat_nudge_obstacles-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lat_nudge_obstacles-val is deprecated.  Use momenta_msgs-msg:lat_nudge_obstacles instead.")
  (lat_nudge_obstacles m))

(cl:ensure-generic-function 'blocking_obstacle_id-val :lambda-list '(m))
(cl:defmethod blocking_obstacle_id-val ((m <PlanningDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:blocking_obstacle_id-val is deprecated.  Use momenta_msgs-msg:blocking_obstacle_id instead.")
  (blocking_obstacle_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningDebug>) ostream)
  "Serializes a message object of type '<PlanningDebug>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lon_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_closelead)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_closelead)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_closelead)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_closelead)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_invalid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_invalid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_invalid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_invalid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_type0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_type0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_type0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_type0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_softbrake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_softbrake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_softbrake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_softbrake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_fastcutin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_fastcutin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_fastcutin)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_fastcutin)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ds_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 't_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_yield)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vl_yield))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dsl_yield))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_yield)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id_yield)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tag_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tag_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tag_yield)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_merge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_merge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_merge)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_merge)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis2cross))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dsl_overtake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_overtake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_overtake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_overtake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_overtake)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id_overtake)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis2merge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cutin_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'id_nudge)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avd_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'avd_info))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lead_one_drel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lead_one_vrel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_to_stop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_decision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'traffic_light_decision))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lon_follow_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'lon_follow_obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lon_overtake_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'lon_overtake_obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lat_nudge_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'lat_nudge_obstacles))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blocking_obstacle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blocking_obstacle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'blocking_obstacle_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'blocking_obstacle_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningDebug>) istream)
  "Deserializes a message object of type '<PlanningDebug>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_closelead)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_closelead)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_closelead)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_closelead)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_invalid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_invalid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_invalid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_invalid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_type0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_type0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_type0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_type0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_softbrake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_softbrake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_softbrake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_softbrake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag_fastcutin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flag_fastcutin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flag_fastcutin)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flag_fastcutin)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ds_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't_set) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_yield)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vl_yield) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dsl_yield) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_yield)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_yield) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tag_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tag_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tag_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tag_yield)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_merge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_merge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_merge)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_merge)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis2cross) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dsl_overtake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_overtake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type_overtake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type_overtake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type_overtake)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_overtake) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis2merge) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cutin_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_nudge) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avd_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avd_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'momenta_msgs-msg:AvdMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lead_one_drel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lead_one_vrel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_target) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a_target) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_to_stop) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_decision) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_decision)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lon_follow_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lon_follow_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lon_overtake_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lon_overtake_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lat_nudge_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lat_nudge_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blocking_obstacle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blocking_obstacle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'blocking_obstacle_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'blocking_obstacle_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningDebug>)))
  "Returns string type for a message object of type '<PlanningDebug>"
  "momenta_msgs/PlanningDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningDebug)))
  "Returns string type for a message object of type 'PlanningDebug"
  "momenta_msgs/PlanningDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningDebug>)))
  "Returns md5sum for a message object of type '<PlanningDebug>"
  "61b16e947e5da19cb40ee8b20a1e8261")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningDebug)))
  "Returns md5sum for a message object of type 'PlanningDebug"
  "61b16e947e5da19cb40ee8b20a1e8261")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningDebug>)))
  "Returns full string definition for message of type '<PlanningDebug>"
  (cl:format cl:nil "std_msgs/Header header~%float32 lat_error~%float32 lon_error~%uint32 flag_closelead~%uint32 flag_invalid~%uint32 flag_type0~%uint32 flag_softbrake~%uint32 flag_fastcutin~%float32 v_set~%float32 ds_set~%float32 t_set~%float32 v_limit~%uint32 num_yield~%float32 vl_yield~%float32 dsl_yield~%uint32 type_yield~%int32 id_yield~%uint32 tag_yield~%uint32 type_merge~%float32 dis2cross~%float32 dsl_overtake~%uint32 type_overtake~%int32 id_overtake~%float32 dis2merge~%float32 cutin_score~%int32 id_nudge~%momenta_msgs/AvdMsg[] avd_info~%float64 lead_one_drel~%float64 lead_one_vrel~%float32 v_target~%float32 a_target~%float32 dis_to_stop~%uint8[] traffic_light_decision~%uint32[] lon_follow_obstacles~%uint32[] lon_overtake_obstacles~%uint32[] lat_nudge_obstacles~%uint32 blocking_obstacle_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/AvdMsg~%int32 Id~%string Property~%bool Ignore~%string AvdDirection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningDebug)))
  "Returns full string definition for message of type 'PlanningDebug"
  (cl:format cl:nil "std_msgs/Header header~%float32 lat_error~%float32 lon_error~%uint32 flag_closelead~%uint32 flag_invalid~%uint32 flag_type0~%uint32 flag_softbrake~%uint32 flag_fastcutin~%float32 v_set~%float32 ds_set~%float32 t_set~%float32 v_limit~%uint32 num_yield~%float32 vl_yield~%float32 dsl_yield~%uint32 type_yield~%int32 id_yield~%uint32 tag_yield~%uint32 type_merge~%float32 dis2cross~%float32 dsl_overtake~%uint32 type_overtake~%int32 id_overtake~%float32 dis2merge~%float32 cutin_score~%int32 id_nudge~%momenta_msgs/AvdMsg[] avd_info~%float64 lead_one_drel~%float64 lead_one_vrel~%float32 v_target~%float32 a_target~%float32 dis_to_stop~%uint8[] traffic_light_decision~%uint32[] lon_follow_obstacles~%uint32[] lon_overtake_obstacles~%uint32[] lat_nudge_obstacles~%uint32 blocking_obstacle_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/AvdMsg~%int32 Id~%string Property~%bool Ignore~%string AvdDirection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningDebug>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avd_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_decision) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lon_follow_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lon_overtake_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat_nudge_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningDebug
    (cl:cons ':header (header msg))
    (cl:cons ':lat_error (lat_error msg))
    (cl:cons ':lon_error (lon_error msg))
    (cl:cons ':flag_closelead (flag_closelead msg))
    (cl:cons ':flag_invalid (flag_invalid msg))
    (cl:cons ':flag_type0 (flag_type0 msg))
    (cl:cons ':flag_softbrake (flag_softbrake msg))
    (cl:cons ':flag_fastcutin (flag_fastcutin msg))
    (cl:cons ':v_set (v_set msg))
    (cl:cons ':ds_set (ds_set msg))
    (cl:cons ':t_set (t_set msg))
    (cl:cons ':v_limit (v_limit msg))
    (cl:cons ':num_yield (num_yield msg))
    (cl:cons ':vl_yield (vl_yield msg))
    (cl:cons ':dsl_yield (dsl_yield msg))
    (cl:cons ':type_yield (type_yield msg))
    (cl:cons ':id_yield (id_yield msg))
    (cl:cons ':tag_yield (tag_yield msg))
    (cl:cons ':type_merge (type_merge msg))
    (cl:cons ':dis2cross (dis2cross msg))
    (cl:cons ':dsl_overtake (dsl_overtake msg))
    (cl:cons ':type_overtake (type_overtake msg))
    (cl:cons ':id_overtake (id_overtake msg))
    (cl:cons ':dis2merge (dis2merge msg))
    (cl:cons ':cutin_score (cutin_score msg))
    (cl:cons ':id_nudge (id_nudge msg))
    (cl:cons ':avd_info (avd_info msg))
    (cl:cons ':lead_one_drel (lead_one_drel msg))
    (cl:cons ':lead_one_vrel (lead_one_vrel msg))
    (cl:cons ':v_target (v_target msg))
    (cl:cons ':a_target (a_target msg))
    (cl:cons ':dis_to_stop (dis_to_stop msg))
    (cl:cons ':traffic_light_decision (traffic_light_decision msg))
    (cl:cons ':lon_follow_obstacles (lon_follow_obstacles msg))
    (cl:cons ':lon_overtake_obstacles (lon_overtake_obstacles msg))
    (cl:cons ':lat_nudge_obstacles (lat_nudge_obstacles msg))
    (cl:cons ':blocking_obstacle_id (blocking_obstacle_id msg))
))
