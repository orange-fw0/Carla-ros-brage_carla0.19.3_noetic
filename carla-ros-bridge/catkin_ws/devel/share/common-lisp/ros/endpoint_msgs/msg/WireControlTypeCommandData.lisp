; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WireControlTypeCommandData.msg.html

(cl:defclass <WireControlTypeCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (wire_type
    :reader wire_type
    :initarg :wire_type
    :type endpoint_msgs-msg:WireControlType
    :initform (cl:make-instance 'endpoint_msgs-msg:WireControlType)))
)

(cl:defclass WireControlTypeCommandData (<WireControlTypeCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WireControlTypeCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WireControlTypeCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WireControlTypeCommandData> is deprecated: use endpoint_msgs-msg:WireControlTypeCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <WireControlTypeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'wire_type-val :lambda-list '(m))
(cl:defmethod wire_type-val ((m <WireControlTypeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wire_type-val is deprecated.  Use endpoint_msgs-msg:wire_type instead.")
  (wire_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WireControlTypeCommandData>) ostream)
  "Serializes a message object of type '<WireControlTypeCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wire_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WireControlTypeCommandData>) istream)
  "Deserializes a message object of type '<WireControlTypeCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wire_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WireControlTypeCommandData>)))
  "Returns string type for a message object of type '<WireControlTypeCommandData>"
  "endpoint_msgs/WireControlTypeCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WireControlTypeCommandData)))
  "Returns string type for a message object of type 'WireControlTypeCommandData"
  "endpoint_msgs/WireControlTypeCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WireControlTypeCommandData>)))
  "Returns md5sum for a message object of type '<WireControlTypeCommandData>"
  "c6a28884676b53e9cfe8c617659e54a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WireControlTypeCommandData)))
  "Returns md5sum for a message object of type 'WireControlTypeCommandData"
  "c6a28884676b53e9cfe8c617659e54a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WireControlTypeCommandData>)))
  "Returns full string definition for message of type '<WireControlTypeCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WireControlType wire_type~%~%================================================================================~%MSG: endpoint_msgs/WireControlType~%uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WireControlTypeCommandData)))
  "Returns full string definition for message of type 'WireControlTypeCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WireControlType wire_type~%~%================================================================================~%MSG: endpoint_msgs/WireControlType~%uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WireControlTypeCommandData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wire_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WireControlTypeCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'WireControlTypeCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':wire_type (wire_type msg))
))
