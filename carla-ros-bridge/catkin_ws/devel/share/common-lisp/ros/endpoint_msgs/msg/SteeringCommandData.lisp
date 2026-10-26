; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SteeringCommandData.msg.html

(cl:defclass <SteeringCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (steering_enable
    :reader steering_enable
    :initarg :steering_enable
    :type cl:boolean
    :initform cl:nil)
   (steering_type
    :reader steering_type
    :initarg :steering_type
    :type endpoint_msgs-msg:SteeringType
    :initform (cl:make-instance 'endpoint_msgs-msg:SteeringType))
   (steering_command
    :reader steering_command
    :initarg :steering_command
    :type cl:float
    :initform 0.0)
   (steering_rate
    :reader steering_rate
    :initarg :steering_rate
    :type cl:float
    :initform 0.0)
   (rwheel_steer_mode
    :reader rwheel_steer_mode
    :initarg :rwheel_steer_mode
    :type endpoint_msgs-msg:RWhSteerModType
    :initform (cl:make-instance 'endpoint_msgs-msg:RWhSteerModType))
   (rwheel_command
    :reader rwheel_command
    :initarg :rwheel_command
    :type cl:float
    :initform 0.0)
   (rwheel_steer_direction
    :reader rwheel_steer_direction
    :initarg :rwheel_steer_direction
    :type endpoint_msgs-msg:RWhSteerDirection
    :initform (cl:make-instance 'endpoint_msgs-msg:RWhSteerDirection)))
)

(cl:defclass SteeringCommandData (<SteeringCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SteeringCommandData> is deprecated: use endpoint_msgs-msg:SteeringCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'steering_enable-val :lambda-list '(m))
(cl:defmethod steering_enable-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_enable-val is deprecated.  Use endpoint_msgs-msg:steering_enable instead.")
  (steering_enable m))

(cl:ensure-generic-function 'steering_type-val :lambda-list '(m))
(cl:defmethod steering_type-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_type-val is deprecated.  Use endpoint_msgs-msg:steering_type instead.")
  (steering_type m))

(cl:ensure-generic-function 'steering_command-val :lambda-list '(m))
(cl:defmethod steering_command-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_command-val is deprecated.  Use endpoint_msgs-msg:steering_command instead.")
  (steering_command m))

(cl:ensure-generic-function 'steering_rate-val :lambda-list '(m))
(cl:defmethod steering_rate-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_rate-val is deprecated.  Use endpoint_msgs-msg:steering_rate instead.")
  (steering_rate m))

(cl:ensure-generic-function 'rwheel_steer_mode-val :lambda-list '(m))
(cl:defmethod rwheel_steer_mode-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rwheel_steer_mode-val is deprecated.  Use endpoint_msgs-msg:rwheel_steer_mode instead.")
  (rwheel_steer_mode m))

(cl:ensure-generic-function 'rwheel_command-val :lambda-list '(m))
(cl:defmethod rwheel_command-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rwheel_command-val is deprecated.  Use endpoint_msgs-msg:rwheel_command instead.")
  (rwheel_command m))

(cl:ensure-generic-function 'rwheel_steer_direction-val :lambda-list '(m))
(cl:defmethod rwheel_steer_direction-val ((m <SteeringCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rwheel_steer_direction-val is deprecated.  Use endpoint_msgs-msg:rwheel_steer_direction instead.")
  (rwheel_steer_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringCommandData>) ostream)
  "Serializes a message object of type '<SteeringCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steering_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rwheel_steer_mode) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rwheel_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rwheel_steer_direction) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringCommandData>) istream)
  "Deserializes a message object of type '<SteeringCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_command) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_rate) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rwheel_steer_mode) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rwheel_command) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rwheel_steer_direction) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringCommandData>)))
  "Returns string type for a message object of type '<SteeringCommandData>"
  "endpoint_msgs/SteeringCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringCommandData)))
  "Returns string type for a message object of type 'SteeringCommandData"
  "endpoint_msgs/SteeringCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringCommandData>)))
  "Returns md5sum for a message object of type '<SteeringCommandData>"
  "74daa77130cbc9d11a8502a26e4f9bc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringCommandData)))
  "Returns md5sum for a message object of type 'SteeringCommandData"
  "74daa77130cbc9d11a8502a26e4f9bc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringCommandData>)))
  "Returns full string definition for message of type '<SteeringCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool steering_enable~%endpoint_msgs/SteeringType steering_type~%float32 steering_command~%float32 steering_rate~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%float32 rwheel_command~%endpoint_msgs/RWhSteerDirection rwheel_steer_direction~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringCommandData)))
  "Returns full string definition for message of type 'SteeringCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%bool steering_enable~%endpoint_msgs/SteeringType steering_type~%float32 steering_command~%float32 steering_rate~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%float32 rwheel_command~%endpoint_msgs/RWhSteerDirection rwheel_steer_direction~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringCommandData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_type))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rwheel_steer_mode))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rwheel_steer_direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':steering_enable (steering_enable msg))
    (cl:cons ':steering_type (steering_type msg))
    (cl:cons ':steering_command (steering_command msg))
    (cl:cons ':steering_rate (steering_rate msg))
    (cl:cons ':rwheel_steer_mode (rwheel_steer_mode msg))
    (cl:cons ':rwheel_command (rwheel_command msg))
    (cl:cons ':rwheel_steer_direction (rwheel_steer_direction msg))
))
