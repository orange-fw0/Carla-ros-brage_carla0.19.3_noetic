; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude AsyncDiskEjectOutput.msg.html

(cl:defclass <AsyncDiskEjectOutput> (roslisp-msg-protocol:ros-message)
  ((key_num
    :reader key_num
    :initarg :key_num
    :type cl:integer
    :initform 0)
   (service_response
    :reader service_response
    :initarg :service_response
    :type cl:boolean
    :initform cl:nil)
   (success
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

(cl:defclass AsyncDiskEjectOutput (<AsyncDiskEjectOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsyncDiskEjectOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsyncDiskEjectOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<AsyncDiskEjectOutput> is deprecated: use momenta_msgs-msg:AsyncDiskEjectOutput instead.")))

(cl:ensure-generic-function 'key_num-val :lambda-list '(m))
(cl:defmethod key_num-val ((m <AsyncDiskEjectOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:key_num-val is deprecated.  Use momenta_msgs-msg:key_num instead.")
  (key_num m))

(cl:ensure-generic-function 'service_response-val :lambda-list '(m))
(cl:defmethod service_response-val ((m <AsyncDiskEjectOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:service_response-val is deprecated.  Use momenta_msgs-msg:service_response instead.")
  (service_response m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AsyncDiskEjectOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:success-val is deprecated.  Use momenta_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AsyncDiskEjectOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:message-val is deprecated.  Use momenta_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsyncDiskEjectOutput>) ostream)
  "Serializes a message object of type '<AsyncDiskEjectOutput>"
  (cl:let* ((signed (cl:slot-value msg 'key_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'service_response) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsyncDiskEjectOutput>) istream)
  "Deserializes a message object of type '<AsyncDiskEjectOutput>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key_num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'service_response) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsyncDiskEjectOutput>)))
  "Returns string type for a message object of type '<AsyncDiskEjectOutput>"
  "momenta_msgs/AsyncDiskEjectOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsyncDiskEjectOutput)))
  "Returns string type for a message object of type 'AsyncDiskEjectOutput"
  "momenta_msgs/AsyncDiskEjectOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsyncDiskEjectOutput>)))
  "Returns md5sum for a message object of type '<AsyncDiskEjectOutput>"
  "7e7d6b05ee603bf60d525d2d3a2d6be8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsyncDiskEjectOutput)))
  "Returns md5sum for a message object of type 'AsyncDiskEjectOutput"
  "7e7d6b05ee603bf60d525d2d3a2d6be8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsyncDiskEjectOutput>)))
  "Returns full string definition for message of type '<AsyncDiskEjectOutput>"
  (cl:format cl:nil "int64 key_num~%bool service_response~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsyncDiskEjectOutput)))
  "Returns full string definition for message of type 'AsyncDiskEjectOutput"
  (cl:format cl:nil "int64 key_num~%bool service_response~%bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsyncDiskEjectOutput>))
  (cl:+ 0
     8
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsyncDiskEjectOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'AsyncDiskEjectOutput
    (cl:cons ':key_num (key_num msg))
    (cl:cons ':service_response (service_response msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
