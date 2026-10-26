; Auto-generated. Do not edit!


(cl:in-package calib_interface_msgs-msg)


;//! \htmlinclude Polyn.msg.html

(cl:defclass <Polyn> (roslisp-msg-protocol:ros-message)
  ((kc1
    :reader kc1
    :initarg :kc1
    :type cl:float
    :initform 0.0)
   (kc2
    :reader kc2
    :initarg :kc2
    :type cl:float
    :initform 0.0)
   (kc3
    :reader kc3
    :initarg :kc3
    :type cl:float
    :initform 0.0)
   (kc4
    :reader kc4
    :initarg :kc4
    :type cl:float
    :initform 0.0))
)

(cl:defclass Polyn (<Polyn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polyn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polyn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calib_interface_msgs-msg:<Polyn> is deprecated: use calib_interface_msgs-msg:Polyn instead.")))

(cl:ensure-generic-function 'kc1-val :lambda-list '(m))
(cl:defmethod kc1-val ((m <Polyn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:kc1-val is deprecated.  Use calib_interface_msgs-msg:kc1 instead.")
  (kc1 m))

(cl:ensure-generic-function 'kc2-val :lambda-list '(m))
(cl:defmethod kc2-val ((m <Polyn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:kc2-val is deprecated.  Use calib_interface_msgs-msg:kc2 instead.")
  (kc2 m))

(cl:ensure-generic-function 'kc3-val :lambda-list '(m))
(cl:defmethod kc3-val ((m <Polyn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:kc3-val is deprecated.  Use calib_interface_msgs-msg:kc3 instead.")
  (kc3 m))

(cl:ensure-generic-function 'kc4-val :lambda-list '(m))
(cl:defmethod kc4-val ((m <Polyn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calib_interface_msgs-msg:kc4-val is deprecated.  Use calib_interface_msgs-msg:kc4 instead.")
  (kc4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polyn>) ostream)
  "Serializes a message object of type '<Polyn>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kc1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kc2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kc3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kc4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polyn>) istream)
  "Deserializes a message object of type '<Polyn>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kc1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kc2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kc3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kc4) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polyn>)))
  "Returns string type for a message object of type '<Polyn>"
  "calib_interface_msgs/Polyn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polyn)))
  "Returns string type for a message object of type 'Polyn"
  "calib_interface_msgs/Polyn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polyn>)))
  "Returns md5sum for a message object of type '<Polyn>"
  "13c3613f258efaf8c7ba6935cbfeffb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polyn)))
  "Returns md5sum for a message object of type 'Polyn"
  "13c3613f258efaf8c7ba6935cbfeffb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polyn>)))
  "Returns full string definition for message of type '<Polyn>"
  (cl:format cl:nil "float64 kc1~%float64 kc2~%float64 kc3~%float64 kc4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polyn)))
  "Returns full string definition for message of type 'Polyn"
  (cl:format cl:nil "float64 kc1~%float64 kc2~%float64 kc3~%float64 kc4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polyn>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polyn>))
  "Converts a ROS message object to a list"
  (cl:list 'Polyn
    (cl:cons ':kc1 (kc1 msg))
    (cl:cons ':kc2 (kc2 msg))
    (cl:cons ':kc3 (kc3 msg))
    (cl:cons ':kc4 (kc4 msg))
))
