; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude SingleGPUStatus.msg.html

(cl:defclass <SingleGPUStatus> (roslisp-msg-protocol:ros-message)
  ((gpu_id
    :reader gpu_id
    :initarg :gpu_id
    :type cl:fixnum
    :initform 0)
   (gpu_current_percent
    :reader gpu_current_percent
    :initarg :gpu_current_percent
    :type cl:float
    :initform 0.0)
   (gpu_average_percent
    :reader gpu_average_percent
    :initarg :gpu_average_percent
    :type cl:float
    :initform 0.0)
   (gpu_memory_current_percent
    :reader gpu_memory_current_percent
    :initarg :gpu_memory_current_percent
    :type cl:float
    :initform 0.0)
   (gpu_memory_average_percent
    :reader gpu_memory_average_percent
    :initarg :gpu_memory_average_percent
    :type cl:float
    :initform 0.0)
   (gpu_temperature
    :reader gpu_temperature
    :initarg :gpu_temperature
    :type cl:float
    :initform 0.0)
   (gpu_power
    :reader gpu_power
    :initarg :gpu_power
    :type cl:float
    :initform 0.0)
   (top_processes
    :reader top_processes
    :initarg :top_processes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass SingleGPUStatus (<SingleGPUStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleGPUStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleGPUStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<SingleGPUStatus> is deprecated: use framework_status_msgs-msg:SingleGPUStatus instead.")))

(cl:ensure-generic-function 'gpu_id-val :lambda-list '(m))
(cl:defmethod gpu_id-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_id-val is deprecated.  Use framework_status_msgs-msg:gpu_id instead.")
  (gpu_id m))

(cl:ensure-generic-function 'gpu_current_percent-val :lambda-list '(m))
(cl:defmethod gpu_current_percent-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_current_percent-val is deprecated.  Use framework_status_msgs-msg:gpu_current_percent instead.")
  (gpu_current_percent m))

(cl:ensure-generic-function 'gpu_average_percent-val :lambda-list '(m))
(cl:defmethod gpu_average_percent-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_average_percent-val is deprecated.  Use framework_status_msgs-msg:gpu_average_percent instead.")
  (gpu_average_percent m))

(cl:ensure-generic-function 'gpu_memory_current_percent-val :lambda-list '(m))
(cl:defmethod gpu_memory_current_percent-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_memory_current_percent-val is deprecated.  Use framework_status_msgs-msg:gpu_memory_current_percent instead.")
  (gpu_memory_current_percent m))

(cl:ensure-generic-function 'gpu_memory_average_percent-val :lambda-list '(m))
(cl:defmethod gpu_memory_average_percent-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_memory_average_percent-val is deprecated.  Use framework_status_msgs-msg:gpu_memory_average_percent instead.")
  (gpu_memory_average_percent m))

(cl:ensure-generic-function 'gpu_temperature-val :lambda-list '(m))
(cl:defmethod gpu_temperature-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_temperature-val is deprecated.  Use framework_status_msgs-msg:gpu_temperature instead.")
  (gpu_temperature m))

(cl:ensure-generic-function 'gpu_power-val :lambda-list '(m))
(cl:defmethod gpu_power-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_power-val is deprecated.  Use framework_status_msgs-msg:gpu_power instead.")
  (gpu_power m))

(cl:ensure-generic-function 'top_processes-val :lambda-list '(m))
(cl:defmethod top_processes-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:top_processes-val is deprecated.  Use framework_status_msgs-msg:top_processes instead.")
  (top_processes m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <SingleGPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleGPUStatus>) ostream)
  "Serializes a message object of type '<SingleGPUStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpu_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpu_current_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpu_average_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpu_memory_current_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpu_memory_average_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpu_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gpu_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'top_processes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'top_processes))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleGPUStatus>) istream)
  "Deserializes a message object of type '<SingleGPUStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpu_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpu_current_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpu_average_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpu_memory_current_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpu_memory_average_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpu_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gpu_power) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'top_processes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'top_processes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleGPUStatus>)))
  "Returns string type for a message object of type '<SingleGPUStatus>"
  "framework_status_msgs/SingleGPUStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleGPUStatus)))
  "Returns string type for a message object of type 'SingleGPUStatus"
  "framework_status_msgs/SingleGPUStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleGPUStatus>)))
  "Returns md5sum for a message object of type '<SingleGPUStatus>"
  "567b4e51516174e672db45262160a686")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleGPUStatus)))
  "Returns md5sum for a message object of type 'SingleGPUStatus"
  "567b4e51516174e672db45262160a686")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleGPUStatus>)))
  "Returns full string definition for message of type '<SingleGPUStatus>"
  (cl:format cl:nil "uint8 gpu_id~%float32 gpu_current_percent~%float32 gpu_average_percent~%float32 gpu_memory_current_percent~%float32 gpu_memory_average_percent~%float32 gpu_temperature~%float32 gpu_power~%string[] top_processes~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleGPUStatus)))
  "Returns full string definition for message of type 'SingleGPUStatus"
  (cl:format cl:nil "uint8 gpu_id~%float32 gpu_current_percent~%float32 gpu_average_percent~%float32 gpu_memory_current_percent~%float32 gpu_memory_average_percent~%float32 gpu_temperature~%float32 gpu_power~%string[] top_processes~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleGPUStatus>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'top_processes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleGPUStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleGPUStatus
    (cl:cons ':gpu_id (gpu_id msg))
    (cl:cons ':gpu_current_percent (gpu_current_percent msg))
    (cl:cons ':gpu_average_percent (gpu_average_percent msg))
    (cl:cons ':gpu_memory_current_percent (gpu_memory_current_percent msg))
    (cl:cons ':gpu_memory_average_percent (gpu_memory_average_percent msg))
    (cl:cons ':gpu_temperature (gpu_temperature msg))
    (cl:cons ':gpu_power (gpu_power msg))
    (cl:cons ':top_processes (top_processes msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
