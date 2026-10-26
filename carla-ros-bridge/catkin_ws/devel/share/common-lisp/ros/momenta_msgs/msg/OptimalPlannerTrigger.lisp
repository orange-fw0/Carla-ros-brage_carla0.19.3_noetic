; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude OptimalPlannerTrigger.msg.html

(cl:defclass <OptimalPlannerTrigger> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (v_target
    :reader v_target
    :initarg :v_target
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (a_target
    :reader a_target
    :initarg :a_target
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (stop_flag
    :reader stop_flag
    :initarg :stop_flag
    :type cl:boolean
    :initform cl:nil)
   (v_limit
    :reader v_limit
    :initarg :v_limit
    :type cl:float
    :initform 0.0)
   (stop_distance
    :reader stop_distance
    :initarg :stop_distance
    :type cl:float
    :initform 0.0)
   (which_lane
    :reader which_lane
    :initarg :which_lane
    :type cl:string
    :initform "")
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (lc_request
    :reader lc_request
    :initarg :lc_request
    :type cl:string
    :initform "")
   (lc_status
    :reader lc_status
    :initarg :lc_status
    :type cl:string
    :initform "")
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
   (avd_info
    :reader avd_info
    :initarg :avd_info
    :type (cl:vector momenta_msgs-msg:AvdMsg)
   :initform (cl:make-array 0 :element-type 'momenta_msgs-msg:AvdMsg :initial-element (cl:make-instance 'momenta_msgs-msg:AvdMsg)))
   (lat_offset
    :reader lat_offset
    :initarg :lat_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass OptimalPlannerTrigger (<OptimalPlannerTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OptimalPlannerTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OptimalPlannerTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<OptimalPlannerTrigger> is deprecated: use momenta_msgs-msg:OptimalPlannerTrigger instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'v_target-val :lambda-list '(m))
(cl:defmethod v_target-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v_target-val is deprecated.  Use momenta_msgs-msg:v_target instead.")
  (v_target m))

(cl:ensure-generic-function 'a_target-val :lambda-list '(m))
(cl:defmethod a_target-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:a_target-val is deprecated.  Use momenta_msgs-msg:a_target instead.")
  (a_target m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:enable-val is deprecated.  Use momenta_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'stop_flag-val :lambda-list '(m))
(cl:defmethod stop_flag-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:stop_flag-val is deprecated.  Use momenta_msgs-msg:stop_flag instead.")
  (stop_flag m))

(cl:ensure-generic-function 'v_limit-val :lambda-list '(m))
(cl:defmethod v_limit-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:v_limit-val is deprecated.  Use momenta_msgs-msg:v_limit instead.")
  (v_limit m))

(cl:ensure-generic-function 'stop_distance-val :lambda-list '(m))
(cl:defmethod stop_distance-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:stop_distance-val is deprecated.  Use momenta_msgs-msg:stop_distance instead.")
  (stop_distance m))

(cl:ensure-generic-function 'which_lane-val :lambda-list '(m))
(cl:defmethod which_lane-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:which_lane-val is deprecated.  Use momenta_msgs-msg:which_lane instead.")
  (which_lane m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:track_id-val is deprecated.  Use momenta_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'lc_request-val :lambda-list '(m))
(cl:defmethod lc_request-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lc_request-val is deprecated.  Use momenta_msgs-msg:lc_request instead.")
  (lc_request m))

(cl:ensure-generic-function 'lc_status-val :lambda-list '(m))
(cl:defmethod lc_status-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lc_status-val is deprecated.  Use momenta_msgs-msg:lc_status instead.")
  (lc_status m))

(cl:ensure-generic-function 'lane_borrow-val :lambda-list '(m))
(cl:defmethod lane_borrow-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_borrow-val is deprecated.  Use momenta_msgs-msg:lane_borrow instead.")
  (lane_borrow m))

(cl:ensure-generic-function 'lane_borrow_range-val :lambda-list '(m))
(cl:defmethod lane_borrow_range-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lane_borrow_range-val is deprecated.  Use momenta_msgs-msg:lane_borrow_range instead.")
  (lane_borrow_range m))

(cl:ensure-generic-function 'avd_info-val :lambda-list '(m))
(cl:defmethod avd_info-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:avd_info-val is deprecated.  Use momenta_msgs-msg:avd_info instead.")
  (avd_info m))

(cl:ensure-generic-function 'lat_offset-val :lambda-list '(m))
(cl:defmethod lat_offset-val ((m <OptimalPlannerTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:lat_offset-val is deprecated.  Use momenta_msgs-msg:lat_offset instead.")
  (lat_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OptimalPlannerTrigger>) ostream)
  "Serializes a message object of type '<OptimalPlannerTrigger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'v_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'v_target))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'a_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'a_target))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_flag) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stop_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'which_lane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'which_lane))
  (cl:let* ((signed (cl:slot-value msg 'track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lc_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lc_request))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lc_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lc_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lane_borrow) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lane_borrow_range)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lat_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OptimalPlannerTrigger>) istream)
  "Deserializes a message object of type '<OptimalPlannerTrigger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'v_target) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'v_target)))
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
  (cl:setf (cl:slot-value msg 'a_target) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'a_target)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stop_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stop_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'which_lane) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'which_lane) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lc_request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lc_request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lc_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lc_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'lane_borrow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_borrow_range) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:setf (cl:slot-value msg 'lat_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OptimalPlannerTrigger>)))
  "Returns string type for a message object of type '<OptimalPlannerTrigger>"
  "momenta_msgs/OptimalPlannerTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OptimalPlannerTrigger)))
  "Returns string type for a message object of type 'OptimalPlannerTrigger"
  "momenta_msgs/OptimalPlannerTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OptimalPlannerTrigger>)))
  "Returns md5sum for a message object of type '<OptimalPlannerTrigger>"
  "453c558757e7f726490a97a21a439248")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OptimalPlannerTrigger)))
  "Returns md5sum for a message object of type 'OptimalPlannerTrigger"
  "453c558757e7f726490a97a21a439248")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OptimalPlannerTrigger>)))
  "Returns full string definition for message of type '<OptimalPlannerTrigger>"
  (cl:format cl:nil "std_msgs/Header header~%float32[] v_target~%float32[] a_target~%bool enable~%bool stop_flag~%float32 v_limit~%float32 stop_distance~%string which_lane~%int32 track_id~%string lc_request~%string lc_status~%bool lane_borrow~%int32 lane_borrow_range~%momenta_msgs/AvdMsg[] avd_info~%float32 lat_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/AvdMsg~%int32 Id~%string Property~%bool Ignore~%string AvdDirection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OptimalPlannerTrigger)))
  "Returns full string definition for message of type 'OptimalPlannerTrigger"
  (cl:format cl:nil "std_msgs/Header header~%float32[] v_target~%float32[] a_target~%bool enable~%bool stop_flag~%float32 v_limit~%float32 stop_distance~%string which_lane~%int32 track_id~%string lc_request~%string lc_status~%bool lane_borrow~%int32 lane_borrow_range~%momenta_msgs/AvdMsg[] avd_info~%float32 lat_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: momenta_msgs/AvdMsg~%int32 Id~%string Property~%bool Ignore~%string AvdDirection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OptimalPlannerTrigger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'v_target) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'a_target) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'which_lane))
     4
     4 (cl:length (cl:slot-value msg 'lc_request))
     4 (cl:length (cl:slot-value msg 'lc_status))
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avd_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OptimalPlannerTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'OptimalPlannerTrigger
    (cl:cons ':header (header msg))
    (cl:cons ':v_target (v_target msg))
    (cl:cons ':a_target (a_target msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':stop_flag (stop_flag msg))
    (cl:cons ':v_limit (v_limit msg))
    (cl:cons ':stop_distance (stop_distance msg))
    (cl:cons ':which_lane (which_lane msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':lc_request (lc_request msg))
    (cl:cons ':lc_status (lc_status msg))
    (cl:cons ':lane_borrow (lane_borrow msg))
    (cl:cons ':lane_borrow_range (lane_borrow_range msg))
    (cl:cons ':avd_info (avd_info msg))
    (cl:cons ':lat_offset (lat_offset msg))
))
