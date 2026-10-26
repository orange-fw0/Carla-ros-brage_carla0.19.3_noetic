; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude Lane.msg.html

(cl:defclass <Lane> (roslisp-msg-protocol:ros-message)
  ((camera_source
    :reader camera_source
    :initarg :camera_source
    :type perception_interface_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type perception_interface_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraModelEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (points_2d_x
    :reader points_2d_x
    :initarg :points_2d_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points_2d_y
    :reader points_2d_y
    :initarg :points_2d_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points_2d_v
    :reader points_2d_v
    :initarg :points_2d_v
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (coefficient_bv
    :reader coefficient_bv
    :initarg :coefficient_bv
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (coefficient_bv_sigma
    :reader coefficient_bv_sigma
    :initarg :coefficient_bv_sigma
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (is_failed_3d
    :reader is_failed_3d
    :initarg :is_failed_3d
    :type cl:boolean
    :initform cl:nil)
   (lane_type
    :reader lane_type
    :initarg :lane_type
    :type perception_interface_msgs-msg:LaneTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:LaneTypeEnum))
   (lane_color
    :reader lane_color
    :initarg :lane_color
    :type perception_interface_msgs-msg:LaneColorEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:LaneColorEnum))
   (lane_width
    :reader lane_width
    :initarg :lane_width
    :type cl:float
    :initform 0.0)
   (is_centerline
    :reader is_centerline
    :initarg :is_centerline
    :type cl:boolean
    :initform cl:nil)
   (points_3d_x
    :reader points_3d_x
    :initarg :points_3d_x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points_3d_y
    :reader points_3d_y
    :initarg :points_3d_y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points_3d_z
    :reader points_3d_z
    :initarg :points_3d_z
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (is_horizontal_line
    :reader is_horizontal_line
    :initarg :is_horizontal_line
    :type cl:boolean
    :initform cl:nil)
   (lane_horizontal_type
    :reader lane_horizontal_type
    :initarg :lane_horizontal_type
    :type perception_interface_msgs-msg:LaneHorizontalTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:LaneHorizontalTypeEnum))
   (stopline_depth
    :reader stopline_depth
    :initarg :stopline_depth
    :type cl:float
    :initform 0.0))
)

(cl:defclass Lane (<Lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<Lane> is deprecated: use perception_interface_msgs-msg:Lane instead.")))

(cl:ensure-generic-function 'camera_source-val :lambda-list '(m))
(cl:defmethod camera_source-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_source-val is deprecated.  Use perception_interface_msgs-msg:camera_source instead.")
  (camera_source m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_model-val is deprecated.  Use perception_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:index-val is deprecated.  Use perception_interface_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'points_2d_x-val :lambda-list '(m))
(cl:defmethod points_2d_x-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_2d_x-val is deprecated.  Use perception_interface_msgs-msg:points_2d_x instead.")
  (points_2d_x m))

(cl:ensure-generic-function 'points_2d_y-val :lambda-list '(m))
(cl:defmethod points_2d_y-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_2d_y-val is deprecated.  Use perception_interface_msgs-msg:points_2d_y instead.")
  (points_2d_y m))

(cl:ensure-generic-function 'points_2d_v-val :lambda-list '(m))
(cl:defmethod points_2d_v-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_2d_v-val is deprecated.  Use perception_interface_msgs-msg:points_2d_v instead.")
  (points_2d_v m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:track_id-val is deprecated.  Use perception_interface_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'coefficient_bv-val :lambda-list '(m))
(cl:defmethod coefficient_bv-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:coefficient_bv-val is deprecated.  Use perception_interface_msgs-msg:coefficient_bv instead.")
  (coefficient_bv m))

(cl:ensure-generic-function 'coefficient_bv_sigma-val :lambda-list '(m))
(cl:defmethod coefficient_bv_sigma-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:coefficient_bv_sigma-val is deprecated.  Use perception_interface_msgs-msg:coefficient_bv_sigma instead.")
  (coefficient_bv_sigma m))

(cl:ensure-generic-function 'is_failed_3d-val :lambda-list '(m))
(cl:defmethod is_failed_3d-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_failed_3d-val is deprecated.  Use perception_interface_msgs-msg:is_failed_3d instead.")
  (is_failed_3d m))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:lane_type-val is deprecated.  Use perception_interface_msgs-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'lane_color-val :lambda-list '(m))
(cl:defmethod lane_color-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:lane_color-val is deprecated.  Use perception_interface_msgs-msg:lane_color instead.")
  (lane_color m))

(cl:ensure-generic-function 'lane_width-val :lambda-list '(m))
(cl:defmethod lane_width-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:lane_width-val is deprecated.  Use perception_interface_msgs-msg:lane_width instead.")
  (lane_width m))

(cl:ensure-generic-function 'is_centerline-val :lambda-list '(m))
(cl:defmethod is_centerline-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_centerline-val is deprecated.  Use perception_interface_msgs-msg:is_centerline instead.")
  (is_centerline m))

(cl:ensure-generic-function 'points_3d_x-val :lambda-list '(m))
(cl:defmethod points_3d_x-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_3d_x-val is deprecated.  Use perception_interface_msgs-msg:points_3d_x instead.")
  (points_3d_x m))

(cl:ensure-generic-function 'points_3d_y-val :lambda-list '(m))
(cl:defmethod points_3d_y-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_3d_y-val is deprecated.  Use perception_interface_msgs-msg:points_3d_y instead.")
  (points_3d_y m))

(cl:ensure-generic-function 'points_3d_z-val :lambda-list '(m))
(cl:defmethod points_3d_z-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:points_3d_z-val is deprecated.  Use perception_interface_msgs-msg:points_3d_z instead.")
  (points_3d_z m))

(cl:ensure-generic-function 'is_horizontal_line-val :lambda-list '(m))
(cl:defmethod is_horizontal_line-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:is_horizontal_line-val is deprecated.  Use perception_interface_msgs-msg:is_horizontal_line instead.")
  (is_horizontal_line m))

(cl:ensure-generic-function 'lane_horizontal_type-val :lambda-list '(m))
(cl:defmethod lane_horizontal_type-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:lane_horizontal_type-val is deprecated.  Use perception_interface_msgs-msg:lane_horizontal_type instead.")
  (lane_horizontal_type m))

(cl:ensure-generic-function 'stopline_depth-val :lambda-list '(m))
(cl:defmethod stopline_depth-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:stopline_depth-val is deprecated.  Use perception_interface_msgs-msg:stopline_depth instead.")
  (stopline_depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lane>) ostream)
  "Serializes a message object of type '<Lane>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_2d_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_2d_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_2d_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_2d_y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_2d_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_2d_v))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coefficient_bv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'coefficient_bv))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coefficient_bv_sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'coefficient_bv_sigma))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_failed_3d) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_color) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_centerline) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_3d_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_3d_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_3d_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_3d_y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points_3d_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'points_3d_z))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_horizontal_line) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_horizontal_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stopline_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lane>) istream)
  "Deserializes a message object of type '<Lane>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_2d_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_2d_x)))
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
  (cl:setf (cl:slot-value msg 'points_2d_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_2d_y)))
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
  (cl:setf (cl:slot-value msg 'points_2d_v) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_2d_v)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'track_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coefficient_bv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coefficient_bv)))
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
  (cl:setf (cl:slot-value msg 'coefficient_bv_sigma) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coefficient_bv_sigma)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'is_failed_3d) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_color) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_centerline) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points_3d_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_3d_x)))
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
  (cl:setf (cl:slot-value msg 'points_3d_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_3d_y)))
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
  (cl:setf (cl:slot-value msg 'points_3d_z) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points_3d_z)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'is_horizontal_line) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_horizontal_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stopline_depth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lane>)))
  "Returns string type for a message object of type '<Lane>"
  "perception_interface_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lane)))
  "Returns string type for a message object of type 'Lane"
  "perception_interface_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lane>)))
  "Returns md5sum for a message object of type '<Lane>"
  "c090d577c839919bdddc3cf4b5544027")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lane)))
  "Returns md5sum for a message object of type 'Lane"
  "c090d577c839919bdddc3cf4b5544027")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lane>)))
  "Returns full string definition for message of type '<Lane>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%perception_interface_msgs/LaneTypeEnum lane_type~%perception_interface_msgs/LaneColorEnum lane_color~%float32 lane_width~%bool is_centerline~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%bool is_horizontal_line~%perception_interface_msgs/LaneHorizontalTypeEnum lane_horizontal_type~%float32 stopline_depth~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_DASHED = 1~%uint8 LANE_TYPE_SOLID = 2~%uint8 LANE_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneColorEnum~%uint8 LANE_COLOR_UNKNOWN = 0~%uint8 LANE_COLOR_WHITE = 1~%uint8 LANE_COLOR_YELLOW = 2~%uint8 LANE_COLOR_RED = 3~%uint8 LANE_COLOR_BLUE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneHorizontalTypeEnum~%uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0~%uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1~%uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2~%uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lane)))
  "Returns full string definition for message of type 'Lane"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%perception_interface_msgs/LaneTypeEnum lane_type~%perception_interface_msgs/LaneColorEnum lane_color~%float32 lane_width~%bool is_centerline~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%bool is_horizontal_line~%perception_interface_msgs/LaneHorizontalTypeEnum lane_horizontal_type~%float32 stopline_depth~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_DASHED = 1~%uint8 LANE_TYPE_SOLID = 2~%uint8 LANE_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneColorEnum~%uint8 LANE_COLOR_UNKNOWN = 0~%uint8 LANE_COLOR_WHITE = 1~%uint8 LANE_COLOR_YELLOW = 2~%uint8 LANE_COLOR_RED = 3~%uint8 LANE_COLOR_BLUE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneHorizontalTypeEnum~%uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0~%uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1~%uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2~%uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lane>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_2d_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_2d_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_2d_v) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficient_bv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficient_bv_sigma) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_color))
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_3d_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_3d_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points_3d_z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_horizontal_type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lane>))
  "Converts a ROS message object to a list"
  (cl:list 'Lane
    (cl:cons ':camera_source (camera_source msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':score (score msg))
    (cl:cons ':index (index msg))
    (cl:cons ':points_2d_x (points_2d_x msg))
    (cl:cons ':points_2d_y (points_2d_y msg))
    (cl:cons ':points_2d_v (points_2d_v msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':coefficient_bv (coefficient_bv msg))
    (cl:cons ':coefficient_bv_sigma (coefficient_bv_sigma msg))
    (cl:cons ':is_failed_3d (is_failed_3d msg))
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':lane_color (lane_color msg))
    (cl:cons ':lane_width (lane_width msg))
    (cl:cons ':is_centerline (is_centerline msg))
    (cl:cons ':points_3d_x (points_3d_x msg))
    (cl:cons ':points_3d_y (points_3d_y msg))
    (cl:cons ':points_3d_z (points_3d_z msg))
    (cl:cons ':is_horizontal_line (is_horizontal_line msg))
    (cl:cons ':lane_horizontal_type (lane_horizontal_type msg))
    (cl:cons ':stopline_depth (stopline_depth msg))
))
