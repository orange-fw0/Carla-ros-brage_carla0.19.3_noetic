; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude EventParamV2.msg.html

(cl:defclass <EventParamV2> (roslisp-msg-protocol:ros-message)
  ((sticky
    :reader sticky
    :initarg :sticky
    :type cl:boolean
    :initform cl:nil)
   (before
    :reader before
    :initarg :before
    :type cl:real
    :initform 0)
   (after
    :reader after
    :initarg :after
    :type cl:real
    :initform 0)
   (topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (tags
    :reader tags
    :initarg :tags
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass EventParamV2 (<EventParamV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventParamV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventParamV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<EventParamV2> is deprecated: use recorder_msgs-msg:EventParamV2 instead.")))

(cl:ensure-generic-function 'sticky-val :lambda-list '(m))
(cl:defmethod sticky-val ((m <EventParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:sticky-val is deprecated.  Use recorder_msgs-msg:sticky instead.")
  (sticky m))

(cl:ensure-generic-function 'before-val :lambda-list '(m))
(cl:defmethod before-val ((m <EventParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:before-val is deprecated.  Use recorder_msgs-msg:before instead.")
  (before m))

(cl:ensure-generic-function 'after-val :lambda-list '(m))
(cl:defmethod after-val ((m <EventParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:after-val is deprecated.  Use recorder_msgs-msg:after instead.")
  (after m))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <EventParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:topics-val is deprecated.  Use recorder_msgs-msg:topics instead.")
  (topics m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <EventParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:tags-val is deprecated.  Use recorder_msgs-msg:tags instead.")
  (tags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventParamV2>) ostream)
  "Serializes a message object of type '<EventParamV2>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sticky) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'before)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'before) (cl:floor (cl:slot-value msg 'before)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'after)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'after) (cl:floor (cl:slot-value msg 'after)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventParamV2>) istream)
  "Deserializes a message object of type '<EventParamV2>"
    (cl:setf (cl:slot-value msg 'sticky) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'before) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'after) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventParamV2>)))
  "Returns string type for a message object of type '<EventParamV2>"
  "recorder_msgs/EventParamV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventParamV2)))
  "Returns string type for a message object of type 'EventParamV2"
  "recorder_msgs/EventParamV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventParamV2>)))
  "Returns md5sum for a message object of type '<EventParamV2>"
  "4e586290b71dcaddce3425d17e7715b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventParamV2)))
  "Returns md5sum for a message object of type 'EventParamV2"
  "4e586290b71dcaddce3425d17e7715b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventParamV2>)))
  "Returns full string definition for message of type '<EventParamV2>"
  (cl:format cl:nil "bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventParamV2)))
  "Returns full string definition for message of type 'EventParamV2"
  (cl:format cl:nil "bool sticky~%duration before~%duration after~%string[] topics~%string[] tags~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventParamV2>))
  (cl:+ 0
     1
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventParamV2>))
  "Converts a ROS message object to a list"
  (cl:list 'EventParamV2
    (cl:cons ':sticky (sticky msg))
    (cl:cons ':before (before msg))
    (cl:cons ':after (after msg))
    (cl:cons ':topics (topics msg))
    (cl:cons ':tags (tags msg))
))
