; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude AsyncTopicsV2Input.msg.html

(cl:defclass <AsyncTopicsV2Input> (roslisp-msg-protocol:ros-message)
  ((key_num
    :reader key_num
    :initarg :key_num
    :type cl:integer
    :initform 0)
   (set
    :reader set
    :initarg :set
    :type cl:boolean
    :initform cl:nil)
   (image_topic_list
    :reader image_topic_list
    :initarg :image_topic_list
    :type (cl:vector recorder_msgs-msg:ImageTopicConfig)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:ImageTopicConfig :initial-element (cl:make-instance 'recorder_msgs-msg:ImageTopicConfig)))
   (non_image_topic_list
    :reader non_image_topic_list
    :initarg :non_image_topic_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (latched_topic_list
    :reader latched_topic_list
    :initarg :latched_topic_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass AsyncTopicsV2Input (<AsyncTopicsV2Input>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsyncTopicsV2Input>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsyncTopicsV2Input)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<AsyncTopicsV2Input> is deprecated: use momenta_msgs-msg:AsyncTopicsV2Input instead.")))

(cl:ensure-generic-function 'key_num-val :lambda-list '(m))
(cl:defmethod key_num-val ((m <AsyncTopicsV2Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:key_num-val is deprecated.  Use momenta_msgs-msg:key_num instead.")
  (key_num m))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <AsyncTopicsV2Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:set-val is deprecated.  Use momenta_msgs-msg:set instead.")
  (set m))

(cl:ensure-generic-function 'image_topic_list-val :lambda-list '(m))
(cl:defmethod image_topic_list-val ((m <AsyncTopicsV2Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:image_topic_list-val is deprecated.  Use momenta_msgs-msg:image_topic_list instead.")
  (image_topic_list m))

(cl:ensure-generic-function 'non_image_topic_list-val :lambda-list '(m))
(cl:defmethod non_image_topic_list-val ((m <AsyncTopicsV2Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:non_image_topic_list-val is deprecated.  Use momenta_msgs-msg:non_image_topic_list instead.")
  (non_image_topic_list m))

(cl:ensure-generic-function 'latched_topic_list-val :lambda-list '(m))
(cl:defmethod latched_topic_list-val ((m <AsyncTopicsV2Input>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:latched_topic_list-val is deprecated.  Use momenta_msgs-msg:latched_topic_list instead.")
  (latched_topic_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsyncTopicsV2Input>) ostream)
  "Serializes a message object of type '<AsyncTopicsV2Input>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_topic_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_topic_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'non_image_topic_list))))
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
   (cl:slot-value msg 'non_image_topic_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'latched_topic_list))))
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
   (cl:slot-value msg 'latched_topic_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsyncTopicsV2Input>) istream)
  "Deserializes a message object of type '<AsyncTopicsV2Input>"
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
    (cl:setf (cl:slot-value msg 'set) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_topic_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_topic_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:ImageTopicConfig))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'non_image_topic_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'non_image_topic_list)))
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
  (cl:setf (cl:slot-value msg 'latched_topic_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'latched_topic_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsyncTopicsV2Input>)))
  "Returns string type for a message object of type '<AsyncTopicsV2Input>"
  "momenta_msgs/AsyncTopicsV2Input")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsyncTopicsV2Input)))
  "Returns string type for a message object of type 'AsyncTopicsV2Input"
  "momenta_msgs/AsyncTopicsV2Input")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsyncTopicsV2Input>)))
  "Returns md5sum for a message object of type '<AsyncTopicsV2Input>"
  "2928b7c350f80865de159b07208c98ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsyncTopicsV2Input)))
  "Returns md5sum for a message object of type 'AsyncTopicsV2Input"
  "2928b7c350f80865de159b07208c98ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsyncTopicsV2Input>)))
  "Returns full string definition for message of type '<AsyncTopicsV2Input>"
  (cl:format cl:nil "int64 key_num~%bool set~%recorder_msgs/ImageTopicConfig[] image_topic_list~%string[] non_image_topic_list~%string[] latched_topic_list~%~%================================================================================~%MSG: recorder_msgs/ImageTopicConfig~%string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsyncTopicsV2Input)))
  "Returns full string definition for message of type 'AsyncTopicsV2Input"
  (cl:format cl:nil "int64 key_num~%bool set~%recorder_msgs/ImageTopicConfig[] image_topic_list~%string[] non_image_topic_list~%string[] latched_topic_list~%~%================================================================================~%MSG: recorder_msgs/ImageTopicConfig~%string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsyncTopicsV2Input>))
  (cl:+ 0
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'non_image_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'latched_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsyncTopicsV2Input>))
  "Converts a ROS message object to a list"
  (cl:list 'AsyncTopicsV2Input
    (cl:cons ':key_num (key_num msg))
    (cl:cons ':set (set msg))
    (cl:cons ':image_topic_list (image_topic_list msg))
    (cl:cons ':non_image_topic_list (non_image_topic_list msg))
    (cl:cons ':latched_topic_list (latched_topic_list msg))
))
