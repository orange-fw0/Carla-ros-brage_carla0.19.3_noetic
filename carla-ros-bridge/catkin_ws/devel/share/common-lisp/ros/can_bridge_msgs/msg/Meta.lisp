; Auto-generated. Do not edit!


(cl:in-package can_bridge_msgs-msg)


;//! \htmlinclude Meta.msg.html

(cl:defclass <Meta> (roslisp-msg-protocol:ros-message)
  ((sensor_timestamp_us
    :reader sensor_timestamp_us
    :initarg :sensor_timestamp_us
    :type cl:integer
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0))
)

(cl:defclass Meta (<Meta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Meta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Meta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_bridge_msgs-msg:<Meta> is deprecated: use can_bridge_msgs-msg:Meta instead.")))

(cl:ensure-generic-function 'sensor_timestamp_us-val :lambda-list '(m))
(cl:defmethod sensor_timestamp_us-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:sensor_timestamp_us-val is deprecated.  Use can_bridge_msgs-msg:sensor_timestamp_us instead.")
  (sensor_timestamp_us m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:seq-val is deprecated.  Use can_bridge_msgs-msg:seq instead.")
  (seq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Meta>) ostream)
  "Serializes a message object of type '<Meta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sensor_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Meta>) istream)
  "Deserializes a message object of type '<Meta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sensor_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Meta>)))
  "Returns string type for a message object of type '<Meta>"
  "can_bridge_msgs/Meta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Meta)))
  "Returns string type for a message object of type 'Meta"
  "can_bridge_msgs/Meta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Meta>)))
  "Returns md5sum for a message object of type '<Meta>"
  "c0eb55b92cd5803d752d1235058646ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Meta)))
  "Returns md5sum for a message object of type 'Meta"
  "c0eb55b92cd5803d752d1235058646ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Meta>)))
  "Returns full string definition for message of type '<Meta>"
  (cl:format cl:nil "uint64 sensor_timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Meta)))
  "Returns full string definition for message of type 'Meta"
  (cl:format cl:nil "uint64 sensor_timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Meta>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Meta>))
  "Converts a ROS message object to a list"
  (cl:list 'Meta
    (cl:cons ':sensor_timestamp_us (sensor_timestamp_us msg))
    (cl:cons ':seq (seq msg))
))
