; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude DiskStatusData.msg.html

(cl:defclass <DiskStatusData> (roslisp-msg-protocol:ros-message)
  ((health_status
    :reader health_status
    :initarg :health_status
    :type cl:fixnum
    :initform 0)
   (disk_usage
    :reader disk_usage
    :initarg :disk_usage
    :type cl:float
    :initform 0.0)
   (disk_io_counters
    :reader disk_io_counters
    :initarg :disk_io_counters
    :type cl:string
    :initform "")
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass DiskStatusData (<DiskStatusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskStatusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskStatusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<DiskStatusData> is deprecated: use framework_status_msgs-msg:DiskStatusData instead.")))

(cl:ensure-generic-function 'health_status-val :lambda-list '(m))
(cl:defmethod health_status-val ((m <DiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:health_status-val is deprecated.  Use framework_status_msgs-msg:health_status instead.")
  (health_status m))

(cl:ensure-generic-function 'disk_usage-val :lambda-list '(m))
(cl:defmethod disk_usage-val ((m <DiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:disk_usage-val is deprecated.  Use framework_status_msgs-msg:disk_usage instead.")
  (disk_usage m))

(cl:ensure-generic-function 'disk_io_counters-val :lambda-list '(m))
(cl:defmethod disk_io_counters-val ((m <DiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:disk_io_counters-val is deprecated.  Use framework_status_msgs-msg:disk_io_counters instead.")
  (disk_io_counters m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <DiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DiskStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DiskStatusData>)))
    "Constants for message type '<DiskStatusData>"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DiskStatusData)))
    "Constants for message type 'DiskStatusData"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskStatusData>) ostream)
  "Serializes a message object of type '<DiskStatusData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'disk_usage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'disk_io_counters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'disk_io_counters))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskStatusData>) istream)
  "Deserializes a message object of type '<DiskStatusData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disk_usage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'disk_io_counters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'disk_io_counters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskStatusData>)))
  "Returns string type for a message object of type '<DiskStatusData>"
  "framework_status_msgs/DiskStatusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskStatusData)))
  "Returns string type for a message object of type 'DiskStatusData"
  "framework_status_msgs/DiskStatusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskStatusData>)))
  "Returns md5sum for a message object of type '<DiskStatusData>"
  "14019c2aefc6eeb1fa69fe53226bbcfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskStatusData)))
  "Returns md5sum for a message object of type 'DiskStatusData"
  "14019c2aefc6eeb1fa69fe53226bbcfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskStatusData>)))
  "Returns full string definition for message of type '<DiskStatusData>"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 disk_usage~%string disk_io_counters~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskStatusData)))
  "Returns full string definition for message of type 'DiskStatusData"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 disk_usage~%string disk_io_counters~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskStatusData>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'disk_io_counters))
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskStatusData>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskStatusData
    (cl:cons ':health_status (health_status msg))
    (cl:cons ':disk_usage (disk_usage msg))
    (cl:cons ':disk_io_counters (disk_io_counters msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':message (message msg))
))
