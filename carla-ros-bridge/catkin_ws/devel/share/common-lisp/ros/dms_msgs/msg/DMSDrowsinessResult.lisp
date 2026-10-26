; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSDrowsinessResult.msg.html

(cl:defclass <DMSDrowsinessResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (drowsiness_model_score
    :reader drowsiness_model_score
    :initarg :drowsiness_model_score
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (drowsiness_pro
    :reader drowsiness_pro
    :initarg :drowsiness_pro
    :type cl:integer
    :initform 0)
   (model_based_drowsiness_pro
    :reader model_based_drowsiness_pro
    :initarg :model_based_drowsiness_pro
    :type cl:integer
    :initform 0)
   (rule_based_drowsiness_pro
    :reader rule_based_drowsiness_pro
    :initarg :rule_based_drowsiness_pro
    :type cl:integer
    :initform 0)
   (drowsiness_level_type
    :reader drowsiness_level_type
    :initarg :drowsiness_level_type
    :type dms_msgs-msg:DMSDrowsinessLevelTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSDrowsinessLevelTypeEnum))
   (drowsiness_confidence_level
    :reader drowsiness_confidence_level
    :initarg :drowsiness_confidence_level
    :type dms_msgs-msg:DMSDrowsinessConfidenceTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSDrowsinessConfidenceTypeEnum))
   (l2_drowsiness_level_type
    :reader l2_drowsiness_level_type
    :initarg :l2_drowsiness_level_type
    :type dms_msgs-msg:L2DMSDrowsinessLevelTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L2DMSDrowsinessLevelTypeEnum))
   (l2_drowsiness_confidence_level
    :reader l2_drowsiness_confidence_level
    :initarg :l2_drowsiness_confidence_level
    :type dms_msgs-msg:L2DMSDrowsinessConfidenceTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L2DMSDrowsinessConfidenceTypeEnum))
   (l3_drowsiness_level_type
    :reader l3_drowsiness_level_type
    :initarg :l3_drowsiness_level_type
    :type dms_msgs-msg:L3DMSDrowsinessLevelTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L3DMSDrowsinessLevelTypeEnum))
   (l3_drowsiness_confidence_level
    :reader l3_drowsiness_confidence_level
    :initarg :l3_drowsiness_confidence_level
    :type dms_msgs-msg:L3DMSDrowsinessConfidenceTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L3DMSDrowsinessConfidenceTypeEnum))
   (drowsiness_pro_core
    :reader drowsiness_pro_core
    :initarg :drowsiness_pro_core
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:float
    :initform 0.0)
   (drowsiness_sensitivity
    :reader drowsiness_sensitivity
    :initarg :drowsiness_sensitivity
    :type cl:integer
    :initform 0)
   (drows_params
    :reader drows_params
    :initarg :drows_params
    :type cl:string
    :initform "")
   (l2_drowsiness_sensitivity
    :reader l2_drowsiness_sensitivity
    :initarg :l2_drowsiness_sensitivity
    :type cl:integer
    :initform 0)
   (l2_drows_params
    :reader l2_drows_params
    :initarg :l2_drows_params
    :type cl:string
    :initform "")
   (l3_drowsiness_sensitivity
    :reader l3_drowsiness_sensitivity
    :initarg :l3_drowsiness_sensitivity
    :type cl:integer
    :initform 0)
   (l3_drows_params
    :reader l3_drows_params
    :initarg :l3_drows_params
    :type cl:string
    :initform ""))
)

