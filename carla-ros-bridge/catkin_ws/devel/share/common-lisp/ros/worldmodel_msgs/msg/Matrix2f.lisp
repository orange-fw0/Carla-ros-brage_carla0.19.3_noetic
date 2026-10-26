; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude Matrix2f.msg.html

(cl:defclass <Matrix2f> (roslisp-msg-protocol:ros-message)
  ((x00
    :reader x00
    :initarg :x00
    :type cl:float
    :initform 0.0)
   (x01
    :reader x01
    :initarg :x01
    :type cl:float
    :initform 0.0)
   (x10
    :reader x10
    :initarg :x10
    :type cl:float
    :initform 0.0)
   (x11
    :reader x11
    :initarg :x11
    :type cl:float
    :initform 0.0))
)

(cl:defclass Matrix2f (<Matrix2f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Matrix2f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Matrix2f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<Matrix2f> is deprecated: use worldmodel_msgs-msg:Matrix2f instead.")))

(cl:ensure-generic-function 'x00-val :lambda-list '(m))
(cl:defmethod x00-val ((m <Matrix2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:x00-val is deprecated.  Use worldmodel_msgs-msg:x00 instead.")
  (x00 m))

(cl:ensure-generic-function 'x01-val :lambda-list '(m))
(cl:defmethod x01-val ((m <Matrix2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:x01-val is deprecated.  Use worldmodel_msgs-msg:x01 instead.")
  (x01 m))

(cl:ensure-generic-function 'x10-val :lambda-list '(m))
(cl:defmethod x10-val ((m <Matrix2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:x10-val is deprecated.  Use worldmodel_msgs-msg:x10 instead.")
  (x10 m))

(cl:ensure-generic-function 'x11-val :lambda-list '(m))
(cl:defmethod x11-val ((m <Matrix2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:x11-val is deprecated.  Use worldmodel_msgs-msg:x11 instead.")
  (x11 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Matrix2f>) ostream)
  "Serializes a message object of type '<Matrix2f>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x00))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x01))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x10))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x11))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Matrix2f>) istream)
  "Deserializes a message object of type '<Matrix2f>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x00) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x01) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x10) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x11) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Matrix2f>)))
  "Returns string type for a message object of type '<Matrix2f>"
  "worldmodel_msgs/Matrix2f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Matrix2f)))
  "Returns string type for a message object of type 'Matrix2f"
  "worldmodel_msgs/Matrix2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Matrix2f>)))
  "Returns md5sum for a message object of type '<Matrix2f>"
  "11a08429dd19fa4ec764b532481b4084")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Matrix2f)))
  "Returns md5sum for a message object of type 'Matrix2f"
  "11a08429dd19fa4ec764b532481b4084")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Matrix2f>)))
  "Returns full string definition for message of type '<Matrix2f>"
  (cl:format cl:nil "float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Matrix2f)))
  "Returns full string definition for message of type 'Matrix2f"
  (cl:format cl:nil "float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Matrix2f>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Matrix2f>))
  "Converts a ROS message object to a list"
  (cl:list 'Matrix2f
    (cl:cons ':x00 (x00 msg))
    (cl:cons ':x01 (x01 msg))
    (cl:cons ':x10 (x10 msg))
    (cl:cons ':x11 (x11 msg))
))
