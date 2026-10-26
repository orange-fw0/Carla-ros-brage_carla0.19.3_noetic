; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ControlCommandMeta.msg.html

(cl:defclass <ControlCommandMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0))
)

(cl:defclass ControlCommandMeta (<ControlCommandMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommandMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommandMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ControlCommandMeta> is deprecated: use endpoint_msgs-msg:ControlCommandMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <ControlCommandMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommandMeta>) ostream)
  "Serializes a message object of type '<ControlCommandMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommandMeta>) istream)
  "Deserializes a message object of type '<ControlCommandMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommandMeta>)))
  "Returns string type for a message object of type '<ControlCommandMeta>"
  "endpoint_msgs/ControlCommandMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommandMeta)))
  "Returns string type for a message object of type 'ControlCommandMeta"
  "endpoint_msgs/ControlCommandMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommandMeta>)))
  "Returns md5sum for a message object of type '<ControlCommandMeta>"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommandMeta)))
  "Returns md5sum for a message object of type 'ControlCommandMeta"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommandMeta>)))
  "Returns full string definition for message of type '<ControlCommandMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommandMeta)))
  "Returns full string definition for message of type 'ControlCommandMeta"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommandMeta>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommandMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommandMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
))
