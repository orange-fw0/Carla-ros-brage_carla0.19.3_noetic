; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude ExportDetails-request.msg.html

(cl:defclass <ExportDetails-request> (roslisp-msg-protocol:ros-message)
  ((since
    :reader since
    :initarg :since
    :type cl:real
    :initform 0)
   (latest
    :reader latest
    :initarg :latest
    :type cl:integer
    :initform 0))
)

(cl:defclass ExportDetails-request (<ExportDetails-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExportDetails-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExportDetails-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ExportDetails-request> is deprecated: use recorder_srvs-srv:ExportDetails-request instead.")))

(cl:ensure-generic-function 'since-val :lambda-list '(m))
(cl:defmethod since-val ((m <ExportDetails-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:since-val is deprecated.  Use recorder_srvs-srv:since instead.")
  (since m))

(cl:ensure-generic-function 'latest-val :lambda-list '(m))
(cl:defmethod latest-val ((m <ExportDetails-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:latest-val is deprecated.  Use recorder_srvs-srv:latest instead.")
  (latest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExportDetails-request>) ostream)
  "Serializes a message object of type '<ExportDetails-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'since)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'since) (cl:floor (cl:slot-value msg 'since)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'latest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'latest)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExportDetails-request>) istream)
  "Deserializes a message object of type '<ExportDetails-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'since) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'latest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'latest)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExportDetails-request>)))
  "Returns string type for a service object of type '<ExportDetails-request>"
  "recorder_srvs/ExportDetailsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportDetails-request)))
  "Returns string type for a service object of type 'ExportDetails-request"
  "recorder_srvs/ExportDetailsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExportDetails-request>)))
  "Returns md5sum for a message object of type '<ExportDetails-request>"
  "b5312a6f562c0a005af6a6b1c14fb760")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExportDetails-request)))
  "Returns md5sum for a message object of type 'ExportDetails-request"
  "b5312a6f562c0a005af6a6b1c14fb760")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExportDetails-request>)))
  "Returns full string definition for message of type '<ExportDetails-request>"
  (cl:format cl:nil "time since~%uint32 latest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExportDetails-request)))
  "Returns full string definition for message of type 'ExportDetails-request"
  (cl:format cl:nil "time since~%uint32 latest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExportDetails-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExportDetails-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExportDetails-request
    (cl:cons ':since (since msg))
    (cl:cons ':latest (latest msg))
))
;//! \htmlinclude ExportDetails-response.msg.html

(cl:defclass <ExportDetails-response> (roslisp-msg-protocol:ros-message)
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
   (export_jobs
    :reader export_jobs
    :initarg :export_jobs
    :type (cl:vector recorder_msgs-msg:ExportJobInfo)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:ExportJobInfo :initial-element (cl:make-instance 'recorder_msgs-msg:ExportJobInfo))))
)

(cl:defclass ExportDetails-response (<ExportDetails-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExportDetails-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExportDetails-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ExportDetails-response> is deprecated: use recorder_srvs-srv:ExportDetails-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExportDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ExportDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'export_jobs-val :lambda-list '(m))
(cl:defmethod export_jobs-val ((m <ExportDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:export_jobs-val is deprecated.  Use recorder_srvs-srv:export_jobs instead.")
  (export_jobs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExportDetails-response>) ostream)
  "Serializes a message object of type '<ExportDetails-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'export_jobs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'export_jobs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExportDetails-response>) istream)
  "Deserializes a message object of type '<ExportDetails-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'export_jobs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'export_jobs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:ExportJobInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExportDetails-response>)))
  "Returns string type for a service object of type '<ExportDetails-response>"
  "recorder_srvs/ExportDetailsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportDetails-response)))
  "Returns string type for a service object of type 'ExportDetails-response"
  "recorder_srvs/ExportDetailsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExportDetails-response>)))
  "Returns md5sum for a message object of type '<ExportDetails-response>"
  "b5312a6f562c0a005af6a6b1c14fb760")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExportDetails-response)))
  "Returns md5sum for a message object of type 'ExportDetails-response"
  "b5312a6f562c0a005af6a6b1c14fb760")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExportDetails-response>)))
  "Returns full string definition for message of type '<ExportDetails-response>"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/ExportJobInfo[] export_jobs~%~%================================================================================~%MSG: recorder_msgs/ExportJobInfo~%time stamp~%string type~%string status~%string name~%BagInfo[] bag_info~%~%================================================================================~%MSG: recorder_msgs/BagInfo~%uint32 index~%string filename~%float64 start_time~%float64 end_time~%uint64 size~%uint32 message_cnt~%string[] topic_name~%string[] topic_date_type~%uint32[] topic_message_cnt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExportDetails-response)))
  "Returns full string definition for message of type 'ExportDetails-response"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/ExportJobInfo[] export_jobs~%~%================================================================================~%MSG: recorder_msgs/ExportJobInfo~%time stamp~%string type~%string status~%string name~%BagInfo[] bag_info~%~%================================================================================~%MSG: recorder_msgs/BagInfo~%uint32 index~%string filename~%float64 start_time~%float64 end_time~%uint64 size~%uint32 message_cnt~%string[] topic_name~%string[] topic_date_type~%uint32[] topic_message_cnt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExportDetails-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'export_jobs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExportDetails-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExportDetails-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':export_jobs (export_jobs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExportDetails)))
  'ExportDetails-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExportDetails)))
  'ExportDetails-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportDetails)))
  "Returns string type for a service object of type '<ExportDetails>"
  "recorder_srvs/ExportDetails")