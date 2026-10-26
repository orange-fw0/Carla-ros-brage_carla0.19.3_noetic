; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSUnresponsiveResult.msg.html

(cl:defclass <DMSUnresponsiveResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (unresponsive_type
    :reader unresponsive_type
    :initarg :unresponsive_type
    :type dms_msgs-msg:DMSUnresponsiveTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSUnresponsiveTypeEnum))
   (roi_caused_unresponsive
    :reader roi_caused_unresponsive
    :initarg :roi_caused_unresponsive
    :type cl:fixnum
    :initform 0)
   (drowsiness_caused_unresponsive
    :reader drowsiness_caused_unresponsive
    :initarg :drowsiness_caused_unresponsive
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0)
   (unresponsive_sensitivity
    :reader unresponsive_sensitivity
    :initarg :unresponsive_sensitivity
    :type cl:integer
    :initform 0)
   (unresponsive_params
    :reader unresponsive_params
    :initarg :unresponsive_params
    :type cl:string
    :initform ""))
)

(cl:defclass DMSUnresponsiveResult (<DMSUnresponsiveResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSUnresponsiveResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSUnresponsiveResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSUnresponsiveResult> is deprecated: use dms_msgs-msg:DMSUnresponsiveResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSUnresponsiveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'unresponsive_type-val :lambda-list '(m))
(cl:defmethod unresponsive_type-val ((m <DMSUnresponsiveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:unresponsive_type-val is deprecated.  Use dms_msgs-msg:unresponsive_type instead.")
  (unresponsive_type m))

(cl:ensure-generic-function 'roi_caused_unresponsive-val :lambda-list '(m))
(cl:defmethod roi_caused_unresponsive-val ((m <DMSUnresponsiveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:roi_caused_unresponsive-val is deprecated.  Use dms_msgs-msg:roi_caused_unresponsive instead.")
  (roi_caused_unresponsive m))

(cl:ensure-generic-function 'drowsiness_caused_unresponsive-val :lambda-list '(m))
(cl:defmethod drowsiness_caused_unresponsive-val ((m <DMSUnresponsiveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:drowsiness_caused_unresponsive-val is deprecated.  Use dms_msgs-msg:drowsiness_caused_unresponsive instead.")
  (drowsiness_caused_unresponsive m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSUnresponsiveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'unresponsive_sensitivity-val :lambda-list '(m))
(cl:defmethod unresponsive_sensitivity-val ((m <DMSUnresponsiveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:unresponsive_sensitivity-val is deprecated.  Use dms_msgs-msg:unresponsive_sensitivity instead.")
  (unresponsive_sensitivity m))

(cl:ensure-generic-function 'unresponsive_params-val :lambda-list '(m))
(cl:defmethod unresponsive_params-val ((m <DMSUnresponsiveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:unresponsive_params-val is deprecated.  Use dms_msgs-msg:unresponsive_params instead.")
  (unresponsive_params m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSUnresponsiveResult>)))
    "Constants for message type '<DMSUnresponsiveResult>"
  '((:UN_AVAILABLE . 0)
    (:UNRESPONSIVE_TYPE_AVAILABLE . 1)
    (:ROI_CAUSED_UNRESPONSIVE_AVAILABLE . 2)
    (:DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE . 4)
    (:RESERVED . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSUnresponsiveResult)))
    "Constants for message type 'DMSUnresponsiveResult"
  '((:UN_AVAILABLE . 0)
    (:UNRESPONSIVE_TYPE_AVAILABLE . 1)
    (:ROI_CAUSED_UNRESPONSIVE_AVAILABLE . 2)
    (:DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE . 4)
    (:RESERVED . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSUnresponsiveResult>) ostream)
  "Serializes a message object of type '<DMSUnresponsiveResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'unresponsive_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_caused_unresponsive)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drowsiness_caused_unresponsive)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'unresponsive_sensitivity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unresponsive_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unresponsive_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSUnresponsiveResult>) istream)
  "Deserializes a message object of type '<DMSUnresponsiveResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'unresponsive_type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roi_caused_unresponsive)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drowsiness_caused_unresponsive)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unresponsive_sensitivity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unresponsive_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unresponsive_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSUnresponsiveResult>)))
  "Returns string type for a message object of type '<DMSUnresponsiveResult>"
  "dms_msgs/DMSUnresponsiveResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSUnresponsiveResult)))
  "Returns string type for a message object of type 'DMSUnresponsiveResult"
  "dms_msgs/DMSUnresponsiveResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSUnresponsiveResult>)))
  "Returns md5sum for a message object of type '<DMSUnresponsiveResult>"
  "ca63b7070833fd794ace6047b622e56d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSUnresponsiveResult)))
  "Returns md5sum for a message object of type 'DMSUnresponsiveResult"
  "ca63b7070833fd794ace6047b622e56d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSUnresponsiveResult>)))
  "Returns full string definition for message of type '<DMSUnresponsiveResult>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 UNRESPONSIVE_TYPE_AVAILABLE = 1~%uint8 ROI_CAUSED_UNRESPONSIVE_AVAILABLE = 2~%uint8 DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE = 4~%uint8 RESERVED = 8~%uint8 available~%dms_msgs/DMSUnresponsiveTypeEnum unresponsive_type~%uint8 roi_caused_unresponsive~%uint8 drowsiness_caused_unresponsive~%uint8 reserved~%int32 unresponsive_sensitivity~%string unresponsive_params~%~%================================================================================~%MSG: dms_msgs/DMSUnresponsiveTypeEnum~%uint8 NORMAL_DRIVE_STATE = 0~%uint8 UNRESPONSIVE_DRIVE_STATE = 1~%uint8 UNRESPONSIVE_DRIVE_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSUnresponsiveResult)))
  "Returns full string definition for message of type 'DMSUnresponsiveResult"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 UNRESPONSIVE_TYPE_AVAILABLE = 1~%uint8 ROI_CAUSED_UNRESPONSIVE_AVAILABLE = 2~%uint8 DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE = 4~%uint8 RESERVED = 8~%uint8 available~%dms_msgs/DMSUnresponsiveTypeEnum unresponsive_type~%uint8 roi_caused_unresponsive~%uint8 drowsiness_caused_unresponsive~%uint8 reserved~%int32 unresponsive_sensitivity~%string unresponsive_params~%~%================================================================================~%MSG: dms_msgs/DMSUnresponsiveTypeEnum~%uint8 NORMAL_DRIVE_STATE = 0~%uint8 UNRESPONSIVE_DRIVE_STATE = 1~%uint8 UNRESPONSIVE_DRIVE_RESERVERD_STATE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSUnresponsiveResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'unresponsive_type))
     1
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'unresponsive_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSUnresponsiveResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSUnresponsiveResult
    (cl:cons ':available (available msg))
    (cl:cons ':unresponsive_type (unresponsive_type msg))
    (cl:cons ':roi_caused_unresponsive (roi_caused_unresponsive msg))
    (cl:cons ':drowsiness_caused_unresponsive (drowsiness_caused_unresponsive msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':unresponsive_sensitivity (unresponsive_sensitivity msg))
    (cl:cons ':unresponsive_params (unresponsive_params msg))
))
