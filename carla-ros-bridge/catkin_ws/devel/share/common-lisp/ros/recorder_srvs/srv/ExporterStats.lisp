; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude ExporterStats-request.msg.html

(cl:defclass <ExporterStats-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ExporterStats-request (<ExporterStats-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExporterStats-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExporterStats-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ExporterStats-request> is deprecated: use recorder_srvs-srv:ExporterStats-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExporterStats-request>) ostream)
  "Serializes a message object of type '<ExporterStats-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExporterStats-request>) istream)
  "Deserializes a message object of type '<ExporterStats-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExporterStats-request>)))
  "Returns string type for a service object of type '<ExporterStats-request>"
  "recorder_srvs/ExporterStatsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExporterStats-request)))
  "Returns string type for a service object of type 'ExporterStats-request"
  "recorder_srvs/ExporterStatsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExporterStats-request>)))
  "Returns md5sum for a message object of type '<ExporterStats-request>"
  "111f10718e56a34dd9ce0e4e2ba876fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExporterStats-request)))
  "Returns md5sum for a message object of type 'ExporterStats-request"
  "111f10718e56a34dd9ce0e4e2ba876fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExporterStats-request>)))
  "Returns full string definition for message of type '<ExporterStats-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExporterStats-request)))
  "Returns full string definition for message of type 'ExporterStats-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExporterStats-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExporterStats-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExporterStats-request
))
;//! \htmlinclude ExporterStats-response.msg.html

(cl:defclass <ExporterStats-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (export_running
    :reader export_running
    :initarg :export_running
    :type cl:boolean
    :initform cl:nil)
   (export_disk_recording
    :reader export_disk_recording
    :initarg :export_disk_recording
    :type cl:boolean
    :initform cl:nil)
   (error_msg
    :reader error_msg
    :initarg :error_msg
    :type cl:string
    :initform "")
   (processed_time
    :reader processed_time
    :initarg :processed_time
    :type cl:real
    :initform 0)
   (reporting_size
    :reader reporting_size
    :initarg :reporting_size
    :type cl:integer
    :initform 0)
   (reported_size
    :reader reported_size
    :initarg :reported_size
    :type cl:integer
    :initform 0)
   (reading_capacity
    :reader reading_capacity
    :initarg :reading_capacity
    :type cl:integer
    :initform 0)
   (read_capacity
    :reader read_capacity
    :initarg :read_capacity
    :type cl:integer
    :initform 0)
   (writing_capacity
    :reader writing_capacity
    :initarg :writing_capacity
    :type cl:integer
    :initform 0)
   (written_capacity
    :reader written_capacity
    :initarg :written_capacity
    :type cl:integer
    :initform 0)
   (request_items
    :reader request_items
    :initarg :request_items
    :type cl:integer
    :initform 0)
   (enqueued_items
    :reader enqueued_items
    :initarg :enqueued_items
    :type cl:integer
    :initform 0)
   (exporting_items
    :reader exporting_items
    :initarg :exporting_items
    :type cl:integer
    :initform 0)
   (exported_items
    :reader exported_items
    :initarg :exported_items
    :type cl:integer
    :initform 0))
)

