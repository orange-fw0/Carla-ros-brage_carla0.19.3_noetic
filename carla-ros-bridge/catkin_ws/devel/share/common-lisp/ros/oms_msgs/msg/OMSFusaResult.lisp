; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSFusaResult.msg.html

(cl:defclass <OMSFusaResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (too_dark_bright_status
    :reader too_dark_bright_status
    :initarg :too_dark_bright_status
    :type oms_msgs-msg:OMSCameraOcclusionTypeEnum
    :initform (cl:make-instance 'oms_msgs-msg:OMSCameraOcclusionTypeEnum))
   (occlusion_status
    :reader occlusion_status
    :initarg :occlusion_status
    :type oms_msgs-msg:OMSCameraOcclusionTypeEnum
    :initform (cl:make-instance 'oms_msgs-msg:OMSCameraOcclusionTypeEnum))
   (glass_status
    :reader glass_status
    :initarg :glass_status
    :type oms_msgs-msg:OMSGlassStatusTypeEnum
    :initform (cl:make-instance 'oms_msgs-msg:OMSGlassStatusTypeEnum))
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
    :initform cl:nil))
)

(cl:defclass OMSFusaResult (<OMSFusaResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSFusaResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSFusaResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSFusaResult> is deprecated: use oms_msgs-msg:OMSFusaResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:available-val is deprecated.  Use oms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'too_dark_bright_status-val :lambda-list '(m))
(cl:defmethod too_dark_bright_status-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:too_dark_bright_status-val is deprecated.  Use oms_msgs-msg:too_dark_bright_status instead.")
  (too_dark_bright_status m))

(cl:ensure-generic-function 'occlusion_status-val :lambda-list '(m))
(cl:defmethod occlusion_status-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:occlusion_status-val is deprecated.  Use oms_msgs-msg:occlusion_status instead.")
  (occlusion_status m))

(cl:ensure-generic-function 'glass_status-val :lambda-list '(m))
(cl:defmethod glass_status-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:glass_status-val is deprecated.  Use oms_msgs-msg:glass_status instead.")
  (glass_status m))

(cl:ensure-generic-function 'occlusion_score-val :lambda-list '(m))
(cl:defmethod occlusion_score-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:occlusion_score-val is deprecated.  Use oms_msgs-msg:occlusion_score instead.")
  (occlusion_score m))

(cl:ensure-generic-function 'frame_tearing-val :lambda-list '(m))
(cl:defmethod frame_tearing-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:frame_tearing-val is deprecated.  Use oms_msgs-msg:frame_tearing instead.")
  (frame_tearing m))

(cl:ensure-generic-function 'frame_freezing-val :lambda-list '(m))
(cl:defmethod frame_freezing-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:frame_freezing-val is deprecated.  Use oms_msgs-msg:frame_freezing instead.")
  (frame_freezing m))

(cl:ensure-generic-function 'frame_fps_abnormal-val :lambda-list '(m))
(cl:defmethod frame_fps_abnormal-val ((m <OMSFusaResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:frame_fps_abnormal-val is deprecated.  Use oms_msgs-msg:frame_fps_abnormal instead.")
  (frame_fps_abnormal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSFusaResult>)))
    "Constants for message type '<OMSFusaResult>"
  '((:TOO_DARK_BRIGHT_AVAILABLE . 1)
    (:OCCLUSION_AVAILABLE . 2)
    (:GLASS_STATUS_AVAILABLE . 4)
    (:TEARING_AVAILABLE . 8)
    (:FREEZING_AVAILABLE . 16)
    (:FPS_ABNORMAL_AVAILABLE . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSFusaResult)))
    "Constants for message type 'OMSFusaResult"
  '((:TOO_DARK_BRIGHT_AVAILABLE . 1)
    (:OCCLUSION_AVAILABLE . 2)
    (:GLASS_STATUS_AVAILABLE . 4)
    (:TEARING_AVAILABLE . 8)
    (:FREEZING_AVAILABLE . 16)
    (:FPS_ABNORMAL_AVAILABLE . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSFusaResult>) ostream)
  "Serializes a message object of type '<OMSFusaResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSFusaResult>) istream)
  "Deserializes a message object of type '<OMSFusaResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSFusaResult>)))
  "Returns string type for a message object of type '<OMSFusaResult>"
  "oms_msgs/OMSFusaResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSFusaResult)))
  "Returns string type for a message object of type 'OMSFusaResult"
  "oms_msgs/OMSFusaResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSFusaResult>)))
  "Returns md5sum for a message object of type '<OMSFusaResult>"
  "19b6c1167a1ed95968f2bb11a9170c1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSFusaResult)))
  "Returns md5sum for a message object of type 'OMSFusaResult"
  "19b6c1167a1ed95968f2bb11a9170c1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSFusaResult>)))
  "Returns full string definition for message of type '<OMSFusaResult>"
  (cl:format cl:nil "uint8 TOO_DARK_BRIGHT_AVAILABLE = 1~%uint8 OCCLUSION_AVAILABLE = 2~%uint8 GLASS_STATUS_AVAILABLE = 4~%uint8 TEARING_AVAILABLE = 8~%uint8 FREEZING_AVAILABLE = 16~%uint8 FPS_ABNORMAL_AVAILABLE = 32~%uint8 available~%oms_msgs/OMSCameraOcclusionTypeEnum too_dark_bright_status~%oms_msgs/OMSCameraOcclusionTypeEnum occlusion_status~%oms_msgs/OMSGlassStatusTypeEnum glass_status~%float32 occlusion_score~%bool frame_tearing~%bool frame_freezing~%bool frame_fps_abnormal~%~%================================================================================~%MSG: oms_msgs/OMSCameraOcclusionTypeEnum~%uint8 OMS_CAMERA_NO_BLOCK = 0~%uint8 OMS_CAMERA_BLOCK = 1~%uint8 value~%~%================================================================================~%MSG: oms_msgs/OMSGlassStatusTypeEnum~%uint8 OMS_GLASSES_UNKNOWN = 0~%uint8 OMS_GLASSES_IR_BLOCK_ON = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSFusaResult)))
  "Returns full string definition for message of type 'OMSFusaResult"
  (cl:format cl:nil "uint8 TOO_DARK_BRIGHT_AVAILABLE = 1~%uint8 OCCLUSION_AVAILABLE = 2~%uint8 GLASS_STATUS_AVAILABLE = 4~%uint8 TEARING_AVAILABLE = 8~%uint8 FREEZING_AVAILABLE = 16~%uint8 FPS_ABNORMAL_AVAILABLE = 32~%uint8 available~%oms_msgs/OMSCameraOcclusionTypeEnum too_dark_bright_status~%oms_msgs/OMSCameraOcclusionTypeEnum occlusion_status~%oms_msgs/OMSGlassStatusTypeEnum glass_status~%float32 occlusion_score~%bool frame_tearing~%bool frame_freezing~%bool frame_fps_abnormal~%~%================================================================================~%MSG: oms_msgs/OMSCameraOcclusionTypeEnum~%uint8 OMS_CAMERA_NO_BLOCK = 0~%uint8 OMS_CAMERA_BLOCK = 1~%uint8 value~%~%================================================================================~%MSG: oms_msgs/OMSGlassStatusTypeEnum~%uint8 OMS_GLASSES_UNKNOWN = 0~%uint8 OMS_GLASSES_IR_BLOCK_ON = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSFusaResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'too_dark_bright_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occlusion_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'glass_status))
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSFusaResult>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSFusaResult
    (cl:cons ':available (available msg))
    (cl:cons ':too_dark_bright_status (too_dark_bright_status msg))
    (cl:cons ':occlusion_status (occlusion_status msg))
    (cl:cons ':glass_status (glass_status msg))
    (cl:cons ':occlusion_score (occlusion_score msg))
    (cl:cons ':frame_tearing (frame_tearing msg))
    (cl:cons ':frame_freezing (frame_freezing msg))
    (cl:cons ':frame_fps_abnormal (frame_fps_abnormal msg))
))
