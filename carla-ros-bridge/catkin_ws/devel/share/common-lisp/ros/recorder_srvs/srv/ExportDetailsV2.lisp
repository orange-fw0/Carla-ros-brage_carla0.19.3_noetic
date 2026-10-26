; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude ExportDetailsV2-request.msg.html

(cl:defclass <ExportDetailsV2-request> (roslisp-msg-protocol:ros-message)
  ((collect_type
    :reader collect_type
    :initarg :collect_type
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (export_type
    :reader export_type
    :initarg :export_type
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (since
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

(cl:defclass ExportDetailsV2-request (<ExportDetailsV2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExportDetailsV2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExportDetailsV2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ExportDetailsV2-request> is deprecated: use recorder_srvs-srv:ExportDetailsV2-request instead.")))

(cl:ensure-generic-function 'collect_type-val :lambda-list '(m))
(cl:defmethod collect_type-val ((m <ExportDetailsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:collect_type-val is deprecated.  Use recorder_srvs-srv:collect_type instead.")
  (collect_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ExportDetailsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:name-val is deprecated.  Use recorder_srvs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'export_type-val :lambda-list '(m))
(cl:defmethod export_type-val ((m <ExportDetailsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:export_type-val is deprecated.  Use recorder_srvs-srv:export_type instead.")
  (export_type m))

(cl:ensure-generic-function 'since-val :lambda-list '(m))
(cl:defmethod since-val ((m <ExportDetailsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:since-val is deprecated.  Use recorder_srvs-srv:since instead.")
  (since m))

(cl:ensure-generic-function 'latest-val :lambda-list '(m))
(cl:defmethod latest-val ((m <ExportDetailsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:latest-val is deprecated.  Use recorder_srvs-srv:latest instead.")
  (latest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExportDetailsV2-request>) ostream)
  "Serializes a message object of type '<ExportDetailsV2-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collect_type))))
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
   (cl:slot-value msg 'collect_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
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
   (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'export_type))))
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
   (cl:slot-value msg 'export_type))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExportDetailsV2-request>) istream)
  "Deserializes a message object of type '<ExportDetailsV2-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collect_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collect_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'export_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'export_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExportDetailsV2-request>)))
  "Returns string type for a service object of type '<ExportDetailsV2-request>"
  "recorder_srvs/ExportDetailsV2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportDetailsV2-request)))
  "Returns string type for a service object of type 'ExportDetailsV2-request"
  "recorder_srvs/ExportDetailsV2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExportDetailsV2-request>)))
  "Returns md5sum for a message object of type '<ExportDetailsV2-request>"
  "441c61fe1814c3573ba3841cff6a03f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExportDetailsV2-request)))
  "Returns md5sum for a message object of type 'ExportDetailsV2-request"
  "441c61fe1814c3573ba3841cff6a03f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExportDetailsV2-request>)))
  "Returns full string definition for message of type '<ExportDetailsV2-request>"
  (cl:format cl:nil "string[] collect_type~%string[] name~%string[] export_type~%time since~%uint32 latest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExportDetailsV2-request)))
  "Returns full string definition for message of type 'ExportDetailsV2-request"
  (cl:format cl:nil "string[] collect_type~%string[] name~%string[] export_type~%time since~%uint32 latest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExportDetailsV2-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collect_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'export_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExportDetailsV2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExportDetailsV2-request
    (cl:cons ':collect_type (collect_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':export_type (export_type msg))
    (cl:cons ':since (since msg))
    (cl:cons ':latest (latest msg))
))
;//! \htmlinclude ExportDetailsV2-response.msg.html

(cl:defclass <ExportDetailsV2-response> (roslisp-msg-protocol:ros-message)
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
    :type (cl:vector recorder_msgs-msg:ExportJobInfoV2)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:ExportJobInfoV2 :initial-element (cl:make-instance 'recorder_msgs-msg:ExportJobInfoV2))))
)

(cl:defclass ExportDetailsV2-response (<ExportDetailsV2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExportDetailsV2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExportDetailsV2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<ExportDetailsV2-response> is deprecated: use recorder_srvs-srv:ExportDetailsV2-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExportDetailsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ExportDetailsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'export_jobs-val :lambda-list '(m))
(cl:defmethod export_jobs-val ((m <ExportDetailsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:export_jobs-val is deprecated.  Use recorder_srvs-srv:export_jobs instead.")
  (export_jobs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExportDetailsV2-response>) ostream)
  "Serializes a message object of type '<ExportDetailsV2-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExportDetailsV2-response>) istream)
  "Deserializes a message object of type '<ExportDetailsV2-response>"
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:ExportJobInfoV2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExportDetailsV2-response>)))
  "Returns string type for a service object of type '<ExportDetailsV2-response>"
  "recorder_srvs/ExportDetailsV2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportDetailsV2-response)))
  "Returns string type for a service object of type 'ExportDetailsV2-response"
  "recorder_srvs/ExportDetailsV2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExportDetailsV2-response>)))
  "Returns md5sum for a message object of type '<ExportDetailsV2-response>"
  "441c61fe1814c3573ba3841cff6a03f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExportDetailsV2-response)))
  "Returns md5sum for a message object of type 'ExportDetailsV2-response"
  "441c61fe1814c3573ba3841cff6a03f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExportDetailsV2-response>)))
  "Returns full string definition for message of type '<ExportDetailsV2-response>"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/ExportJobInfoV2[] export_jobs~%~%================================================================================~%MSG: recorder_msgs/ExportJobInfoV2~%int32 sequence~%time stamp~%string collect_type~%string name~%string export_type~%string status~%string reason~%EventParamV2[] event_param~%RecordingParamV2[] recording_param~%FilterParamV2[] filter_param~%================================================================================~%MSG: recorder_msgs/EventParamV2~%bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/RecordingParamV2~%bool start~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/FilterParamV2~%string[] topics~%string[] aliases~%time[] stamps~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExportDetailsV2-response)))
  "Returns full string definition for message of type 'ExportDetailsV2-response"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/ExportJobInfoV2[] export_jobs~%~%================================================================================~%MSG: recorder_msgs/ExportJobInfoV2~%int32 sequence~%time stamp~%string collect_type~%string name~%string export_type~%string status~%string reason~%EventParamV2[] event_param~%RecordingParamV2[] recording_param~%FilterParamV2[] filter_param~%================================================================================~%MSG: recorder_msgs/EventParamV2~%bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/RecordingParamV2~%bool start~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/FilterParamV2~%string[] topics~%string[] aliases~%time[] stamps~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExportDetailsV2-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'export_jobs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExportDetailsV2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExportDetailsV2-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':export_jobs (export_jobs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExportDetailsV2)))
  'ExportDetailsV2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExportDetailsV2)))
  'ExportDetailsV2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportDetailsV2)))
  "Returns string type for a service object of type '<ExportDetailsV2>"
  "recorder_srvs/ExportDetailsV2")