(cl:defclass DMSDrowsinessResult (<DMSDrowsinessResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSDrowsinessResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSDrowsinessResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSDrowsinessResult> is deprecated: use dms_msgs-msg:DMSDrowsinessResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'drowsiness_model_score-val :lambda-list '(m))
(cl:defmethod drowsiness_model_score-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drowsiness_model_score-val is deprecated.  Use dms_msgs-msg:drowsiness_model_score instead.")
  (drowsiness_model_score m))

(cl:ensure-generic-function 'drowsiness_pro-val :lambda-list '(m))
(cl:defmethod drowsiness_pro-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drowsiness_pro-val is deprecated.  Use dms_msgs-msg:drowsiness_pro instead.")
  (drowsiness_pro m))

(cl:ensure-generic-function 'model_based_drowsiness_pro-val :lambda-list '(m))
(cl:defmethod model_based_drowsiness_pro-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:model_based_drowsiness_pro-val is deprecated.  Use dms_msgs-msg:model_based_drowsiness_pro instead.")
  (model_based_drowsiness_pro m))

(cl:ensure-generic-function 'rule_based_drowsiness_pro-val :lambda-list '(m))
(cl:defmethod rule_based_drowsiness_pro-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:rule_based_drowsiness_pro-val is deprecated.  Use dms_msgs-msg:rule_based_drowsiness_pro instead.")
  (rule_based_drowsiness_pro m))

(cl:ensure-generic-function 'drowsiness_level_type-val :lambda-list '(m))
(cl:defmethod drowsiness_level_type-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drowsiness_level_type-val is deprecated.  Use dms_msgs-msg:drowsiness_level_type instead.")
  (drowsiness_level_type m))

(cl:ensure-generic-function 'drowsiness_confidence_level-val :lambda-list '(m))
(cl:defmethod drowsiness_confidence_level-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drowsiness_confidence_level-val is deprecated.  Use dms_msgs-msg:drowsiness_confidence_level instead.")
  (drowsiness_confidence_level m))

(cl:ensure-generic-function 'l2_drowsiness_level_type-val :lambda-list '(m))
(cl:defmethod l2_drowsiness_level_type-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_drowsiness_level_type-val is deprecated.  Use dms_msgs-msg:l2_drowsiness_level_type instead.")
  (l2_drowsiness_level_type m))

(cl:ensure-generic-function 'l2_drowsiness_confidence_level-val :lambda-list '(m))
(cl:defmethod l2_drowsiness_confidence_level-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_drowsiness_confidence_level-val is deprecated.  Use dms_msgs-msg:l2_drowsiness_confidence_level instead.")
  (l2_drowsiness_confidence_level m))

(cl:ensure-generic-function 'l3_drowsiness_level_type-val :lambda-list '(m))
(cl:defmethod l3_drowsiness_level_type-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_drowsiness_level_type-val is deprecated.  Use dms_msgs-msg:l3_drowsiness_level_type instead.")
  (l3_drowsiness_level_type m))

(cl:ensure-generic-function 'l3_drowsiness_confidence_level-val :lambda-list '(m))
(cl:defmethod l3_drowsiness_confidence_level-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_drowsiness_confidence_level-val is deprecated.  Use dms_msgs-msg:l3_drowsiness_confidence_level instead.")
  (l3_drowsiness_confidence_level m))

(cl:ensure-generic-function 'drowsiness_pro_core-val :lambda-list '(m))
(cl:defmethod drowsiness_pro_core-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drowsiness_pro_core-val is deprecated.  Use dms_msgs-msg:drowsiness_pro_core instead.")
  (drowsiness_pro_core m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'drowsiness_sensitivity-val :lambda-list '(m))
(cl:defmethod drowsiness_sensitivity-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drowsiness_sensitivity-val is deprecated.  Use dms_msgs-msg:drowsiness_sensitivity instead.")
  (drowsiness_sensitivity m))

(cl:ensure-generic-function 'drows_params-val :lambda-list '(m))
(cl:defmethod drows_params-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drows_params-val is deprecated.  Use dms_msgs-msg:drows_params instead.")
  (drows_params m))

(cl:ensure-generic-function 'l2_drowsiness_sensitivity-val :lambda-list '(m))
(cl:defmethod l2_drowsiness_sensitivity-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_drowsiness_sensitivity-val is deprecated.  Use dms_msgs-msg:l2_drowsiness_sensitivity instead.")
  (l2_drowsiness_sensitivity m))

(cl:ensure-generic-function 'l2_drows_params-val :lambda-list '(m))
(cl:defmethod l2_drows_params-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_drows_params-val is deprecated.  Use dms_msgs-msg:l2_drows_params instead.")
  (l2_drows_params m))

(cl:ensure-generic-function 'l3_drowsiness_sensitivity-val :lambda-list '(m))
(cl:defmethod l3_drowsiness_sensitivity-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_drowsiness_sensitivity-val is deprecated.  Use dms_msgs-msg:l3_drowsiness_sensitivity instead.")
  (l3_drowsiness_sensitivity m))

(cl:ensure-generic-function 'l3_drows_params-val :lambda-list '(m))
(cl:defmethod l3_drows_params-val ((m <DMSDrowsinessResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_drows_params-val is deprecated.  Use dms_msgs-msg:l3_drows_params instead.")
  (l3_drows_params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSDrowsinessResult>)))
    "Constants for message type '<DMSDrowsinessResult>"
  '((:DROWSINESS_MODEL_SCORE_AVAILABLE . 1)
    (:DROWSINESS_PRO_AVAILABLE . 2)
    (:MODEL_BASED_DROWSINESS_PRO_AVAILABLE . 4)
    (:RULE_BASED_DROWSINESS_PRO_AVAILABLE . 8)
    (:DROWSINESS_LEVEL_TYPE_AVAILABLE . 16)
    (:DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE . 32)
    (:DROWSINESS_PRO_CORE_AVAILABLE . 64)
    (:RESERVED . 128)
    (:L3_DROWSINESS_LEVEL_TYPE_AVAILABLE . 256)
    (:L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE . 512)
    (:L2_DROWSINESS_LEVEL_TYPE_AVAILABLE . 1024)
    (:L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSDrowsinessResult)))
    "Constants for message type 'DMSDrowsinessResult"
  '((:DROWSINESS_MODEL_SCORE_AVAILABLE . 1)
    (:DROWSINESS_PRO_AVAILABLE . 2)
    (:MODEL_BASED_DROWSINESS_PRO_AVAILABLE . 4)
    (:RULE_BASED_DROWSINESS_PRO_AVAILABLE . 8)
    (:DROWSINESS_LEVEL_TYPE_AVAILABLE . 16)
    (:DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE . 32)
    (:DROWSINESS_PRO_CORE_AVAILABLE . 64)
    (:RESERVED . 128)
    (:L3_DROWSINESS_LEVEL_TYPE_AVAILABLE . 256)
    (:L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE . 512)
    (:L2_DROWSINESS_LEVEL_TYPE_AVAILABLE . 1024)
    (:L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSDrowsinessResult>) ostream)
  "Serializes a message object of type '<DMSDrowsinessResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'drowsiness_model_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'drowsiness_model_score))
  (cl:let* ((signed (cl:slot-value msg 'drowsiness_pro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'model_based_drowsiness_pro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rule_based_drowsiness_pro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drowsiness_level_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drowsiness_confidence_level) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l2_drowsiness_level_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l2_drowsiness_confidence_level) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l3_drowsiness_level_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l3_drowsiness_confidence_level) ostream)
  (cl:let* ((signed (cl:slot-value msg 'drowsiness_pro_core)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'drowsiness_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'drows_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'drows_params))
  (cl:let* ((signed (cl:slot-value msg 'l2_drowsiness_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'l2_drows_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'l2_drows_params))
  (cl:let* ((signed (cl:slot-value msg 'l3_drowsiness_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'l3_drows_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'l3_drows_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSDrowsinessResult>) istream)
  "Deserializes a message object of type '<DMSDrowsinessResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'drowsiness_model_score) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'drowsiness_model_score)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drowsiness_pro) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_based_drowsiness_pro) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rule_based_drowsiness_pro) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drowsiness_level_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drowsiness_confidence_level) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l2_drowsiness_level_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l2_drowsiness_confidence_level) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l3_drowsiness_level_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l3_drowsiness_confidence_level) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drowsiness_pro_core) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drowsiness_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drows_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'drows_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l2_drowsiness_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l2_drows_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'l2_drows_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l3_drowsiness_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l3_drows_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'l3_drows_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSDrowsinessResult>)))
  "Returns string type for a message object of type '<DMSDrowsinessResult>"
  "dms_msgs/DMSDrowsinessResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSDrowsinessResult)))
  "Returns string type for a message object of type 'DMSDrowsinessResult"
  "dms_msgs/DMSDrowsinessResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSDrowsinessResult>)))
  "Returns md5sum for a message object of type '<DMSDrowsinessResult>"
  "c864d1db8b226718cb69069a074b8053")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSDrowsinessResult)))
  "Returns md5sum for a message object of type 'DMSDrowsinessResult"
  "c864d1db8b226718cb69069a074b8053")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSDrowsinessResult>)))
  "Returns full string definition for message of type '<DMSDrowsinessResult>"
  (cl:format cl:nil "uint16 DROWSINESS_MODEL_SCORE_AVAILABLE = 1~%uint16 DROWSINESS_PRO_AVAILABLE = 2~%uint16 MODEL_BASED_DROWSINESS_PRO_AVAILABLE = 4~%uint16 RULE_BASED_DROWSINESS_PRO_AVAILABLE = 8~%uint16 DROWSINESS_LEVEL_TYPE_AVAILABLE = 16~%uint16 DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 32~%uint16 DROWSINESS_PRO_CORE_AVAILABLE = 64~%uint16 RESERVED = 128~%uint16 L3_DROWSINESS_LEVEL_TYPE_AVAILABLE = 256~%uint16 L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 512~%uint16 L2_DROWSINESS_LEVEL_TYPE_AVAILABLE = 1024~%uint16 L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 2048~%uint16 available~%float32[] drowsiness_model_score~%int32 drowsiness_pro~%int32 model_based_drowsiness_pro~%int32 rule_based_drowsiness_pro~%dms_msgs/DMSDrowsinessLevelTypeEnum drowsiness_level_type~%dms_msgs/DMSDrowsinessConfidenceTypeEnum drowsiness_confidence_level~%dms_msgs/L2DMSDrowsinessLevelTypeEnum l2_drowsiness_level_type~%dms_msgs/L2DMSDrowsinessConfidenceTypeEnum l2_drowsiness_confidence_level~%dms_msgs/L3DMSDrowsinessLevelTypeEnum l3_drowsiness_level_type~%dms_msgs/L3DMSDrowsinessConfidenceTypeEnum l3_drowsiness_confidence_level~%int32 drowsiness_pro_core~%float32 reserved~%int32 drowsiness_sensitivity~%string drows_params~%int32 l2_drowsiness_sensitivity~%string l2_drows_params~%int32 l3_drowsiness_sensitivity~%string l3_drows_params~%~%================================================================================~%MSG: dms_msgs/DMSDrowsinessLevelTypeEnum~%uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSDrowsinessConfidenceTypeEnum~%uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDrowsinessLevelTypeEnum~%uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDrowsinessConfidenceTypeEnum~%uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDrowsinessLevelTypeEnum~%uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDrowsinessConfidenceTypeEnum~%uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSDrowsinessResult)))
  "Returns full string definition for message of type 'DMSDrowsinessResult"
  (cl:format cl:nil "uint16 DROWSINESS_MODEL_SCORE_AVAILABLE = 1~%uint16 DROWSINESS_PRO_AVAILABLE = 2~%uint16 MODEL_BASED_DROWSINESS_PRO_AVAILABLE = 4~%uint16 RULE_BASED_DROWSINESS_PRO_AVAILABLE = 8~%uint16 DROWSINESS_LEVEL_TYPE_AVAILABLE = 16~%uint16 DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 32~%uint16 DROWSINESS_PRO_CORE_AVAILABLE = 64~%uint16 RESERVED = 128~%uint16 L3_DROWSINESS_LEVEL_TYPE_AVAILABLE = 256~%uint16 L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 512~%uint16 L2_DROWSINESS_LEVEL_TYPE_AVAILABLE = 1024~%uint16 L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 2048~%uint16 available~%float32[] drowsiness_model_score~%int32 drowsiness_pro~%int32 model_based_drowsiness_pro~%int32 rule_based_drowsiness_pro~%dms_msgs/DMSDrowsinessLevelTypeEnum drowsiness_level_type~%dms_msgs/DMSDrowsinessConfidenceTypeEnum drowsiness_confidence_level~%dms_msgs/L2DMSDrowsinessLevelTypeEnum l2_drowsiness_level_type~%dms_msgs/L2DMSDrowsinessConfidenceTypeEnum l2_drowsiness_confidence_level~%dms_msgs/L3DMSDrowsinessLevelTypeEnum l3_drowsiness_level_type~%dms_msgs/L3DMSDrowsinessConfidenceTypeEnum l3_drowsiness_confidence_level~%int32 drowsiness_pro_core~%float32 reserved~%int32 drowsiness_sensitivity~%string drows_params~%int32 l2_drowsiness_sensitivity~%string l2_drows_params~%int32 l3_drowsiness_sensitivity~%string l3_drows_params~%~%================================================================================~%MSG: dms_msgs/DMSDrowsinessLevelTypeEnum~%uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSDrowsinessConfidenceTypeEnum~%uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDrowsinessLevelTypeEnum~%uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDrowsinessConfidenceTypeEnum~%uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDrowsinessLevelTypeEnum~%uint16 DROWSINESS_LEVEL_0 = 0~%uint16 DROWSINESS_LEVEL_1 = 1~%uint16 DROWSINESS_LEVEL_2 = 2~%uint16 DROWSINESS_LEVEL_3 = 3~%uint16 DROWSINESS_LEVEL_4 = 4~%uint16 DROWSINESS_LEVEL_5 = 5~%uint16 DROWSINESS_LEVEL_6 = 6~%uint16 DROWSINESS_LEVEL_7 = 7~%uint16 DROWSINESS_LEVEL_8 = 8~%uint16 DROWSINESS_LEVEL_9 = 9~%uint16 DROWSINESS_LEVEL_10 = 10~%uint16 DROWSINESS_LEVEL_11 = 11~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDrowsinessConfidenceTypeEnum~%uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0~%uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1~%uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2~%uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3~%uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4~%uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5~%uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6~%uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7~%uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8~%uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSDrowsinessResult>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'drowsiness_model_score) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drowsiness_level_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drowsiness_confidence_level))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l2_drowsiness_level_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l2_drowsiness_confidence_level))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l3_drowsiness_level_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l3_drowsiness_confidence_level))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'drows_params))
     4
     4 (cl:length (cl:slot-value msg 'l2_drows_params))
     4
     4 (cl:length (cl:slot-value msg 'l3_drows_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSDrowsinessResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSDrowsinessResult
    (cl:cons ':available (available msg))
    (cl:cons ':drowsiness_model_score (drowsiness_model_score msg))
    (cl:cons ':drowsiness_pro (drowsiness_pro msg))
    (cl:cons ':model_based_drowsiness_pro (model_based_drowsiness_pro msg))
    (cl:cons ':rule_based_drowsiness_pro (rule_based_drowsiness_pro msg))
    (cl:cons ':drowsiness_level_type (drowsiness_level_type msg))
    (cl:cons ':drowsiness_confidence_level (drowsiness_confidence_level msg))
    (cl:cons ':l2_drowsiness_level_type (l2_drowsiness_level_type msg))
    (cl:cons ':l2_drowsiness_confidence_level (l2_drowsiness_confidence_level msg))
    (cl:cons ':l3_drowsiness_level_type (l3_drowsiness_level_type msg))
    (cl:cons ':l3_drowsiness_confidence_level (l3_drowsiness_confidence_level msg))
    (cl:cons ':drowsiness_pro_core (drowsiness_pro_core msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':drowsiness_sensitivity (drowsiness_sensitivity msg))
    (cl:cons ':drows_params (drows_params msg))
    (cl:cons ':l2_drowsiness_sensitivity (l2_drowsiness_sensitivity msg))
    (cl:cons ':l2_drows_params (l2_drows_params msg))
    (cl:cons ':l3_drowsiness_sensitivity (l3_drowsiness_sensitivity msg))
    (cl:cons ':l3_drows_params (l3_drows_params msg))
))
