; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude DiskEject-request.msg.html

(cl:defclass <DiskEject-request> (roslisp-msg-protocol:ros-message)
  ((sn
    :reader sn
    :initarg :sn
    :type cl:string
    :initform ""))
)

(cl:defclass DiskEject-request (<DiskEject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskEject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskEject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskEject-request> is deprecated: use recorder_srvs-srv:DiskEject-request instead.")))

(cl:ensure-generic-function 'sn-val :lambda-list '(m))
(cl:defmethod sn-val ((m <DiskEject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:sn-val is deprecated.  Use recorder_srvs-srv:sn instead.")
  (sn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskEject-request>) ostream)
  "Serializes a message object of type '<DiskEject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sn))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskEject-request>) istream)
  "Deserializes a message object of type '<DiskEject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sn) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sn) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskEject-request>)))
  "Returns string type for a service object of type '<DiskEject-request>"
  "recorder_srvs/DiskEjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskEject-request)))
  "Returns string type for a service object of type 'DiskEject-request"
  "recorder_srvs/DiskEjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskEject-request>)))
  "Returns md5sum for a message object of type '<DiskEject-request>"
  "f5bfbad4ae7f618f03190145d30c82a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskEject-request)))
  "Returns md5sum for a message object of type 'DiskEject-request"
  "f5bfbad4ae7f618f03190145d30c82a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskEject-request>)))
  "Returns full string definition for message of type '<DiskEject-request>"
  (cl:format cl:nil "string sn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskEject-request)))
  "Returns full string definition for message of type 'DiskEject-request"
  (cl:format cl:nil "string sn~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskEject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sn))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskEject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskEject-request
    (cl:cons ':sn (sn msg))
))
;//! \htmlinclude DiskEject-response.msg.html

(cl:defclass <DiskEject-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DiskEject-response (<DiskEject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskEject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskEject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskEject-response> is deprecated: use recorder_srvs-srv:DiskEject-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DiskEject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DiskEject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskEject-response>) ostream)
  "Serializes a message object of type '<DiskEject-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskEject-response>) istream)
  "Deserializes a message object of type '<DiskEject-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskEject-response>)))
  "Returns string type for a service object of type '<DiskEject-response>"
  "recorder_srvs/DiskEjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskEject-response)))
  "Returns string type for a service object of type 'DiskEject-response"
  "recorder_srvs/DiskEjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskEject-response>)))
  "Returns md5sum for a message object of type '<DiskEject-response>"
  "f5bfbad4ae7f618f03190145d30c82a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskEject-response)))
  "Returns md5sum for a message object of type 'DiskEject-response"
  "f5bfbad4ae7f618f03190145d30c82a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskEject-response>)))
  "Returns full string definition for message of type '<DiskEject-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskEject-response)))
  "Returns full string definition for message of type 'DiskEject-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskEject-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskEject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskEject-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DiskEject)))
  'DiskEject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DiskEject)))
  'DiskEject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskEject)))
  "Returns string type for a service object of type '<DiskEject>"
  "recorder_srvs/DiskEject")