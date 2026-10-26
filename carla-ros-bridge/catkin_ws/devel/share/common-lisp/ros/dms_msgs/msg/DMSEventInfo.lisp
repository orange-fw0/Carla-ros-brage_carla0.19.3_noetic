; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSEventInfo.msg.html

(cl:defclass <DMSEventInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (event_type
    :reader event_type
    :initarg :event_type
    :type dms_msgs-msg:DMSEventTypeEnum
    :initform (cl:make-instance 'dms_msgs-msg:DMSEventTypeEnum))
   (time_start
    :reader time_start
    :initarg :time_start
    :type cl:integer
    :initform 0)
   (time_end
    :reader time_end
    :initarg :time_end
    :type cl:integer
    :initform 0)
   (event_desc
    :reader event_desc
    :initarg :event_desc
    :type cl:string
    :initform "")
   (event_id
    :reader event_id
    :initarg :event_id
    :type cl:string
    :initform ""))
)

(cl:defclass DMSEventInfo (<DMSEventInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSEventInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSEventInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSEventInfo> is deprecated: use dms_msgs-msg:DMSEventInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'event_type-val :lambda-list '(m))
(cl:defmethod event_type-val ((m <DMSEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:event_type-val is deprecated.  Use dms_msgs-msg:event_type instead.")
  (event_type m))

(cl:ensure-generic-function 'time_start-val :lambda-list '(m))
(cl:defmethod time_start-val ((m <DMSEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:time_start-val is deprecated.  Use dms_msgs-msg:time_start instead.")
  (time_start m))

(cl:ensure-generic-function 'time_end-val :lambda-list '(m))
(cl:defmethod time_end-val ((m <DMSEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:time_end-val is deprecated.  Use dms_msgs-msg:time_end instead.")
  (time_end m))

(cl:ensure-generic-function 'event_desc-val :lambda-list '(m))
(cl:defmethod event_desc-val ((m <DMSEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:event_desc-val is deprecated.  Use dms_msgs-msg:event_desc instead.")
  (event_desc m))

(cl:ensure-generic-function 'event_id-val :lambda-list '(m))
(cl:defmethod event_id-val ((m <DMSEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:event_id-val is deprecated.  Use dms_msgs-msg:event_id instead.")
  (event_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSEventInfo>)))
    "Constants for message type '<DMSEventInfo>"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSEventInfo)))
    "Constants for message type 'DMSEventInfo"
  '((:UN_AVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSEventInfo>) ostream)
  "Serializes a message object of type '<DMSEventInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'event_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_start)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_end)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_end)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'event_desc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'event_desc))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'event_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'event_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSEventInfo>) istream)
  "Deserializes a message object of type '<DMSEventInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'event_type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_start)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_end)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_desc) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'event_desc) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'event_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSEventInfo>)))
  "Returns string type for a message object of type '<DMSEventInfo>"
  "dms_msgs/DMSEventInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSEventInfo)))
  "Returns string type for a message object of type 'DMSEventInfo"
  "dms_msgs/DMSEventInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSEventInfo>)))
  "Returns md5sum for a message object of type '<DMSEventInfo>"
  "c277d0f695293a1e0a5af5bc5bd13fc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSEventInfo)))
  "Returns md5sum for a message object of type 'DMSEventInfo"
  "c277d0f695293a1e0a5af5bc5bd13fc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSEventInfo>)))
  "Returns full string definition for message of type '<DMSEventInfo>"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSEventTypeEnum event_type~%uint64 time_start~%uint64 time_end~%string event_desc~%string event_id~%~%================================================================================~%MSG: dms_msgs/DMSEventTypeEnum~%uint8 DMS_EVENT_UNKNOWN = 0~%uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1~%uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2~%uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100~%uint8 DMS_EVENT_WARNING_YAWN = 101~%uint8 DMS_EVENT_WARNING_DRINK = 102~%uint8 DMS_EVENT_WARNING_PHONE_CALL = 103~%uint8 DMS_EVENT_WARNING_SMOKE = 104~%uint8 DMS_EVENT_WARNING_DROWSINESS = 105~%uint8 DMS_EVENT_DISTRACTION = 106~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112~%uint8 DMS_EVENT_HEAD_SHAKE = 109~%uint8 DMS_EVENT_HEAD_NOD = 110~%uint8 DMS_EVENT_MUTE = 111~%uint8 DMS_EVENT_RESERVED = 112~%uint8 DMS_EVENT_RESERVED1 = 113~%uint8 DMS_EVENT_RESERVED2 = 114~%uint8 DMS_EVENT_RESERVED3 = 115~%uint8 DMS_EVENT_RESERVED4 = 116~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSEventInfo)))
  "Returns full string definition for message of type 'DMSEventInfo"
  (cl:format cl:nil "uint8 UN_AVAILABLE = 0~%uint8 AVAILABLE = 1~%uint8 available~%dms_msgs/DMSEventTypeEnum event_type~%uint64 time_start~%uint64 time_end~%string event_desc~%string event_id~%~%================================================================================~%MSG: dms_msgs/DMSEventTypeEnum~%uint8 DMS_EVENT_UNKNOWN = 0~%uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1~%uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2~%uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100~%uint8 DMS_EVENT_WARNING_YAWN = 101~%uint8 DMS_EVENT_WARNING_DRINK = 102~%uint8 DMS_EVENT_WARNING_PHONE_CALL = 103~%uint8 DMS_EVENT_WARNING_SMOKE = 104~%uint8 DMS_EVENT_WARNING_DROWSINESS = 105~%uint8 DMS_EVENT_DISTRACTION = 106~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111~%uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112~%uint8 DMS_EVENT_HEAD_SHAKE = 109~%uint8 DMS_EVENT_HEAD_NOD = 110~%uint8 DMS_EVENT_MUTE = 111~%uint8 DMS_EVENT_RESERVED = 112~%uint8 DMS_EVENT_RESERVED1 = 113~%uint8 DMS_EVENT_RESERVED2 = 114~%uint8 DMS_EVENT_RESERVED3 = 115~%uint8 DMS_EVENT_RESERVED4 = 116~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSEventInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'event_type))
     8
     8
     4 (cl:length (cl:slot-value msg 'event_desc))
     4 (cl:length (cl:slot-value msg 'event_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSEventInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSEventInfo
    (cl:cons ':available (available msg))
    (cl:cons ':event_type (event_type msg))
    (cl:cons ':time_start (time_start msg))
    (cl:cons ':time_end (time_end msg))
    (cl:cons ':event_desc (event_desc msg))
    (cl:cons ':event_id (event_id msg))
))
