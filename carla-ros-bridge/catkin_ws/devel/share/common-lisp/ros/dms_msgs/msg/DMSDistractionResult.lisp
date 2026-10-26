; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSDistractionResult.msg.html

(cl:defclass <DMSDistractionResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (distraction_lite
    :reader distraction_lite
    :initarg :distraction_lite
    :type cl:integer
    :initform 0)
   (distraction_pro
    :reader distraction_pro
    :initarg :distraction_pro
    :type cl:integer
    :initform 0)
   (distraction_type
    :reader distraction_type
    :initarg :distraction_type
    :type dms_msgs-msg:DMSDistractionTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSDistractionTypeEnum))
   (distraction_level_type
    :reader distraction_level_type
    :initarg :distraction_level_type
    :type dms_msgs-msg:DMSDistractionLevelTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSDistractionLevelTypeEnum))
   (distraction_confidence_level
    :reader distraction_confidence_level
    :initarg :distraction_confidence_level
    :type dms_msgs-msg:DMSDistractionConfidenceTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSDistractionConfidenceTypeEnum))
   (distraction_reason_type
    :reader distraction_reason_type
    :initarg :distraction_reason_type
    :type dms_msgs-msg:DMSDistractionReasonTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSDistractionReasonTypeEnum))
   (l2_distraction_level_type
    :reader l2_distraction_level_type
    :initarg :l2_distraction_level_type
    :type dms_msgs-msg:L2DMSDistractionLevelTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L2DMSDistractionLevelTypeEnum))
   (l2_distraction_confidence_level
    :reader l2_distraction_confidence_level
    :initarg :l2_distraction_confidence_level
    :type dms_msgs-msg:L2DMSDistractionConfidenceTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L2DMSDistractionConfidenceTypeEnum))
   (l3_distraction_level_type
    :reader l3_distraction_level_type
    :initarg :l3_distraction_level_type
    :type dms_msgs-msg:L3DMSDistractionLevelTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L3DMSDistractionLevelTypeEnum))
   (l3_distraction_confidence_level
    :reader l3_distraction_confidence_level
    :initarg :l3_distraction_confidence_level
    :type dms_msgs-msg:L3DMSDistractionConfidenceTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L3DMSDistractionConfidenceTypeEnum))
   (distraction_pro_core
    :reader distraction_pro_core
    :initarg :distraction_pro_core
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0)
   (distraction_sensitivity
    :reader distraction_sensitivity
    :initarg :distraction_sensitivity
    :type cl:integer
    :initform 0)
   (dis_params
    :reader dis_params
    :initarg :dis_params
    :type cl:string
    :initform "")
   (l2_distraction_sensitivity
    :reader l2_distraction_sensitivity
    :initarg :l2_distraction_sensitivity
    :type cl:integer
    :initform 0)
   (l2_dis_params
    :reader l2_dis_params
    :initarg :l2_dis_params
    :type cl:string
    :initform "")
   (l3_distraction_sensitivity
    :reader l3_distraction_sensitivity
    :initarg :l3_distraction_sensitivity
    :type cl:integer
    :initform 0)
   (l3_dis_params
    :reader l3_dis_params
    :initarg :l3_dis_params
    :type cl:string
    :initform ""))
)

