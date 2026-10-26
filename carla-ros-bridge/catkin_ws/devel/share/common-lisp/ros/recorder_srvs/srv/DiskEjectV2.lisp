; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude DiskEjectV2-request.msg.html

(cl:defclass <DiskEjectV2-request> (roslisp-msg-protocol:ros-message)
  ((sn
    :reader sn
    :initarg :sn
    :type cl:string
    :initform "")
   (force
    :reader force
    :initarg :force
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DiskEjectV2-request (<DiskEjectV2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskEjectV2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskEjectV2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskEjectV2-request> is deprecated: use recorder_srvs-srv:DiskEjectV2-request instead.")))

(cl:ensure-generic-function 'sn-val :lambda-list '(m))
(cl:defmethod sn-val ((m <DiskEjectV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:sn-val is deprecated.  Use recorder_srvs-srv:sn instead.")
  (sn m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <DiskEjectV2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:force-val is deprecated.  Use recorder_srvs-srv:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskEjectV2-request>) ostream)
  "Serializes a message object of type '<DiskEjectV2-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sn))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'force) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskEjectV2-request>) istream)
  "Deserializes a message object of type '<DiskEjectV2-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sn) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sn) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'force) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskEjectV2-request>)))
  "Returns string type for a service object of type '<DiskEjectV2-request>"
  "recorder_srvs/DiskEjectV2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskEjectV2-request)))
  "Returns string type for a service object of type 'DiskEjectV2-request"
  "recorder_srvs/DiskEjectV2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskEjectV2-request>)))
  "Returns md5sum for a message object of type '<DiskEjectV2-request>"
  "74a6c99860ac86d7f9d587acb4f9c2f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskEjectV2-request)))
  "Returns md5sum for a message object of type 'DiskEjectV2-request"
  "74a6c99860ac86d7f9d587acb4f9c2f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskEjectV2-request>)))
  "Returns full string definition for message of type '<DiskEjectV2-request>"
  (cl:format cl:nil "string sn~%bool force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskEjectV2-request)))
  "Returns full string definition for message of type 'DiskEjectV2-request"
  (cl:format cl:nil "string sn~%bool force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskEjectV2-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sn))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskEjectV2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskEjectV2-request
    (cl:cons ':sn (sn msg))
    (cl:cons ':force (force msg))
))
;//! \htmlinclude DiskEjectV2-response.msg.html

(cl:defclass <DiskEjectV2-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DiskEjectV2-response (<DiskEjectV2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskEjectV2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskEjectV2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<DiskEjectV2-response> is deprecated: use recorder_srvs-srv:DiskEjectV2-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DiskEjectV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:success-val is deprecated.  Use recorder_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DiskEjectV2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:message-val is deprecated.  Use recorder_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskEjectV2-response>) ostream)
  "Serializes a message object of type '<DiskEjectV2-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskEjectV2-response>) istream)
  "Deserializes a message object of type '<DiskEjectV2-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskEjectV2-response>)))
  "Returns string type for a service object of type '<DiskEjectV2-response>"
  "recorder_srvs/DiskEjectV2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskEjectV2-response)))
  "Returns string type for a service object of type 'DiskEjectV2-response"
  "recorder_srvs/DiskEjectV2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskEjectV2-response>)))
  "Returns md5sum for a message object of type '<DiskEjectV2-response>"
  "74a6c99860ac86d7f9d587acb4f9c2f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskEjectV2-response)))
  "Returns md5sum for a message object of type 'DiskEjectV2-response"
  "74a6c99860ac86d7f9d587acb4f9c2f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskEjectV2-response>)))
  "Returns full string definition for message of type '<DiskEjectV2-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskEjectV2-response)))
  "Returns full string definition for message of type 'DiskEjectV2-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskEjectV2-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskEjectV2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskEjectV2-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DiskEjectV2)))
  'DiskEjectV2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DiskEjectV2)))
  'DiskEjectV2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskEjectV2)))
  "Returns string type for a service object of type '<DiskEjectV2>"
  "recorder_srvs/DiskEjectV2")