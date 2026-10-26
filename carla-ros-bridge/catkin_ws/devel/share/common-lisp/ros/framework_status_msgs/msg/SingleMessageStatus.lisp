; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude SingleMessageStatus.msg.html

(cl:defclass <SingleMessageStatus> (roslisp-msg-protocol:ros-message)
  ((health_status
    :reader health_status
    :initarg :health_status
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (start_timestamp_us
    :reader start_timestamp_us
    :initarg :start_timestamp_us
    :type cl:integer
    :initform 0)
   (end_timestamp_us
    :reader end_timestamp_us
    :initarg :end_timestamp_us
    :type cl:integer
    :initform 0)
   (frame_rate
    :reader frame_rate
    :initarg :frame_rate
    :type cl:float
    :initform 0.0)
   (standard_frame_rate
    :reader standard_frame_rate
    :initarg :standard_frame_rate
    :type cl:float
    :initform 0.0)
   (interval_ms
    :reader interval_ms
    :initarg :interval_ms
    :type framework_status_msgs-msg:StatisticValue
    :initform (cl:make-instance 'framework_status_msgs-msg:StatisticValue))
   (header_delay_ms
    :reader header_delay_ms
    :initarg :header_delay_ms
    :type framework_status_msgs-msg:StatisticValue
    :initform (cl:make-instance 'framework_status_msgs-msg:StatisticValue))
   (current_loss_frame_count
    :reader current_loss_frame_count
    :initarg :current_loss_frame_count
    :type cl:integer
    :initform 0)
   (total_loss_frame_count
    :reader total_loss_frame_count
    :initarg :total_loss_frame_count
    :type cl:integer
    :initform 0)
   (in_order
    :reader in_order
    :initarg :in_order
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass SingleMessageStatus (<SingleMessageStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleMessageStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleMessageStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<SingleMessageStatus> is deprecated: use framework_status_msgs-msg:SingleMessageStatus instead.")))

(cl:ensure-generic-function 'health_status-val :lambda-list '(m))
(cl:defmethod health_status-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:health_status-val is deprecated.  Use framework_status_msgs-msg:health_status instead.")
  (health_status m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:name-val is deprecated.  Use framework_status_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'start_timestamp_us-val :lambda-list '(m))
(cl:defmethod start_timestamp_us-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:start_timestamp_us-val is deprecated.  Use framework_status_msgs-msg:start_timestamp_us instead.")
  (start_timestamp_us m))

(cl:ensure-generic-function 'end_timestamp_us-val :lambda-list '(m))
(cl:defmethod end_timestamp_us-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:end_timestamp_us-val is deprecated.  Use framework_status_msgs-msg:end_timestamp_us instead.")
  (end_timestamp_us m))

(cl:ensure-generic-function 'frame_rate-val :lambda-list '(m))
(cl:defmethod frame_rate-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:frame_rate-val is deprecated.  Use framework_status_msgs-msg:frame_rate instead.")
  (frame_rate m))

(cl:ensure-generic-function 'standard_frame_rate-val :lambda-list '(m))
(cl:defmethod standard_frame_rate-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:standard_frame_rate-val is deprecated.  Use framework_status_msgs-msg:standard_frame_rate instead.")
  (standard_frame_rate m))

(cl:ensure-generic-function 'interval_ms-val :lambda-list '(m))
(cl:defmethod interval_ms-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:interval_ms-val is deprecated.  Use framework_status_msgs-msg:interval_ms instead.")
  (interval_ms m))

(cl:ensure-generic-function 'header_delay_ms-val :lambda-list '(m))
(cl:defmethod header_delay_ms-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header_delay_ms-val is deprecated.  Use framework_status_msgs-msg:header_delay_ms instead.")
  (header_delay_ms m))

(cl:ensure-generic-function 'current_loss_frame_count-val :lambda-list '(m))
(cl:defmethod current_loss_frame_count-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:current_loss_frame_count-val is deprecated.  Use framework_status_msgs-msg:current_loss_frame_count instead.")
  (current_loss_frame_count m))

(cl:ensure-generic-function 'total_loss_frame_count-val :lambda-list '(m))
(cl:defmethod total_loss_frame_count-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:total_loss_frame_count-val is deprecated.  Use framework_status_msgs-msg:total_loss_frame_count instead.")
  (total_loss_frame_count m))

(cl:ensure-generic-function 'in_order-val :lambda-list '(m))
(cl:defmethod in_order-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:in_order-val is deprecated.  Use framework_status_msgs-msg:in_order instead.")
  (in_order m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SingleMessageStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SingleMessageStatus>)))
    "Constants for message type '<SingleMessageStatus>"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SingleMessageStatus)))
    "Constants for message type 'SingleMessageStatus"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleMessageStatus>) ostream)
  "Serializes a message object of type '<SingleMessageStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end_timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frame_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_frame_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interval_ms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header_delay_ms) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_loss_frame_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_order) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleMessageStatus>) istream)
  "Deserializes a message object of type '<SingleMessageStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end_timestamp_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frame_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_frame_rate) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interval_ms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header_delay_ms) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_loss_frame_count)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'in_order) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleMessageStatus>)))
  "Returns string type for a message object of type '<SingleMessageStatus>"
  "framework_status_msgs/SingleMessageStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleMessageStatus)))
  "Returns string type for a message object of type 'SingleMessageStatus"
  "framework_status_msgs/SingleMessageStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleMessageStatus>)))
  "Returns md5sum for a message object of type '<SingleMessageStatus>"
  "b58f7eccb3c47ab12531866eb61deccf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleMessageStatus)))
  "Returns md5sum for a message object of type 'SingleMessageStatus"
  "b58f7eccb3c47ab12531866eb61deccf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleMessageStatus>)))
  "Returns full string definition for message of type '<SingleMessageStatus>"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string name~%uint64 start_timestamp_us~%uint64 end_timestamp_us~%float32 frame_rate~%float32 standard_frame_rate~%framework_status_msgs/StatisticValue interval_ms~%framework_status_msgs/StatisticValue header_delay_ms~%uint32 current_loss_frame_count~%uint32 total_loss_frame_count~%bool in_order~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/StatisticValue~%float32 average~%float32 standard_deviation~%float32 max_value~%float32 min_value~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleMessageStatus)))
  "Returns full string definition for message of type 'SingleMessageStatus"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string name~%uint64 start_timestamp_us~%uint64 end_timestamp_us~%float32 frame_rate~%float32 standard_frame_rate~%framework_status_msgs/StatisticValue interval_ms~%framework_status_msgs/StatisticValue header_delay_ms~%uint32 current_loss_frame_count~%uint32 total_loss_frame_count~%bool in_order~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/StatisticValue~%float32 average~%float32 standard_deviation~%float32 max_value~%float32 min_value~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleMessageStatus>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     8
     8
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interval_ms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header_delay_ms))
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleMessageStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleMessageStatus
    (cl:cons ':health_status (health_status msg))
    (cl:cons ':name (name msg))
    (cl:cons ':start_timestamp_us (start_timestamp_us msg))
    (cl:cons ':end_timestamp_us (end_timestamp_us msg))
    (cl:cons ':frame_rate (frame_rate msg))
    (cl:cons ':standard_frame_rate (standard_frame_rate msg))
    (cl:cons ':interval_ms (interval_ms msg))
    (cl:cons ':header_delay_ms (header_delay_ms msg))
    (cl:cons ':current_loss_frame_count (current_loss_frame_count msg))
    (cl:cons ':total_loss_frame_count (total_loss_frame_count msg))
    (cl:cons ':in_order (in_order msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':message (message msg))
))
