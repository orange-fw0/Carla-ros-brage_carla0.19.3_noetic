; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude ExportJobInfoV2.msg.html

(cl:defclass <ExportJobInfoV2> (roslisp-msg-protocol:ros-message)
  ((sequence
    :reader sequence
    :initarg :sequence
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (collect_type
    :reader collect_type
    :initarg :collect_type
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (export_type
    :reader export_type
    :initarg :export_type
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (reason
    :reader reason
    :initarg :reason
    :type cl:string
    :initform "")
   (event_param
    :reader event_param
    :initarg :event_param
    :type (cl:vector recorder_msgs-msg:EventParamV2)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:EventParamV2 :initial-element (cl:make-instance 'recorder_msgs-msg:EventParamV2)))
   (recording_param
    :reader recording_param
    :initarg :recording_param
    :type (cl:vector recorder_msgs-msg:RecordingParamV2)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:RecordingParamV2 :initial-element (cl:make-instance 'recorder_msgs-msg:RecordingParamV2)))
   (filter_param
    :reader filter_param
    :initarg :filter_param
    :type (cl:vector recorder_msgs-msg:FilterParamV2)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:FilterParamV2 :initial-element (cl:make-instance 'recorder_msgs-msg:FilterParamV2))))
)

(cl:defclass ExportJobInfoV2 (<ExportJobInfoV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExportJobInfoV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExportJobInfoV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<ExportJobInfoV2> is deprecated: use recorder_msgs-msg:ExportJobInfoV2 instead.")))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:sequence-val is deprecated.  Use recorder_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:stamp-val is deprecated.  Use recorder_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'collect_type-val :lambda-list '(m))
(cl:defmethod collect_type-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:collect_type-val is deprecated.  Use recorder_msgs-msg:collect_type instead.")
  (collect_type m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:name-val is deprecated.  Use recorder_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'export_type-val :lambda-list '(m))
(cl:defmethod export_type-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:export_type-val is deprecated.  Use recorder_msgs-msg:export_type instead.")
  (export_type m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:status-val is deprecated.  Use recorder_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:reason-val is deprecated.  Use recorder_msgs-msg:reason instead.")
  (reason m))

(cl:ensure-generic-function 'event_param-val :lambda-list '(m))
(cl:defmethod event_param-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:event_param-val is deprecated.  Use recorder_msgs-msg:event_param instead.")
  (event_param m))

(cl:ensure-generic-function 'recording_param-val :lambda-list '(m))
(cl:defmethod recording_param-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:recording_param-val is deprecated.  Use recorder_msgs-msg:recording_param instead.")
  (recording_param m))

(cl:ensure-generic-function 'filter_param-val :lambda-list '(m))
(cl:defmethod filter_param-val ((m <ExportJobInfoV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:filter_param-val is deprecated.  Use recorder_msgs-msg:filter_param instead.")
  (filter_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExportJobInfoV2>) ostream)
  "Serializes a message object of type '<ExportJobInfoV2>"
  (cl:let* ((signed (cl:slot-value msg 'sequence)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collect_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collect_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'export_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'export_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reason))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'event_param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'event_param))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recording_param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'recording_param))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'filter_param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'filter_param))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExportJobInfoV2>) istream)
  "Deserializes a message object of type '<ExportJobInfoV2>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collect_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collect_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'export_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'export_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'event_param) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'event_param)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:EventParamV2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recording_param) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recording_param)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:RecordingParamV2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'filter_param) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'filter_param)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:FilterParamV2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExportJobInfoV2>)))
  "Returns string type for a message object of type '<ExportJobInfoV2>"
  "recorder_msgs/ExportJobInfoV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportJobInfoV2)))
  "Returns string type for a message object of type 'ExportJobInfoV2"
  "recorder_msgs/ExportJobInfoV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExportJobInfoV2>)))
  "Returns md5sum for a message object of type '<ExportJobInfoV2>"
  "8ca7ac9c5f53979466ccbe47da2a8b4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExportJobInfoV2)))
  "Returns md5sum for a message object of type 'ExportJobInfoV2"
  "8ca7ac9c5f53979466ccbe47da2a8b4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExportJobInfoV2>)))
  "Returns full string definition for message of type '<ExportJobInfoV2>"
  (cl:format cl:nil "int32 sequence~%time stamp~%string collect_type~%string name~%string export_type~%string status~%string reason~%EventParamV2[] event_param~%RecordingParamV2[] recording_param~%FilterParamV2[] filter_param~%================================================================================~%MSG: recorder_msgs/EventParamV2~%bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/RecordingParamV2~%bool start~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/FilterParamV2~%string[] topics~%string[] aliases~%time[] stamps~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExportJobInfoV2)))
  "Returns full string definition for message of type 'ExportJobInfoV2"
  (cl:format cl:nil "int32 sequence~%time stamp~%string collect_type~%string name~%string export_type~%string status~%string reason~%EventParamV2[] event_param~%RecordingParamV2[] recording_param~%FilterParamV2[] filter_param~%================================================================================~%MSG: recorder_msgs/EventParamV2~%bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/RecordingParamV2~%bool start~%string[] topics~%string[] tags~%================================================================================~%MSG: recorder_msgs/FilterParamV2~%string[] topics~%string[] aliases~%time[] stamps~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExportJobInfoV2>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'collect_type))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'export_type))
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'reason))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'event_param) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recording_param) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'filter_param) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExportJobInfoV2>))
  "Converts a ROS message object to a list"
  (cl:list 'ExportJobInfoV2
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':collect_type (collect_type msg))
    (cl:cons ':name (name msg))
    (cl:cons ':export_type (export_type msg))
    (cl:cons ':status (status msg))
    (cl:cons ':reason (reason msg))
    (cl:cons ':event_param (event_param msg))
    (cl:cons ':recording_param (recording_param msg))
    (cl:cons ':filter_param (filter_param msg))
))
