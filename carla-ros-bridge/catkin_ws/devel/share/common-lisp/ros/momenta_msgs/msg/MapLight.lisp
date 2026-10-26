; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MapLight.msg.html

(cl:defclass <MapLight> (roslisp-msg-protocol:ros-message)
  ((dis2crossing
    :reader dis2crossing
    :initarg :dis2crossing
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass MapLight (<MapLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MapLight> is deprecated: use momenta_msgs-msg:MapLight instead.")))

(cl:ensure-generic-function 'dis2crossing-val :lambda-list '(m))
(cl:defmethod dis2crossing-val ((m <MapLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:dis2crossing-val is deprecated.  Use momenta_msgs-msg:dis2crossing instead.")
  (dis2crossing m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MapLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:id-val is deprecated.  Use momenta_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapLight>) ostream)
  "Serializes a message object of type '<MapLight>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis2crossing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapLight>) istream)
  "Deserializes a message object of type '<MapLight>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis2crossing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapLight>)))
  "Returns string type for a message object of type '<MapLight>"
  "momenta_msgs/MapLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLight)))
  "Returns string type for a message object of type 'MapLight"
  "momenta_msgs/MapLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapLight>)))
  "Returns md5sum for a message object of type '<MapLight>"
  "7f8c71a1b4aa955564522ea27bff2646")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapLight)))
  "Returns md5sum for a message object of type 'MapLight"
  "7f8c71a1b4aa955564522ea27bff2646")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapLight>)))
  "Returns full string definition for message of type '<MapLight>"
  (cl:format cl:nil "float32 dis2crossing~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapLight)))
  "Returns full string definition for message of type 'MapLight"
  (cl:format cl:nil "float32 dis2crossing~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapLight>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapLight>))
  "Converts a ROS message object to a list"
  (cl:list 'MapLight
    (cl:cons ':dis2crossing (dis2crossing msg))
    (cl:cons ':id (id msg))
))
