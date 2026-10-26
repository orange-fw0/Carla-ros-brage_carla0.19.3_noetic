; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude CPUStatusData.msg.html

(cl:defclass <CPUStatusData> (roslisp-msg-protocol:ros-message)
  ((health_status
    :reader health_status
    :initarg :health_status
    :type cl:fixnum
    :initform 0)
   (cpu_count
    :reader cpu_count
    :initarg :cpu_count
    :type cl:fixnum
    :initform 0)
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
   (cpu_average_load
    :reader cpu_average_load
    :initarg :cpu_average_load
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cpu_average_temperature
    :reader cpu_average_temperature
    :initarg :cpu_average_temperature
    :type cl:float
    :initform 0.0)
   (cpu_average_frequency
    :reader cpu_average_frequency
    :initarg :cpu_average_frequency
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
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass CPUStatusData (<CPUStatusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CPUStatusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CPUStatusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<CPUStatusData> is deprecated: use framework_status_msgs-msg:CPUStatusData instead.")))

(cl:ensure-generic-function 'health_status-val :lambda-list '(m))
(cl:defmethod health_status-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:health_status-val is deprecated.  Use framework_status_msgs-msg:health_status instead.")
  (health_status m))

(cl:ensure-generic-function 'cpu_count-val :lambda-list '(m))
(cl:defmethod cpu_count-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_count-val is deprecated.  Use framework_status_msgs-msg:cpu_count instead.")
  (cpu_count m))

(cl:ensure-generic-function 'cpu_current_percent-val :lambda-list '(m))
(cl:defmethod cpu_current_percent-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_current_percent-val is deprecated.  Use framework_status_msgs-msg:cpu_current_percent instead.")
  (cpu_current_percent m))

(cl:ensure-generic-function 'cpu_average_percent-val :lambda-list '(m))
(cl:defmethod cpu_average_percent-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_average_percent-val is deprecated.  Use framework_status_msgs-msg:cpu_average_percent instead.")
  (cpu_average_percent m))

(cl:ensure-generic-function 'cpu_average_load-val :lambda-list '(m))
(cl:defmethod cpu_average_load-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_average_load-val is deprecated.  Use framework_status_msgs-msg:cpu_average_load instead.")
  (cpu_average_load m))

(cl:ensure-generic-function 'cpu_average_temperature-val :lambda-list '(m))
(cl:defmethod cpu_average_temperature-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_average_temperature-val is deprecated.  Use framework_status_msgs-msg:cpu_average_temperature instead.")
  (cpu_average_temperature m))

(cl:ensure-generic-function 'cpu_average_frequency-val :lambda-list '(m))
(cl:defmethod cpu_average_frequency-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_average_frequency-val is deprecated.  Use framework_status_msgs-msg:cpu_average_frequency instead.")
  (cpu_average_frequency m))

(cl:ensure-generic-function 'top_processes-val :lambda-list '(m))
(cl:defmethod top_processes-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:top_processes-val is deprecated.  Use framework_status_msgs-msg:top_processes instead.")
  (top_processes m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CPUStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CPUStatusData>)))
    "Constants for message type '<CPUStatusData>"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CPUStatusData)))
    "Constants for message type 'CPUStatusData"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CPUStatusData>) ostream)
  "Serializes a message object of type '<CPUStatusData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cpu_count)) ostream)
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cpu_average_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cpu_average_load))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_average_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_average_frequency))))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CPUStatusData>) istream)
  "Deserializes a message object of type '<CPUStatusData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cpu_count)) (cl:read-byte istream))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cpu_average_load) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cpu_average_load)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_average_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_average_frequency) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CPUStatusData>)))
  "Returns string type for a message object of type '<CPUStatusData>"
  "framework_status_msgs/CPUStatusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CPUStatusData)))
  "Returns string type for a message object of type 'CPUStatusData"
  "framework_status_msgs/CPUStatusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CPUStatusData>)))
  "Returns md5sum for a message object of type '<CPUStatusData>"
  "2e030de42174fd101198e334ed90191c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CPUStatusData)))
  "Returns md5sum for a message object of type 'CPUStatusData"
  "2e030de42174fd101198e334ed90191c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CPUStatusData>)))
  "Returns full string definition for message of type '<CPUStatusData>"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint8 cpu_count~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32[] cpu_average_load~%float32 cpu_average_temperature~%float32 cpu_average_frequency~%string[] top_processes~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CPUStatusData)))
  "Returns full string definition for message of type 'CPUStatusData"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint8 cpu_count~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32[] cpu_average_load~%float32 cpu_average_temperature~%float32 cpu_average_frequency~%string[] top_processes~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CPUStatusData>))
  (cl:+ 0
     1
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cpu_average_load) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'top_processes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CPUStatusData>))
  "Converts a ROS message object to a list"
  (cl:list 'CPUStatusData
    (cl:cons ':health_status (health_status msg))
    (cl:cons ':cpu_count (cpu_count msg))
    (cl:cons ':cpu_current_percent (cpu_current_percent msg))
    (cl:cons ':cpu_average_percent (cpu_average_percent msg))
    (cl:cons ':cpu_average_load (cpu_average_load msg))
    (cl:cons ':cpu_average_temperature (cpu_average_temperature msg))
    (cl:cons ':cpu_average_frequency (cpu_average_frequency msg))
    (cl:cons ':top_processes (top_processes msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':message (message msg))
))
