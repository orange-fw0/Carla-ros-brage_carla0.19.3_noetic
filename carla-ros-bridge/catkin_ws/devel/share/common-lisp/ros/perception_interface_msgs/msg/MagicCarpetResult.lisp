; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude MagicCarpetResult.msg.html

(cl:defclass <MagicCarpetResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (camera_meta
    :reader camera_meta
    :initarg :camera_meta
    :type (cl:vector perception_interface_msgs-msg:MagicCarpetMeta)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:MagicCarpetMeta :initial-element (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetMeta)))
   (left_front_objects
    :reader left_front_objects
    :initarg :left_front_objects
    :type (cl:vector perception_interface_msgs-msg:MagicCarpetObject)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:MagicCarpetObject :initial-element (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetObject)))
   (right_front_objects
    :reader right_front_objects
    :initarg :right_front_objects
    :type (cl:vector perception_interface_msgs-msg:MagicCarpetObject)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:MagicCarpetObject :initial-element (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetObject)))
   (left_front_elevation_points_cm
    :reader left_front_elevation_points_cm
    :initarg :left_front_elevation_points_cm
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (right_front_elevation_points_cm
    :reader right_front_elevation_points_cm
    :initarg :right_front_elevation_points_cm
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (raw_objects
    :reader raw_objects
    :initarg :raw_objects
    :type (cl:vector perception_interface_msgs-msg:MagicCarpetRawObject)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:MagicCarpetRawObject :initial-element (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetRawObject)))
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:fixnum
    :initform 0)
   (road_scene
    :reader road_scene
    :initarg :road_scene
    :type cl:fixnum
    :initform 0)
   (source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (left_wheel_traj
    :reader left_wheel_traj
    :initarg :left_wheel_traj
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (right_wheel_traj
    :reader right_wheel_traj
    :initarg :right_wheel_traj
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass MagicCarpetResult (<MagicCarpetResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagicCarpetResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagicCarpetResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<MagicCarpetResult> is deprecated: use perception_interface_msgs-msg:MagicCarpetResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'camera_meta-val :lambda-list '(m))
(cl:defmethod camera_meta-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:camera_meta-val is deprecated.  Use perception_interface_msgs-msg:camera_meta instead.")
  (camera_meta m))

(cl:ensure-generic-function 'left_front_objects-val :lambda-list '(m))
(cl:defmethod left_front_objects-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:left_front_objects-val is deprecated.  Use perception_interface_msgs-msg:left_front_objects instead.")
  (left_front_objects m))

(cl:ensure-generic-function 'right_front_objects-val :lambda-list '(m))
(cl:defmethod right_front_objects-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:right_front_objects-val is deprecated.  Use perception_interface_msgs-msg:right_front_objects instead.")
  (right_front_objects m))

(cl:ensure-generic-function 'left_front_elevation_points_cm-val :lambda-list '(m))
(cl:defmethod left_front_elevation_points_cm-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:left_front_elevation_points_cm-val is deprecated.  Use perception_interface_msgs-msg:left_front_elevation_points_cm instead.")
  (left_front_elevation_points_cm m))

(cl:ensure-generic-function 'right_front_elevation_points_cm-val :lambda-list '(m))
(cl:defmethod right_front_elevation_points_cm-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:right_front_elevation_points_cm-val is deprecated.  Use perception_interface_msgs-msg:right_front_elevation_points_cm instead.")
  (right_front_elevation_points_cm m))

(cl:ensure-generic-function 'raw_objects-val :lambda-list '(m))
(cl:defmethod raw_objects-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:raw_objects-val is deprecated.  Use perception_interface_msgs-msg:raw_objects instead.")
  (raw_objects m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:system_status-val is deprecated.  Use perception_interface_msgs-msg:system_status instead.")
  (system_status m))

(cl:ensure-generic-function 'road_scene-val :lambda-list '(m))
(cl:defmethod road_scene-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:road_scene-val is deprecated.  Use perception_interface_msgs-msg:road_scene instead.")
  (road_scene m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:source-val is deprecated.  Use perception_interface_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'left_wheel_traj-val :lambda-list '(m))
(cl:defmethod left_wheel_traj-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:left_wheel_traj-val is deprecated.  Use perception_interface_msgs-msg:left_wheel_traj instead.")
  (left_wheel_traj m))

(cl:ensure-generic-function 'right_wheel_traj-val :lambda-list '(m))
(cl:defmethod right_wheel_traj-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:right_wheel_traj-val is deprecated.  Use perception_interface_msgs-msg:right_wheel_traj instead.")
  (right_wheel_traj m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <MagicCarpetResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved-val is deprecated.  Use perception_interface_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagicCarpetResult>) ostream)
  "Serializes a message object of type '<MagicCarpetResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'camera_meta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'camera_meta))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_front_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_front_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_front_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_front_objects))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_front_elevation_points_cm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_front_elevation_points_cm))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_front_elevation_points_cm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_front_elevation_points_cm))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'raw_objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'raw_objects))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_scene)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_wheel_traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_wheel_traj))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_wheel_traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_wheel_traj))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagicCarpetResult>) istream)
  "Deserializes a message object of type '<MagicCarpetResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'camera_meta) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'camera_meta)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetMeta))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_front_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_front_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_front_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_front_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_front_elevation_points_cm) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_front_elevation_points_cm)))
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
  (cl:setf (cl:slot-value msg 'right_front_elevation_points_cm) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_front_elevation_points_cm)))
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
  (cl:setf (cl:slot-value msg 'raw_objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'raw_objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:MagicCarpetRawObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'road_scene)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_wheel_traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_wheel_traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_wheel_traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_wheel_traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagicCarpetResult>)))
  "Returns string type for a message object of type '<MagicCarpetResult>"
  "perception_interface_msgs/MagicCarpetResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagicCarpetResult)))
  "Returns string type for a message object of type 'MagicCarpetResult"
  "perception_interface_msgs/MagicCarpetResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagicCarpetResult>)))
  "Returns md5sum for a message object of type '<MagicCarpetResult>"
  "663f8b630aabcd0295b8dbcb7cc0c8d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagicCarpetResult)))
  "Returns md5sum for a message object of type 'MagicCarpetResult"
  "663f8b630aabcd0295b8dbcb7cc0c8d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagicCarpetResult>)))
  "Returns full string definition for message of type '<MagicCarpetResult>"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/MagicCarpetMeta[] camera_meta~%perception_interface_msgs/MagicCarpetObject[] left_front_objects~%perception_interface_msgs/MagicCarpetObject[] right_front_objects~%float32[] left_front_elevation_points_cm~%float32[] right_front_elevation_points_cm~%perception_interface_msgs/MagicCarpetRawObject[] raw_objects~%uint8 system_status~%uint8 road_scene~%string source~%perception_interface_msgs/Point3f[] left_wheel_traj~%perception_interface_msgs/Point3f[] right_wheel_traj~%string reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/MagicCarpetMeta~%uint32 sensor_timestamp_us~%string camera_tag~%~%================================================================================~%MSG: perception_interface_msgs/MagicCarpetObject~%uint8 UNKNOWN = 0~%uint8 MANHOLE = 1~%uint8 SPEED_BUMP = 2~%uint8 ROAD_CRACK = 3~%uint8 BROKEN_ROAD = 4~%uint8 ROAD_CURB = 5~%uint8 RESERVED_6 = 6~%uint8 RESERVED_7 = 7~%uint8 RESERVED_8 = 8~%uint8 RESERVED_9 = 9~%uint8 RESERVED_10 = 10~%uint8 type~%float32 elevation_cm~%float32 longitude_distance_m~%~%================================================================================~%MSG: perception_interface_msgs/MagicCarpetRawObject~%uint8 type~%perception_interface_msgs/Point2f[] polygon_2d~%perception_interface_msgs/Point3f[] polygon_3d~%float32 score~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagicCarpetResult)))
  "Returns full string definition for message of type 'MagicCarpetResult"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/MagicCarpetMeta[] camera_meta~%perception_interface_msgs/MagicCarpetObject[] left_front_objects~%perception_interface_msgs/MagicCarpetObject[] right_front_objects~%float32[] left_front_elevation_points_cm~%float32[] right_front_elevation_points_cm~%perception_interface_msgs/MagicCarpetRawObject[] raw_objects~%uint8 system_status~%uint8 road_scene~%string source~%perception_interface_msgs/Point3f[] left_wheel_traj~%perception_interface_msgs/Point3f[] right_wheel_traj~%string reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/MagicCarpetMeta~%uint32 sensor_timestamp_us~%string camera_tag~%~%================================================================================~%MSG: perception_interface_msgs/MagicCarpetObject~%uint8 UNKNOWN = 0~%uint8 MANHOLE = 1~%uint8 SPEED_BUMP = 2~%uint8 ROAD_CRACK = 3~%uint8 BROKEN_ROAD = 4~%uint8 ROAD_CURB = 5~%uint8 RESERVED_6 = 6~%uint8 RESERVED_7 = 7~%uint8 RESERVED_8 = 8~%uint8 RESERVED_9 = 9~%uint8 RESERVED_10 = 10~%uint8 type~%float32 elevation_cm~%float32 longitude_distance_m~%~%================================================================================~%MSG: perception_interface_msgs/MagicCarpetRawObject~%uint8 type~%perception_interface_msgs/Point2f[] polygon_2d~%perception_interface_msgs/Point3f[] polygon_3d~%float32 score~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagicCarpetResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'camera_meta) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_front_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_front_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_front_elevation_points_cm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_front_elevation_points_cm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'raw_objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_wheel_traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_wheel_traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagicCarpetResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MagicCarpetResult
    (cl:cons ':header (header msg))
    (cl:cons ':camera_meta (camera_meta msg))
    (cl:cons ':left_front_objects (left_front_objects msg))
    (cl:cons ':right_front_objects (right_front_objects msg))
    (cl:cons ':left_front_elevation_points_cm (left_front_elevation_points_cm msg))
    (cl:cons ':right_front_elevation_points_cm (right_front_elevation_points_cm msg))
    (cl:cons ':raw_objects (raw_objects msg))
    (cl:cons ':system_status (system_status msg))
    (cl:cons ':road_scene (road_scene msg))
    (cl:cons ':source (source msg))
    (cl:cons ':left_wheel_traj (left_wheel_traj msg))
    (cl:cons ':right_wheel_traj (right_wheel_traj msg))
    (cl:cons ':reserved (reserved msg))
))
