; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSAttentionDriveResult.msg.html

(cl:defclass <DMSAttentionDriveResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (attention_drive_type
    :reader attention_drive_type
    :initarg :attention_drive_type
    :type dms_msgs-msg:DMSAttentionDriveTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSAttentionDriveTypeEnum))
   (l2_attention_drive_type
    :reader l2_attention_drive_type
    :initarg :l2_attention_drive_type
    :type dms_msgs-msg:L2DMSAttentionDriveTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L2DMSAttentionDriveTypeEnum))
   (l3_attention_drive_type
    :reader l3_attention_drive_type
    :initarg :l3_attention_drive_type
    :type dms_msgs-msg:L3DMSAttentionDriveTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:L3DMSAttentionDriveTypeEnum))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform "")
   (attention_sensitivity
    :reader attention_sensitivity
    :initarg :attention_sensitivity
    :type cl:integer
    :initform 0)
   (attention_params
    :reader attention_params
    :initarg :attention_params
    :type cl:string
    :initform ""))
)

(cl:defclass DMSAttentionDriveResult (<DMSAttentionDriveResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSAttentionDriveResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSAttentionDriveResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSAttentionDriveResult> is deprecated: use dms_msgs-msg:DMSAttentionDriveResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSAttentionDriveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'attention_drive_type-val :lambda-list '(m))
(cl:defmethod attention_drive_type-val ((m <DMSAttentionDriveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:attention_drive_type-val is deprecated.  Use dms_msgs-msg:attention_drive_type instead.")
  (attention_drive_type m))

(cl:ensure-generic-function 'l2_attention_drive_type-val :lambda-list '(m))
(cl:defmethod l2_attention_drive_type-val ((m <DMSAttentionDriveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l2_attention_drive_type-val is deprecated.  Use dms_msgs-msg:l2_attention_drive_type instead.")
  (l2_attention_drive_type m))

(cl:ensure-generic-function 'l3_attention_drive_type-val :lambda-list '(m))
(cl:defmethod l3_attention_drive_type-val ((m <DMSAttentionDriveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:l3_attention_drive_type-val is deprecated.  Use dms_msgs-msg:l3_attention_drive_type instead.")
  (l3_attention_drive_type m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSAttentionDriveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'attention_sensitivity-val :lambda-list '(m))
(cl:defmethod attention_sensitivity-val ((m <DMSAttentionDriveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:attention_sensitivity-val is deprecated.  Use dms_msgs-msg:attention_sensitivity instead.")
  (attention_sensitivity m))

(cl:ensure-generic-function 'attention_params-val :lambda-list '(m))
(cl:defmethod attention_params-val ((m <DMSAttentionDriveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:attention_params-val is deprecated.  Use dms_msgs-msg:attention_params instead.")
  (attention_params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSAttentionDriveResult>)))
    "Constants for message type '<DMSAttentionDriveResult>"
  '((:ATTENTION_DRIVE_AVAILABLE . 1)
    (:L2_ATTENTION_DRIVE_AVAILABLE . 2)
    (:L3_ATTENTION_DRIVE_AVAILABLE . 4)
    (:RESERVED_AVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSAttentionDriveResult)))
    "Constants for message type 'DMSAttentionDriveResult"
  '((:ATTENTION_DRIVE_AVAILABLE . 1)
    (:L2_ATTENTION_DRIVE_AVAILABLE . 2)
    (:L3_ATTENTION_DRIVE_AVAILABLE . 4)
    (:RESERVED_AVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSAttentionDriveResult>) ostream)
  "Serializes a message object of type '<DMSAttentionDriveResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attention_drive_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l2_attention_drive_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l3_attention_drive_type) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
  (cl:let* ((signed (cl:slot-value msg 'attention_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'attention_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'attention_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSAttentionDriveResult>) istream)
  "Deserializes a message object of type '<DMSAttentionDriveResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attention_drive_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l2_attention_drive_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l3_attention_drive_type) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'attention_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'attention_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'attention_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSAttentionDriveResult>)))
  "Returns string type for a message object of type '<DMSAttentionDriveResult>"
  "dms_msgs/DMSAttentionDriveResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSAttentionDriveResult)))
  "Returns string type for a message object of type 'DMSAttentionDriveResult"
  "dms_msgs/DMSAttentionDriveResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSAttentionDriveResult>)))
  "Returns md5sum for a message object of type '<DMSAttentionDriveResult>"
  "f17195b5a45eb5fdaf7a12c5dd9a6aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSAttentionDriveResult)))
  "Returns md5sum for a message object of type 'DMSAttentionDriveResult"
  "f17195b5a45eb5fdaf7a12c5dd9a6aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSAttentionDriveResult>)))
  "Returns full string definition for message of type '<DMSAttentionDriveResult>"
  (cl:format cl:nil "uint8 ATTENTION_DRIVE_AVAILABLE = 1~%uint8 L2_ATTENTION_DRIVE_AVAILABLE = 2~%uint8 L3_ATTENTION_DRIVE_AVAILABLE = 4~%uint8 RESERVED_AVAILABLE = 8~%uint8 available~%dms_msgs/DMSAttentionDriveTypeEnum attention_drive_type~%dms_msgs/L2DMSAttentionDriveTypeEnum l2_attention_drive_type~%dms_msgs/L3DMSAttentionDriveTypeEnum l3_attention_drive_type~%string reserved~%int32 attention_sensitivity~%string attention_params~%~%================================================================================~%MSG: dms_msgs/DMSAttentionDriveTypeEnum~%uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L2DMSAttentionDriveTypeEnum~%uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L3DMSAttentionDriveTypeEnum~%uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSAttentionDriveResult)))
  "Returns full string definition for message of type 'DMSAttentionDriveResult"
  (cl:format cl:nil "uint8 ATTENTION_DRIVE_AVAILABLE = 1~%uint8 L2_ATTENTION_DRIVE_AVAILABLE = 2~%uint8 L3_ATTENTION_DRIVE_AVAILABLE = 4~%uint8 RESERVED_AVAILABLE = 8~%uint8 available~%dms_msgs/DMSAttentionDriveTypeEnum attention_drive_type~%dms_msgs/L2DMSAttentionDriveTypeEnum l2_attention_drive_type~%dms_msgs/L3DMSAttentionDriveTypeEnum l3_attention_drive_type~%string reserved~%int32 attention_sensitivity~%string attention_params~%~%================================================================================~%MSG: dms_msgs/DMSAttentionDriveTypeEnum~%uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L2DMSAttentionDriveTypeEnum~%uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: dms_msgs/L3DMSAttentionDriveTypeEnum~%uint8 NOT_FOCUSE_ON_DRIVING = 0~%uint8 FOCUSE_ON_DRIVING = 1~%uint8 RESERVED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSAttentionDriveResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attention_drive_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l2_attention_drive_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l3_attention_drive_type))
     4 (cl:length (cl:slot-value msg 'reserved))
     4
     4 (cl:length (cl:slot-value msg 'attention_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSAttentionDriveResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSAttentionDriveResult
    (cl:cons ':available (available msg))
    (cl:cons ':attention_drive_type (attention_drive_type msg))
    (cl:cons ':l2_attention_drive_type (l2_attention_drive_type msg))
    (cl:cons ':l3_attention_drive_type (l3_attention_drive_type msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':attention_sensitivity (attention_sensitivity msg))
    (cl:cons ':attention_params (attention_params msg))
))
