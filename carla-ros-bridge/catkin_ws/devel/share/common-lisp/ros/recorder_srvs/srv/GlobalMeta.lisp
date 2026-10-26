; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude GlobalMeta-request.msg.html

(cl:defclass <GlobalMeta-request> (roslisp-msg-protocol:ros-message)
  ((set
    :reader set
    :initarg :set
    :type cl:boolean
    :initform cl:nil)
   (plate
    :reader plate
    :initarg :plate
    :type cl:string
    :initform ""))
)

(cl:defclass GlobalMeta-request (<GlobalMeta-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalMeta-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalMeta-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<GlobalMeta-request> is deprecated: use recorder_srvs-srv:GlobalMeta-request instead.")))

(cl:ensure-generic-function 'set-val :lambda-list '(m))
(cl:defmethod set-val ((m <GlobalMeta-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:set-val is deprecated.  Use recorder_srvs-srv:set instead.")
  (set m))

(cl:ensure-generic-function 'plate-val :lambda-list '(m))
(cl:defmethod plate-val ((m <GlobalMeta-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:plate-val is deprecated.  Use recorder_srvs-srv:plate instead.")
  (plate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalMeta-request>) ostream)
  "Serializes a message object of type '<GlobalMeta-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalMeta-request>) istream)
  "Deserializes a message object of type '<GlobalMeta-request>"
    (cl:setf (cl:slot-value msg 'set) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalMeta-request>)))
  "Returns string type for a service object of type '<GlobalMeta-request>"
  "recorder_srvs/GlobalMetaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalMeta-request)))
  "Returns string type for a service object of type 'GlobalMeta-request"
  "recorder_srvs/GlobalMetaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalMeta-request>)))
  "Returns md5sum for a message object of type '<GlobalMeta-request>"
  "d449fcba9f0a70668686aea20985eb3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalMeta-request)))
  "Returns md5sum for a message object of type 'GlobalMeta-request"
  "d449fcba9f0a70668686aea20985eb3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalMeta-request>)))
  "Returns full string definition for message of type '<GlobalMeta-request>"
  (cl:format cl:nil "bool set~%string plate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalMeta-request)))
  "Returns full string definition for message of type 'GlobalMeta-request"
  (cl:format cl:nil "bool set~%string plate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalMeta-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'plate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalMeta-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalMeta-request
    (cl:cons ':set (set msg))
    (cl:cons ':plate (plate msg))
))
;//! \htmlinclude GlobalMeta-response.msg.html

(cl:defclass <GlobalMeta-response> (roslisp-msg-protocol:ros-message)
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
   (plate
    :reader plate
    :initarg :plate
    :type cl:string
    :initform ""))
)

(cl:defclass GlobalMeta-response (<GlobalMeta-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalMeta-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalMeta-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<GlobalMeta-response> is deprecated: use recorder_srvs-srv:GlobalMeta-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GlobalMeta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GlobalMeta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'plate-val :lambda-list '(m))
(cl:defmethod plate-val ((m <GlobalMeta-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:plate-val is deprecated.  Use recorder_srvs-srv:plate instead.")
  (plate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalMeta-response>) ostream)
  "Serializes a message object of type '<GlobalMeta-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'plate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'plate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalMeta-response>) istream)
  "Deserializes a message object of type '<GlobalMeta-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'plate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalMeta-response>)))
  "Returns string type for a service object of type '<GlobalMeta-response>"
  "recorder_srvs/GlobalMetaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalMeta-response)))
  "Returns string type for a service object of type 'GlobalMeta-response"
  "recorder_srvs/GlobalMetaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalMeta-response>)))
  "Returns md5sum for a message object of type '<GlobalMeta-response>"
  "d449fcba9f0a70668686aea20985eb3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalMeta-response)))
  "Returns md5sum for a message object of type 'GlobalMeta-response"
  "d449fcba9f0a70668686aea20985eb3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalMeta-response>)))
  "Returns full string definition for message of type '<GlobalMeta-response>"
  (cl:format cl:nil "bool success~%string message~%string plate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalMeta-response)))
  "Returns full string definition for message of type 'GlobalMeta-response"
  (cl:format cl:nil "bool success~%string message~%string plate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalMeta-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'plate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalMeta-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalMeta-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':plate (plate msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlobalMeta)))
  'GlobalMeta-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlobalMeta)))
  'GlobalMeta-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalMeta)))
  "Returns string type for a service object of type '<GlobalMeta>"
  "recorder_srvs/GlobalMeta")