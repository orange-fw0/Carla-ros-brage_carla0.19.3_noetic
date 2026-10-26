; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude DiskType-request.msg.html

(cl:defclass <DiskType-request> (roslisp-msg-protocol:ros-message)
  ((sn
    :reader sn
    :initarg :sn
    :type cl:string
    :initform "")
   (disk_type
    :reader disk_type
    :initarg :disk_type
    :type cl:string
    :initform ""))
)

(cl:defclass DiskType-request (<DiskType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskType-request> is deprecated: use recorder_srvs-srv:DiskType-request instead.")))

(cl:ensure-generic-function 'sn-val :lambda-list '(m))
(cl:defmethod sn-val ((m <DiskType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:sn-val is deprecated.  Use recorder_srvs-srv:sn instead.")
  (sn m))

(cl:ensure-generic-function 'disk_type-val :lambda-list '(m))
(cl:defmethod disk_type-val ((m <DiskType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:disk_type-val is deprecated.  Use recorder_srvs-srv:disk_type instead.")
  (disk_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskType-request>) ostream)
  "Serializes a message object of type '<DiskType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sn))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'disk_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'disk_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskType-request>) istream)
  "Deserializes a message object of type '<DiskType-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sn) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sn) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'disk_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'disk_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskType-request>)))
  "Returns string type for a service object of type '<DiskType-request>"
  "recorder_srvs/DiskTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskType-request)))
  "Returns string type for a service object of type 'DiskType-request"
  "recorder_srvs/DiskTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskType-request>)))
  "Returns md5sum for a message object of type '<DiskType-request>"
  "1dc5f9c17df7e2642d3a5a07568282cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskType-request)))
  "Returns md5sum for a message object of type 'DiskType-request"
  "1dc5f9c17df7e2642d3a5a07568282cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskType-request>)))
  "Returns full string definition for message of type '<DiskType-request>"
  (cl:format cl:nil "string sn~%string disk_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskType-request)))
  "Returns full string definition for message of type 'DiskType-request"
  (cl:format cl:nil "string sn~%string disk_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sn))
     4 (cl:length (cl:slot-value msg 'disk_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskType-request
    (cl:cons ':sn (sn msg))
    (cl:cons ':disk_type (disk_type msg))
))
;//! \htmlinclude DiskType-response.msg.html

(cl:defclass <DiskType-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DiskType-response (<DiskType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskType-response> is deprecated: use recorder_srvs-srv:DiskType-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DiskType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DiskType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskType-response>) ostream)
  "Serializes a message object of type '<DiskType-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskType-response>) istream)
  "Deserializes a message object of type '<DiskType-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskType-response>)))
  "Returns string type for a service object of type '<DiskType-response>"
  "recorder_srvs/DiskTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskType-response)))
  "Returns string type for a service object of type 'DiskType-response"
  "recorder_srvs/DiskTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskType-response>)))
  "Returns md5sum for a message object of type '<DiskType-response>"
  "1dc5f9c17df7e2642d3a5a07568282cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskType-response)))
  "Returns md5sum for a message object of type 'DiskType-response"
  "1dc5f9c17df7e2642d3a5a07568282cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskType-response>)))
  "Returns full string definition for message of type '<DiskType-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskType-response)))
  "Returns full string definition for message of type 'DiskType-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskType-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskType-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DiskType)))
  'DiskType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DiskType)))
  'DiskType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskType)))
  "Returns string type for a service object of type '<DiskType>"
  "recorder_srvs/DiskType")