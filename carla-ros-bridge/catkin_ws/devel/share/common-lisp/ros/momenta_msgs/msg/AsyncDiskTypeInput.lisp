; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude AsyncDiskTypeInput.msg.html

(cl:defclass <AsyncDiskTypeInput> (roslisp-msg-protocol:ros-message)
  ((key_num
    :reader key_num
    :initarg :key_num
    :type cl:integer
    :initform 0)
   (sn
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

(cl:defclass AsyncDiskTypeInput (<AsyncDiskTypeInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsyncDiskTypeInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsyncDiskTypeInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<AsyncDiskTypeInput> is deprecated: use momenta_msgs-msg:AsyncDiskTypeInput instead.")))

(cl:ensure-generic-function 'key_num-val :lambda-list '(m))
(cl:defmethod key_num-val ((m <AsyncDiskTypeInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:key_num-val is deprecated.  Use momenta_msgs-msg:key_num instead.")
  (key_num m))

(cl:ensure-generic-function 'sn-val :lambda-list '(m))
(cl:defmethod sn-val ((m <AsyncDiskTypeInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:sn-val is deprecated.  Use momenta_msgs-msg:sn instead.")
  (sn m))

(cl:ensure-generic-function 'disk_type-val :lambda-list '(m))
(cl:defmethod disk_type-val ((m <AsyncDiskTypeInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:disk_type-val is deprecated.  Use momenta_msgs-msg:disk_type instead.")
  (disk_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsyncDiskTypeInput>) ostream)
  "Serializes a message object of type '<AsyncDiskTypeInput>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsyncDiskTypeInput>) istream)
  "Deserializes a message object of type '<AsyncDiskTypeInput>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsyncDiskTypeInput>)))
  "Returns string type for a message object of type '<AsyncDiskTypeInput>"
  "momenta_msgs/AsyncDiskTypeInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsyncDiskTypeInput)))
  "Returns string type for a message object of type 'AsyncDiskTypeInput"
  "momenta_msgs/AsyncDiskTypeInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsyncDiskTypeInput>)))
  "Returns md5sum for a message object of type '<AsyncDiskTypeInput>"
  "d591a01ce847215c5b9840334f679c97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsyncDiskTypeInput)))
  "Returns md5sum for a message object of type 'AsyncDiskTypeInput"
  "d591a01ce847215c5b9840334f679c97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsyncDiskTypeInput>)))
  "Returns full string definition for message of type '<AsyncDiskTypeInput>"
  (cl:format cl:nil "int64 key_num~%string sn~%string disk_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsyncDiskTypeInput)))
  "Returns full string definition for message of type 'AsyncDiskTypeInput"
  (cl:format cl:nil "int64 key_num~%string sn~%string disk_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsyncDiskTypeInput>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'sn))
     4 (cl:length (cl:slot-value msg 'disk_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsyncDiskTypeInput>))
  "Converts a ROS message object to a list"
  (cl:list 'AsyncDiskTypeInput
    (cl:cons ':key_num (key_num msg))
    (cl:cons ':sn (sn msg))
    (cl:cons ':disk_type (disk_type msg))
))
