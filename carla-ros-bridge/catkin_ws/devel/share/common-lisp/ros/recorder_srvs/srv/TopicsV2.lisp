; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude TopicsV2-request.msg.html

(cl:defclass <TopicsV2-request> (roslisp-msg-protocol:ros-message)
  ((set
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

(cl:defclass TopicsV2-request (<TopicsV2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicsV2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicsV2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<TopicsV2-request> is deprecated: use recorder_srvs-srv:TopicsV2-request instead.")))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <TopicsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:set-val is deprecated.  Use recorder_srvs-srv:set instead.")
  (set m))

(cl:ensure-generic-function 'image_topic_list-val :lambda-list '(m))
(cl:defmethod image_topic_list-val ((m <TopicsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:image_topic_list-val is deprecated.  Use recorder_srvs-srv:image_topic_list instead.")
  (image_topic_list m))

(cl:ensure-generic-function 'non_image_topic_list-val :lambda-list '(m))
(cl:defmethod non_image_topic_list-val ((m <TopicsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:non_image_topic_list-val is deprecated.  Use recorder_srvs-srv:non_image_topic_list instead.")
  (non_image_topic_list m))

(cl:ensure-generic-function 'latched_topic_list-val :lambda-list '(m))
(cl:defmethod latched_topic_list-val ((m <TopicsV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:latched_topic_list-val is deprecated.  Use recorder_srvs-srv:latched_topic_list instead.")
  (latched_topic_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicsV2-request>) ostream)
  "Serializes a message object of type '<TopicsV2-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicsV2-request>) istream)
  "Deserializes a message object of type '<TopicsV2-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicsV2-request>)))
  "Returns string type for a service object of type '<TopicsV2-request>"
  "recorder_srvs/TopicsV2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicsV2-request)))
  "Returns string type for a service object of type 'TopicsV2-request"
  "recorder_srvs/TopicsV2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicsV2-request>)))
  "Returns md5sum for a message object of type '<TopicsV2-request>"
  "286ac081385c5ace40f429d151709f9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicsV2-request)))
  "Returns md5sum for a message object of type 'TopicsV2-request"
  "286ac081385c5ace40f429d151709f9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicsV2-request>)))
  "Returns full string definition for message of type '<TopicsV2-request>"
  (cl:format cl:nil "bool set~%recorder_msgs/ImageTopicConfig[] image_topic_list~%string[] non_image_topic_list~%string[] latched_topic_list~%~%================================================================================~%MSG: recorder_msgs/ImageTopicConfig~%string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicsV2-request)))
  "Returns full string definition for message of type 'TopicsV2-request"
  (cl:format cl:nil "bool set~%recorder_msgs/ImageTopicConfig[] image_topic_list~%string[] non_image_topic_list~%string[] latched_topic_list~%~%================================================================================~%MSG: recorder_msgs/ImageTopicConfig~%string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicsV2-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'non_image_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'latched_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicsV2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicsV2-request
    (cl:cons ':set (set msg))
    (cl:cons ':image_topic_list (image_topic_list msg))
    (cl:cons ':non_image_topic_list (non_image_topic_list msg))
    (cl:cons ':latched_topic_list (latched_topic_list msg))
))
;//! \htmlinclude TopicsV2-response.msg.html

(cl:defclass <TopicsV2-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TopicsV2-response (<TopicsV2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicsV2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicsV2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<TopicsV2-response> is deprecated: use recorder_srvs-srv:TopicsV2-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TopicsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TopicsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'image_topic_list-val :lambda-list '(m))
(cl:defmethod image_topic_list-val ((m <TopicsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:image_topic_list-val is deprecated.  Use recorder_srvs-srv:image_topic_list instead.")
  (image_topic_list m))

(cl:ensure-generic-function 'non_image_topic_list-val :lambda-list '(m))
(cl:defmethod non_image_topic_list-val ((m <TopicsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:non_image_topic_list-val is deprecated.  Use recorder_srvs-srv:non_image_topic_list instead.")
  (non_image_topic_list m))

(cl:ensure-generic-function 'latched_topic_list-val :lambda-list '(m))
(cl:defmethod latched_topic_list-val ((m <TopicsV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:latched_topic_list-val is deprecated.  Use recorder_srvs-srv:latched_topic_list instead.")
  (latched_topic_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicsV2-response>) ostream)
  "Serializes a message object of type '<TopicsV2-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicsV2-response>) istream)
  "Deserializes a message object of type '<TopicsV2-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicsV2-response>)))
  "Returns string type for a service object of type '<TopicsV2-response>"
  "recorder_srvs/TopicsV2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicsV2-response)))
  "Returns string type for a service object of type 'TopicsV2-response"
  "recorder_srvs/TopicsV2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicsV2-response>)))
  "Returns md5sum for a message object of type '<TopicsV2-response>"
  "286ac081385c5ace40f429d151709f9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicsV2-response)))
  "Returns md5sum for a message object of type 'TopicsV2-response"
  "286ac081385c5ace40f429d151709f9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicsV2-response>)))
  "Returns full string definition for message of type '<TopicsV2-response>"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/ImageTopicConfig[] image_topic_list~%string[] non_image_topic_list~%string[] latched_topic_list~%~%~%================================================================================~%MSG: recorder_msgs/ImageTopicConfig~%string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicsV2-response)))
  "Returns full string definition for message of type 'TopicsV2-response"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/ImageTopicConfig[] image_topic_list~%string[] non_image_topic_list~%string[] latched_topic_list~%~%~%================================================================================~%MSG: recorder_msgs/ImageTopicConfig~%string[] base_topics~%string in_transport~%string in_suffix~%string out_transport~%string out_suffix~%string out_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicsV2-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'non_image_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'latched_topic_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicsV2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicsV2-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':image_topic_list (image_topic_list msg))
    (cl:cons ':non_image_topic_list (non_image_topic_list msg))
    (cl:cons ':latched_topic_list (latched_topic_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TopicsV2)))
  'TopicsV2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TopicsV2)))
  'TopicsV2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicsV2)))
  "Returns string type for a service object of type '<TopicsV2>"
  "recorder_srvs/TopicsV2")