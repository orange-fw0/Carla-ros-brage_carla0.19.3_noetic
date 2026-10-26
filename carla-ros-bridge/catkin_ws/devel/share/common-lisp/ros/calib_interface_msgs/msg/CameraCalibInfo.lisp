; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude CameraCalibInfo.msg.html

(cl:defclass <CameraCalibInfo> (roslisp-msg-protocol:ros-message)
  ((camera_name
    :reader camera_name
    :initarg :camera_name
    :type perception_interface_msgs-msg:CameraSourceEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:CameraSourceEnum))
   (r_s2b
    :reader r_s2b
    :initarg :r_s2b
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (r_s2b_diff
    :reader r_s2b_diff
    :initarg :r_s2b_diff
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (t_s2b
    :reader t_s2b
    :initarg :t_s2b
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (camera_model
    :reader camera_model
    :initarg :camera_model
    :type calib_interface_msgs-msg:CameraModelEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:CameraModelEnum))
   (fx
    :reader fx
    :initarg :fx
    :type cl:float
    :initform 0.0)
   (fy
    :reader fy
    :initarg :fy
    :type cl:float
    :initform 0.0)
   (cx
    :reader cx
    :initarg :cx
    :type cl:float
    :initform 0.0)
   (cy
    :reader cy
    :initarg :cy
    :type cl:float
    :initform 0.0)
   (radtan_type
    :reader radtan_type
    :initarg :radtan_type
    :type calib_interface_msgs-msg:RadTan
    :initform (cl:make-instance 'calib_interface_msgs-msg:RadTan))
   (polyn_type
    :reader polyn_type
    :initarg :polyn_type
    :type calib_interface_msgs-msg:Polyn
    :initform (cl:make-instance 'calib_interface_msgs-msg:Polyn))
   (error_code
    :reader error_code
    :initarg :error_code
    :type calib_interface_msgs-msg:CamCalibDetailedErrorCodeEnum
    :initform (cl:make-instance 'calib_interface_msgs-msg:CamCalibDetailedErrorCodeEnum))
   (t_s2b_diff
    :reader t_s2b_diff
    :initarg :t_s2b_diff
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CameraCalibInfo (<CameraCalibInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraCalibInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraCalibInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<CameraCalibInfo> is deprecated: use calib_interface_msgs-msg:CameraCalibInfo instead.")))

(cl:ensure-generic-function 'camera_name-val :lambda-list '(m))
(cl:defmethod camera_name-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:camera_name-val is deprecated.  Use calib_interface_msgs-msg:camera_name instead.")
  (camera_name m))

(cl:ensure-generic-function 'r_s2b-val :lambda-list '(m))
(cl:defmethod r_s2b-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:r_s2b-val is deprecated.  Use calib_interface_msgs-msg:r_s2b instead.")
  (r_s2b m))

(cl:ensure-generic-function 'r_s2b_diff-val :lambda-list '(m))
(cl:defmethod r_s2b_diff-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:r_s2b_diff-val is deprecated.  Use calib_interface_msgs-msg:r_s2b_diff instead.")
  (r_s2b_diff m))

(cl:ensure-generic-function 't_s2b-val :lambda-list '(m))
(cl:defmethod t_s2b-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:t_s2b-val is deprecated.  Use calib_interface_msgs-msg:t_s2b instead.")
  (t_s2b m))

(cl:ensure-generic-function 'camera_model-val :lambda-list '(m))
(cl:defmethod camera_model-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:camera_model-val is deprecated.  Use calib_interface_msgs-msg:camera_model instead.")
  (camera_model m))

(cl:ensure-generic-function 'fx-val :lambda-list '(m))
(cl:defmethod fx-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:fx-val is deprecated.  Use calib_interface_msgs-msg:fx instead.")
  (fx m))

(cl:ensure-generic-function 'fy-val :lambda-list '(m))
(cl:defmethod fy-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:fy-val is deprecated.  Use calib_interface_msgs-msg:fy instead.")
  (fy m))

(cl:ensure-generic-function 'cx-val :lambda-list '(m))
(cl:defmethod cx-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:cx-val is deprecated.  Use calib_interface_msgs-msg:cx instead.")
  (cx m))

(cl:ensure-generic-function 'cy-val :lambda-list '(m))
(cl:defmethod cy-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:cy-val is deprecated.  Use calib_interface_msgs-msg:cy instead.")
  (cy m))

(cl:ensure-generic-function 'radtan_type-val :lambda-list '(m))
(cl:defmethod radtan_type-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:radtan_type-val is deprecated.  Use calib_interface_msgs-msg:radtan_type instead.")
  (radtan_type m))

(cl:ensure-generic-function 'polyn_type-val :lambda-list '(m))
(cl:defmethod polyn_type-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:polyn_type-val is deprecated.  Use calib_interface_msgs-msg:polyn_type instead.")
  (polyn_type m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:error_code-val is deprecated.  Use calib_interface_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 't_s2b_diff-val :lambda-list '(m))
(cl:defmethod t_s2b_diff-val ((m <CameraCalibInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:t_s2b_diff-val is deprecated.  Use calib_interface_msgs-msg:t_s2b_diff instead.")
  (t_s2b_diff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraCalibInfo>) ostream)
  "Serializes a message object of type '<CameraCalibInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_name) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'r_s2b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'r_s2b))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'r_s2b_diff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'r_s2b_diff))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 't_s2b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 't_s2b))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_model) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radtan_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polyn_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_code) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 't_s2b_diff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 't_s2b_diff))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraCalibInfo>) istream)
  "Deserializes a message object of type '<CameraCalibInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_name) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'r_s2b) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'r_s2b)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'r_s2b_diff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'r_s2b_diff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 't_s2b) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 't_s2b)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_model) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cy) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radtan_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polyn_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_code) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 't_s2b_diff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 't_s2b_diff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraCalibInfo>)))
  "Returns string type for a message object of type '<CameraCalibInfo>"
  "calib_interface_msgs/CameraCalibInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraCalibInfo)))
  "Returns string type for a message object of type 'CameraCalibInfo"
  "calib_interface_msgs/CameraCalibInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraCalibInfo>)))
  "Returns md5sum for a message object of type '<CameraCalibInfo>"
  "5c387890dd30237e25c306fad81a03be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraCalibInfo)))
  "Returns md5sum for a message object of type 'CameraCalibInfo"
  "5c387890dd30237e25c306fad81a03be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraCalibInfo>)))
  "Returns full string definition for message of type '<CameraCalibInfo>"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_name~%float64[] r_s2b~%float64[] r_s2b_diff~%float64[] t_s2b~%calib_interface_msgs/CameraModelEnum camera_model~%float64 fx~%float64 fy~%float64 cx~%float64 cy~%calib_interface_msgs/RadTan radtan_type~%calib_interface_msgs/Polyn polyn_type~%calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code~%float64[] t_s2b_diff~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_POLYN = 0~%uint8 CAMERA_MODEL_RADTAN = 1~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/RadTan~%float64 k1~%float64 k2~%float64 p1~%float64 p2~%float64 k3~%float64 k4~%float64 k5~%float64 k6~%~%================================================================================~%MSG: calib_interface_msgs/Polyn~%float64 kc1~%float64 kc2~%float64 kc3~%float64 kc4~%~%================================================================================~%MSG: calib_interface_msgs/CamCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 CALIB_INIT_GROUND_PATTERN_FAIL = 3~%uint16 CALIB_INIT_SURROUND_PATTERN_FAIL = 4~%uint16 CALIB_READ_INIT_FILE_FAIL = 5~%uint16 CALIB_IMAGE_SIZE_WRONG = 6~%uint16 CALIB_IMAGE_CHANNEL_WRONG = 7~%uint16 CALIB_FISHEYE_DETECT_TAG_FAIL = 8~%uint16 CALIB_NORMAL_DETECT_TAG_FAIL = 9~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT = 10~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT = 11~%uint16 CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 12~%uint16 CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 13~%uint16 CALIB_OUTPUT_FILE_FAIL = 14~%uint16 EGO_INIT_FAILED = 1000~%uint16 EGO_POSE_UNACCESSABLE = 1001~%uint16 EGO_VISUAL_DISABLED = 1002~%uint16 CAM_NEED_CALIB_NULL = 1003~%uint16 CAM_UPDATE_PARAM_FAILED = 1004~%uint16 CAM_SAVE_PARAM_FAILED = 1005~%uint16 CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS = 1006~%uint16 IMU_EXTRINSIC_UNFIXED = 1007~%uint16 IMU_BIAS_UNESTIMATED = 1008~%uint16 IMU_BIAS_UNFIXED = 1009~%uint16 COV_INCREASE_ABNORMALLY = 1010~%uint16 COV_NOT_DECREASE = 1011~%uint16 COV_UNACCESSABLE = 1012~%uint16 UNSTATIC_LAUNCH = 1013~%uint16 MIN_MILEAGE_UNREACHED = 1014~%uint16 MAX_MILEAGE_UNCONVERGED = 1015~%uint16 INSUFFICIENT_TURNS = 1016~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1500~%uint16 LARGE_DEVIATION_CALIB_AND_VALIDATOR = 1501~%uint16 CAM_SET_INIT_PARAM_FAILED = 2000~%uint16 CAM_LOWER_FREQUENCY = 2001~%uint16 CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE = 2002~%uint16 CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE = 2003~%uint16 SPEED_TOO_SLOW = 2100~%uint16 ANGLE_TOO_BIG = 2101~%uint16 INNER_CAMERA_MATCH_TOO_FEW = 2102~%uint16 INTER_CAMERA_MATCH_TOO_FEW = 2103~%uint16 KEYPOINTS_TOO_FEW = 2104~%uint16 INIT_MATCH_TOO_FEW = 2105~%uint16 INIT_MAP_POINTS_TOO_FEW = 2106~%uint16 SFM_SCALE_DRIFT = 2107~%uint16 FAIL_TO_ADD_FRAME = 2108~%uint16 CONSTRUCTION_TOO_FEW = 2109~%uint16 FULL_BA_FAIL = 2110~%uint16 RESULT_INCONSISTENT = 2111~%uint16 WRONG_BUFFER_SIZE = 2112~%uint16 ARRAY_OVERREACH = 2113~%uint16 PATCHES_RESET = 2114~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraCalibInfo)))
  "Returns full string definition for message of type 'CameraCalibInfo"
  (cl:format cl:nil "perception_interface_msgs/CameraSourceEnum camera_name~%float64[] r_s2b~%float64[] r_s2b_diff~%float64[] t_s2b~%calib_interface_msgs/CameraModelEnum camera_model~%float64 fx~%float64 fy~%float64 cx~%float64 cy~%calib_interface_msgs/RadTan radtan_type~%calib_interface_msgs/Polyn polyn_type~%calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code~%float64[] t_s2b_diff~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_POLYN = 0~%uint8 CAMERA_MODEL_RADTAN = 1~%uint8 value~%~%================================================================================~%MSG: calib_interface_msgs/RadTan~%float64 k1~%float64 k2~%float64 p1~%float64 p2~%float64 k3~%float64 k4~%float64 k5~%float64 k6~%~%================================================================================~%MSG: calib_interface_msgs/Polyn~%float64 kc1~%float64 kc2~%float64 kc3~%float64 kc4~%~%================================================================================~%MSG: calib_interface_msgs/CamCalibDetailedErrorCodeEnum~%uint16 NORMAL = 0~%uint16 CALIB_READ_CONFIG_FAIL = 1~%uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2~%uint16 CALIB_INIT_GROUND_PATTERN_FAIL = 3~%uint16 CALIB_INIT_SURROUND_PATTERN_FAIL = 4~%uint16 CALIB_READ_INIT_FILE_FAIL = 5~%uint16 CALIB_IMAGE_SIZE_WRONG = 6~%uint16 CALIB_IMAGE_CHANNEL_WRONG = 7~%uint16 CALIB_FISHEYE_DETECT_TAG_FAIL = 8~%uint16 CALIB_NORMAL_DETECT_TAG_FAIL = 9~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT = 10~%uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT = 11~%uint16 CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 12~%uint16 CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 13~%uint16 CALIB_OUTPUT_FILE_FAIL = 14~%uint16 EGO_INIT_FAILED = 1000~%uint16 EGO_POSE_UNACCESSABLE = 1001~%uint16 EGO_VISUAL_DISABLED = 1002~%uint16 CAM_NEED_CALIB_NULL = 1003~%uint16 CAM_UPDATE_PARAM_FAILED = 1004~%uint16 CAM_SAVE_PARAM_FAILED = 1005~%uint16 CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS = 1006~%uint16 IMU_EXTRINSIC_UNFIXED = 1007~%uint16 IMU_BIAS_UNESTIMATED = 1008~%uint16 IMU_BIAS_UNFIXED = 1009~%uint16 COV_INCREASE_ABNORMALLY = 1010~%uint16 COV_NOT_DECREASE = 1011~%uint16 COV_UNACCESSABLE = 1012~%uint16 UNSTATIC_LAUNCH = 1013~%uint16 MIN_MILEAGE_UNREACHED = 1014~%uint16 MAX_MILEAGE_UNCONVERGED = 1015~%uint16 INSUFFICIENT_TURNS = 1016~%uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1500~%uint16 LARGE_DEVIATION_CALIB_AND_VALIDATOR = 1501~%uint16 CAM_SET_INIT_PARAM_FAILED = 2000~%uint16 CAM_LOWER_FREQUENCY = 2001~%uint16 CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE = 2002~%uint16 CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE = 2003~%uint16 SPEED_TOO_SLOW = 2100~%uint16 ANGLE_TOO_BIG = 2101~%uint16 INNER_CAMERA_MATCH_TOO_FEW = 2102~%uint16 INTER_CAMERA_MATCH_TOO_FEW = 2103~%uint16 KEYPOINTS_TOO_FEW = 2104~%uint16 INIT_MATCH_TOO_FEW = 2105~%uint16 INIT_MAP_POINTS_TOO_FEW = 2106~%uint16 SFM_SCALE_DRIFT = 2107~%uint16 FAIL_TO_ADD_FRAME = 2108~%uint16 CONSTRUCTION_TOO_FEW = 2109~%uint16 FULL_BA_FAIL = 2110~%uint16 RESULT_INCONSISTENT = 2111~%uint16 WRONG_BUFFER_SIZE = 2112~%uint16 ARRAY_OVERREACH = 2113~%uint16 PATCHES_RESET = 2114~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraCalibInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'r_s2b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'r_s2b_diff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 't_s2b) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_model))
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radtan_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polyn_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_code))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 't_s2b_diff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraCalibInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraCalibInfo
    (cl:cons ':camera_name (camera_name msg))
    (cl:cons ':r_s2b (r_s2b msg))
    (cl:cons ':r_s2b_diff (r_s2b_diff msg))
    (cl:cons ':t_s2b (t_s2b msg))
    (cl:cons ':camera_model (camera_model msg))
    (cl:cons ':fx (fx msg))
    (cl:cons ':fy (fy msg))
    (cl:cons ':cx (cx msg))
    (cl:cons ':cy (cy msg))
    (cl:cons ':radtan_type (radtan_type msg))
    (cl:cons ':polyn_type (polyn_type msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':t_s2b_diff (t_s2b_diff msg))
))