(cl:defclass ExporterStats-response (<ExporterStats-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExporterStats-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExporterStats-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ExporterStats-response> is deprecated: use recorder_srvs-srv:ExporterStats-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'export_running-val :lambda-list '(m))
(cl:defmethod export_running-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:export_running-val is deprecated.  Use recorder_srvs-srv:export_running instead.")
  (export_running m))

(cl:ensure-generic-function 'export_disk_recording-val :lambda-list '(m))
(cl:defmethod export_disk_recording-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:export_disk_recording-val is deprecated.  Use recorder_srvs-srv:export_disk_recording instead.")
  (export_disk_recording m))

(cl:ensure-generic-function 'error_msg-val :lambda-list '(m))
(cl:defmethod error_msg-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:error_msg-val is deprecated.  Use recorder_srvs-srv:error_msg instead.")
  (error_msg m))

(cl:ensure-generic-function 'processed_time-val :lambda-list '(m))
(cl:defmethod processed_time-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:processed_time-val is deprecated.  Use recorder_srvs-srv:processed_time instead.")
  (processed_time m))

(cl:ensure-generic-function 'reporting_size-val :lambda-list '(m))
(cl:defmethod reporting_size-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:reporting_size-val is deprecated.  Use recorder_srvs-srv:reporting_size instead.")
  (reporting_size m))

(cl:ensure-generic-function 'reported_size-val :lambda-list '(m))
(cl:defmethod reported_size-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:reported_size-val is deprecated.  Use recorder_srvs-srv:reported_size instead.")
  (reported_size m))

(cl:ensure-generic-function 'reading_capacity-val :lambda-list '(m))
(cl:defmethod reading_capacity-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:reading_capacity-val is deprecated.  Use recorder_srvs-srv:reading_capacity instead.")
  (reading_capacity m))

(cl:ensure-generic-function 'read_capacity-val :lambda-list '(m))
(cl:defmethod read_capacity-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:read_capacity-val is deprecated.  Use recorder_srvs-srv:read_capacity instead.")
  (read_capacity m))

(cl:ensure-generic-function 'writing_capacity-val :lambda-list '(m))
(cl:defmethod writing_capacity-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:writing_capacity-val is deprecated.  Use recorder_srvs-srv:writing_capacity instead.")
  (writing_capacity m))

(cl:ensure-generic-function 'written_capacity-val :lambda-list '(m))
(cl:defmethod written_capacity-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:written_capacity-val is deprecated.  Use recorder_srvs-srv:written_capacity instead.")
  (written_capacity m))

(cl:ensure-generic-function 'request_items-val :lambda-list '(m))
(cl:defmethod request_items-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:request_items-val is deprecated.  Use recorder_srvs-srv:request_items instead.")
  (request_items m))

(cl:ensure-generic-function 'enqueued_items-val :lambda-list '(m))
(cl:defmethod enqueued_items-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:enqueued_items-val is deprecated.  Use recorder_srvs-srv:enqueued_items instead.")
  (enqueued_items m))

(cl:ensure-generic-function 'exporting_items-val :lambda-list '(m))
(cl:defmethod exporting_items-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:exporting_items-val is deprecated.  Use recorder_srvs-srv:exporting_items instead.")
  (exporting_items m))

(cl:ensure-generic-function 'exported_items-val :lambda-list '(m))
(cl:defmethod exported_items-val ((m <ExporterStats-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:exported_items-val is deprecated.  Use recorder_srvs-srv:exported_items instead.")
  (exported_items m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExporterStats-response>) ostream)
  "Serializes a message object of type '<ExporterStats-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'export_running) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'export_disk_recording) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msg))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'processed_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'processed_time) (cl:floor (cl:slot-value msg 'processed_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reporting_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reporting_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reporting_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reporting_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reported_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reported_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reported_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reported_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reading_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'read_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'writing_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'written_capacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enqueued_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'enqueued_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'enqueued_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'enqueued_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exporting_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exporting_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exporting_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exporting_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exported_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exported_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exported_items)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exported_items)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExporterStats-response>) istream)
  "Deserializes a message object of type '<ExporterStats-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'export_running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'export_disk_recording) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'processed_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reporting_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reporting_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reporting_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reporting_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reported_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reported_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reported_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reported_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reading_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'read_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'writing_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'written_capacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enqueued_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'enqueued_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'enqueued_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'enqueued_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exporting_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exporting_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exporting_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exporting_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exported_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'exported_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'exported_items)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'exported_items)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExporterStats-response>)))
  "Returns string type for a service object of type '<ExporterStats-response>"
  "recorder_srvs/ExporterStatsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExporterStats-response)))
  "Returns string type for a service object of type 'ExporterStats-response"
  "recorder_srvs/ExporterStatsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExporterStats-response>)))
  "Returns md5sum for a message object of type '<ExporterStats-response>"
  "111f10718e56a34dd9ce0e4e2ba876fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExporterStats-response)))
  "Returns md5sum for a message object of type 'ExporterStats-response"
  "111f10718e56a34dd9ce0e4e2ba876fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExporterStats-response>)))
  "Returns full string definition for message of type '<ExporterStats-response>"
  (cl:format cl:nil "bool success~%string message~%bool export_running~%bool export_disk_recording~%string error_msg~%time processed_time~%uint32 reporting_size~%uint32 reported_size~%uint64 reading_capacity~%uint64 read_capacity~%uint64 writing_capacity~%uint64 written_capacity~%uint32 request_items~%uint32 enqueued_items~%uint32 exporting_items~%uint32 exported_items~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExporterStats-response)))
  "Returns full string definition for message of type 'ExporterStats-response"
  (cl:format cl:nil "bool success~%string message~%bool export_running~%bool export_disk_recording~%string error_msg~%time processed_time~%uint32 reporting_size~%uint32 reported_size~%uint64 reading_capacity~%uint64 read_capacity~%uint64 writing_capacity~%uint64 written_capacity~%uint32 request_items~%uint32 enqueued_items~%uint32 exporting_items~%uint32 exported_items~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExporterStats-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
     1
     4 (cl:length (cl:slot-value msg 'error_msg))
     8
     4
     4
     8
     8
     8
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExporterStats-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExporterStats-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':export_running (export_running msg))
    (cl:cons ':export_disk_recording (export_disk_recording msg))
    (cl:cons ':error_msg (error_msg msg))
    (cl:cons ':processed_time (processed_time msg))
    (cl:cons ':reporting_size (reporting_size msg))
    (cl:cons ':reported_size (reported_size msg))
    (cl:cons ':reading_capacity (reading_capacity msg))
    (cl:cons ':read_capacity (read_capacity msg))
    (cl:cons ':writing_capacity (writing_capacity msg))
    (cl:cons ':written_capacity (written_capacity msg))
    (cl:cons ':request_items (request_items msg))
    (cl:cons ':enqueued_items (enqueued_items msg))
    (cl:cons ':exporting_items (exporting_items msg))
    (cl:cons ':exported_items (exported_items msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExporterStats)))
  'ExporterStats-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExporterStats)))
  'ExporterStats-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExporterStats)))
  "Returns string type for a service object of type '<ExporterStats>"
  "recorder_srvs/ExporterStats")