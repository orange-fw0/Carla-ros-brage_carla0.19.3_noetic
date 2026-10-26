; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude LateralDecision.msg.html

(cl:defclass <LateralDecision> (roslisp-msg-protocol:ros-message)
  ((nudge_obstacles
    :reader nudge_obstacles
    :initarg :nudge_obstacles
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (lat_motion_decider
    :reader lat_motion_decider
    :initarg :lat_motion_decider
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (desire_offset
    :reader desire_offset
    :initarg :desire_offset
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (avd_info
    :reader avd_info
    :initarg :avd_info
    :type (cl:vector planning_msgs-msg:AvdMsg)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:AvdMsg :initial-element (cl:make-instance 'planning_msgs-msg:AvdMsg)))
   (accident_ahead
    :reader accident_ahead
    :initarg :accident_ahead
    :type cl:boolean
    :initform cl:nil)
   (disable_left
    :reader disable_left
    :initarg :disable_left
    :type cl:boolean
    :initform cl:nil)
   (disable_right
    :reader disable_right
    :initarg :disable_right
    :type cl:boolean
    :initform cl:nil)
   (enable_left
    :reader enable_left
    :initarg :enable_left
    :type cl:boolean
    :initform cl:nil)
   (enable_right
    :reader enable_right
    :initarg :enable_right
    :type cl:boolean
    :initform cl:nil)
   (lane_borrow
    :reader lane_borrow
    :initarg :lane_borrow
    :type cl:boolean
    :initform cl:nil)
   (lane_borrow_range
    :reader lane_borrow_range
    :initarg :lane_borrow_range
    :type cl:integer
    :initform 0)
   (lat_offset
    :reader lat_offset
    :initarg :lat_offset
    :type cl:float
    :initform 0.0)
   (fix_refline_index
    :reader fix_refline_index
    :initarg :fix_refline_index
    :type cl:integer
    :initform 0)
   (origin_refline_index
    :reader origin_refline_index
    :initarg :origin_refline_index
    :type cl:integer
    :initform 0)
   (target_refline_index
    :reader target_refline_index
    :initarg :target_refline_index
    :type cl:integer
    :initform 0)
   (sb_Blane
    :reader sb_Blane
    :initarg :sb_Blane
    :type cl:boolean
    :initform cl:nil)
   (sb_lane
    :reader sb_lane
    :initarg :sb_lane
    :type cl:boolean
    :initform cl:nil)
   (avd_car_past_fisrt
    :reader avd_car_past_fisrt
    :initarg :avd_car_past_fisrt
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (avd_car_past_second
    :reader avd_car_past_second
    :initarg :avd_car_past_second
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (avd_sp_car_past_first
    :reader avd_sp_car_past_first
    :initarg :avd_sp_car_past_first
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (avd_sp_car_past_second
    :reader avd_sp_car_past_second
    :initarg :avd_sp_car_past_second
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (alc_car_id
    :reader alc_car_id
    :initarg :alc_car_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (lb_car_id
    :reader lb_car_id
    :initarg :lb_car_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (lc_back_id
    :reader lc_back_id
    :initarg :lc_back_id
    :type cl:integer
    :initform 0)
   (lc_invalid_id
    :reader lc_invalid_id
    :initarg :lc_invalid_id
    :type cl:integer
    :initform 0)
   (dl_lat
    :reader dl_lat
    :initarg :dl_lat
    :type cl:float
    :initform 0.0)
   (ttc_lat
    :reader ttc_lat
    :initarg :ttc_lat
    :type cl:float
    :initform 0.0)
   (dt_lat
    :reader dt_lat
    :initarg :dt_lat
    :type cl:float
    :initform 0.0)
   (fvfdead
    :reader fvfdead
    :initarg :fvfdead
    :type cl:boolean
    :initform cl:nil)
   (svfdead
    :reader svfdead
    :initarg :svfdead
    :type cl:boolean
    :initform cl:nil)
   (premoving
    :reader premoving
    :initarg :premoving
    :type cl:boolean
    :initform cl:nil)
   (premove_dist
    :reader premove_dist
    :initarg :premove_dist
    :type cl:float
    :initform 0.0)
   (init_val
    :reader init_val
    :initarg :init_val
    :type (cl:vector planning_msgs-msg:Pose2d)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Pose2d :initial-element (cl:make-instance 'planning_msgs-msg:Pose2d)))
   (via_points
    :reader via_points
    :initarg :via_points
    :type (cl:vector planning_msgs-msg:Pose2d)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:Pose2d :initial-element (cl:make-instance 'planning_msgs-msg:Pose2d))))
)

(cl:defclass LateralDecision (<LateralDecision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LateralDecision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LateralDecision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<LateralDecision> is deprecated: use planning_msgs-msg:LateralDecision instead.")))

(cl:ensure-generic-function 'nudge_obstacles-val :lambda-list '(m))
(cl:defmethod nudge_obstacles-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:nudge_obstacles-val is deprecated.  Use planning_msgs-msg:nudge_obstacles instead.")
  (nudge_obstacles m))

(cl:ensure-generic-function 'lat_motion_decider-val :lambda-list '(m))
(cl:defmethod lat_motion_decider-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_motion_decider-val is deprecated.  Use planning_msgs-msg:lat_motion_decider instead.")
  (lat_motion_decider m))

(cl:ensure-generic-function 'desire_offset-val :lambda-list '(m))
(cl:defmethod desire_offset-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:desire_offset-val is deprecated.  Use planning_msgs-msg:desire_offset instead.")
  (desire_offset m))

(cl:ensure-generic-function 'avd_info-val :lambda-list '(m))
(cl:defmethod avd_info-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:avd_info-val is deprecated.  Use planning_msgs-msg:avd_info instead.")
  (avd_info m))

(cl:ensure-generic-function 'accident_ahead-val :lambda-list '(m))
(cl:defmethod accident_ahead-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:accident_ahead-val is deprecated.  Use planning_msgs-msg:accident_ahead instead.")
  (accident_ahead m))

(cl:ensure-generic-function 'disable_left-val :lambda-list '(m))
(cl:defmethod disable_left-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:disable_left-val is deprecated.  Use planning_msgs-msg:disable_left instead.")
  (disable_left m))

(cl:ensure-generic-function 'disable_right-val :lambda-list '(m))
(cl:defmethod disable_right-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:disable_right-val is deprecated.  Use planning_msgs-msg:disable_right instead.")
  (disable_right m))

(cl:ensure-generic-function 'enable_left-val :lambda-list '(m))
(cl:defmethod enable_left-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enable_left-val is deprecated.  Use planning_msgs-msg:enable_left instead.")
  (enable_left m))

(cl:ensure-generic-function 'enable_right-val :lambda-list '(m))
(cl:defmethod enable_right-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:enable_right-val is deprecated.  Use planning_msgs-msg:enable_right instead.")
  (enable_right m))

(cl:ensure-generic-function 'lane_borrow-val :lambda-list '(m))
(cl:defmethod lane_borrow-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lane_borrow-val is deprecated.  Use planning_msgs-msg:lane_borrow instead.")
  (lane_borrow m))

(cl:ensure-generic-function 'lane_borrow_range-val :lambda-list '(m))
(cl:defmethod lane_borrow_range-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lane_borrow_range-val is deprecated.  Use planning_msgs-msg:lane_borrow_range instead.")
  (lane_borrow_range m))

(cl:ensure-generic-function 'lat_offset-val :lambda-list '(m))
(cl:defmethod lat_offset-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lat_offset-val is deprecated.  Use planning_msgs-msg:lat_offset instead.")
  (lat_offset m))

(cl:ensure-generic-function 'fix_refline_index-val :lambda-list '(m))
(cl:defmethod fix_refline_index-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:fix_refline_index-val is deprecated.  Use planning_msgs-msg:fix_refline_index instead.")
  (fix_refline_index m))

(cl:ensure-generic-function 'origin_refline_index-val :lambda-list '(m))
(cl:defmethod origin_refline_index-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:origin_refline_index-val is deprecated.  Use planning_msgs-msg:origin_refline_index instead.")
  (origin_refline_index m))

(cl:ensure-generic-function 'target_refline_index-val :lambda-list '(m))
(cl:defmethod target_refline_index-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:target_refline_index-val is deprecated.  Use planning_msgs-msg:target_refline_index instead.")
  (target_refline_index m))

(cl:ensure-generic-function 'sb_Blane-val :lambda-list '(m))
(cl:defmethod sb_Blane-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:sb_Blane-val is deprecated.  Use planning_msgs-msg:sb_Blane instead.")
  (sb_Blane m))

(cl:ensure-generic-function 'sb_lane-val :lambda-list '(m))
(cl:defmethod sb_lane-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:sb_lane-val is deprecated.  Use planning_msgs-msg:sb_lane instead.")
  (sb_lane m))

(cl:ensure-generic-function 'avd_car_past_fisrt-val :lambda-list '(m))
(cl:defmethod avd_car_past_fisrt-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:avd_car_past_fisrt-val is deprecated.  Use planning_msgs-msg:avd_car_past_fisrt instead.")
  (avd_car_past_fisrt m))

(cl:ensure-generic-function 'avd_car_past_second-val :lambda-list '(m))
(cl:defmethod avd_car_past_second-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:avd_car_past_second-val is deprecated.  Use planning_msgs-msg:avd_car_past_second instead.")
  (avd_car_past_second m))

(cl:ensure-generic-function 'avd_sp_car_past_first-val :lambda-list '(m))
(cl:defmethod avd_sp_car_past_first-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:avd_sp_car_past_first-val is deprecated.  Use planning_msgs-msg:avd_sp_car_past_first instead.")
  (avd_sp_car_past_first m))

(cl:ensure-generic-function 'avd_sp_car_past_second-val :lambda-list '(m))
(cl:defmethod avd_sp_car_past_second-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:avd_sp_car_past_second-val is deprecated.  Use planning_msgs-msg:avd_sp_car_past_second instead.")
  (avd_sp_car_past_second m))

(cl:ensure-generic-function 'alc_car_id-val :lambda-list '(m))
(cl:defmethod alc_car_id-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:alc_car_id-val is deprecated.  Use planning_msgs-msg:alc_car_id instead.")
  (alc_car_id m))

(cl:ensure-generic-function 'lb_car_id-val :lambda-list '(m))
(cl:defmethod lb_car_id-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lb_car_id-val is deprecated.  Use planning_msgs-msg:lb_car_id instead.")
  (lb_car_id m))

(cl:ensure-generic-function 'lc_back_id-val :lambda-list '(m))
(cl:defmethod lc_back_id-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lc_back_id-val is deprecated.  Use planning_msgs-msg:lc_back_id instead.")
  (lc_back_id m))

(cl:ensure-generic-function 'lc_invalid_id-val :lambda-list '(m))
(cl:defmethod lc_invalid_id-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:lc_invalid_id-val is deprecated.  Use planning_msgs-msg:lc_invalid_id instead.")
  (lc_invalid_id m))

(cl:ensure-generic-function 'dl_lat-val :lambda-list '(m))
(cl:defmethod dl_lat-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:dl_lat-val is deprecated.  Use planning_msgs-msg:dl_lat instead.")
  (dl_lat m))

(cl:ensure-generic-function 'ttc_lat-val :lambda-list '(m))
(cl:defmethod ttc_lat-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:ttc_lat-val is deprecated.  Use planning_msgs-msg:ttc_lat instead.")
  (ttc_lat m))

(cl:ensure-generic-function 'dt_lat-val :lambda-list '(m))
(cl:defmethod dt_lat-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:dt_lat-val is deprecated.  Use planning_msgs-msg:dt_lat instead.")
  (dt_lat m))

(cl:ensure-generic-function 'fvfdead-val :lambda-list '(m))
(cl:defmethod fvfdead-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:fvfdead-val is deprecated.  Use planning_msgs-msg:fvfdead instead.")
  (fvfdead m))

(cl:ensure-generic-function 'svfdead-val :lambda-list '(m))
(cl:defmethod svfdead-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:svfdead-val is deprecated.  Use planning_msgs-msg:svfdead instead.")
  (svfdead m))

(cl:ensure-generic-function 'premoving-val :lambda-list '(m))
(cl:defmethod premoving-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:premoving-val is deprecated.  Use planning_msgs-msg:premoving instead.")
  (premoving m))

(cl:ensure-generic-function 'premove_dist-val :lambda-list '(m))
(cl:defmethod premove_dist-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:premove_dist-val is deprecated.  Use planning_msgs-msg:premove_dist instead.")
  (premove_dist m))

(cl:ensure-generic-function 'init_val-val :lambda-list '(m))
(cl:defmethod init_val-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:init_val-val is deprecated.  Use planning_msgs-msg:init_val instead.")
  (init_val m))

(cl:ensure-generic-function 'via_points-val :lambda-list '(m))
(cl:defmethod via_points-val ((m <LateralDecision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:via_points-val is deprecated.  Use planning_msgs-msg:via_points instead.")
  (via_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LateralDecision>) ostream)
  "Serializes a message object of type '<LateralDecision>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nudge_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'nudge_obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lat_motion_decider))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'lat_motion_decider))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'desire_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'desire_offset))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avd_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'avd_info))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accident_ahead) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lane_borrow) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lane_borrow_range)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'fix_refline_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'origin_refline_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_refline_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sb_Blane) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sb_lane) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avd_car_past_fisrt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'avd_car_past_fisrt))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avd_car_past_second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'avd_car_past_second))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avd_sp_car_past_first))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'avd_sp_car_past_first))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avd_sp_car_past_second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'avd_sp_car_past_second))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'alc_car_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'alc_car_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lb_car_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'lb_car_id))
  (cl:let* ((signed (cl:slot-value msg 'lc_back_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lc_invalid_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dl_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ttc_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dt_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fvfdead) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'svfdead) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'premoving) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'premove_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'init_val))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'init_val))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'via_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'via_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LateralDecision>) istream)
  "Deserializes a message object of type '<LateralDecision>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nudge_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nudge_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lat_motion_decider) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lat_motion_decider)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'desire_offset) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'desire_offset)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avd_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avd_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:AvdMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'accident_ahead) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disable_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disable_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lane_borrow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_borrow_range) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fix_refline_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'origin_refline_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_refline_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'sb_Blane) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sb_lane) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avd_car_past_fisrt) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avd_car_past_fisrt)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avd_car_past_second) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avd_car_past_second)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avd_sp_car_past_first) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avd_sp_car_past_first)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avd_sp_car_past_second) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avd_sp_car_past_second)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'alc_car_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'alc_car_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lb_car_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lb_car_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lc_back_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lc_invalid_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dl_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ttc_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'fvfdead) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'svfdead) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'premoving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'premove_dist) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'init_val) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'init_val)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Pose2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'via_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'via_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:Pose2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LateralDecision>)))
  "Returns string type for a message object of type '<LateralDecision>"
  "planning_msgs/LateralDecision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LateralDecision)))
  "Returns string type for a message object of type 'LateralDecision"
  "planning_msgs/LateralDecision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LateralDecision>)))
  "Returns md5sum for a message object of type '<LateralDecision>"
  "abbf66c2e9bbbb15772b9ad765baa0a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LateralDecision)))
  "Returns md5sum for a message object of type 'LateralDecision"
  "abbf66c2e9bbbb15772b9ad765baa0a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LateralDecision>)))
  "Returns full string definition for message of type '<LateralDecision>"
  (cl:format cl:nil "int32[] nudge_obstacles~%int32[] lat_motion_decider~%float32[] desire_offset~%planning_msgs/AvdMsg[] avd_info~%bool accident_ahead~%bool disable_left~%bool disable_right~%bool enable_left~%bool enable_right~%bool lane_borrow~%int32 lane_borrow_range~%float32 lat_offset~%int32 fix_refline_index~%int32 origin_refline_index~%int32 target_refline_index~%bool sb_Blane~%bool sb_lane~%float32[] avd_car_past_fisrt~%float32[] avd_car_past_second~%float32[] avd_sp_car_past_first~%float32[] avd_sp_car_past_second~%int32[] alc_car_id~%int32[] lb_car_id~%int32 lc_back_id~%int32 lc_invalid_id~%float32 dl_lat~%float32 ttc_lat~%float32 dt_lat~%bool fvfdead~%bool svfdead~%bool premoving~%float32 premove_dist~%planning_msgs/Pose2d[] init_val~%planning_msgs/Pose2d[] via_points~%~%================================================================================~%MSG: planning_msgs/AvdMsg~%int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Pose2d~%planning_msgs/Point2d position~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LateralDecision)))
  "Returns full string definition for message of type 'LateralDecision"
  (cl:format cl:nil "int32[] nudge_obstacles~%int32[] lat_motion_decider~%float32[] desire_offset~%planning_msgs/AvdMsg[] avd_info~%bool accident_ahead~%bool disable_left~%bool disable_right~%bool enable_left~%bool enable_right~%bool lane_borrow~%int32 lane_borrow_range~%float32 lat_offset~%int32 fix_refline_index~%int32 origin_refline_index~%int32 target_refline_index~%bool sb_Blane~%bool sb_lane~%float32[] avd_car_past_fisrt~%float32[] avd_car_past_second~%float32[] avd_sp_car_past_first~%float32[] avd_sp_car_past_second~%int32[] alc_car_id~%int32[] lb_car_id~%int32 lc_back_id~%int32 lc_invalid_id~%float32 dl_lat~%float32 ttc_lat~%float32 dt_lat~%bool fvfdead~%bool svfdead~%bool premoving~%float32 premove_dist~%planning_msgs/Pose2d[] init_val~%planning_msgs/Pose2d[] via_points~%~%================================================================================~%MSG: planning_msgs/AvdMsg~%int32 id~%string property~%bool ignore~%string avd_direction~%int32 avd_priority~%float32 blocked_time_begin~%float32 blocked_time_end~%planning_msgs/Point2d[] polygon~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%================================================================================~%MSG: planning_msgs/Pose2d~%planning_msgs/Point2d position~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LateralDecision>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nudge_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lat_motion_decider) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'desire_offset) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avd_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     1
     1
     1
     4
     4
     4
     4
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avd_car_past_fisrt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avd_car_past_second) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avd_sp_car_past_first) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avd_sp_car_past_second) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'alc_car_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lb_car_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     1
     1
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'init_val) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'via_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LateralDecision>))
  "Converts a ROS message object to a list"
  (cl:list 'LateralDecision
    (cl:cons ':nudge_obstacles (nudge_obstacles msg))
    (cl:cons ':lat_motion_decider (lat_motion_decider msg))
    (cl:cons ':desire_offset (desire_offset msg))
    (cl:cons ':avd_info (avd_info msg))
    (cl:cons ':accident_ahead (accident_ahead msg))
    (cl:cons ':disable_left (disable_left msg))
    (cl:cons ':disable_right (disable_right msg))
    (cl:cons ':enable_left (enable_left msg))
    (cl:cons ':enable_right (enable_right msg))
    (cl:cons ':lane_borrow (lane_borrow msg))
    (cl:cons ':lane_borrow_range (lane_borrow_range msg))
    (cl:cons ':lat_offset (lat_offset msg))
    (cl:cons ':fix_refline_index (fix_refline_index msg))
    (cl:cons ':origin_refline_index (origin_refline_index msg))
    (cl:cons ':target_refline_index (target_refline_index msg))
    (cl:cons ':sb_Blane (sb_Blane msg))
    (cl:cons ':sb_lane (sb_lane msg))
    (cl:cons ':avd_car_past_fisrt (avd_car_past_fisrt msg))
    (cl:cons ':avd_car_past_second (avd_car_past_second msg))
    (cl:cons ':avd_sp_car_past_first (avd_sp_car_past_first msg))
    (cl:cons ':avd_sp_car_past_second (avd_sp_car_past_second msg))
    (cl:cons ':alc_car_id (alc_car_id msg))
    (cl:cons ':lb_car_id (lb_car_id msg))
    (cl:cons ':lc_back_id (lc_back_id msg))
    (cl:cons ':lc_invalid_id (lc_invalid_id msg))
    (cl:cons ':dl_lat (dl_lat msg))
    (cl:cons ':ttc_lat (ttc_lat msg))
    (cl:cons ':dt_lat (dt_lat msg))
    (cl:cons ':fvfdead (fvfdead msg))
    (cl:cons ':svfdead (svfdead msg))
    (cl:cons ':premoving (premoving msg))
    (cl:cons ':premove_dist (premove_dist msg))
    (cl:cons ':init_val (init_val msg))
    (cl:cons ':via_points (via_points msg))
))
