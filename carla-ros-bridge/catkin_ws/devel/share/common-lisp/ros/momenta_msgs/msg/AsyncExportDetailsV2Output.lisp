; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude AsyncExportDetailsV2Output.msg.html

(cl:defclass <AsyncExportDetailsV2Output> (roslisp-msg-protocol:ros-message)
  ((key_num
    :reader key_num
    :initarg :key_num
    :type cl:integer
    :initform 0)
   (service_response
    :reader service_response
    :initarg :service_response
    :type cl:boolean
    :initform cl:nil)
   (success
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

(cl:defclass AsyncExportDetailsV2Output (<AsyncExportDetailsV2Output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsyncExportDetailsV2Output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsyncExportDetailsV2Output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<AsyncExportDetailsV2Output> is deprecated: use momenta_msgs-msg:AsyncExportDetailsV2Output instead.")))

(cl:ensure-generic-function 'key_num-val :lambda-list '(m))
(cl:defmethod key_num-val ((m <AsyncExportDetailsV2Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:key_num-val is deprecated.  Use momenta_msgs-msg:key_num instead.")
  (key_num m))

(cl:ensure-generic-function 'service_response-val :lambda-list '(m))
(cl:defmethod service_response-val ((m <AsyncExportDetailsV2Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:service_response-val is deprecated.  Use momenta_msgs-msg:service_response instead.")
  (service_response m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AsyncExportDetailsV2Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:success-val is deprecated.  Use momenta_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AsyncExportDetailsV2Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:message-val is deprecated.  Use momenta_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'export_jobs-val :lambda-list '(m))
(cl:defmethod export_jobs-val ((m <AsyncExportDetailsV2Output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:export_jobs-val is deprecated.  Use momenta_msgs-msg:export_jobs instead.")
  (export_jobs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsyncExportDetailsV2Output>) ostream)
  "Serializes a message object of type '<AsyncExportDetailsV2Output>"
  (cl:let* ((signed (cl:slot-value msg 'key_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'service_response) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsyncExportDetailsV2Output>) istream)
  "Deserializes a message object of type '<AsyncExportDetailsV2Output>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'service_response) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsyncExportDetailsV2Output>)))
  "Returns string type for a message object of type '<AsyncExportDetailsV2Output>"
  "momenta_msgs/AsyncExportDetailsV2Output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsyncExportDetailsV2Output)))
  "Returns string type for a message object of type 'AsyncExportDetailsV2Output"
  "momenta_msgs/AsyncExportDetailsV2Output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsyncExportDetailsV2Output>)))
  "Returns md5sum for a message object of type '<AsyncExportDetailsV2Output>"
  "55e66f17f259470d222c44e96f547934")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsyncExportDetailsV2Output)))
  "Returns md5sum for a message object of type 'AsyncExportDetailsV2Output"
  "55e66f17f259470d222c44e96f547934")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsyncExportDetailsV2Output>)))
  "Returns full string definition for message of type '<AsyncExportDetailsV2Output>"
  (cl:format cl:nil "int64 key_num~%bool service_response~%bool success~%string message~%recorder_msgs/ExportJobInfoV2[] export_jobs~%~%================================================================================~%MSG: recorder_msgs/ExportJobInfoV2~%int32 sequence~%time stamp~%string collect_type~%string name~%string export_type~%string status~%string reason~%EventParamV2[] event_param~%RecordingParamV2[] recording_param~%FilterParamV2[] filter_param~%================================================================================~%MSG: recorder_msgs/EventParamV2~%bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/RecordingParamV2~%bool start~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/FilterParamV2~%string[] topics~%string[] aliases~%time[] stamps~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsyncExportDetailsV2Output)))
  "Returns full string definition for message of type 'AsyncExportDetailsV2Output"
  (cl:format cl:nil "int64 key_num~%bool service_response~%bool success~%string message~%recorder_msgs/ExportJobInfoV2[] export_jobs~%~%================================================================================~%MSG: recorder_msgs/ExportJobInfoV2~%int32 sequence~%time stamp~%string collect_type~%string name~%string export_type~%string status~%string reason~%EventParamV2[] event_param~%RecordingParamV2[] recording_param~%FilterParamV2[] filter_param~%================================================================================~%MSG: recorder_msgs/EventParamV2~%bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/RecordingParamV2~%bool start~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/FilterParamV2~%string[] topics~%string[] aliases~%time[] stamps~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsyncExportDetailsV2Output>))
  (cl:+ 0
     8
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'export_jobs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsyncExportDetailsV2Output>))
  "Converts a ROS message object to a list"
  (cl:list 'AsyncExportDetailsV2Output
    (cl:cons ':key_num (key_num msg))
    (cl:cons ':service_response (service_response msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':export_jobs (export_jobs msg))
))
