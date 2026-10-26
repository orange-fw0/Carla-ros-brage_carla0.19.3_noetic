; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAVelStdGlobal.msg.html

(cl:defclass <MLAVelStdGlobal> (roslisp-msg-protocol:ros-message)
  ((std_ve
    :reader std_ve
    :initarg :std_ve
    :type cl:float
    :initform 0.0)
   (std_vn
    :reader std_vn
    :initarg :std_vn
    :type cl:float
    :initform 0.0)
   (std_vu
    :reader std_vu
    :initarg :std_vu
    :type cl:float
    :initform 0.0))
)

(cl:defclass MLAVelStdGlobal (<MLAVelStdGlobal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAVelStdGlobal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAVelStdGlobal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAVelStdGlobal> is deprecated: use mla_localization_msgs-msg:MLAVelStdGlobal instead.")))

(cl:ensure-generic-function 'std_ve-val :lambda-list '(m))
(cl:defmethod std_ve-val ((m <MLAVelStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_ve-val is deprecated.  Use mla_localization_msgs-msg:std_ve instead.")
  (std_ve m))

(cl:ensure-generic-function 'std_vn-val :lambda-list '(m))
(cl:defmethod std_vn-val ((m <MLAVelStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_vn-val is deprecated.  Use mla_localization_msgs-msg:std_vn instead.")
  (std_vn m))

(cl:ensure-generic-function 'std_vu-val :lambda-list '(m))
(cl:defmethod std_vu-val ((m <MLAVelStdGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_vu-val is deprecated.  Use mla_localization_msgs-msg:std_vu instead.")
  (std_vu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAVelStdGlobal>) ostream)
  "Serializes a message object of type '<MLAVelStdGlobal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_ve))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAVelStdGlobal>) istream)
  "Deserializes a message object of type '<MLAVelStdGlobal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_ve) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vn) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vu) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAVelStdGlobal>)))
  "Returns string type for a message object of type '<MLAVelStdGlobal>"
  "mla_localization_msgs/MLAVelStdGlobal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAVelStdGlobal)))
  "Returns string type for a message object of type 'MLAVelStdGlobal"
  "mla_localization_msgs/MLAVelStdGlobal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAVelStdGlobal>)))
  "Returns md5sum for a message object of type '<MLAVelStdGlobal>"
  "7cc88c7fdc6618fe4597135b62a6b9f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAVelStdGlobal)))
  "Returns md5sum for a message object of type 'MLAVelStdGlobal"
  "7cc88c7fdc6618fe4597135b62a6b9f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAVelStdGlobal>)))
  "Returns full string definition for message of type '<MLAVelStdGlobal>"
  (cl:format cl:nil "float64 std_ve~%float64 std_vn~%float64 std_vu~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAVelStdGlobal)))
  "Returns full string definition for message of type 'MLAVelStdGlobal"
  (cl:format cl:nil "float64 std_ve~%float64 std_vn~%float64 std_vu~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAVelStdGlobal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAVelStdGlobal>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAVelStdGlobal
    (cl:cons ':std_ve (std_ve msg))
    (cl:cons ':std_vn (std_vn msg))
    (cl:cons ':std_vu (std_vu msg))
))
