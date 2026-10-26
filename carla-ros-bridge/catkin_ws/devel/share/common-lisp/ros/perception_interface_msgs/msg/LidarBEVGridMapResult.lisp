; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude LidarBEVGridMapResult.msg.html

(cl:defclass <LidarBEVGridMapResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type perception_interface_msgs-msg:LidarPerceptionResultMeta
    :initform (cl:make-instance 'perception_interface_msgs-msg:LidarPerceptionResultMeta))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (sparse_flag
    :reader sparse_flag
    :initarg :sparse_flag
    :type cl:boolean
    :initform cl:nil)
   (score
    :reader score
    :initarg :score
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (visibility
    :reader visibility
    :initarg :visibility
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (type_info
    :reader type_info
    :initarg :type_info
    :type (cl:vector perception_interface_msgs-msg:ObjectTypeInfo)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ObjectTypeInfo :initial-element (cl:make-instance 'perception_interface_msgs-msg:ObjectTypeInfo)))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector perception_interface_msgs-msg:Vector2d)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Vector2d :initial-element (cl:make-instance 'perception_interface_msgs-msg:Vector2d)))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (grid_height
    :reader grid_height
    :initarg :grid_height
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sparse_x
    :reader sparse_x
    :initarg :sparse_x
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (sparse_y
    :reader sparse_y
    :initarg :sparse_y
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (front
    :reader front
    :initarg :front
    :type cl:float
    :initform 0.0)
   (back
    :reader back
    :initarg :back
    :type cl:float
    :initform 0.0)
   (left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0)
   (grid_size_w
    :reader grid_size_w
    :initarg :grid_size_w
    :type cl:float
    :initform 0.0)
   (grid_size_h
    :reader grid_size_h
    :initarg :grid_size_h
    :type cl:float
    :initform 0.0))
)

(cl:defclass LidarBEVGridMapResult (<LidarBEVGridMapResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarBEVGridMapResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarBEVGridMapResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<LidarBEVGridMapResult> is deprecated: use perception_interface_msgs-msg:LidarBEVGridMapResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:meta-val is deprecated.  Use perception_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:width-val is deprecated.  Use perception_interface_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:height-val is deprecated.  Use perception_interface_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'sparse_flag-val :lambda-list '(m))
(cl:defmethod sparse_flag-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sparse_flag-val is deprecated.  Use perception_interface_msgs-msg:sparse_flag instead.")
  (sparse_flag m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:score-val is deprecated.  Use perception_interface_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'visibility-val :lambda-list '(m))
(cl:defmethod visibility-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:visibility-val is deprecated.  Use perception_interface_msgs-msg:visibility instead.")
  (visibility m))

(cl:ensure-generic-function 'type_info-val :lambda-list '(m))
(cl:defmethod type_info-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type_info-val is deprecated.  Use perception_interface_msgs-msg:type_info instead.")
  (type_info m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:velocity-val is deprecated.  Use perception_interface_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:angular_velocity-val is deprecated.  Use perception_interface_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'grid_height-val :lambda-list '(m))
(cl:defmethod grid_height-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:grid_height-val is deprecated.  Use perception_interface_msgs-msg:grid_height instead.")
  (grid_height m))

(cl:ensure-generic-function 'sparse_x-val :lambda-list '(m))
(cl:defmethod sparse_x-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sparse_x-val is deprecated.  Use perception_interface_msgs-msg:sparse_x instead.")
  (sparse_x m))

(cl:ensure-generic-function 'sparse_y-val :lambda-list '(m))
(cl:defmethod sparse_y-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:sparse_y-val is deprecated.  Use perception_interface_msgs-msg:sparse_y instead.")
  (sparse_y m))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:front-val is deprecated.  Use perception_interface_msgs-msg:front instead.")
  (front m))

(cl:ensure-generic-function 'back-val :lambda-list '(m))
(cl:defmethod back-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:back-val is deprecated.  Use perception_interface_msgs-msg:back instead.")
  (back m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:left-val is deprecated.  Use perception_interface_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:right-val is deprecated.  Use perception_interface_msgs-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'grid_size_w-val :lambda-list '(m))
(cl:defmethod grid_size_w-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:grid_size_w-val is deprecated.  Use perception_interface_msgs-msg:grid_size_w instead.")
  (grid_size_w m))

(cl:ensure-generic-function 'grid_size_h-val :lambda-list '(m))
(cl:defmethod grid_size_h-val ((m <LidarBEVGridMapResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:grid_size_h-val is deprecated.  Use perception_interface_msgs-msg:grid_size_h instead.")
  (grid_size_h m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarBEVGridMapResult>) ostream)
  "Serializes a message object of type '<LidarBEVGridMapResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sparse_flag) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'score))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'visibility))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'visibility))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'type_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'type_info))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'velocity))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'angular_velocity))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'grid_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'grid_height))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sparse_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'sparse_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sparse_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'sparse_y))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'back))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grid_size_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grid_size_h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarBEVGridMapResult>) istream)
  "Deserializes a message object of type '<LidarBEVGridMapResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sparse_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'score) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'score)))
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
  (cl:setf (cl:slot-value msg 'visibility) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'visibility)))
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
  (cl:setf (cl:slot-value msg 'type_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'type_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ObjectTypeInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Vector2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angular_velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angular_velocity)))
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
  (cl:setf (cl:slot-value msg 'grid_height) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'grid_height)))
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
  (cl:setf (cl:slot-value msg 'sparse_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sparse_x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sparse_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sparse_y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'back) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_size_w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_size_h) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarBEVGridMapResult>)))
  "Returns string type for a message object of type '<LidarBEVGridMapResult>"
  "perception_interface_msgs/LidarBEVGridMapResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarBEVGridMapResult)))
  "Returns string type for a message object of type 'LidarBEVGridMapResult"
  "perception_interface_msgs/LidarBEVGridMapResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarBEVGridMapResult>)))
  "Returns md5sum for a message object of type '<LidarBEVGridMapResult>"
  "9ab5eed7390b21b0dcc92d6ba46d3b7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarBEVGridMapResult)))
  "Returns md5sum for a message object of type 'LidarBEVGridMapResult"
  "9ab5eed7390b21b0dcc92d6ba46d3b7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarBEVGridMapResult>)))
  "Returns full string definition for message of type '<LidarBEVGridMapResult>"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/LidarPerceptionResultMeta meta~%uint8 available~%uint32 width~%uint32 height~%bool sparse_flag~%float32[] score~%float32[] visibility~%perception_interface_msgs/ObjectTypeInfo[] type_info~%perception_interface_msgs/Vector2d[] velocity~%float32[] angular_velocity~%float32[] grid_height~%uint16[] sparse_x~%uint16[] sparse_y~%float32 front~%float32 back~%float32 left~%float32 right~%float32 grid_size_w~%float32 grid_size_h~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/LidarPerceptionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Vector2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarBEVGridMapResult)))
  "Returns full string definition for message of type 'LidarBEVGridMapResult"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/LidarPerceptionResultMeta meta~%uint8 available~%uint32 width~%uint32 height~%bool sparse_flag~%float32[] score~%float32[] visibility~%perception_interface_msgs/ObjectTypeInfo[] type_info~%perception_interface_msgs/Vector2d[] velocity~%float32[] angular_velocity~%float32[] grid_height~%uint16[] sparse_x~%uint16[] sparse_y~%float32 front~%float32 back~%float32 left~%float32 right~%float32 grid_size_w~%float32 grid_size_h~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/LidarPerceptionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeInfo~%perception_interface_msgs/ObjectTypePropertyEnum[] type_properties~%perception_interface_msgs/ObjectTypeEnum type~%perception_interface_msgs/GeneralObjectTypeEnum general_object_type~%perception_interface_msgs/VehicleTypeEnum vehicle_type~%perception_interface_msgs/VehicleSubTypeEnum vehicle_sub_type~%perception_interface_msgs/VRUTypeEnum vru_type~%perception_interface_msgs/VRUSubTypeEnum vru_sub_type~%perception_interface_msgs/VRUAniSubTypeEnum vru_ani_sub_type~%perception_interface_msgs/VRUPedSubTypeEnum vru_ped_sub_type~%perception_interface_msgs/TrafficBarrierTypeEnum traffic_barrier_type~%perception_interface_msgs/TrafficLightTypeEnum traffic_light_type~%perception_interface_msgs/AvoidObjectTypeEnum avoid_object_type~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypePropertyEnum~%uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ObjectTypeEnum~%uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/GeneralObjectTypeEnum~%uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTypeEnum~%uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleSubTypeEnum~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUSubTypeEnum~%uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUAniSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VRUPedSubTypeEnum~%uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierTypeEnum~%uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/AvoidObjectTypeEnum~%uint8 AVOID_VEHICLE_TYPE = 0~%uint8 AVOID_VRU_TYPE = 1~%uint8 AVOID_BARRIER_TYPE = 2~%uint8 AVOID_OTHER_TYPE = 3~%uint8 AVOID_TYPE_UNMARKED = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Vector2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarBEVGridMapResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     1
     4
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'score) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'visibility) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'type_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angular_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'grid_height) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sparse_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sparse_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarBEVGridMapResult>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarBEVGridMapResult
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':available (available msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':sparse_flag (sparse_flag msg))
    (cl:cons ':score (score msg))
    (cl:cons ':visibility (visibility msg))
    (cl:cons ':type_info (type_info msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':grid_height (grid_height msg))
    (cl:cons ':sparse_x (sparse_x msg))
    (cl:cons ':sparse_y (sparse_y msg))
    (cl:cons ':front (front msg))
    (cl:cons ':back (back msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':grid_size_w (grid_size_w msg))
    (cl:cons ':grid_size_h (grid_size_h msg))
))
