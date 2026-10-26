; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude CacheBagDetails-request.msg.html

(cl:defclass <CacheBagDetails-request> (roslisp-msg-protocol:ros-message)
  ((since
    :reader since
    :initarg :since
    :type cl:real
    :initform 0)
   (until
    :reader until
    :initarg :until
    :type cl:real
    :initform 0))
)

(cl:defclass CacheBagDetails-request (<CacheBagDetails-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CacheBagDetails-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CacheBagDetails-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<CacheBagDetails-request> is deprecated: use recorder_srvs-srv:CacheBagDetails-request instead.")))

(cl:ensure-generic-function 'since-val :lambda-list '(m))
(cl:defmethod since-val ((m <CacheBagDetails-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:since-val is deprecated.  Use recorder_srvs-srv:since instead.")
  (since m))

(cl:ensure-generic-function 'until-val :lambda-list '(m))
(cl:defmethod until-val ((m <CacheBagDetails-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:until-val is deprecated.  Use recorder_srvs-srv:until instead.")
  (until m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CacheBagDetails-request>) ostream)
  "Serializes a message object of type '<CacheBagDetails-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'since)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'since) (cl:floor (cl:slot-value msg 'since)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'until)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'until) (cl:floor (cl:slot-value msg 'until)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CacheBagDetails-request>) istream)
  "Deserializes a message object of type '<CacheBagDetails-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'since) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'until) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CacheBagDetails-request>)))
  "Returns string type for a service object of type '<CacheBagDetails-request>"
  "recorder_srvs/CacheBagDetailsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CacheBagDetails-request)))
  "Returns string type for a service object of type 'CacheBagDetails-request"
  "recorder_srvs/CacheBagDetailsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CacheBagDetails-request>)))
  "Returns md5sum for a message object of type '<CacheBagDetails-request>"
  "f5f1198d0d264dd461d59b1d040ba963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CacheBagDetails-request)))
  "Returns md5sum for a message object of type 'CacheBagDetails-request"
  "f5f1198d0d264dd461d59b1d040ba963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CacheBagDetails-request>)))
  "Returns full string definition for message of type '<CacheBagDetails-request>"
  (cl:format cl:nil "time since~%time until~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CacheBagDetails-request)))
  "Returns full string definition for message of type 'CacheBagDetails-request"
  (cl:format cl:nil "time since~%time until~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CacheBagDetails-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CacheBagDetails-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CacheBagDetails-request
    (cl:cons ':since (since msg))
    (cl:cons ':until (until msg))
))
;//! \htmlinclude CacheBagDetails-response.msg.html

(cl:defclass <CacheBagDetails-response> (roslisp-msg-protocol:ros-message)
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
   (bags_info
    :reader bags_info
    :initarg :bags_info
    :type (cl:vector recorder_msgs-msg:BagInfo)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:BagInfo :initial-element (cl:make-instance 'recorder_msgs-msg:BagInfo)))
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:float
    :initform 0.0)
   (end_time
    :reader end_time
    :initarg :end_time
    :type cl:float
    :initform 0.0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (topics_info
    :reader topics_info
    :initarg :topics_info
    :type (cl:vector recorder_msgs-msg:TopicInfo)
   :initform (cl:make-array 0 :element-type 'recorder_msgs-msg:TopicInfo :initial-element (cl:make-instance 'recorder_msgs-msg:TopicInfo))))
)

(cl:defclass CacheBagDetails-response (<CacheBagDetails-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CacheBagDetails-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CacheBagDetails-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<CacheBagDetails-response> is deprecated: use recorder_srvs-srv:CacheBagDetails-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CacheBagDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CacheBagDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'bags_info-val :lambda-list '(m))
(cl:defmethod bags_info-val ((m <CacheBagDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:bags_info-val is deprecated.  Use recorder_srvs-srv:bags_info instead.")
  (bags_info m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <CacheBagDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:start_time-val is deprecated.  Use recorder_srvs-srv:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'end_time-val :lambda-list '(m))
(cl:defmethod end_time-val ((m <CacheBagDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:end_time-val is deprecated.  Use recorder_srvs-srv:end_time instead.")
  (end_time m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <CacheBagDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:duration-val is deprecated.  Use recorder_srvs-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'topics_info-val :lambda-list '(m))
(cl:defmethod topics_info-val ((m <CacheBagDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:topics_info-val is deprecated.  Use recorder_srvs-srv:topics_info instead.")
  (topics_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CacheBagDetails-response>) ostream)
  "Serializes a message object of type '<CacheBagDetails-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bags_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bags_info))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'start_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'topics_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CacheBagDetails-response>) istream)
  "Deserializes a message object of type '<CacheBagDetails-response>"
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
  (cl:setf (cl:slot-value msg 'bags_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bags_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:BagInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'recorder_msgs-msg:TopicInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CacheBagDetails-response>)))
  "Returns string type for a service object of type '<CacheBagDetails-response>"
  "recorder_srvs/CacheBagDetailsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CacheBagDetails-response)))
  "Returns string type for a service object of type 'CacheBagDetails-response"
  "recorder_srvs/CacheBagDetailsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CacheBagDetails-response>)))
  "Returns md5sum for a message object of type '<CacheBagDetails-response>"
  "f5f1198d0d264dd461d59b1d040ba963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CacheBagDetails-response)))
  "Returns md5sum for a message object of type 'CacheBagDetails-response"
  "f5f1198d0d264dd461d59b1d040ba963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CacheBagDetails-response>)))
  "Returns full string definition for message of type '<CacheBagDetails-response>"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/BagInfo[] bags_info~%float64 start_time~%float64 end_time~%float64 duration~%recorder_msgs/TopicInfo[] topics_info~%~%================================================================================~%MSG: recorder_msgs/BagInfo~%uint32 index~%string filename~%float64 start_time~%float64 end_time~%uint64 size~%uint32 message_cnt~%string[] topic_name~%string[] topic_date_type~%uint32[] topic_message_cnt~%~%~%================================================================================~%MSG: recorder_msgs/TopicInfo~%string topic_name~%string topic_date_type~%uint32 topic_message_cnt~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CacheBagDetails-response)))
  "Returns full string definition for message of type 'CacheBagDetails-response"
  (cl:format cl:nil "bool success~%string message~%recorder_msgs/BagInfo[] bags_info~%float64 start_time~%float64 end_time~%float64 duration~%recorder_msgs/TopicInfo[] topics_info~%~%================================================================================~%MSG: recorder_msgs/BagInfo~%uint32 index~%string filename~%float64 start_time~%float64 end_time~%uint64 size~%uint32 message_cnt~%string[] topic_name~%string[] topic_date_type~%uint32[] topic_message_cnt~%~%~%================================================================================~%MSG: recorder_msgs/TopicInfo~%string topic_name~%string topic_date_type~%uint32 topic_message_cnt~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CacheBagDetails-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bags_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CacheBagDetails-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CacheBagDetails-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':bags_info (bags_info msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':end_time (end_time msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':topics_info (topics_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CacheBagDetails)))
  'CacheBagDetails-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CacheBagDetails)))
  'CacheBagDetails-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CacheBagDetails)))
  "Returns string type for a service object of type '<CacheBagDetails>"
  "recorder_srvs/CacheBagDetails")