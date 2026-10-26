; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude ImageTopicConfig.msg.html

(cl:defclass <ImageTopicConfig> (roslisp-msg-protocol:ros-message)
  ((base_topics
    :reader base_topics
    :initarg :base_topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (in_transport
    :reader in_transport
    :initarg :in_transport
    :type cl:string
    :initform "")
   (in_suffix
    :reader in_suffix
    :initarg :in_suffix
    :type cl:string
    :initform "")
   (out_transport
    :reader out_transport
    :initarg :out_transport
    :type cl:string
    :initform "")
   (out_suffix
    :reader out_suffix
    :initarg :out_suffix
    :type cl:string
    :initform "")
   (out_params
    :reader out_params
    :initarg :out_params
    :type cl:string
    :initform ""))
)

(cl:defclass ImageTopicConfig (<ImageTopicConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageTopicConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageTopicConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<ImageTopicConfig> is deprecated: use recorder_msgs-msg:ImageTopicConfig instead.")))

(cl:ensure-generic-function 'base_topics-val :lambda-list '(m))
(cl:defmethod base_topics-val ((m <ImageTopicConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:base_topics-val is deprecated.  Use recorder_msgs-msg:base_topics instead.")
  (base_topics m))

(cl:ensure-generic-function 'in_transport-val :lambda-list '(m))
(cl:defmethod in_transport-val ((m <ImageTopicConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:in_transport-val is deprecated.  Use recorder_msgs-msg:in_transport instead.")
  (in_transport m))

(cl:ensure-generic-function 'in_suffix-val :lambda-list '(m))
(cl:defmethod in_suffix-val ((m <ImageTopicConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:in_suffix-val is deprecated.  Use recorder_msgs-msg:in_suffix instead.")
  (in_suffix m))

(cl:ensure-generic-function 'out_transport-val :lambda-list '(m))
(cl:defmethod out_transport-val ((m <ImageTopicConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:out_transport-val is deprecated.  Use recorder_msgs-msg:out_transport instead.")
  (out_transport m))

(cl:ensure-generic-function 'out_suffix-val :lambda-list '(m))
(cl:defmethod out_suffix-val ((m <ImageTopicConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:out_suffix-val is deprecated.  Use recorder_msgs-msg:out_suffix instead.")
  (out_suffix m))

(cl:ensure-generic-function 'out_params-val :lambda-list '(m))
(cl:defmethod out_params-val ((m <ImageTopicConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:out_params-val is deprecated.  Use recorder_msgs-msg:out_params instead.")
  (out_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageTopicConfig>) ostream)
  "Serializes a message object of type '<ImageTopicConfig>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'base_topics))))
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
   (cl:slot-value msg 'base_topics))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'in_transport))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'in_transport))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'in_suffix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'in_suffix))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'out_transport))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'out_transport))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'out_suffix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'out_suffix))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'out_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'out_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageTopicConfig>) istream)
  "Deserializes a message object of type '<ImageTopicConfig>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'base_topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'base_topics)))
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
      (cl:setf (cl:slot-value msg 'in_transport) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'in_transport) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'in_suffix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'in_suffix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'out_transport) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'out_transport) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'out_suffix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'out_suffix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'out_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'out_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageTopicConfig>)))
  "Returns string type for a message object of type '<ImageTopicConfig>"
  "recorder_msgs/ImageTopicConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageTopicConfig)))
  "Returns string type for a message object of type 'ImageTopicConfig"
  "recorder_msgs/ImageTopicConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageTopicConfig>)))
  "Returns md5sum for a message object of type '<ImageTopicConfig>"
  "012b848787541c6ee8f6c96e1e8a1d52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageTopicConfig)))
  "Returns md5sum for a message object of type 'ImageTopicConfig"
  "012b848787541c6ee8f6c96e1e8a1d52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageTopicConfig>)))
  "Returns full string definition for message of type '<ImageTopicConfig>"
  (cl:format cl:nil "string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageTopicConfig)))
  "Returns full string definition for message of type 'ImageTopicConfig"
  (cl:format cl:nil "string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageTopicConfig>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'base_topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'in_transport))
     4 (cl:length (cl:slot-value msg 'in_suffix))
     4 (cl:length (cl:slot-value msg 'out_transport))
     4 (cl:length (cl:slot-value msg 'out_suffix))
     4 (cl:length (cl:slot-value msg 'out_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageTopicConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageTopicConfig
    (cl:cons ':base_topics (base_topics msg))
    (cl:cons ':in_transport (in_transport msg))
    (cl:cons ':in_suffix (in_suffix msg))
    (cl:cons ':out_transport (out_transport msg))
    (cl:cons ':out_suffix (out_suffix msg))
    (cl:cons ':out_params (out_params msg))
))
