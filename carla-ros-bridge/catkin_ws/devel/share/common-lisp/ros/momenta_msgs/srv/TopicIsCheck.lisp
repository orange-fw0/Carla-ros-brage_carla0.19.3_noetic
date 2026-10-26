; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-srv)


;//! \htmlinclude TopicIsCheck-request.msg.html

(cl:defclass <TopicIsCheck-request> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (is_check
    :reader is_check
    :initarg :is_check
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TopicIsCheck-request (<TopicIsCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicIsCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicIsCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<TopicIsCheck-request> is deprecated: use momenta_msgs-srv:TopicIsCheck-request instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <TopicIsCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:topic_name-val is deprecated.  Use momenta_msgs-srv:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'is_check-val :lambda-list '(m))
(cl:defmethod is_check-val ((m <TopicIsCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:is_check-val is deprecated.  Use momenta_msgs-srv:is_check instead.")
  (is_check m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicIsCheck-request>) ostream)
  "Serializes a message object of type '<TopicIsCheck-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_check) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicIsCheck-request>) istream)
  "Deserializes a message object of type '<TopicIsCheck-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_check) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicIsCheck-request>)))
  "Returns string type for a service object of type '<TopicIsCheck-request>"
  "momenta_msgs/TopicIsCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicIsCheck-request)))
  "Returns string type for a service object of type 'TopicIsCheck-request"
  "momenta_msgs/TopicIsCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicIsCheck-request>)))
  "Returns md5sum for a message object of type '<TopicIsCheck-request>"
  "908ae21036f996586c2f824d2c3764ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicIsCheck-request)))
  "Returns md5sum for a message object of type 'TopicIsCheck-request"
  "908ae21036f996586c2f824d2c3764ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicIsCheck-request>)))
  "Returns full string definition for message of type '<TopicIsCheck-request>"
  (cl:format cl:nil "string topic_name~%bool is_check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicIsCheck-request)))
  "Returns full string definition for message of type 'TopicIsCheck-request"
  (cl:format cl:nil "string topic_name~%bool is_check~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicIsCheck-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicIsCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicIsCheck-request
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':is_check (is_check msg))
))
;//! \htmlinclude TopicIsCheck-response.msg.html

(cl:defclass <TopicIsCheck-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TopicIsCheck-response (<TopicIsCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicIsCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicIsCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-srv:<TopicIsCheck-response> is deprecated: use momenta_msgs-srv:TopicIsCheck-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TopicIsCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-srv:success-val is deprecated.  Use momenta_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicIsCheck-response>) ostream)
  "Serializes a message object of type '<TopicIsCheck-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicIsCheck-response>) istream)
  "Deserializes a message object of type '<TopicIsCheck-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicIsCheck-response>)))
  "Returns string type for a service object of type '<TopicIsCheck-response>"
  "momenta_msgs/TopicIsCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicIsCheck-response)))
  "Returns string type for a service object of type 'TopicIsCheck-response"
  "momenta_msgs/TopicIsCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicIsCheck-response>)))
  "Returns md5sum for a message object of type '<TopicIsCheck-response>"
  "908ae21036f996586c2f824d2c3764ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicIsCheck-response)))
  "Returns md5sum for a message object of type 'TopicIsCheck-response"
  "908ae21036f996586c2f824d2c3764ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicIsCheck-response>)))
  "Returns full string definition for message of type '<TopicIsCheck-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicIsCheck-response)))
  "Returns full string definition for message of type 'TopicIsCheck-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicIsCheck-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicIsCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicIsCheck-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TopicIsCheck)))
  'TopicIsCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TopicIsCheck)))
  'TopicIsCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicIsCheck)))
  "Returns string type for a service object of type '<TopicIsCheck>"
  "momenta_msgs/TopicIsCheck")