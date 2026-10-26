; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFusaResult.msg.html

(cl:defclass <DMSFusaResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (too_dark_bright_status
    :reader too_dark_bright_status
    :initarg :too_dark_bright_status
    :type dms_msgs-msg:DMSCameraDiagnoseTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSCameraDiagnoseTypeEnum))
   (occlusion_status
    :reader occlusion_status
    :initarg :occlusion_status
    :type dms_msgs-msg:DMSCameraOcclusionTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSCameraOcclusionTypeEnum))
   (glass_status
    :reader glass_status
    :initarg :glass_status
    :type dms_msgs-msg:DMSGlassStatusTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSGlassStatusTypeEnum))
   (occlusion_score
    :reader occlusion_score
    :initarg :occlusion_score
    :type cl:float
    :initform 0.0)
   (frame_tearing
    :reader frame_tearing
    :initarg :frame_tearing
    :type cl:boolean
    :initform cl:nil)
   (frame_freezing
    :reader frame_freezing
    :initarg :frame_freezing
    :type cl:boolean
    :initform cl:nil)
   (frame_fps_abnormal
    :reader frame_fps_abnormal
    :initarg :frame_fps_abnormal
    :type cl:boolean
    :initform cl:nil)
   (memory_fault
    :reader memory_fault
    :initarg :memory_fault
    :type cl:boolean
    :initform cl:nil)
   (sdk_status
    :reader sdk_status
    :initarg :sdk_status
    :type dms_msgs-msg:DMSSDKStatus
    :initform (cl:make-instance 'dms_msgs-msg:DMSSDKStatus))
   (too_bright_score
    :reader too_bright_score
    :initarg :too_bright_score
    :type cl:float
    :initform 0.0)
   (too_dark_score
    :reader too_dark_score
    :initarg :too_dark_score
    :type cl:float
    :initform 0.0)
   (steering_wheel_occlusion_status
    :reader steering_wheel_occlusion_status
    :initarg :steering_wheel_occlusion_status
    :type dms_msgs-msg:DMSSteeringWheelOcclusionTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSSteeringWheelOcclusionTypeEnum))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:float
    :initform 0.0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0)
   (bright_count
    :reader bright_count
    :initarg :bright_count
    :type cl:integer
    :initform 0)
   (dark_count
    :reader dark_count
    :initarg :dark_count
    :type cl:integer
    :initform 0)
   (valid_pixel_count
    :reader valid_pixel_count
    :initarg :valid_pixel_count
    :type cl:integer
    :initform 0)
   (time_stamp_diff
    :reader time_stamp_diff
    :initarg :time_stamp_diff
    :type cl:float
    :initform 0.0)
   (camera_occ_rate
    :reader camera_occ_rate
    :initarg :camera_occ_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSFusaResult (<DMSFusaResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFusaResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFusaResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFusaResult> is deprecated: use dms_msgs-msg:DMSFusaResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'too_dark_bright_status-val :lambda-list '(m))
(cl:defmethod too_dark_bright_status-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:too_dark_bright_status-val is deprecated.  Use dms_msgs-msg:too_dark_bright_status instead.")
  (too_dark_bright_status m))

(cl:ensure-generic-function 'occlusion_status-val :lambda-list '(m))
(cl:defmethod occlusion_status-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:occlusion_status-val is deprecated.  Use dms_msgs-msg:occlusion_status instead.")
  (occlusion_status m))

(cl:ensure-generic-function 'glass_status-val :lambda-list '(m))
(cl:defmethod glass_status-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:glass_status-val is deprecated.  Use dms_msgs-msg:glass_status instead.")
  (glass_status m))

(cl:ensure-generic-function 'occlusion_score-val :lambda-list '(m))
(cl:defmethod occlusion_score-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:occlusion_score-val is deprecated.  Use dms_msgs-msg:occlusion_score instead.")
  (occlusion_score m))

(cl:ensure-generic-function 'frame_tearing-val :lambda-list '(m))
(cl:defmethod frame_tearing-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:frame_tearing-val is deprecated.  Use dms_msgs-msg:frame_tearing instead.")
  (frame_tearing m))

(cl:ensure-generic-function 'frame_freezing-val :lambda-list '(m))
(cl:defmethod frame_freezing-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:frame_freezing-val is deprecated.  Use dms_msgs-msg:frame_freezing instead.")
  (frame_freezing m))

(cl:ensure-generic-function 'frame_fps_abnormal-val :lambda-list '(m))
(cl:defmethod frame_fps_abnormal-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:frame_fps_abnormal-val is deprecated.  Use dms_msgs-msg:frame_fps_abnormal instead.")
  (frame_fps_abnormal m))

(cl:ensure-generic-function 'memory_fault-val :lambda-list '(m))
(cl:defmethod memory_fault-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:memory_fault-val is deprecated.  Use dms_msgs-msg:memory_fault instead.")
  (memory_fault m))

(cl:ensure-generic-function 'sdk_status-val :lambda-list '(m))
(cl:defmethod sdk_status-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:sdk_status-val is deprecated.  Use dms_msgs-msg:sdk_status instead.")
  (sdk_status m))

(cl:ensure-generic-function 'too_bright_score-val :lambda-list '(m))
(cl:defmethod too_bright_score-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:too_bright_score-val is deprecated.  Use dms_msgs-msg:too_bright_score instead.")
  (too_bright_score m))

(cl:ensure-generic-function 'too_dark_score-val :lambda-list '(m))
(cl:defmethod too_dark_score-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:too_dark_score-val is deprecated.  Use dms_msgs-msg:too_dark_score instead.")
  (too_dark_score m))

(cl:ensure-generic-function 'steering_wheel_occlusion_status-val :lambda-list '(m))
(cl:defmethod steering_wheel_occlusion_status-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:steering_wheel_occlusion_status-val is deprecated.  Use dms_msgs-msg:steering_wheel_occlusion_status instead.")
  (steering_wheel_occlusion_status m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved1-val is deprecated.  Use dms_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'bright_count-val :lambda-list '(m))
(cl:defmethod bright_count-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:bright_count-val is deprecated.  Use dms_msgs-msg:bright_count instead.")
  (bright_count m))

(cl:ensure-generic-function 'dark_count-val :lambda-list '(m))
(cl:defmethod dark_count-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:dark_count-val is deprecated.  Use dms_msgs-msg:dark_count instead.")
  (dark_count m))

(cl:ensure-generic-function 'valid_pixel_count-val :lambda-list '(m))
(cl:defmethod valid_pixel_count-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:valid_pixel_count-val is deprecated.  Use dms_msgs-msg:valid_pixel_count instead.")
  (valid_pixel_count m))

(cl:ensure-generic-function 'time_stamp_diff-val :lambda-list '(m))
(cl:defmethod time_stamp_diff-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:time_stamp_diff-val is deprecated.  Use dms_msgs-msg:time_stamp_diff instead.")
  (time_stamp_diff m))

(cl:ensure-generic-function 'camera_occ_rate-val :lambda-list '(m))
(cl:defmethod camera_occ_rate-val ((m <DMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:camera_occ_rate-val is deprecated.  Use dms_msgs-msg:camera_occ_rate instead.")
  (camera_occ_rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSFusaResult>)))
    "Constants for message type '<DMSFusaResult>"
  '((:TOO_DARK_BRIGHT_AVAILABLE . 1)
    (:OCCLUSION_AVAILABLE . 4)
    (:GLASS_STATUS_AVAILABLE . 8)
    (:TEARING_AVAILABLE . 16)
    (:FREEZING_AVAILABLE . 32)
    (:FPS_ABNORMAL_AVAILABLE . 64)
    (:MEMORY_FAULT_AVAILABLE . 128)
    (:SDK_STATUS_AVAILABLE . 256)
    (:RESERVED . 512)
    (:RESERVED1 . 1024)
    (:STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSFusaResult)))
    "Constants for message type 'DMSFusaResult"
  '((:TOO_DARK_BRIGHT_AVAILABLE . 1)
    (:OCCLUSION_AVAILABLE . 4)
    (:GLASS_STATUS_AVAILABLE . 8)
    (:TEARING_AVAILABLE . 16)
    (:FREEZING_AVAILABLE . 32)
    (:FPS_ABNORMAL_AVAILABLE . 64)
    (:MEMORY_FAULT_AVAILABLE . 128)
    (:SDK_STATUS_AVAILABLE . 256)
    (:RESERVED . 512)
    (:RESERVED1 . 1024)
    (:STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFusaResult>) ostream)
  "Serializes a message object of type '<DMSFusaResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'too_dark_bright_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occlusion_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'glass_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'occlusion_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'frame_tearing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'frame_freezing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'frame_fps_abnormal) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'memory_fault) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sdk_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'too_bright_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'too_dark_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_wheel_occlusion_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'bright_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dark_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'valid_pixel_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_stamp_diff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'camera_occ_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFusaResult>) istream)
  "Deserializes a message object of type '<DMSFusaResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'too_dark_bright_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occlusion_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'glass_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'occlusion_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'frame_tearing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'frame_freezing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'frame_fps_abnormal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'memory_fault) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sdk_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'too_bright_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'too_dark_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_wheel_occlusion_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bright_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dark_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'valid_pixel_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_stamp_diff) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'camera_occ_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFusaResult>)))
  "Returns string type for a message object of type '<DMSFusaResult>"
  "dms_msgs/DMSFusaResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFusaResult)))
  "Returns string type for a message object of type 'DMSFusaResult"
  "dms_msgs/DMSFusaResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFusaResult>)))
  "Returns md5sum for a message object of type '<DMSFusaResult>"
  "5a8fb472226a4f17c56c02f5bcd9d8f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFusaResult)))
  "Returns md5sum for a message object of type 'DMSFusaResult"
  "5a8fb472226a4f17c56c02f5bcd9d8f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFusaResult>)))
  "Returns full string definition for message of type '<DMSFusaResult>"
  (cl:format cl:nil "uint16 TOO_DARK_BRIGHT_AVAILABLE = 1~%uint16 OCCLUSION_AVAILABLE = 4~%uint16 GLASS_STATUS_AVAILABLE = 8~%uint16 TEARING_AVAILABLE = 16~%uint16 FREEZING_AVAILABLE = 32~%uint16 FPS_ABNORMAL_AVAILABLE = 64~%uint16 MEMORY_FAULT_AVAILABLE = 128~%uint16 SDK_STATUS_AVAILABLE = 256~%uint16 RESERVED = 512~%uint16 RESERVED1 = 1024~%uint16 STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE = 2048~%uint16 available~%dms_msgs/DMSCameraDiagnoseTypeEnum too_dark_bright_status~%dms_msgs/DMSCameraOcclusionTypeEnum occlusion_status~%dms_msgs/DMSGlassStatusTypeEnum glass_status~%float32 occlusion_score~%bool frame_tearing~%bool frame_freezing~%bool frame_fps_abnormal~%bool memory_fault~%dms_msgs/DMSSDKStatus sdk_status~%float32 too_bright_score~%float32 too_dark_score~%dms_msgs/DMSSteeringWheelOcclusionTypeEnum steering_wheel_occlusion_status~%float32 reserved~%float32 reserved1~%int32 bright_count~%int32 dark_count~%int32 valid_pixel_count~%float32 time_stamp_diff~%float32 camera_occ_rate~%~%================================================================================~%MSG: dms_msgs/DMSCameraDiagnoseTypeEnum~%uint8 DMS_CAMERA_DIAGNOSE_NORMAL = 1~%uint8 DMS_CAMERA_DIAGNOSE_TOO_SMALL = 2~%uint8 DMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 4~%uint8 DMS_CAMERA_DIAGNOSE_TOO_DARK = 8~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSCameraOcclusionTypeEnum~%uint8 DMS_CAMERA_BLOCK = 0~%uint8 DMS_CAMERA_NO_BLOCK = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSGlassStatusTypeEnum~%uint8 DMS_GLASSES_IR_BLOCK_ON = 0~%uint8 DMS_GLASSES_UNKNOWN = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSSDKStatus~%uint8 SDK_STATUS_AVAILABLE = 1~%uint8 STATE_MACHINE_AVAILABLE = 2~%uint8 available~%dms_msgs/DMSStatusTypeEnum dms_status_type~%dms_msgs/DMSStateMachineTypeEnum state_machine_type~%~%================================================================================~%MSG: dms_msgs/DMSStatusTypeEnum~%uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 INTERNAL_FAULT = 2~%uint8 EXTERNAL_FAULT = 3~%uint8 INVALID_ENVIRONMENT = 4~%uint8 AUTHENTICATION_FAIL = 5~%uint8 INITIALIZ_OK = 6~%uint8 INITIALIZ_FAIL = 7~%uint8 RUNNING_OK = 8~%uint8 RUNNING_FAIL = 9~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSStateMachineTypeEnum~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 ACTIVE = 2~%uint8 FAILURE = 3~%uint8 UNKNOWN = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSSteeringWheelOcclusionTypeEnum~%uint8 STEERING_WHEEL_BLOCK = 0~%uint8 STEERING_WHEEL_NO_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFusaResult)))
  "Returns full string definition for message of type 'DMSFusaResult"
  (cl:format cl:nil "uint16 TOO_DARK_BRIGHT_AVAILABLE = 1~%uint16 OCCLUSION_AVAILABLE = 4~%uint16 GLASS_STATUS_AVAILABLE = 8~%uint16 TEARING_AVAILABLE = 16~%uint16 FREEZING_AVAILABLE = 32~%uint16 FPS_ABNORMAL_AVAILABLE = 64~%uint16 MEMORY_FAULT_AVAILABLE = 128~%uint16 SDK_STATUS_AVAILABLE = 256~%uint16 RESERVED = 512~%uint16 RESERVED1 = 1024~%uint16 STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE = 2048~%uint16 available~%dms_msgs/DMSCameraDiagnoseTypeEnum too_dark_bright_status~%dms_msgs/DMSCameraOcclusionTypeEnum occlusion_status~%dms_msgs/DMSGlassStatusTypeEnum glass_status~%float32 occlusion_score~%bool frame_tearing~%bool frame_freezing~%bool frame_fps_abnormal~%bool memory_fault~%dms_msgs/DMSSDKStatus sdk_status~%float32 too_bright_score~%float32 too_dark_score~%dms_msgs/DMSSteeringWheelOcclusionTypeEnum steering_wheel_occlusion_status~%float32 reserved~%float32 reserved1~%int32 bright_count~%int32 dark_count~%int32 valid_pixel_count~%float32 time_stamp_diff~%float32 camera_occ_rate~%~%================================================================================~%MSG: dms_msgs/DMSCameraDiagnoseTypeEnum~%uint8 DMS_CAMERA_DIAGNOSE_NORMAL = 1~%uint8 DMS_CAMERA_DIAGNOSE_TOO_SMALL = 2~%uint8 DMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 4~%uint8 DMS_CAMERA_DIAGNOSE_TOO_DARK = 8~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSCameraOcclusionTypeEnum~%uint8 DMS_CAMERA_BLOCK = 0~%uint8 DMS_CAMERA_NO_BLOCK = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSGlassStatusTypeEnum~%uint8 DMS_GLASSES_IR_BLOCK_ON = 0~%uint8 DMS_GLASSES_UNKNOWN = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSSDKStatus~%uint8 SDK_STATUS_AVAILABLE = 1~%uint8 STATE_MACHINE_AVAILABLE = 2~%uint8 available~%dms_msgs/DMSStatusTypeEnum dms_status_type~%dms_msgs/DMSStateMachineTypeEnum state_machine_type~%~%================================================================================~%MSG: dms_msgs/DMSStatusTypeEnum~%uint8 UNKNOWN = 0~%uint8 INITIALIZING = 1~%uint8 INTERNAL_FAULT = 2~%uint8 EXTERNAL_FAULT = 3~%uint8 INVALID_ENVIRONMENT = 4~%uint8 AUTHENTICATION_FAIL = 5~%uint8 INITIALIZ_OK = 6~%uint8 INITIALIZ_FAIL = 7~%uint8 RUNNING_OK = 8~%uint8 RUNNING_FAIL = 9~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSStateMachineTypeEnum~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 ACTIVE = 2~%uint8 FAILURE = 3~%uint8 UNKNOWN = 4~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSSteeringWheelOcclusionTypeEnum~%uint8 STEERING_WHEEL_BLOCK = 0~%uint8 STEERING_WHEEL_NO_BLOCK = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFusaResult>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'too_dark_bright_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occlusion_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'glass_status))
     4
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sdk_status))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_wheel_occlusion_status))
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFusaResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFusaResult
    (cl:cons ':available (available msg))
    (cl:cons ':too_dark_bright_status (too_dark_bright_status msg))
    (cl:cons ':occlusion_status (occlusion_status msg))
    (cl:cons ':glass_status (glass_status msg))
    (cl:cons ':occlusion_score (occlusion_score msg))
    (cl:cons ':frame_tearing (frame_tearing msg))
    (cl:cons ':frame_freezing (frame_freezing msg))
    (cl:cons ':frame_fps_abnormal (frame_fps_abnormal msg))
    (cl:cons ':memory_fault (memory_fault msg))
    (cl:cons ':sdk_status (sdk_status msg))
    (cl:cons ':too_bright_score (too_bright_score msg))
    (cl:cons ':too_dark_score (too_dark_score msg))
    (cl:cons ':steering_wheel_occlusion_status (steering_wheel_occlusion_status msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':bright_count (bright_count msg))
    (cl:cons ':dark_count (dark_count msg))
    (cl:cons ':valid_pixel_count (valid_pixel_count msg))
    (cl:cons ':time_stamp_diff (time_stamp_diff msg))
    (cl:cons ':camera_occ_rate (camera_occ_rate msg))
))
