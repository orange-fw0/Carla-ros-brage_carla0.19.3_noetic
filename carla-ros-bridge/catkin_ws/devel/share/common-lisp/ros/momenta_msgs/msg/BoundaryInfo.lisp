; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude BoundaryInfo.msg.html

(cl:defclass <BoundaryInfo> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BoundaryInfo (<BoundaryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundaryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundaryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<BoundaryInfo> is deprecated: use momenta_msgs-msg:BoundaryInfo instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <BoundaryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:length-val is deprecated.  Use momenta_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <BoundaryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:type-val is deprecated.  Use momenta_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundaryInfo>) ostream)
  "Serializes a message object of type '<BoundaryInfo>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundaryInfo>) istream)
  "Deserializes a message object of type '<BoundaryInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundaryInfo>)))
  "Returns string type for a message object of type '<BoundaryInfo>"
  "momenta_msgs/BoundaryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundaryInfo)))
  "Returns string type for a message object of type 'BoundaryInfo"
  "momenta_msgs/BoundaryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundaryInfo>)))
  "Returns md5sum for a message object of type '<BoundaryInfo>"
  "2ba419d75b1c76e64b41d569815c5f08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundaryInfo)))
  "Returns md5sum for a message object of type 'BoundaryInfo"
  "2ba419d75b1c76e64b41d569815c5f08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundaryInfo>)))
  "Returns full string definition for message of type '<BoundaryInfo>"
  (cl:format cl:nil "float64 length~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundaryInfo)))
  "Returns full string definition for message of type 'BoundaryInfo"
  (cl:format cl:nil "float64 length~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundaryInfo>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundaryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundaryInfo
    (cl:cons ':length (length msg))
    (cl:cons ':type (type msg))
))
