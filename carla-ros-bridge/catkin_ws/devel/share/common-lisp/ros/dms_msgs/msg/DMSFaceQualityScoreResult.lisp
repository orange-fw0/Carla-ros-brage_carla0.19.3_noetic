; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSFaceQualityScoreResult.msg.html

(cl:defclass <DMSFaceQualityScoreResult> (roslisp-msg-protocol:ros-message)
  ((light_forehead_prob
    :reader light_forehead_prob
    :initarg :light_forehead_prob
    :type cl:float
    :initform 0.0)
   (light_eye_prob
    :reader light_eye_prob
    :initarg :light_eye_prob
    :type cl:float
    :initform 0.0)
   (light_nose_prob
    :reader light_nose_prob
    :initarg :light_nose_prob
    :type cl:float
    :initform 0.0)
   (light_mouth_prob
    :reader light_mouth_prob
    :initarg :light_mouth_prob
    :type cl:float
    :initform 0.0)
   (faceshade_forehead_prob
    :reader faceshade_forehead_prob
    :initarg :faceshade_forehead_prob
    :type cl:float
    :initform 0.0)
   (faceshade_eye_prob
    :reader faceshade_eye_prob
    :initarg :faceshade_eye_prob
    :type cl:float
    :initform 0.0)
   (faceshade_nose_prob
    :reader faceshade_nose_prob
    :initarg :faceshade_nose_prob
    :type cl:float
    :initform 0.0)
   (faceshade_mouth_prob
    :reader faceshade_mouth_prob
    :initarg :faceshade_mouth_prob
    :type cl:float
    :initform 0.0)
   (eye_left_prob
    :reader eye_left_prob
    :initarg :eye_left_prob
    :type cl:float
    :initform 0.0)
   (eye_right_prob
    :reader eye_right_prob
    :initarg :eye_right_prob
    :type cl:float
    :initform 0.0)
   (iris_left_prob
    :reader iris_left_prob
    :initarg :iris_left_prob
    :type cl:float
    :initform 0.0)
   (iris_right_prob
    :reader iris_right_prob
    :initarg :iris_right_prob
    :type cl:float
    :initform 0.0)
   (infrared_block_prob
    :reader infrared_block_prob
    :initarg :infrared_block_prob
    :type cl:float
    :initform 0.0)
   (yaw_region
    :reader yaw_region
    :initarg :yaw_region
    :type cl:integer
    :initform 0)
   (pitch_region
    :reader pitch_region
    :initarg :pitch_region
    :type cl:integer
    :initform 0))
)

