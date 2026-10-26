; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPResultMeta.msg.html

(cl:defclass <DLPResultMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0))
)

(cl:defclass DLPResultMeta (<DLPResultMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPResultMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPResultMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPResultMeta> is deprecated: use e2e_planning_msgs-msg:DLPResultMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <DLPResultMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:timestamp_us-val is deprecated.  Use e2e_planning_msgs-msg:timestamp_us instead.")
  (timestamp_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPResultMeta>) ostream)
  "Serializes a message object of type '<DLPResultMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPResultMeta>) istream)
  "Deserializes a message object of type '<DLPResultMeta>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPResultMeta>)))
  "Returns string type for a message object of type '<DLPResultMeta>"
  "e2e_planning_msgs/DLPResultMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPResultMeta)))
  "Returns string type for a message object of type 'DLPResultMeta"
  "e2e_planning_msgs/DLPResultMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPResultMeta>)))
  "Returns md5sum for a message object of type '<DLPResultMeta>"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPResultMeta)))
  "Returns md5sum for a message object of type 'DLPResultMeta"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPResultMeta>)))
  "Returns full string definition for message of type '<DLPResultMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPResultMeta)))
  "Returns full string definition for message of type 'DLPResultMeta"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPResultMeta>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPResultMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPResultMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
))