(cl:defclass DMSDistractionResult (<DMSDistractionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSDistractionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSDistractionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSDistractionResult> is deprecated: use dms_msgs-msg:DMSDistractionResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'distraction_lite-val :lambda-list '(m))
(cl:defmethod distraction_lite-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_lite-val is deprecated.  Use dms_msgs-msg:distraction_lite instead.")
  (distraction_lite m))

(cl:ensure-generic-function 'distraction_pro-val :lambda-list '(m))
(cl:defmethod distraction_pro-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_pro-val is deprecated.  Use dms_msgs-msg:distraction_pro instead.")
  (distraction_pro m))

(cl:ensure-generic-function 'distraction_type-val :lambda-list '(m))
(cl:defmethod distraction_type-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_type-val is deprecated.  Use dms_msgs-msg:distraction_type instead.")
  (distraction_type m))

(cl:ensure-generic-function 'distraction_level_type-val :lambda-list '(m))
(cl:defmethod distraction_level_type-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_level_type-val is deprecated.  Use dms_msgs-msg:distraction_level_type instead.")
  (distraction_level_type m))

(cl:ensure-generic-function 'distraction_confidence_level-val :lambda-list '(m))
(cl:defmethod distraction_confidence_level-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_confidence_level-val is deprecated.  Use dms_msgs-msg:distraction_confidence_level instead.")
  (distraction_confidence_level m))

(cl:ensure-generic-function 'distraction_reason_type-val :lambda-list '(m))
(cl:defmethod distraction_reason_type-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_reason_type-val is deprecated.  Use dms_msgs-msg:distraction_reason_type instead.")
  (distraction_reason_type m))

(cl:ensure-generic-function 'l2_distraction_level_type-val :lambda-list '(m))
(cl:defmethod l2_distraction_level_type-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_distraction_level_type-val is deprecated.  Use dms_msgs-msg:l2_distraction_level_type instead.")
  (l2_distraction_level_type m))

(cl:ensure-generic-function 'l2_distraction_confidence_level-val :lambda-list '(m))
(cl:defmethod l2_distraction_confidence_level-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_distraction_confidence_level-val is deprecated.  Use dms_msgs-msg:l2_distraction_confidence_level instead.")
  (l2_distraction_confidence_level m))

(cl:ensure-generic-function 'l3_distraction_level_type-val :lambda-list '(m))
(cl:defmethod l3_distraction_level_type-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_distraction_level_type-val is deprecated.  Use dms_msgs-msg:l3_distraction_level_type instead.")
  (l3_distraction_level_type m))

(cl:ensure-generic-function 'l3_distraction_confidence_level-val :lambda-list '(m))
(cl:defmethod l3_distraction_confidence_level-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_distraction_confidence_level-val is deprecated.  Use dms_msgs-msg:l3_distraction_confidence_level instead.")
  (l3_distraction_confidence_level m))

(cl:ensure-generic-function 'distraction_pro_core-val :lambda-list '(m))
(cl:defmethod distraction_pro_core-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_pro_core-val is deprecated.  Use dms_msgs-msg:distraction_pro_core instead.")
  (distraction_pro_core m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'distraction_sensitivity-val :lambda-list '(m))
(cl:defmethod distraction_sensitivity-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:distraction_sensitivity-val is deprecated.  Use dms_msgs-msg:distraction_sensitivity instead.")
  (distraction_sensitivity m))

(cl:ensure-generic-function 'dis_params-val :lambda-list '(m))
(cl:defmethod dis_params-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:dis_params-val is deprecated.  Use dms_msgs-msg:dis_params instead.")
  (dis_params m))

(cl:ensure-generic-function 'l2_distraction_sensitivity-val :lambda-list '(m))
(cl:defmethod l2_distraction_sensitivity-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_distraction_sensitivity-val is deprecated.  Use dms_msgs-msg:l2_distraction_sensitivity instead.")
  (l2_distraction_sensitivity m))

(cl:ensure-generic-function 'l2_dis_params-val :lambda-list '(m))
(cl:defmethod l2_dis_params-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_dis_params-val is deprecated.  Use dms_msgs-msg:l2_dis_params instead.")
  (l2_dis_params m))

(cl:ensure-generic-function 'l3_distraction_sensitivity-val :lambda-list '(m))
(cl:defmethod l3_distraction_sensitivity-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_distraction_sensitivity-val is deprecated.  Use dms_msgs-msg:l3_distraction_sensitivity instead.")
  (l3_distraction_sensitivity m))

(cl:ensure-generic-function 'l3_dis_params-val :lambda-list '(m))
(cl:defmethod l3_dis_params-val ((m <DMSDistractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_dis_params-val is deprecated.  Use dms_msgs-msg:l3_dis_params instead.")
  (l3_dis_params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSDistractionResult>)))
    "Constants for message type '<DMSDistractionResult>"
  '((:DISTRACTION_LITE_AVAILABLE . 1)
    (:DISTRACTION_PRO_AVAILABLE . 2)
    (:DISTRACTION_TYPE_AVAILABLE . 4)
    (:DISTRACTION_LEVEL_AVAILABLE . 8)
    (:DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE . 16)
    (:DISTRACTION_REASON_TYPE_AVAILABLE . 32)
    (:DISTRACTION_PRO_CORE_AVAILABLE . 64)
    (:RESERVED . 128)
    (:L3_DISTRACTION_LEVEL_AVAILABLE . 256)
    (:L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE . 512)
    (:L2_DISTRACTION_LEVEL_AVAILABLE . 1024)
    (:L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSDistractionResult)))
    "Constants for message type 'DMSDistractionResult"
  '((:DISTRACTION_LITE_AVAILABLE . 1)
    (:DISTRACTION_PRO_AVAILABLE . 2)
    (:DISTRACTION_TYPE_AVAILABLE . 4)
    (:DISTRACTION_LEVEL_AVAILABLE . 8)
    (:DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE . 16)
    (:DISTRACTION_REASON_TYPE_AVAILABLE . 32)
    (:DISTRACTION_PRO_CORE_AVAILABLE . 64)
    (:RESERVED . 128)
    (:L3_DISTRACTION_LEVEL_AVAILABLE . 256)
    (:L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE . 512)
    (:L2_DISTRACTION_LEVEL_AVAILABLE . 1024)
    (:L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSDistractionResult>) ostream)
  "Serializes a message object of type '<DMSDistractionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'distraction_lite)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'distraction_pro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distraction_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distraction_level_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distraction_confidence_level) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distraction_reason_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l2_distraction_level_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l2_distraction_confidence_level) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l3_distraction_level_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l3_distraction_confidence_level) ostream)
  (cl:let* ((signed (cl:slot-value msg 'distraction_pro_core)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reserved)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'distraction_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dis_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dis_params))
  (cl:let* ((signed (cl:slot-value msg 'l2_distraction_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'l2_dis_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'l2_dis_params))
  (cl:let* ((signed (cl:slot-value msg 'l3_distraction_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'l3_dis_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'l3_dis_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSDistractionResult>) istream)
  "Deserializes a message object of type '<DMSDistractionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distraction_lite) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distraction_pro) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distraction_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distraction_level_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distraction_confidence_level) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distraction_reason_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l2_distraction_level_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l2_distraction_confidence_level) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l3_distraction_level_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l3_distraction_confidence_level) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distraction_pro_core) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distraction_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dis_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dis_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l2_distraction_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l2_dis_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'l2_dis_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l3_distraction_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l3_dis_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'l3_dis_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSDistractionResult>)))
  "Returns string type for a message object of type '<DMSDistractionResult>"
  "dms_msgs/DMSDistractionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSDistractionResult)))
  "Returns string type for a message object of type 'DMSDistractionResult"
  "dms_msgs/DMSDistractionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSDistractionResult>)))
  "Returns md5sum for a message object of type '<DMSDistractionResult>"
  "98c231a7b2a6000eca25ba4de0266afb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSDistractionResult)))
  "Returns md5sum for a message object of type 'DMSDistractionResult"
  "98c231a7b2a6000eca25ba4de0266afb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSDistractionResult>)))
  "Returns full string definition for message of type '<DMSDistractionResult>"
  (cl:format cl:nil "uint16 DISTRACTION_LITE_AVAILABLE = 1~%uint16 DISTRACTION_PRO_AVAILABLE = 2~%uint16 DISTRACTION_TYPE_AVAILABLE = 4~%uint16 DISTRACTION_LEVEL_AVAILABLE = 8~%uint16 DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 16~%uint16 DISTRACTION_REASON_TYPE_AVAILABLE = 32~%uint16 DISTRACTION_PRO_CORE_AVAILABLE = 64~%uint16 RESERVED = 128~%uint16 L3_DISTRACTION_LEVEL_AVAILABLE = 256~%uint16 L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 512~%uint16 L2_DISTRACTION_LEVEL_AVAILABLE = 1024~%uint16 L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 2048~%uint16 available~%int32 distraction_lite~%int32 distraction_pro~%dms_msgs/DMSDistractionTypeEnum distraction_type~%dms_msgs/DMSDistractionLevelTypeEnum distraction_level_type~%dms_msgs/DMSDistractionConfidenceTypeEnum distraction_confidence_level~%dms_msgs/DMSDistractionReasonTypeEnum distraction_reason_type~%dms_msgs/L2DMSDistractionLevelTypeEnum l2_distraction_level_type~%dms_msgs/L2DMSDistractionConfidenceTypeEnum l2_distraction_confidence_level~%dms_msgs/L3DMSDistractionLevelTypeEnum l3_distraction_level_type~%dms_msgs/L3DMSDistractionConfidenceTypeEnum l3_distraction_confidence_level~%int32 distraction_pro_core~%int32 reserved~%int32 distraction_sensitivity~%string dis_params~%int32 l2_distraction_sensitivity~%string l2_dis_params~%int32 l3_distraction_sensitivity~%string l3_dis_params~%~%================================================================================~%MSG: dms_msgs/DMSDistractionTypeEnum~%uint8 LONG_TERM_DISTRACTION = 0~%uint8 SHORT_TERM_DISTRACTION = 1~%uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSDistractionLevelTypeEnum~%uint16 DISTRACTION_LEVEL_0 = 0~%uint16 DISTRACTION_LEVEL_1 = 1~%uint16 DISTRACTION_LEVEL_2 = 2~%uint16 DISTRACTION_LEVEL_3 = 3~%uint16 DISTRACTION_LEVEL_4 = 4~%uint16 DISTRACTION_LEVEL_5 = 5~%uint16 DISTRACTION_LEVEL_6 = 6~%uint16 DISTRACTION_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSDistractionConfidenceTypeEnum~%uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSDistractionReasonTypeEnum~%uint16 HEADPOSE_TRIGER_DISTRACTION = 1~%uint16 GAZE_ROI_TRIGER_DISTRACTION = 2~%uint16 HEAD_ROI_TRIGER_DISTRACTION = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDistractionLevelTypeEnum~%uint16 DISTRACTION_LEVEL_0 = 0~%uint16 DISTRACTION_LEVEL_1 = 1~%uint16 DISTRACTION_LEVEL_2 = 2~%uint16 DISTRACTION_LEVEL_3 = 3~%uint16 DISTRACTION_LEVEL_4 = 4~%uint16 DISTRACTION_LEVEL_5 = 5~%uint16 DISTRACTION_LEVEL_6 = 6~%uint16 DISTRACTION_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDistractionConfidenceTypeEnum~%uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDistractionLevelTypeEnum~%uint16 DISTRACTION_LEVEL_0 = 0~%uint16 DISTRACTION_LEVEL_1 = 1~%uint16 DISTRACTION_LEVEL_2 = 2~%uint16 DISTRACTION_LEVEL_3 = 3~%uint16 DISTRACTION_LEVEL_4 = 4~%uint16 DISTRACTION_LEVEL_5 = 5~%uint16 DISTRACTION_LEVEL_6 = 6~%uint16 DISTRACTION_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDistractionConfidenceTypeEnum~%uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSDistractionResult)))
  "Returns full string definition for message of type 'DMSDistractionResult"
  (cl:format cl:nil "uint16 DISTRACTION_LITE_AVAILABLE = 1~%uint16 DISTRACTION_PRO_AVAILABLE = 2~%uint16 DISTRACTION_TYPE_AVAILABLE = 4~%uint16 DISTRACTION_LEVEL_AVAILABLE = 8~%uint16 DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 16~%uint16 DISTRACTION_REASON_TYPE_AVAILABLE = 32~%uint16 DISTRACTION_PRO_CORE_AVAILABLE = 64~%uint16 RESERVED = 128~%uint16 L3_DISTRACTION_LEVEL_AVAILABLE = 256~%uint16 L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 512~%uint16 L2_DISTRACTION_LEVEL_AVAILABLE = 1024~%uint16 L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 2048~%uint16 available~%int32 distraction_lite~%int32 distraction_pro~%dms_msgs/DMSDistractionTypeEnum distraction_type~%dms_msgs/DMSDistractionLevelTypeEnum distraction_level_type~%dms_msgs/DMSDistractionConfidenceTypeEnum distraction_confidence_level~%dms_msgs/DMSDistractionReasonTypeEnum distraction_reason_type~%dms_msgs/L2DMSDistractionLevelTypeEnum l2_distraction_level_type~%dms_msgs/L2DMSDistractionConfidenceTypeEnum l2_distraction_confidence_level~%dms_msgs/L3DMSDistractionLevelTypeEnum l3_distraction_level_type~%dms_msgs/L3DMSDistractionConfidenceTypeEnum l3_distraction_confidence_level~%int32 distraction_pro_core~%int32 reserved~%int32 distraction_sensitivity~%string dis_params~%int32 l2_distraction_sensitivity~%string l2_dis_params~%int32 l3_distraction_sensitivity~%string l3_dis_params~%~%================================================================================~%MSG: dms_msgs/DMSDistractionTypeEnum~%uint8 LONG_TERM_DISTRACTION = 0~%uint8 SHORT_TERM_DISTRACTION = 1~%uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/DMSDistractionLevelTypeEnum~%uint16 DISTRACTION_LEVEL_0 = 0~%uint16 DISTRACTION_LEVEL_1 = 1~%uint16 DISTRACTION_LEVEL_2 = 2~%uint16 DISTRACTION_LEVEL_3 = 3~%uint16 DISTRACTION_LEVEL_4 = 4~%uint16 DISTRACTION_LEVEL_5 = 5~%uint16 DISTRACTION_LEVEL_6 = 6~%uint16 DISTRACTION_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSDistractionConfidenceTypeEnum~%uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/DMSDistractionReasonTypeEnum~%uint16 HEADPOSE_TRIGER_DISTRACTION = 1~%uint16 GAZE_ROI_TRIGER_DISTRACTION = 2~%uint16 HEAD_ROI_TRIGER_DISTRACTION = 4~%uint16 RESERVED = 8~%uint16 RESERVED1 = 16~%uint16 RESERVED2 = 32~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDistractionLevelTypeEnum~%uint16 DISTRACTION_LEVEL_0 = 0~%uint16 DISTRACTION_LEVEL_1 = 1~%uint16 DISTRACTION_LEVEL_2 = 2~%uint16 DISTRACTION_LEVEL_3 = 3~%uint16 DISTRACTION_LEVEL_4 = 4~%uint16 DISTRACTION_LEVEL_5 = 5~%uint16 DISTRACTION_LEVEL_6 = 6~%uint16 DISTRACTION_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L2DMSDistractionConfidenceTypeEnum~%uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDistractionLevelTypeEnum~%uint16 DISTRACTION_LEVEL_0 = 0~%uint16 DISTRACTION_LEVEL_1 = 1~%uint16 DISTRACTION_LEVEL_2 = 2~%uint16 DISTRACTION_LEVEL_3 = 3~%uint16 DISTRACTION_LEVEL_4 = 4~%uint16 DISTRACTION_LEVEL_5 = 5~%uint16 DISTRACTION_LEVEL_6 = 6~%uint16 DISTRACTION_LEVEL_7 = 7~%uint16 value~%~%================================================================================~%MSG: dms_msgs/L3DMSDistractionConfidenceTypeEnum~%uint16 NOT_AVAILABLE_CONFIDENCE = 0~%uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1~%uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2~%uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3~%uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4~%uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5~%uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6~%uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSDistractionResult>))
  (cl:+ 0
     2
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distraction_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distraction_level_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distraction_confidence_level))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distraction_reason_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l2_distraction_level_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l2_distraction_confidence_level))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l3_distraction_level_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l3_distraction_confidence_level))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'dis_params))
     4
     4 (cl:length (cl:slot-value msg 'l2_dis_params))
     4
     4 (cl:length (cl:slot-value msg 'l3_dis_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSDistractionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSDistractionResult
    (cl:cons ':available (available msg))
    (cl:cons ':distraction_lite (distraction_lite msg))
    (cl:cons ':distraction_pro (distraction_pro msg))
    (cl:cons ':distraction_type (distraction_type msg))
    (cl:cons ':distraction_level_type (distraction_level_type msg))
    (cl:cons ':distraction_confidence_level (distraction_confidence_level msg))
    (cl:cons ':distraction_reason_type (distraction_reason_type msg))
    (cl:cons ':l2_distraction_level_type (l2_distraction_level_type msg))
    (cl:cons ':l2_distraction_confidence_level (l2_distraction_confidence_level msg))
    (cl:cons ':l3_distraction_level_type (l3_distraction_level_type msg))
    (cl:cons ':l3_distraction_confidence_level (l3_distraction_confidence_level msg))
    (cl:cons ':distraction_pro_core (distraction_pro_core msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':distraction_sensitivity (distraction_sensitivity msg))
    (cl:cons ':dis_params (dis_params msg))
    (cl:cons ':l2_distraction_sensitivity (l2_distraction_sensitivity msg))
    (cl:cons ':l2_dis_params (l2_dis_params msg))
    (cl:cons ':l3_distraction_sensitivity (l3_distraction_sensitivity msg))
    (cl:cons ':l3_dis_params (l3_dis_params msg))
))
