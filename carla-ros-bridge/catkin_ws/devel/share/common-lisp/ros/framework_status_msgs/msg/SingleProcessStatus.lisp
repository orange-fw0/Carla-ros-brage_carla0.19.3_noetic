; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude SingleProcessStatus.msg.html

(cl:defclass <SingleProcessStatus> (roslisp-msg-protocol:ros-message)
  ((process_name
    :reader process_name
    :initarg :process_name
    :type cl:string
    :initform "")
   (is_alive
    :reader is_alive
    :initarg :is_alive
    :type cl:boolean
    :initform cl:nil)
   (num_threads
    :reader num_threads
    :initarg :num_threads
    :type cl:fixnum
    :initform 0)
   (voluntary_ctxt_switches_rate
    :reader voluntary_ctxt_switches_rate
    :initarg :voluntary_ctxt_switches_rate
    :type cl:float
    :initform 0.0)
   (nonvoluntary_ctxt_switches_rate
    :reader nonvoluntary_ctxt_switches_rate
    :initarg :nonvoluntary_ctxt_switches_rate
    :type cl:float
    :initform 0.0)
   (cpu_current_percent
    :reader cpu_current_percent
    :initarg :cpu_current_percent
    :type cl:float
    :initform 0.0)
   (cpu_average_percent
    :reader cpu_average_percent
    :initarg :cpu_average_percent
    :type cl:float
    :initform 0.0)
   (memory_current_percent
    :reader memory_current_percent
    :initarg :memory_current_percent
    :type cl:float
    :initform 0.0)
   (memory_average_percent
    :reader memory_average_percent
    :initarg :memory_average_percent
    :type cl:float
    :initform 0.0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass SingleProcessStatus (<SingleProcessStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleProcessStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleProcessStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<SingleProcessStatus> is deprecated: use framework_status_msgs-msg:SingleProcessStatus instead.")))

(cl:ensure-generic-function 'process_name-val :lambda-list '(m))
(cl:defmethod process_name-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:process_name-val is deprecated.  Use framework_status_msgs-msg:process_name instead.")
  (process_name m))

(cl:ensure-generic-function 'is_alive-val :lambda-list '(m))
(cl:defmethod is_alive-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:is_alive-val is deprecated.  Use framework_status_msgs-msg:is_alive instead.")
  (is_alive m))

(cl:ensure-generic-function 'num_threads-val :lambda-list '(m))
(cl:defmethod num_threads-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:num_threads-val is deprecated.  Use framework_status_msgs-msg:num_threads instead.")
  (num_threads m))

(cl:ensure-generic-function 'voluntary_ctxt_switches_rate-val :lambda-list '(m))
(cl:defmethod voluntary_ctxt_switches_rate-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:voluntary_ctxt_switches_rate-val is deprecated.  Use framework_status_msgs-msg:voluntary_ctxt_switches_rate instead.")
  (voluntary_ctxt_switches_rate m))

(cl:ensure-generic-function 'nonvoluntary_ctxt_switches_rate-val :lambda-list '(m))
(cl:defmethod nonvoluntary_ctxt_switches_rate-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:nonvoluntary_ctxt_switches_rate-val is deprecated.  Use framework_status_msgs-msg:nonvoluntary_ctxt_switches_rate instead.")
  (nonvoluntary_ctxt_switches_rate m))

(cl:ensure-generic-function 'cpu_current_percent-val :lambda-list '(m))
(cl:defmethod cpu_current_percent-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_current_percent-val is deprecated.  Use framework_status_msgs-msg:cpu_current_percent instead.")
  (cpu_current_percent m))

(cl:ensure-generic-function 'cpu_average_percent-val :lambda-list '(m))
(cl:defmethod cpu_average_percent-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_average_percent-val is deprecated.  Use framework_status_msgs-msg:cpu_average_percent instead.")
  (cpu_average_percent m))

(cl:ensure-generic-function 'memory_current_percent-val :lambda-list '(m))
(cl:defmethod memory_current_percent-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:memory_current_percent-val is deprecated.  Use framework_status_msgs-msg:memory_current_percent instead.")
  (memory_current_percent m))

(cl:ensure-generic-function 'memory_average_percent-val :lambda-list '(m))
(cl:defmethod memory_average_percent-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:memory_average_percent-val is deprecated.  Use framework_status_msgs-msg:memory_average_percent instead.")
  (memory_average_percent m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <SingleProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleProcessStatus>) ostream)
  "Serializes a message object of type '<SingleProcessStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'process_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'process_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_alive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_threads)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voluntary_ctxt_switches_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'nonvoluntary_ctxt_switches_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_current_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_average_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'memory_current_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'memory_average_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleProcessStatus>) istream)
  "Deserializes a message object of type '<SingleProcessStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'process_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'process_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_alive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_threads)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voluntary_ctxt_switches_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nonvoluntary_ctxt_switches_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_current_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_average_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'memory_current_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'memory_average_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleProcessStatus>)))
  "Returns string type for a message object of type '<SingleProcessStatus>"
  "framework_status_msgs/SingleProcessStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleProcessStatus)))
  "Returns string type for a message object of type 'SingleProcessStatus"
  "framework_status_msgs/SingleProcessStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleProcessStatus>)))
  "Returns md5sum for a message object of type '<SingleProcessStatus>"
  "b1133ed95563b8c6784551432d03b60d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleProcessStatus)))
  "Returns md5sum for a message object of type 'SingleProcessStatus"
  "b1133ed95563b8c6784551432d03b60d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleProcessStatus>)))
  "Returns full string definition for message of type '<SingleProcessStatus>"
  (cl:format cl:nil "string process_name~%bool is_alive~%uint8 num_threads~%float32 voluntary_ctxt_switches_rate~%float32 nonvoluntary_ctxt_switches_rate~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32 memory_current_percent~%float32 memory_average_percent~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleProcessStatus)))
  "Returns full string definition for message of type 'SingleProcessStatus"
  (cl:format cl:nil "string process_name~%bool is_alive~%uint8 num_threads~%float32 voluntary_ctxt_switches_rate~%float32 nonvoluntary_ctxt_switches_rate~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32 memory_current_percent~%float32 memory_average_percent~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleProcessStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'process_name))
     1
     1
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleProcessStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleProcessStatus
    (cl:cons ':process_name (process_name msg))
    (cl:cons ':is_alive (is_alive msg))
    (cl:cons ':num_threads (num_threads msg))
    (cl:cons ':voluntary_ctxt_switches_rate (voluntary_ctxt_switches_rate msg))
    (cl:cons ':nonvoluntary_ctxt_switches_rate (nonvoluntary_ctxt_switches_rate msg))
    (cl:cons ':cpu_current_percent (cpu_current_percent msg))
    (cl:cons ':cpu_average_percent (cpu_average_percent msg))
    (cl:cons ':memory_current_percent (memory_current_percent msg))
    (cl:cons ':memory_average_percent (memory_average_percent msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
