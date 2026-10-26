; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SBPRequestMeta.msg.html

(cl:defclass <SBPRequestMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0))
)

(cl:defclass SBPRequestMeta (<SBPRequestMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SBPRequestMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SBPRequestMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SBPRequestMeta> is deprecated: use planning_msgs-msg:SBPRequestMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <SBPRequestMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:timestamp_us-val is deprecated.  Use planning_msgs-msg:timestamp_us instead.")
  (timestamp_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SBPRequestMeta>) ostream)
  "Serializes a message object of type '<SBPRequestMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SBPRequestMeta>) istream)
  "Deserializes a message object of type '<SBPRequestMeta>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SBPRequestMeta>)))
  "Returns string type for a message object of type '<SBPRequestMeta>"
  "planning_msgs/SBPRequestMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SBPRequestMeta)))
  "Returns string type for a message object of type 'SBPRequestMeta"
  "planning_msgs/SBPRequestMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SBPRequestMeta>)))
  "Returns md5sum for a message object of type '<SBPRequestMeta>"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SBPRequestMeta)))
  "Returns md5sum for a message object of type 'SBPRequestMeta"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SBPRequestMeta>)))
  "Returns full string definition for message of type '<SBPRequestMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SBPRequestMeta)))
  "Returns full string definition for message of type 'SBPRequestMeta"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SBPRequestMeta>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SBPRequestMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'SBPRequestMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
))
