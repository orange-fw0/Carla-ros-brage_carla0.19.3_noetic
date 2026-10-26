; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude Restart-request.msg.html

(cl:defclass <Restart-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Restart-request (<Restart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Restart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Restart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<Restart-request> is deprecated: use recorder_srvs-srv:Restart-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Restart-request>) ostream)
  "Serializes a message object of type '<Restart-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Restart-request>) istream)
  "Deserializes a message object of type '<Restart-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Restart-request>)))
  "Returns string type for a service object of type '<Restart-request>"
  "recorder_srvs/RestartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Restart-request)))
  "Returns string type for a service object of type 'Restart-request"
  "recorder_srvs/RestartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Restart-request>)))
  "Returns md5sum for a message object of type '<Restart-request>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Restart-request)))
  "Returns md5sum for a message object of type 'Restart-request"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Restart-request>)))
  "Returns full string definition for message of type '<Restart-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Restart-request)))
  "Returns full string definition for message of type 'Restart-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Restart-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Restart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Restart-request
))
;//! \htmlinclude Restart-response.msg.html

(cl:defclass <Restart-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Restart-response (<Restart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Restart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Restart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<Restart-response> is deprecated: use recorder_srvs-srv:Restart-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Restart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Restart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Restart-response>) ostream)
  "Serializes a message object of type '<Restart-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Restart-response>) istream)
  "Deserializes a message object of type '<Restart-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Restart-response>)))
  "Returns string type for a service object of type '<Restart-response>"
  "recorder_srvs/RestartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Restart-response)))
  "Returns string type for a service object of type 'Restart-response"
  "recorder_srvs/RestartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Restart-response>)))
  "Returns md5sum for a message object of type '<Restart-response>"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Restart-response)))
  "Returns md5sum for a message object of type 'Restart-response"
  "937c9679a518e3a18d831e57125ea522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Restart-response>)))
  "Returns full string definition for message of type '<Restart-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Restart-response)))
  "Returns full string definition for message of type 'Restart-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Restart-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Restart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Restart-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Restart)))
  'Restart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Restart)))
  'Restart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Restart)))
  "Returns string type for a service object of type '<Restart>"
  "recorder_srvs/Restart")