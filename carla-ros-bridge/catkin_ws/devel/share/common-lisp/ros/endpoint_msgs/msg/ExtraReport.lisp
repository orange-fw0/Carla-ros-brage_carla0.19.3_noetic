; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ExtraReport.msg.html

(cl:defclass <ExtraReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (json
    :reader json
    :initarg :json
    :type cl:string
    :initform ""))
)

(cl:defclass ExtraReport (<ExtraReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtraReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtraReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ExtraReport> is deprecated: use endpoint_msgs-msg:ExtraReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ExtraReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'json-val :lambda-list '(m))
(cl:defmethod json-val ((m <ExtraReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:json-val is deprecated.  Use endpoint_msgs-msg:json instead.")
  (json m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtraReport>) ostream)
  "Serializes a message object of type '<ExtraReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtraReport>) istream)
  "Deserializes a message object of type '<ExtraReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtraReport>)))
  "Returns string type for a message object of type '<ExtraReport>"
  "endpoint_msgs/ExtraReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtraReport)))
  "Returns string type for a message object of type 'ExtraReport"
  "endpoint_msgs/ExtraReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtraReport>)))
  "Returns md5sum for a message object of type '<ExtraReport>"
  "0fbca00b41d0df080a552ac92648d629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtraReport)))
  "Returns md5sum for a message object of type 'ExtraReport"
  "0fbca00b41d0df080a552ac92648d629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtraReport>)))
  "Returns full string definition for message of type '<ExtraReport>"
  (cl:format cl:nil "uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtraReport)))
  "Returns full string definition for message of type 'ExtraReport"
  (cl:format cl:nil "uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtraReport>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'json))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtraReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtraReport
    (cl:cons ':available (available msg))
    (cl:cons ':json (json msg))
))
