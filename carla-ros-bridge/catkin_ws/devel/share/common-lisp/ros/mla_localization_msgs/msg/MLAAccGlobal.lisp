; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAAccGlobal.msg.html

(cl:defclass <MLAAccGlobal> (roslisp-msg-protocol:ros-message)
  ((ae
    :reader ae
    :initarg :ae
    :type cl:float
    :initform 0.0)
   (an
    :reader an
    :initarg :an
    :type cl:float
    :initform 0.0)
   (au
    :reader au
    :initarg :au
    :type cl:float
    :initform 0.0))
)

(cl:defclass MLAAccGlobal (<MLAAccGlobal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAAccGlobal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAAccGlobal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAAccGlobal> is deprecated: use mla_localization_msgs-msg:MLAAccGlobal instead.")))

(cl:ensure-generic-function 'ae-val :lambda-list '(m))
(cl:defmethod ae-val ((m <MLAAccGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:ae-val is deprecated.  Use mla_localization_msgs-msg:ae instead.")
  (ae m))

(cl:ensure-generic-function 'an-val :lambda-list '(m))
(cl:defmethod an-val ((m <MLAAccGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:an-val is deprecated.  Use mla_localization_msgs-msg:an instead.")
  (an m))

(cl:ensure-generic-function 'au-val :lambda-list '(m))
(cl:defmethod au-val ((m <MLAAccGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:au-val is deprecated.  Use mla_localization_msgs-msg:au instead.")
  (au m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAAccGlobal>) ostream)
  "Serializes a message object of type '<MLAAccGlobal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ae))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'an))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'au))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAAccGlobal>) istream)
  "Deserializes a message object of type '<MLAAccGlobal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ae) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'an) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'au) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAAccGlobal>)))
  "Returns string type for a message object of type '<MLAAccGlobal>"
  "mla_localization_msgs/MLAAccGlobal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAAccGlobal)))
  "Returns string type for a message object of type 'MLAAccGlobal"
  "mla_localization_msgs/MLAAccGlobal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAAccGlobal>)))
  "Returns md5sum for a message object of type '<MLAAccGlobal>"
  "4bfa374bd35e5bd3a2a85ae867e826e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAAccGlobal)))
  "Returns md5sum for a message object of type 'MLAAccGlobal"
  "4bfa374bd35e5bd3a2a85ae867e826e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAAccGlobal>)))
  "Returns full string definition for message of type '<MLAAccGlobal>"
  (cl:format cl:nil "float64 ae~%float64 an~%float64 au~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAAccGlobal)))
  "Returns full string definition for message of type 'MLAAccGlobal"
  (cl:format cl:nil "float64 ae~%float64 an~%float64 au~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAAccGlobal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAAccGlobal>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAAccGlobal
    (cl:cons ':ae (ae msg))
    (cl:cons ':an (an msg))
    (cl:cons ':au (au msg))
))
