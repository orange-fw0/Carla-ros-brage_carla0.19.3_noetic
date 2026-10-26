; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEyeResult.msg.html

(cl:defclass <DMSEyeResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (distance_left_eye
    :reader distance_left_eye
    :initarg :distance_left_eye
    :type cl:float
    :initform 0.0)
   (distance_right_eye
    :reader distance_right_eye
    :initarg :distance_right_eye
    :type cl:float
    :initform 0.0)
   (eyelid_left_score
    :reader eyelid_left_score
    :initarg :eyelid_left_score
    :type cl:float
    :initform 0.0)
   (eyelid_right_score
    :reader eyelid_right_score
    :initarg :eyelid_right_score
    :type cl:float
    :initform 0.0)
   (state_right_eye
    :reader state_right_eye
    :initarg :state_right_eye
    :type dms_msgs-msg:DMSEyelidStatusTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSEyelidStatusTypeEnum))
   (state_left_eye
    :reader state_left_eye
    :initarg :state_left_eye
    :type dms_msgs-msg:DMSEyelidStatusTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSEyelidStatusTypeEnum))
   (eye_relative_result
    :reader eye_relative_result
    :initarg :eye_relative_result
    :type dms_msgs-msg:DMSEyeRelativeResult
    :initform (cl:make-instance 'dms_msgs-msg:DMSEyeRelativeResult))
   (vector_left_eye_wcs
    :reader vector_left_eye_wcs
    :initarg :vector_left_eye_wcs
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f))
   (vector_right_eye_wcs
    :reader vector_right_eye_wcs
    :initarg :vector_right_eye_wcs
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f))
   (vector_eye_center_wcs
    :reader vector_eye_center_wcs
    :initarg :vector_eye_center_wcs
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f))
   (vector_left_eye_ccs
    :reader vector_left_eye_ccs
    :initarg :vector_left_eye_ccs
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f))
   (vector_right_eye_ccs
    :reader vector_right_eye_ccs
    :initarg :vector_right_eye_ccs
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f))
   (vector_eye_center_ccs
    :reader vector_eye_center_ccs
    :initarg :vector_eye_center_ccs
    :type dms_msgs-msg:DMSVector3f
    :initform (cl:make-instance 'dms_msgs-msg:DMSVector3f)))
)

(cl:defclass DMSEyeResult (<DMSEyeResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEyeResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEyeResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEyeResult> is deprecated: use dms_msgs-msg:DMSEyeResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'distance_left_eye-val :lambda-list '(m))
(cl:defmethod distance_left_eye-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distance_left_eye-val is deprecated.  Use dms_msgs-msg:distance_left_eye instead.")
  (distance_left_eye m))

(cl:ensure-generic-function 'distance_right_eye-val :lambda-list '(m))
(cl:defmethod distance_right_eye-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distance_right_eye-val is deprecated.  Use dms_msgs-msg:distance_right_eye instead.")
  (distance_right_eye m))

(cl:ensure-generic-function 'eyelid_left_score-val :lambda-list '(m))
(cl:defmethod eyelid_left_score-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:eyelid_left_score-val is deprecated.  Use dms_msgs-msg:eyelid_left_score instead.")
  (eyelid_left_score m))

(cl:ensure-generic-function 'eyelid_right_score-val :lambda-list '(m))
(cl:defmethod eyelid_right_score-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:eyelid_right_score-val is deprecated.  Use dms_msgs-msg:eyelid_right_score instead.")
  (eyelid_right_score m))

(cl:ensure-generic-function 'state_right_eye-val :lambda-list '(m))
(cl:defmethod state_right_eye-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:state_right_eye-val is deprecated.  Use dms_msgs-msg:state_right_eye instead.")
  (state_right_eye m))

(cl:ensure-generic-function 'state_left_eye-val :lambda-list '(m))
(cl:defmethod state_left_eye-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:state_left_eye-val is deprecated.  Use dms_msgs-msg:state_left_eye instead.")
  (state_left_eye m))

(cl:ensure-generic-function 'eye_relative_result-val :lambda-list '(m))
(cl:defmethod eye_relative_result-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:eye_relative_result-val is deprecated.  Use dms_msgs-msg:eye_relative_result instead.")
  (eye_relative_result m))

(cl:ensure-generic-function 'vector_left_eye_wcs-val :lambda-list '(m))
(cl:defmethod vector_left_eye_wcs-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_left_eye_wcs-val is deprecated.  Use dms_msgs-msg:vector_left_eye_wcs instead.")
  (vector_left_eye_wcs m))

(cl:ensure-generic-function 'vector_right_eye_wcs-val :lambda-list '(m))
(cl:defmethod vector_right_eye_wcs-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_right_eye_wcs-val is deprecated.  Use dms_msgs-msg:vector_right_eye_wcs instead.")
  (vector_right_eye_wcs m))

(cl:ensure-generic-function 'vector_eye_center_wcs-val :lambda-list '(m))
(cl:defmethod vector_eye_center_wcs-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_eye_center_wcs-val is deprecated.  Use dms_msgs-msg:vector_eye_center_wcs instead.")
  (vector_eye_center_wcs m))

(cl:ensure-generic-function 'vector_left_eye_ccs-val :lambda-list '(m))
(cl:defmethod vector_left_eye_ccs-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_left_eye_ccs-val is deprecated.  Use dms_msgs-msg:vector_left_eye_ccs instead.")
  (vector_left_eye_ccs m))

(cl:ensure-generic-function 'vector_right_eye_ccs-val :lambda-list '(m))
(cl:defmethod vector_right_eye_ccs-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_right_eye_ccs-val is deprecated.  Use dms_msgs-msg:vector_right_eye_ccs instead.")
  (vector_right_eye_ccs m))

(cl:ensure-generic-function 'vector_eye_center_ccs-val :lambda-list '(m))
(cl:defmethod vector_eye_center_ccs-val ((m <DMSEyeResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:vector_eye_center_ccs-val is deprecated.  Use dms_msgs-msg:vector_eye_center_ccs instead.")
  (vector_eye_center_ccs m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEyeResult>)))
    "Constants for message type '<DMSEyeResult>"
  '((:EYE_DISTANCE_AVAILABLE . 1)
    (:EYE_EYELID_AVAILABLE . 2)
    (:EYE_VECTOR_WCS_AVAILABLE . 4)
    (:EYE_VECTOR_CCS_AVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEyeResult)))
    "Constants for message type 'DMSEyeResult"
  '((:EYE_DISTANCE_AVAILABLE . 1)
    (:EYE_EYELID_AVAILABLE . 2)
    (:EYE_VECTOR_WCS_AVAILABLE . 4)
    (:EYE_VECTOR_CCS_AVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEyeResult>) ostream)
  "Serializes a message object of type '<DMSEyeResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_left_eye))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_right_eye))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eyelid_left_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eyelid_right_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_right_eye) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_left_eye) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eye_relative_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_left_eye_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_right_eye_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_eye_center_wcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_left_eye_ccs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_right_eye_ccs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector_eye_center_ccs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEyeResult>) istream)
  "Deserializes a message object of type '<DMSEyeResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_left_eye) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_right_eye) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eyelid_left_score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eyelid_right_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_right_eye) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_left_eye) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eye_relative_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_left_eye_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_right_eye_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_eye_center_wcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_left_eye_ccs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_right_eye_ccs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector_eye_center_ccs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEyeResult>)))
  "Returns string type for a message object of type '<DMSEyeResult>"
  "dms_msgs/DMSEyeResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEyeResult)))
  "Returns string type for a message object of type 'DMSEyeResult"
  "dms_msgs/DMSEyeResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEyeResult>)))
  "Returns md5sum for a message object of type '<DMSEyeResult>"
  "d4d5f3924f5e8fbe8eebccef0629d833")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEyeResult)))
  "Returns md5sum for a message object of type 'DMSEyeResult"
  "d4d5f3924f5e8fbe8eebccef0629d833")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEyeResult>)))
  "Returns full string definition for message of type '<DMSEyeResult>"
  (cl:format cl:nil "uint8 EYE_DISTANCE_AVAILABLE = 1~%uint8 EYE_EYELID_AVAILABLE = 2~%uint8 EYE_VECTOR_WCS_AVAILABLE = 4~%uint8 EYE_VECTOR_CCS_AVAILABLE = 8~%uint8 available~%float32 distance_left_eye~%float32 distance_right_eye~%float32 eyelid_left_score~%float32 eyelid_right_score~%dms_msgs/DMSEyelidStatusTypeEnum state_right_eye~%dms_msgs/DMSEyelidStatusTypeEnum state_left_eye~%dms_msgs/DMSEyeRelativeResult eye_relative_result~%dms_msgs/DMSVector3f vector_left_eye_wcs~%dms_msgs/DMSVector3f vector_right_eye_wcs~%dms_msgs/DMSVector3f vector_eye_center_wcs~%dms_msgs/DMSVector3f vector_left_eye_ccs~%dms_msgs/DMSVector3f vector_right_eye_ccs~%dms_msgs/DMSVector3f vector_eye_center_ccs~%~%================================================================================~%MSG: dms_msgs/DMSEyelidStatusTypeEnum~%uint8 DMS_EYELID_STATE_OPEN = 0~%uint8 DMS_EYELID_STATE_CLOSED = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSEyeRelativeResult~%uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 IS_EYE_BLINK_AVAILABLE = 2~%uint8 available~%float32 left_eye_relative_distance~%float32 right_eye_relative_distance~%bool is_left_eye_close~%bool is_right_eye_close~%float32 left_eye_close_time~%float32 right_eye_close_time~%float32 reserved~%bool is_eye_blink~%~%================================================================================~%MSG: dms_msgs/DMSVector3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEyeResult)))
  "Returns full string definition for message of type 'DMSEyeResult"
  (cl:format cl:nil "uint8 EYE_DISTANCE_AVAILABLE = 1~%uint8 EYE_EYELID_AVAILABLE = 2~%uint8 EYE_VECTOR_WCS_AVAILABLE = 4~%uint8 EYE_VECTOR_CCS_AVAILABLE = 8~%uint8 available~%float32 distance_left_eye~%float32 distance_right_eye~%float32 eyelid_left_score~%float32 eyelid_right_score~%dms_msgs/DMSEyelidStatusTypeEnum state_right_eye~%dms_msgs/DMSEyelidStatusTypeEnum state_left_eye~%dms_msgs/DMSEyeRelativeResult eye_relative_result~%dms_msgs/DMSVector3f vector_left_eye_wcs~%dms_msgs/DMSVector3f vector_right_eye_wcs~%dms_msgs/DMSVector3f vector_eye_center_wcs~%dms_msgs/DMSVector3f vector_left_eye_ccs~%dms_msgs/DMSVector3f vector_right_eye_ccs~%dms_msgs/DMSVector3f vector_eye_center_ccs~%~%================================================================================~%MSG: dms_msgs/DMSEyelidStatusTypeEnum~%uint8 DMS_EYELID_STATE_OPEN = 0~%uint8 DMS_EYELID_STATE_CLOSED = 1~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSEyeRelativeResult~%uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 IS_EYE_BLINK_AVAILABLE = 2~%uint8 available~%float32 left_eye_relative_distance~%float32 right_eye_relative_distance~%bool is_left_eye_close~%bool is_right_eye_close~%float32 left_eye_close_time~%float32 right_eye_close_time~%float32 reserved~%bool is_eye_blink~%~%================================================================================~%MSG: dms_msgs/DMSVector3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEyeResult>))
  (cl:+ 0
     1
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_right_eye))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_left_eye))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eye_relative_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_left_eye_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_right_eye_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_eye_center_wcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_left_eye_ccs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_right_eye_ccs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector_eye_center_ccs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEyeResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEyeResult
    (cl:cons ':available (available msg))
    (cl:cons ':distance_left_eye (distance_left_eye msg))
    (cl:cons ':distance_right_eye (distance_right_eye msg))
    (cl:cons ':eyelid_left_score (eyelid_left_score msg))
    (cl:cons ':eyelid_right_score (eyelid_right_score msg))
    (cl:cons ':state_right_eye (state_right_eye msg))
    (cl:cons ':state_left_eye (state_left_eye msg))
    (cl:cons ':eye_relative_result (eye_relative_result msg))
    (cl:cons ':vector_left_eye_wcs (vector_left_eye_wcs msg))
    (cl:cons ':vector_right_eye_wcs (vector_right_eye_wcs msg))
    (cl:cons ':vector_eye_center_wcs (vector_eye_center_wcs msg))
    (cl:cons ':vector_left_eye_ccs (vector_left_eye_ccs msg))
    (cl:cons ':vector_right_eye_ccs (vector_right_eye_ccs msg))
    (cl:cons ':vector_eye_center_ccs (vector_eye_center_ccs msg))
))
