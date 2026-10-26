; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ControlCommandExtra.msg.html

(cl:defclass <ControlCommandExtra> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (json
    :reader json
    :initarg :json
    :type cl:string
    :initform ""))
)

(cl:defclass ControlCommandExtra (<ControlCommandExtra>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommandExtra>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommandExtra)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ControlCommandExtra> is deprecated: use endpoint_msgs-msg:ControlCommandExtra instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ControlCommandExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <ControlCommandExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:version-val is deprecated.  Use endpoint_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <ControlCommandExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:json-val is deprecated.  Use endpoint_msgs-msg:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControlCommandExtra>)))
    "Constants for message type '<ControlCommandExtra>"
  '((:VERSION . 1)
    (:JSON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControlCommandExtra)))
    "Constants for message type 'ControlCommandExtra"
  '((:VERSION . 1)
    (:JSON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommandExtra>) ostream)
  "Serializes a message object of type '<ControlCommandExtra>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommandExtra>) istream)
  "Deserializes a message object of type '<ControlCommandExtra>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommandExtra>)))
  "Returns string type for a message object of type '<ControlCommandExtra>"
  "endpoint_msgs/ControlCommandExtra")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommandExtra)))
  "Returns string type for a message object of type 'ControlCommandExtra"
  "endpoint_msgs/ControlCommandExtra")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommandExtra>)))
  "Returns md5sum for a message object of type '<ControlCommandExtra>"
  "b91373d8e7a0b760646b0ed5575ac94e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommandExtra)))
  "Returns md5sum for a message object of type 'ControlCommandExtra"
  "b91373d8e7a0b760646b0ed5575ac94e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommandExtra>)))
  "Returns full string definition for message of type '<ControlCommandExtra>"
  (cl:format cl:nil "uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommandExtra)))
  "Returns full string definition for message of type 'ControlCommandExtra"
  (cl:format cl:nil "uint8 VERSION = 1~%uint8 JSON = 2~%uint8 available~%string version~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommandExtra>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommandExtra>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommandExtra
    (cl:cons ':available (available msg))
    (cl:cons ':version (version msg))
    (cl:cons ':json (json msg))
))
