; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude StopRecordings-request.msg.html

(cl:defclass <StopRecordings-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopRecordings-request (<StopRecordings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRecordings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRecordings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<StopRecordings-request> is deprecated: use recorder_srvs-srv:StopRecordings-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRecordings-request>) ostream)
  "Serializes a message object of type '<StopRecordings-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRecordings-request>) istream)
  "Deserializes a message object of type '<StopRecordings-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRecordings-request>)))
  "Returns string type for a service object of type '<StopRecordings-request>"
  "recorder_srvs/StopRecordingsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecordings-request)))
  "Returns string type for a service object of type 'StopRecordings-request"
  "recorder_srvs/StopRecordingsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRecordings-request>)))
  "Returns md5sum for a message object of type '<StopRecordings-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRecordings-request)))
  "Returns md5sum for a message object of type 'StopRecordings-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRecordings-request>)))
  "Returns full string definition for message of type '<StopRecordings-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRecordings-request)))
  "Returns full string definition for message of type 'StopRecordings-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRecordings-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRecordings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRecordings-request
))
;//! \htmlinclude StopRecordings-response.msg.html

(cl:defclass <StopRecordings-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StopRecordings-response (<StopRecordings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRecordings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRecordings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<StopRecordings-response> is deprecated: use recorder_srvs-srv:StopRecordings-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopRecordings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StopRecordings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRecordings-response>) ostream)
  "Serializes a message object of type '<StopRecordings-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRecordings-response>) istream)
  "Deserializes a message object of type '<StopRecordings-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRecordings-response>)))
  "Returns string type for a service object of type '<StopRecordings-response>"
  "recorder_srvs/StopRecordingsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecordings-response)))
  "Returns string type for a service object of type 'StopRecordings-response"
  "recorder_srvs/StopRecordingsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRecordings-response>)))
  "Returns md5sum for a message object of type '<StopRecordings-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRecordings-response)))
  "Returns md5sum for a message object of type 'StopRecordings-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRecordings-response>)))
  "Returns full string definition for message of type '<StopRecordings-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRecordings-response)))
  "Returns full string definition for message of type 'StopRecordings-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRecordings-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRecordings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRecordings-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopRecordings)))
  'StopRecordings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopRecordings)))
  'StopRecordings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecordings)))
  "Returns string type for a service object of type '<StopRecordings>"
  "recorder_srvs/StopRecordings")