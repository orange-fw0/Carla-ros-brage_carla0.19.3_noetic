; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude AsyncCommonInput.msg.html

(cl:defclass <AsyncCommonInput> (roslisp-msg-protocol:ros-message)
  ((key_num
    :reader key_num
    :initarg :key_num
    :type cl:integer
    :initform 0))
)

(cl:defclass AsyncCommonInput (<AsyncCommonInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AsyncCommonInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AsyncCommonInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<AsyncCommonInput> is deprecated: use momenta_msgs-msg:AsyncCommonInput instead.")))

(cl:ensure-generic-function 'key_num-val :lambda-list '(m))
(cl:defmethod key_num-val ((m <AsyncCommonInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:key_num-val is deprecated.  Use momenta_msgs-msg:key_num instead.")
  (key_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AsyncCommonInput>) ostream)
  "Serializes a message object of type '<AsyncCommonInput>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AsyncCommonInput>) istream)
  "Deserializes a message object of type '<AsyncCommonInput>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AsyncCommonInput>)))
  "Returns string type for a message object of type '<AsyncCommonInput>"
  "momenta_msgs/AsyncCommonInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AsyncCommonInput)))
  "Returns string type for a message object of type 'AsyncCommonInput"
  "momenta_msgs/AsyncCommonInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AsyncCommonInput>)))
  "Returns md5sum for a message object of type '<AsyncCommonInput>"
  "bbf3b2b49d5e5009ea4db3c4165a3fea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AsyncCommonInput)))
  "Returns md5sum for a message object of type 'AsyncCommonInput"
  "bbf3b2b49d5e5009ea4db3c4165a3fea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AsyncCommonInput>)))
  "Returns full string definition for message of type '<AsyncCommonInput>"
  (cl:format cl:nil "int64 key_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AsyncCommonInput)))
  "Returns full string definition for message of type 'AsyncCommonInput"
  (cl:format cl:nil "int64 key_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AsyncCommonInput>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AsyncCommonInput>))
  "Converts a ROS message object to a list"
  (cl:list 'AsyncCommonInput
    (cl:cons ':key_num (key_num msg))
))
