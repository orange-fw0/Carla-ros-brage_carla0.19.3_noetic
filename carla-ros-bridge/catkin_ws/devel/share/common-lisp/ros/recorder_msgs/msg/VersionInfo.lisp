; Auto-generated. Do not edit!


(cl:in-package recorder_msgs-msg)


;//! \htmlinclude VersionInfo.msg.html

(cl:defclass <VersionInfo> (roslisp-msg-protocol:ros-message)
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
    :initform "")
   (format_version
    :reader format_version
    :initarg :format_version
    :type cl:string
    :initform ""))
)

(cl:defclass VersionInfo (<VersionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VersionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VersionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name recorder_msgs-msg:<VersionInfo> is deprecated: use recorder_msgs-msg:VersionInfo instead.")))

(cl:ensure-generic-function 'image_version-val :lambda-list '(m))
(cl:defmethod image_version-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:image_version-val is deprecated.  Use recorder_msgs-msg:image_version instead.")
  (image_version m))

(cl:ensure-generic-function 'recorder_version-val :lambda-list '(m))
(cl:defmethod recorder_version-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:recorder_version-val is deprecated.  Use recorder_msgs-msg:recorder_version instead.")
  (recorder_version m))

(cl:ensure-generic-function 'config_variant-val :lambda-list '(m))
(cl:defmethod config_variant-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:config_variant-val is deprecated.  Use recorder_msgs-msg:config_variant instead.")
  (config_variant m))

(cl:ensure-generic-function 'config_version-val :lambda-list '(m))
(cl:defmethod config_version-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:config_version-val is deprecated.  Use recorder_msgs-msg:config_version instead.")
  (config_version m))

(cl:ensure-generic-function 'format_version-val :lambda-list '(m))
(cl:defmethod format_version-val ((m <VersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader recorder_msgs-msg:format_version-val is deprecated.  Use recorder_msgs-msg:format_version instead.")
  (format_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VersionInfo>) ostream)
  "Serializes a message object of type '<VersionInfo>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'format_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'format_version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VersionInfo>) istream)
  "Deserializes a message object of type '<VersionInfo>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'format_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'format_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VersionInfo>)))
  "Returns string type for a message object of type '<VersionInfo>"
  "recorder_msgs/VersionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionInfo)))
  "Returns string type for a message object of type 'VersionInfo"
  "recorder_msgs/VersionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VersionInfo>)))
  "Returns md5sum for a message object of type '<VersionInfo>"
  "0e09ede7bc4c80cfdd9e0db7c9c6fad1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VersionInfo)))
  "Returns md5sum for a message object of type 'VersionInfo"
  "0e09ede7bc4c80cfdd9e0db7c9c6fad1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VersionInfo>)))
  "Returns full string definition for message of type '<VersionInfo>"
  (cl:format cl:nil "string image_version~%string recorder_version~%string config_variant~%string config_version~%string format_version~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VersionInfo)))
  "Returns full string definition for message of type 'VersionInfo"
  (cl:format cl:nil "string image_version~%string recorder_version~%string config_variant~%string config_version~%string format_version~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VersionInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_version))
     4 (cl:length (cl:slot-value msg 'recorder_version))
     4 (cl:length (cl:slot-value msg 'config_variant))
     4 (cl:length (cl:slot-value msg 'config_version))
     4 (cl:length (cl:slot-value msg 'format_version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VersionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VersionInfo
    (cl:cons ':image_version (image_version msg))
    (cl:cons ':recorder_version (recorder_version msg))
    (cl:cons ':config_variant (config_variant msg))
    (cl:cons ':config_version (config_version msg))
    (cl:cons ':format_version (format_version msg))
))
