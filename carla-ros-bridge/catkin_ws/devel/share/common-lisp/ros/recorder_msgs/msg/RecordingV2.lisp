; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude RecordingV2.msg.html

(cl:defclass <RecordingV2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (collect_type
    :reader collect_type
    :initarg :collect_type
    :type cl:string
    :initform "")
   (topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (tags
    :reader tags
    :initarg :tags
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (debug_reject
    :reader debug_reject
    :initarg :debug_reject
    :type cl:boolean
    :initform cl:nil)
   (debug_start
    :reader debug_start
    :initarg :debug_start
    :type cl:real
    :initform 0)
   (detail
    :reader detail
    :initarg :detail
    :type cl:string
    :initform ""))
)

(cl:defclass RecordingV2 (<RecordingV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordingV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordingV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<RecordingV2> is deprecated: use recorder_msgs-msg:RecordingV2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:header-val is deprecated.  Use recorder_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:start-val is deprecated.  Use recorder_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:name-val is deprecated.  Use recorder_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'collect_type-val :lambda-list '(m))
(cl:defmethod collect_type-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:collect_type-val is deprecated.  Use recorder_msgs-msg:collect_type instead.")
  (collect_type m))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:topics-val is deprecated.  Use recorder_msgs-msg:topics instead.")
  (topics m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:tags-val is deprecated.  Use recorder_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'debug_reject-val :lambda-list '(m))
(cl:defmethod debug_reject-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:debug_reject-val is deprecated.  Use recorder_msgs-msg:debug_reject instead.")
  (debug_reject m))

(cl:ensure-generic-function 'debug_start-val :lambda-list '(m))
(cl:defmethod debug_start-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:debug_start-val is deprecated.  Use recorder_msgs-msg:debug_start instead.")
  (debug_start m))

(cl:ensure-generic-function 'detail-val :lambda-list '(m))
(cl:defmethod detail-val ((m <RecordingV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:detail-val is deprecated.  Use recorder_msgs-msg:detail instead.")
  (detail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordingV2>) ostream)
  "Serializes a message object of type '<RecordingV2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'collect_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'collect_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
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
   (cl:slot-value msg 'topics))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags))))
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
   (cl:slot-value msg 'tags))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'debug_reject) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'debug_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'debug_start) (cl:floor (cl:slot-value msg 'debug_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detail))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordingV2>) istream)
  "Deserializes a message object of type '<RecordingV2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
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
      (cl:setf (cl:slot-value msg 'collect_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'collect_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
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
  (cl:setf (cl:slot-value msg 'tags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'debug_reject) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'debug_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detail) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordingV2>)))
  "Returns string type for a message object of type '<RecordingV2>"
  "recorder_msgs/RecordingV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordingV2)))
  "Returns string type for a message object of type 'RecordingV2"
  "recorder_msgs/RecordingV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordingV2>)))
  "Returns md5sum for a message object of type '<RecordingV2>"
  "6fc9f062a52a51e5b80226a642201fa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordingV2)))
  "Returns md5sum for a message object of type 'RecordingV2"
  "6fc9f062a52a51e5b80226a642201fa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordingV2>)))
  "Returns full string definition for message of type '<RecordingV2>"
  (cl:format cl:nil "Header header~%bool start~%string name~%string collect_type~%string[] topics~%string[] tags~%bool debug_reject~%time debug_start~%string detail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordingV2)))
  "Returns full string definition for message of type 'RecordingV2"
  (cl:format cl:nil "Header header~%bool start~%string name~%string collect_type~%string[] topics~%string[] tags~%bool debug_reject~%time debug_start~%string detail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordingV2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'collect_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     8
     4 (cl:length (cl:slot-value msg 'detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordingV2>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordingV2
    (cl:cons ':header (header msg))
    (cl:cons ':start (start msg))
    (cl:cons ':name (name msg))
    (cl:cons ':collect_type (collect_type msg))
    (cl:cons ':topics (topics msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':debug_reject (debug_reject msg))
    (cl:cons ':debug_start (debug_start msg))
    (cl:cons ':detail (detail msg))
))
