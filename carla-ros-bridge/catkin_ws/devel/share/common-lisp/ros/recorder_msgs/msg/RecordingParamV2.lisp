; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude RecordingParamV2.msg.html

(cl:defclass <RecordingParamV2> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass RecordingParamV2 (<RecordingParamV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordingParamV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordingParamV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<RecordingParamV2> is deprecated: use recorder_msgs-msg:RecordingParamV2 instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <RecordingParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:start-val is deprecated.  Use recorder_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <RecordingParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:topics-val is deprecated.  Use recorder_msgs-msg:topics instead.")
  (topics m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <RecordingParamV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:tags-val is deprecated.  Use recorder_msgs-msg:tags instead.")
  (tags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordingParamV2>) ostream)
  "Serializes a message object of type '<RecordingParamV2>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordingParamV2>) istream)
  "Deserializes a message object of type '<RecordingParamV2>"
    (cl:setf (cl:slot-value msg 'start) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordingParamV2>)))
  "Returns string type for a message object of type '<RecordingParamV2>"
  "recorder_msgs/RecordingParamV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordingParamV2)))
  "Returns string type for a message object of type 'RecordingParamV2"
  "recorder_msgs/RecordingParamV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordingParamV2>)))
  "Returns md5sum for a message object of type '<RecordingParamV2>"
  "bfd74800bf6165fc28e0d4964e255b84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordingParamV2)))
  "Returns md5sum for a message object of type 'RecordingParamV2"
  "bfd74800bf6165fc28e0d4964e255b84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordingParamV2>)))
  "Returns full string definition for message of type '<RecordingParamV2>"
  (cl:format cl:nil "bool start~%string[] topics~%string[] tags~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordingParamV2)))
  "Returns full string definition for message of type 'RecordingParamV2"
  (cl:format cl:nil "bool start~%string[] topics~%string[] tags~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordingParamV2>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordingParamV2>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordingParamV2
    (cl:cons ':start (start msg))
    (cl:cons ':topics (topics msg))
    (cl:cons ':tags (tags msg))
))
