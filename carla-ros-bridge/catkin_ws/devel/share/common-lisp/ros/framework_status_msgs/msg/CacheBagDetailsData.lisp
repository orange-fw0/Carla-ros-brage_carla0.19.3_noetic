; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude CacheBagDetailsData.msg.html

(cl:defclass <CacheBagDetailsData> (roslisp-msg-protocol:ros-message)
  ((health_status
    :reader health_status
    :initarg :health_status
    :type cl:fixnum
    :initform 0)
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
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

(cl:defclass CacheBagDetailsData (<CacheBagDetailsData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CacheBagDetailsData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CacheBagDetailsData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<CacheBagDetailsData> is deprecated: use framework_status_msgs-msg:CacheBagDetailsData instead.")))

(cl:ensure-generic-function 'health_status-val :lambda-list '(m))
(cl:defmethod health_status-val ((m <CacheBagDetailsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:health_status-val is deprecated.  Use framework_status_msgs-msg:health_status instead.")
  (health_status m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <CacheBagDetailsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:timestamp_us-val is deprecated.  Use framework_status_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <CacheBagDetailsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CacheBagDetailsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CacheBagDetailsData>)))
    "Constants for message type '<CacheBagDetailsData>"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CacheBagDetailsData)))
    "Constants for message type 'CacheBagDetailsData"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CacheBagDetailsData>) ostream)
  "Serializes a message object of type '<CacheBagDetailsData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CacheBagDetailsData>) istream)
  "Deserializes a message object of type '<CacheBagDetailsData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CacheBagDetailsData>)))
  "Returns string type for a message object of type '<CacheBagDetailsData>"
  "framework_status_msgs/CacheBagDetailsData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CacheBagDetailsData)))
  "Returns string type for a message object of type 'CacheBagDetailsData"
  "framework_status_msgs/CacheBagDetailsData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CacheBagDetailsData>)))
  "Returns md5sum for a message object of type '<CacheBagDetailsData>"
  "82127779dce0adfe6a4f31f52ad6c8ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CacheBagDetailsData)))
  "Returns md5sum for a message object of type 'CacheBagDetailsData"
  "82127779dce0adfe6a4f31f52ad6c8ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CacheBagDetailsData>)))
  "Returns full string definition for message of type '<CacheBagDetailsData>"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CacheBagDetailsData)))
  "Returns full string definition for message of type 'CacheBagDetailsData"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CacheBagDetailsData>))
  (cl:+ 0
     1
     8
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CacheBagDetailsData>))
  "Converts a ROS message object to a list"
  (cl:list 'CacheBagDetailsData
    (cl:cons ':health_status (health_status msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':message (message msg))
))
