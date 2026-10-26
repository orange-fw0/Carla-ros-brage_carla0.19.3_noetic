; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAOriStdXyz.msg.html

(cl:defclass <MLAOriStdXyz> (roslisp-msg-protocol:ros-message)
  ((std_faix
    :reader std_faix
    :initarg :std_faix
    :type cl:float
    :initform 0.0)
   (std_faiy
    :reader std_faiy
    :initarg :std_faiy
    :type cl:float
    :initform 0.0)
   (std_faiz
    :reader std_faiz
    :initarg :std_faiz
    :type cl:float
    :initform 0.0))
)

(cl:defclass MLAOriStdXyz (<MLAOriStdXyz>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAOriStdXyz>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAOriStdXyz)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAOriStdXyz> is deprecated: use mla_localization_msgs-msg:MLAOriStdXyz instead.")))

(cl:ensure-generic-function 'std_faix-val :lambda-list '(m))
(cl:defmethod std_faix-val ((m <MLAOriStdXyz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_faix-val is deprecated.  Use mla_localization_msgs-msg:std_faix instead.")
  (std_faix m))

(cl:ensure-generic-function 'std_faiy-val :lambda-list '(m))
(cl:defmethod std_faiy-val ((m <MLAOriStdXyz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_faiy-val is deprecated.  Use mla_localization_msgs-msg:std_faiy instead.")
  (std_faiy m))

(cl:ensure-generic-function 'std_faiz-val :lambda-list '(m))
(cl:defmethod std_faiz-val ((m <MLAOriStdXyz>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_faiz-val is deprecated.  Use mla_localization_msgs-msg:std_faiz instead.")
  (std_faiz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAOriStdXyz>) ostream)
  "Serializes a message object of type '<MLAOriStdXyz>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_faix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_faiy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_faiz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAOriStdXyz>) istream)
  "Deserializes a message object of type '<MLAOriStdXyz>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_faix) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_faiy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_faiz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAOriStdXyz>)))
  "Returns string type for a message object of type '<MLAOriStdXyz>"
  "mla_localization_msgs/MLAOriStdXyz")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAOriStdXyz)))
  "Returns string type for a message object of type 'MLAOriStdXyz"
  "mla_localization_msgs/MLAOriStdXyz")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAOriStdXyz>)))
  "Returns md5sum for a message object of type '<MLAOriStdXyz>"
  "4321d049e56b7aec6a5970a3463d66bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAOriStdXyz)))
  "Returns md5sum for a message object of type 'MLAOriStdXyz"
  "4321d049e56b7aec6a5970a3463d66bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAOriStdXyz>)))
  "Returns full string definition for message of type '<MLAOriStdXyz>"
  (cl:format cl:nil "float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAOriStdXyz)))
  "Returns full string definition for message of type 'MLAOriStdXyz"
  (cl:format cl:nil "float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAOriStdXyz>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAOriStdXyz>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAOriStdXyz
    (cl:cons ':std_faix (std_faix msg))
    (cl:cons ':std_faiy (std_faiy msg))
    (cl:cons ':std_faiz (std_faiz msg))
))
