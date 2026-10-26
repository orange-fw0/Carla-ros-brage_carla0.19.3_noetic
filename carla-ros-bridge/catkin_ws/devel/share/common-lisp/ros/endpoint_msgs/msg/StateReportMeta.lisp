; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude StateReportMeta.msg.html

(cl:defclass <StateReportMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0))
)

(cl:defclass StateReportMeta (<StateReportMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateReportMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateReportMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<StateReportMeta> is deprecated: use endpoint_msgs-msg:StateReportMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <StateReportMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateReportMeta>) ostream)
  "Serializes a message object of type '<StateReportMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateReportMeta>) istream)
  "Deserializes a message object of type '<StateReportMeta>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateReportMeta>)))
  "Returns string type for a message object of type '<StateReportMeta>"
  "endpoint_msgs/StateReportMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateReportMeta)))
  "Returns string type for a message object of type 'StateReportMeta"
  "endpoint_msgs/StateReportMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateReportMeta>)))
  "Returns md5sum for a message object of type '<StateReportMeta>"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateReportMeta)))
  "Returns md5sum for a message object of type 'StateReportMeta"
  "cc14aafec8faef764879b1e3e0cd0bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateReportMeta>)))
  "Returns full string definition for message of type '<StateReportMeta>"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateReportMeta)))
  "Returns full string definition for message of type 'StateReportMeta"
  (cl:format cl:nil "uint64 timestamp_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateReportMeta>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateReportMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'StateReportMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
))
