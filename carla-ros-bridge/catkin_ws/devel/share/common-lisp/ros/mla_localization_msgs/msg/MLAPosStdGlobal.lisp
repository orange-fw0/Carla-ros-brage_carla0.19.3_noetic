; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAPosStdGlobal.msg.html

(cl:defclass <MLAPosStdGlobal> (roslisp-msg-protocol:ros-message)
  ((std_pe
    :reader std_pe
    :initarg :std_pe
    :type cl:float
    :initform 0.0)
   (std_pn
    :reader std_pn
    :initarg :std_pn
    :type cl:float
    :initform 0.0)
   (std_pu
    :reader std_pu
    :initarg :std_pu
    :type cl:float
    :initform 0.0))
)

(cl:defclass MLAPosStdGlobal (<MLAPosStdGlobal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAPosStdGlobal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAPosStdGlobal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAPosStdGlobal> is deprecated: use mla_localization_msgs-msg:MLAPosStdGlobal instead.")))

(cl:ensure-generic-function 'std_pe-val :lambda-list '(m))
(cl:defmethod std_pe-val ((m <MLAPosStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_pe-val is deprecated.  Use mla_localization_msgs-msg:std_pe instead.")
  (std_pe m))

(cl:ensure-generic-function 'std_pn-val :lambda-list '(m))
(cl:defmethod std_pn-val ((m <MLAPosStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_pn-val is deprecated.  Use mla_localization_msgs-msg:std_pn instead.")
  (std_pn m))

(cl:ensure-generic-function 'std_pu-val :lambda-list '(m))
(cl:defmethod std_pu-val ((m <MLAPosStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_pu-val is deprecated.  Use mla_localization_msgs-msg:std_pu instead.")
  (std_pu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAPosStdGlobal>) ostream)
  "Serializes a message object of type '<MLAPosStdGlobal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_pe))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_pn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_pu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAPosStdGlobal>) istream)
  "Deserializes a message object of type '<MLAPosStdGlobal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_pe) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_pn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_pu) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAPosStdGlobal>)))
  "Returns string type for a message object of type '<MLAPosStdGlobal>"
  "mla_localization_msgs/MLAPosStdGlobal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAPosStdGlobal)))
  "Returns string type for a message object of type 'MLAPosStdGlobal"
  "mla_localization_msgs/MLAPosStdGlobal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAPosStdGlobal>)))
  "Returns md5sum for a message object of type '<MLAPosStdGlobal>"
  "1e0504b815b9cc4ce84f74cdaf0bcc3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAPosStdGlobal)))
  "Returns md5sum for a message object of type 'MLAPosStdGlobal"
  "1e0504b815b9cc4ce84f74cdaf0bcc3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAPosStdGlobal>)))
  "Returns full string definition for message of type '<MLAPosStdGlobal>"
  (cl:format cl:nil "float64 std_pe~%float64 std_pn~%float64 std_pu~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAPosStdGlobal)))
  "Returns full string definition for message of type 'MLAPosStdGlobal"
  (cl:format cl:nil "float64 std_pe~%float64 std_pn~%float64 std_pu~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAPosStdGlobal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAPosStdGlobal>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAPosStdGlobal
    (cl:cons ':std_pe (std_pe msg))
    (cl:cons ':std_pn (std_pn msg))
    (cl:cons ':std_pu (std_pu msg))
))