(cl:defclass DMSFaceQualityScoreResult (<DMSFaceQualityScoreResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSFaceQualityScoreResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSFaceQualityScoreResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSFaceQualityScoreResult> is deprecated: use dms_msgs-msg:DMSFaceQualityScoreResult instead.")))

(cl:ensure-generic-function 'light_forehead_prob-val :lambda-list '(m))
(cl:defmethod light_forehead_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:light_forehead_prob-val is deprecated.  Use dms_msgs-msg:light_forehead_prob instead.")
  (light_forehead_prob m))

(cl:ensure-generic-function 'light_eye_prob-val :lambda-list '(m))
(cl:defmethod light_eye_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:light_eye_prob-val is deprecated.  Use dms_msgs-msg:light_eye_prob instead.")
  (light_eye_prob m))

(cl:ensure-generic-function 'light_nose_prob-val :lambda-list '(m))
(cl:defmethod light_nose_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:light_nose_prob-val is deprecated.  Use dms_msgs-msg:light_nose_prob instead.")
  (light_nose_prob m))

(cl:ensure-generic-function 'light_mouth_prob-val :lambda-list '(m))
(cl:defmethod light_mouth_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:light_mouth_prob-val is deprecated.  Use dms_msgs-msg:light_mouth_prob instead.")
  (light_mouth_prob m))

(cl:ensure-generic-function 'faceshade_forehead_prob-val :lambda-list '(m))
(cl:defmethod faceshade_forehead_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:faceshade_forehead_prob-val is deprecated.  Use dms_msgs-msg:faceshade_forehead_prob instead.")
  (faceshade_forehead_prob m))

(cl:ensure-generic-function 'faceshade_eye_prob-val :lambda-list '(m))
(cl:defmethod faceshade_eye_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:faceshade_eye_prob-val is deprecated.  Use dms_msgs-msg:faceshade_eye_prob instead.")
  (faceshade_eye_prob m))

(cl:ensure-generic-function 'faceshade_nose_prob-val :lambda-list '(m))
(cl:defmethod faceshade_nose_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:faceshade_nose_prob-val is deprecated.  Use dms_msgs-msg:faceshade_nose_prob instead.")
  (faceshade_nose_prob m))

(cl:ensure-generic-function 'faceshade_mouth_prob-val :lambda-list '(m))
(cl:defmethod faceshade_mouth_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:faceshade_mouth_prob-val is deprecated.  Use dms_msgs-msg:faceshade_mouth_prob instead.")
  (faceshade_mouth_prob m))

(cl:ensure-generic-function 'eye_left_prob-val :lambda-list '(m))
(cl:defmethod eye_left_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:eye_left_prob-val is deprecated.  Use dms_msgs-msg:eye_left_prob instead.")
  (eye_left_prob m))

(cl:ensure-generic-function 'eye_right_prob-val :lambda-list '(m))
(cl:defmethod eye_right_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:eye_right_prob-val is deprecated.  Use dms_msgs-msg:eye_right_prob instead.")
  (eye_right_prob m))

(cl:ensure-generic-function 'iris_left_prob-val :lambda-list '(m))
(cl:defmethod iris_left_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:iris_left_prob-val is deprecated.  Use dms_msgs-msg:iris_left_prob instead.")
  (iris_left_prob m))

(cl:ensure-generic-function 'iris_right_prob-val :lambda-list '(m))
(cl:defmethod iris_right_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:iris_right_prob-val is deprecated.  Use dms_msgs-msg:iris_right_prob instead.")
  (iris_right_prob m))

(cl:ensure-generic-function 'infrared_block_prob-val :lambda-list '(m))
(cl:defmethod infrared_block_prob-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:infrared_block_prob-val is deprecated.  Use dms_msgs-msg:infrared_block_prob instead.")
  (infrared_block_prob m))

(cl:ensure-generic-function 'yaw_region-val :lambda-list '(m))
(cl:defmethod yaw_region-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:yaw_region-val is deprecated.  Use dms_msgs-msg:yaw_region instead.")
  (yaw_region m))

(cl:ensure-generic-function 'pitch_region-val :lambda-list '(m))
(cl:defmethod pitch_region-val ((m <DMSFaceQualityScoreResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:pitch_region-val is deprecated.  Use dms_msgs-msg:pitch_region instead.")
  (pitch_region m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSFaceQualityScoreResult>) ostream)
  "Serializes a message object of type '<DMSFaceQualityScoreResult>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'light_forehead_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'light_eye_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'light_nose_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'light_mouth_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'faceshade_forehead_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'faceshade_eye_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'faceshade_nose_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'faceshade_mouth_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eye_left_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eye_right_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'iris_left_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'iris_right_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'infrared_block_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'yaw_region)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch_region)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSFaceQualityScoreResult>) istream)
  "Deserializes a message object of type '<DMSFaceQualityScoreResult>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'light_forehead_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'light_eye_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'light_nose_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'light_mouth_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'faceshade_forehead_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'faceshade_eye_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'faceshade_nose_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'faceshade_mouth_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eye_left_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eye_right_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iris_left_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iris_right_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'infrared_block_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw_region) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch_region) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSFaceQualityScoreResult>)))
  "Returns string type for a message object of type '<DMSFaceQualityScoreResult>"
  "dms_msgs/DMSFaceQualityScoreResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSFaceQualityScoreResult)))
  "Returns string type for a message object of type 'DMSFaceQualityScoreResult"
  "dms_msgs/DMSFaceQualityScoreResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSFaceQualityScoreResult>)))
  "Returns md5sum for a message object of type '<DMSFaceQualityScoreResult>"
  "7b9b4dbac63c0d367df4b6851a103a01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSFaceQualityScoreResult)))
  "Returns md5sum for a message object of type 'DMSFaceQualityScoreResult"
  "7b9b4dbac63c0d367df4b6851a103a01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSFaceQualityScoreResult>)))
  "Returns full string definition for message of type '<DMSFaceQualityScoreResult>"
  (cl:format cl:nil "float32 light_forehead_prob~%float32 light_eye_prob~%float32 light_nose_prob~%float32 light_mouth_prob~%float32 faceshade_forehead_prob~%float32 faceshade_eye_prob~%float32 faceshade_nose_prob~%float32 faceshade_mouth_prob~%float32 eye_left_prob~%float32 eye_right_prob~%float32 iris_left_prob~%float32 iris_right_prob~%float32 infrared_block_prob~%int32 yaw_region~%int32 pitch_region~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSFaceQualityScoreResult)))
  "Returns full string definition for message of type 'DMSFaceQualityScoreResult"
  (cl:format cl:nil "float32 light_forehead_prob~%float32 light_eye_prob~%float32 light_nose_prob~%float32 light_mouth_prob~%float32 faceshade_forehead_prob~%float32 faceshade_eye_prob~%float32 faceshade_nose_prob~%float32 faceshade_mouth_prob~%float32 eye_left_prob~%float32 eye_right_prob~%float32 iris_left_prob~%float32 iris_right_prob~%float32 infrared_block_prob~%int32 yaw_region~%int32 pitch_region~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSFaceQualityScoreResult>))
  (cl:+ 0
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSFaceQualityScoreResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSFaceQualityScoreResult
    (cl:cons ':light_forehead_prob (light_forehead_prob msg))
    (cl:cons ':light_eye_prob (light_eye_prob msg))
    (cl:cons ':light_nose_prob (light_nose_prob msg))
    (cl:cons ':light_mouth_prob (light_mouth_prob msg))
    (cl:cons ':faceshade_forehead_prob (faceshade_forehead_prob msg))
    (cl:cons ':faceshade_eye_prob (faceshade_eye_prob msg))
    (cl:cons ':faceshade_nose_prob (faceshade_nose_prob msg))
    (cl:cons ':faceshade_mouth_prob (faceshade_mouth_prob msg))
    (cl:cons ':eye_left_prob (eye_left_prob msg))
    (cl:cons ':eye_right_prob (eye_right_prob msg))
    (cl:cons ':iris_left_prob (iris_left_prob msg))
    (cl:cons ':iris_right_prob (iris_right_prob msg))
    (cl:cons ':infrared_block_prob (infrared_block_prob msg))
    (cl:cons ':yaw_region (yaw_region msg))
    (cl:cons ':pitch_region (pitch_region msg))
))
