; Auto-generated. Do not edit!


(cl:in-package recorder_srvs-srv)


;//! \htmlinclude VersionInfo-request.msg.html

(cl:defclass <VersionInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass VersionInfo-request (<VersionInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VersionInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VersionInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<VersionInfo-request> is deprecated: use recorder_srvs-srv:VersionInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VersionInfo-request>) ostream)
  "Serializes a message object of type '<VersionInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VersionInfo-request>) istream)
  "Deserializes a message object of type '<VersionInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VersionInfo-request>)))
  "Returns string type for a service object of type '<VersionInfo-request>"
  "recorder_srvs/VersionInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionInfo-request)))
  "Returns string type for a service object of type 'VersionInfo-request"
  "recorder_srvs/VersionInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VersionInfo-request>)))
  "Returns md5sum for a message object of type '<VersionInfo-request>"
  "d39f792ca7afbba66af9d8c790664401")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VersionInfo-request)))
  "Returns md5sum for a message object of type 'VersionInfo-request"
  "d39f792ca7afbba66af9d8c790664401")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VersionInfo-request>)))
  "Returns full string definition for message of type '<VersionInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VersionInfo-request)))
  "Returns full string definition for message of type 'VersionInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VersionInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VersionInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VersionInfo-request
))
;//! \htmlinclude VersionInfo-response.msg.html

(cl:defclass <VersionInfo-response> (roslisp-msg-protocol:ros-message)
  ((image_version
    :reader image_version
    :initarg :image_version
    :type cl:string
    :initform "")
   (recorder_version
    :reader recorder_version
    :initarg :recorder_version
    :type cl:string
    :initform "")
   (config_variant
    :reader config_variant
    :initarg :config_variant
    :type cl:string
    :initform "")
   (config_version
    :reader config_version
    :initarg :config_version
    :type cl:string
    :initform ""))
)

(cl:defclass VersionInfo-response (<VersionInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VersionInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VersionInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_srvs-srv:<VersionInfo-response> is deprecated: use recorder_srvs-srv:VersionInfo-response instead.")))

(cl:ensure-generic-function 'image_version-val :lambda-list '(m))
(cl:defmethod image_version-val ((m <VersionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:image_version-val is deprecated.  Use recorder_srvs-srv:image_version instead.")
  (image_version m))

(cl:ensure-generic-function 'recorder_version-val :lambda-list '(m))
(cl:defmethod recorder_version-val ((m <VersionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:recorder_version-val is deprecated.  Use recorder_srvs-srv:recorder_version instead.")
  (recorder_version m))

(cl:ensure-generic-function 'config_variant-val :lambda-list '(m))
(cl:defmethod config_variant-val ((m <VersionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:config_variant-val is deprecated.  Use recorder_srvs-srv:config_variant instead.")
  (config_variant m))

(cl:ensure-generic-function 'config_version-val :lambda-list '(m))
(cl:defmethod config_version-val ((m <VersionInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_srvs-srv:config_version-val is deprecated.  Use recorder_srvs-srv:config_version instead.")
  (config_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VersionInfo-response>) ostream)
  "Serializes a message object of type '<VersionInfo-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'recorder_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'recorder_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'config_variant))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'config_variant))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'config_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'config_version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VersionInfo-response>) istream)
  "Deserializes a message object of type '<VersionInfo-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recorder_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'recorder_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'config_variant) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'config_variant) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'config_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'config_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VersionInfo-response>)))
  "Returns string type for a service object of type '<VersionInfo-response>"
  "recorder_srvs/VersionInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionInfo-response)))
  "Returns string type for a service object of type 'VersionInfo-response"
  "recorder_srvs/VersionInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VersionInfo-response>)))
  "Returns md5sum for a message object of type '<VersionInfo-response>"
  "d39f792ca7afbba66af9d8c790664401")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VersionInfo-response)))
  "Returns md5sum for a message object of type 'VersionInfo-response"
  "d39f792ca7afbba66af9d8c790664401")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VersionInfo-response>)))
  "Returns full string definition for message of type '<VersionInfo-response>"
  (cl:format cl:nil "string image_version~%string recorder_version~%string config_variant~%string config_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VersionInfo-response)))
  "Returns full string definition for message of type 'VersionInfo-response"
  (cl:format cl:nil "string image_version~%string recorder_version~%string config_variant~%string config_version~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VersionInfo-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_version))
     4 (cl:length (cl:slot-value msg 'recorder_version))
     4 (cl:length (cl:slot-value msg 'config_variant))
     4 (cl:length (cl:slot-value msg 'config_version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VersionInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VersionInfo-response
    (cl:cons ':image_version (image_version msg))
    (cl:cons ':recorder_version (recorder_version msg))
    (cl:cons ':config_variant (config_variant msg))
    (cl:cons ':config_version (config_version msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VersionInfo)))
  'VersionInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VersionInfo)))
  'VersionInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionInfo)))
  "Returns string type for a service object of type '<VersionInfo>"
  "recorder_srvs/VersionInfo")