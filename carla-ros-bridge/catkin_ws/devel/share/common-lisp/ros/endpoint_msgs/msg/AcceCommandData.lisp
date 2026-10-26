; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AcceCommandData.msg.html

(cl:defclass <AcceCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (command_value
    :reader command_value
    :initarg :command_value
    :type cl:float
    :initform 0.0)
   (acce_command_enable
    :reader acce_command_enable
    :initarg :acce_command_enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AcceCommandData (<AcceCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcceCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcceCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AcceCommandData> is deprecated: use endpoint_msgs-msg:AcceCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <AcceCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'command_value-val :lambda-list '(m))
(cl:defmethod command_value-val ((m <AcceCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:command_value-val is deprecated.  Use endpoint_msgs-msg:command_value instead.")
  (command_value m))

(cl:ensure-generic-function 'acce_command_enable-val :lambda-list '(m))
(cl:defmethod acce_command_enable-val ((m <AcceCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:acce_command_enable-val is deprecated.  Use endpoint_msgs-msg:acce_command_enable instead.")
  (acce_command_enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcceCommandData>) ostream)
  "Serializes a message object of type '<AcceCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'command_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'acce_command_enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcceCommandData>) istream)
  "Deserializes a message object of type '<AcceCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'command_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'acce_command_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcceCommandData>)))
  "Returns string type for a message object of type '<AcceCommandData>"
  "endpoint_msgs/AcceCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcceCommandData)))
  "Returns string type for a message object of type 'AcceCommandData"
  "endpoint_msgs/AcceCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcceCommandData>)))
  "Returns md5sum for a message object of type '<AcceCommandData>"
  "929517698b792fe3c6915383573116b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcceCommandData)))
  "Returns md5sum for a message object of type 'AcceCommandData"
  "929517698b792fe3c6915383573116b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcceCommandData>)))
  "Returns full string definition for message of type '<AcceCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%float32 command_value~%bool acce_command_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcceCommandData)))
  "Returns full string definition for message of type 'AcceCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%float32 command_value~%bool acce_command_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcceCommandData>))
  (cl:+ 0
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcceCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'AcceCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':command_value (command_value msg))
    (cl:cons ':acce_command_enable (acce_command_enable msg))
))
