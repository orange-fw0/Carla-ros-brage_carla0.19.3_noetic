; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude TopicInfo.msg.html

(cl:defclass <TopicInfo> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (topic_date_type
    :reader topic_date_type
    :initarg :topic_date_type
    :type cl:string
    :initform "")
   (topic_message_cnt
    :reader topic_message_cnt
    :initarg :topic_message_cnt
    :type cl:integer
    :initform 0))
)

(cl:defclass TopicInfo (<TopicInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<TopicInfo> is deprecated: use recorder_msgs-msg:TopicInfo instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <TopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:topic_name-val is deprecated.  Use recorder_msgs-msg:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'topic_date_type-val :lambda-list '(m))
(cl:defmethod topic_date_type-val ((m <TopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:topic_date_type-val is deprecated.  Use recorder_msgs-msg:topic_date_type instead.")
  (topic_date_type m))

(cl:ensure-generic-function 'topic_message_cnt-val :lambda-list '(m))
(cl:defmethod topic_message_cnt-val ((m <TopicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:topic_message_cnt-val is deprecated.  Use recorder_msgs-msg:topic_message_cnt instead.")
  (topic_message_cnt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicInfo>) ostream)
  "Serializes a message object of type '<TopicInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_date_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_date_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'topic_message_cnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'topic_message_cnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'topic_message_cnt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'topic_message_cnt)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicInfo>) istream)
  "Deserializes a message object of type '<TopicInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_date_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_date_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'topic_message_cnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'topic_message_cnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'topic_message_cnt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'topic_message_cnt)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicInfo>)))
  "Returns string type for a message object of type '<TopicInfo>"
  "recorder_msgs/TopicInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicInfo)))
  "Returns string type for a message object of type 'TopicInfo"
  "recorder_msgs/TopicInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicInfo>)))
  "Returns md5sum for a message object of type '<TopicInfo>"
  "d57aeca1857eaf16f14c0fc2fcbaf5d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicInfo)))
  "Returns md5sum for a message object of type 'TopicInfo"
  "d57aeca1857eaf16f14c0fc2fcbaf5d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicInfo>)))
  "Returns full string definition for message of type '<TopicInfo>"
  (cl:format cl:nil "string topic_name~%string topic_date_type~%uint32 topic_message_cnt~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicInfo)))
  "Returns full string definition for message of type 'TopicInfo"
  (cl:format cl:nil "string topic_name~%string topic_date_type~%uint32 topic_message_cnt~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     4 (cl:length (cl:slot-value msg 'topic_date_type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicInfo
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':topic_date_type (topic_date_type msg))
    (cl:cons ':topic_message_cnt (topic_message_cnt msg))
))
