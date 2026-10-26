; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAAngVelStdLocal.msg.html

(cl:defclass <MLAAngVelStdLocal> (roslisp-msg-protocol:ros-message)
  ((std_vx
    :reader std_vx
    :initarg :std_vx
    :type cl:float
    :initform 0.0)
   (std_vy
    :reader std_vy
    :initarg :std_vy
    :type cl:float
    :initform 0.0)
   (std_vz
    :reader std_vz
    :initarg :std_vz
    :type cl:float
    :initform 0.0))
)

(cl:defclass MLAAngVelStdLocal (<MLAAngVelStdLocal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAAngVelStdLocal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAAngVelStdLocal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAAngVelStdLocal> is deprecated: use mla_localization_msgs-msg:MLAAngVelStdLocal instead.")))

(cl:ensure-generic-function 'std_vx-val :lambda-list '(m))
(cl:defmethod std_vx-val ((m <MLAAngVelStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_vx-val is deprecated.  Use mla_localization_msgs-msg:std_vx instead.")
  (std_vx m))

(cl:ensure-generic-function 'std_vy-val :lambda-list '(m))
(cl:defmethod std_vy-val ((m <MLAAngVelStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_vy-val is deprecated.  Use mla_localization_msgs-msg:std_vy instead.")
  (std_vy m))

(cl:ensure-generic-function 'std_vz-val :lambda-list '(m))
(cl:defmethod std_vz-val ((m <MLAAngVelStdLocal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:std_vz-val is deprecated.  Use mla_localization_msgs-msg:std_vz instead.")
  (std_vz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAAngVelStdLocal>) ostream)
  "Serializes a message object of type '<MLAAngVelStdLocal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAAngVelStdLocal>) istream)
  "Deserializes a message object of type '<MLAAngVelStdLocal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_vz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAAngVelStdLocal>)))
  "Returns string type for a message object of type '<MLAAngVelStdLocal>"
  "mla_localization_msgs/MLAAngVelStdLocal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAAngVelStdLocal)))
  "Returns string type for a message object of type 'MLAAngVelStdLocal"
  "mla_localization_msgs/MLAAngVelStdLocal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAAngVelStdLocal>)))
  "Returns md5sum for a message object of type '<MLAAngVelStdLocal>"
  "714b0488d1b05ea8fb95fcdd2da24c03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAAngVelStdLocal)))
  "Returns md5sum for a message object of type 'MLAAngVelStdLocal"
  "714b0488d1b05ea8fb95fcdd2da24c03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAAngVelStdLocal>)))
  "Returns full string definition for message of type '<MLAAngVelStdLocal>"
  (cl:format cl:nil "float64 std_vx~%float64 std_vy~%float64 std_vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAAngVelStdLocal)))
  "Returns full string definition for message of type 'MLAAngVelStdLocal"
  (cl:format cl:nil "float64 std_vx~%float64 std_vy~%float64 std_vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAAngVelStdLocal>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAAngVelStdLocal>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAAngVelStdLocal
    (cl:cons ':std_vx (std_vx msg))
    (cl:cons ':std_vy (std_vy msg))
    (cl:cons ':std_vz (std_vz msg))
))
