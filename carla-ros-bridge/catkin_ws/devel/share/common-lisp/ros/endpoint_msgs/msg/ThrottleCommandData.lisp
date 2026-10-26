; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ThrottleCommandData.msg.html

(cl:defclass <ThrottleCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (throttle_enable
    :reader throttle_enable
    :initarg :throttle_enable
    :type cl:boolean
    :initform cl:nil)
   (throttle_type
    :reader throttle_type
    :initarg :throttle_type
    :type endpoint_msgs-msg:ThrottleType
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleType))
   (throttle_command
    :reader throttle_command
    :initarg :throttle_command
    :type cl:float
    :initform 0.0))
)

(cl:defclass ThrottleCommandData (<ThrottleCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ThrottleCommandData> is deprecated: use endpoint_msgs-msg:ThrottleCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <ThrottleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'throttle_enable-val :lambda-list '(m))
(cl:defmethod throttle_enable-val ((m <ThrottleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_enable-val is deprecated.  Use endpoint_msgs-msg:throttle_enable instead.")
  (throttle_enable m))

(cl:ensure-generic-function 'throttle_type-val :lambda-list '(m))
(cl:defmethod throttle_type-val ((m <ThrottleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_type-val is deprecated.  Use endpoint_msgs-msg:throttle_type instead.")
  (throttle_type m))

(cl:ensure-generic-function 'throttle_command-val :lambda-list '(m))
(cl:defmethod throttle_command-val ((m <ThrottleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_command-val is deprecated.  Use endpoint_msgs-msg:throttle_command instead.")
  (throttle_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleCommandData>) ostream)
  "Serializes a message object of type '<ThrottleCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'throttle_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleCommandData>) istream)
  "Deserializes a message object of type '<ThrottleCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_command) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleCommandData>)))
  "Returns string type for a message object of type '<ThrottleCommandData>"
  "endpoint_msgs/ThrottleCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleCommandData)))
  "Returns string type for a message object of type 'ThrottleCommandData"
  "endpoint_msgs/ThrottleCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleCommandData>)))
  "Returns md5sum for a message object of type '<ThrottleCommandData>"
  "5fac3cfd380ece3f6d32ce8bb7b2795d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleCommandData)))
  "Returns md5sum for a message object of type 'ThrottleCommandData"
  "5fac3cfd380ece3f6d32ce8bb7b2795d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleCommandData>)))
  "Returns full string definition for message of type '<ThrottleCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool throttle_enable~%endpoint_msgs/ThrottleType throttle_type~%float32 throttle_command~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleCommandData)))
  "Returns full string definition for message of type 'ThrottleCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%bool throttle_enable~%endpoint_msgs/ThrottleType throttle_type~%float32 throttle_command~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleCommandData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':throttle_enable (throttle_enable msg))
    (cl:cons ':throttle_type (throttle_type msg))
    (cl:cons ':throttle_command (throttle_command msg))
))
