; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude ExportJobInfo.msg.html

(cl:defclass <ExportJobInfo> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (bag_info
    :reader bag_info
    :initarg :bag_info
    :type (cl:vector recorder_msgs-msg:BagInfo)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:BagInfo :initial-element (cl:make-instance 'recorder_msgs-msg:BagInfo))))
)

(cl:defclass ExportJobInfo (<ExportJobInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExportJobInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExportJobInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<ExportJobInfo> is deprecated: use recorder_msgs-msg:ExportJobInfo instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ExportJobInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:stamp-val is deprecated.  Use recorder_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ExportJobInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:type-val is deprecated.  Use recorder_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ExportJobInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:status-val is deprecated.  Use recorder_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ExportJobInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:name-val is deprecated.  Use recorder_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'bag_info-val :lambda-list '(m))
(cl:defmethod bag_info-val ((m <ExportJobInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:bag_info-val is deprecated.  Use recorder_msgs-msg:bag_info instead.")
  (bag_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExportJobInfo>) ostream)
  "Serializes a message object of type '<ExportJobInfo>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bag_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bag_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExportJobInfo>) istream)
  "Deserializes a message object of type '<ExportJobInfo>"
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
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bag_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bag_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:BagInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExportJobInfo>)))
  "Returns string type for a message object of type '<ExportJobInfo>"
  "recorder_msgs/ExportJobInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExportJobInfo)))
  "Returns string type for a message object of type 'ExportJobInfo"
  "recorder_msgs/ExportJobInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExportJobInfo>)))
  "Returns md5sum for a message object of type '<ExportJobInfo>"
  "326e53405a4a51fbf22218e373082fa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExportJobInfo)))
  "Returns md5sum for a message object of type 'ExportJobInfo"
  "326e53405a4a51fbf22218e373082fa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExportJobInfo>)))
  "Returns full string definition for message of type '<ExportJobInfo>"
  (cl:format cl:nil "time stamp~%string type~%string status~%string name~%BagInfo[] bag_info~%~%================================================================================~%MSG: recorder_msgs/BagInfo~%uint32 index~%string filename~%float64 start_time~%float64 end_time~%uint64 size~%uint32 message_cnt~%string[] topic_name~%string[] topic_date_type~%uint32[] topic_message_cnt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExportJobInfo)))
  "Returns full string definition for message of type 'ExportJobInfo"
  (cl:format cl:nil "time stamp~%string type~%string status~%string name~%BagInfo[] bag_info~%~%================================================================================~%MSG: recorder_msgs/BagInfo~%uint32 index~%string filename~%float64 start_time~%float64 end_time~%uint64 size~%uint32 message_cnt~%string[] topic_name~%string[] topic_date_type~%uint32[] topic_message_cnt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExportJobInfo>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bag_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExportJobInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ExportJobInfo
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':type (type msg))
    (cl:cons ':status (status msg))
    (cl:cons ':name (name msg))
    (cl:cons ':bag_info (bag_info msg))
))
