; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SpeedCommandData.msg.html

(cl:defclass <SpeedCommandData> (roslisp-msg-protocol:ros-message)
  ((speed_enable
    :reader speed_enable
    :initarg :speed_enable
    :type cl:boolean
    :initform cl:nil)
   (toque_unload_enable
    :reader toque_unload_enable
    :initarg :toque_unload_enable
    :type cl:boolean
    :initform cl:nil)
   (speed_command
    :reader speed_command
    :initarg :speed_command
    :type cl:float
    :initform 0.0)
   (torque_ffwd_command
    :reader torque_ffwd_command
    :initarg :torque_ffwd_command
    :type cl:float
    :initform 0.0)
   (target_control_motor
    :reader target_control_motor
    :initarg :target_control_motor
    :type endpoint_msgs-msg:TargetControlMotor
    :initform (cl:make-instance 'endpoint_msgs-msg:TargetControlMotor))
   (target_control_mode
    :reader target_control_mode
    :initarg :target_control_mode
    :type endpoint_msgs-msg:TargetControlMode
    :initform (cl:make-instance 'endpoint_msgs-msg:TargetControlMode))
   (wheel_torque_lim_max
    :reader wheel_torque_lim_max
    :initarg :wheel_torque_lim_max
    :type cl:float
    :initform 0.0)
   (wheel_torque_lim_min
    :reader wheel_torque_lim_min
    :initarg :wheel_torque_lim_min
    :type cl:float
    :initform 0.0)
   (wheel_torque_rate_max
    :reader wheel_torque_rate_max
    :initarg :wheel_torque_rate_max
    :type cl:float
    :initform 0.0)
   (wheel_torque_rate_min
    :reader wheel_torque_rate_min
    :initarg :wheel_torque_rate_min
    :type cl:float
    :initform 0.0)
   (torque_unload_rate
    :reader torque_unload_rate
    :initarg :torque_unload_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpeedCommandData (<SpeedCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SpeedCommandData> is deprecated: use endpoint_msgs-msg:SpeedCommandData instead.")))

(cl:ensure-generic-function 'speed_enable-val :lambda-list '(m))
(cl:defmethod speed_enable-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:speed_enable-val is deprecated.  Use endpoint_msgs-msg:speed_enable instead.")
  (speed_enable m))

(cl:ensure-generic-function 'toque_unload_enable-val :lambda-list '(m))
(cl:defmethod toque_unload_enable-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:toque_unload_enable-val is deprecated.  Use endpoint_msgs-msg:toque_unload_enable instead.")
  (toque_unload_enable m))

(cl:ensure-generic-function 'speed_command-val :lambda-list '(m))
(cl:defmethod speed_command-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:speed_command-val is deprecated.  Use endpoint_msgs-msg:speed_command instead.")
  (speed_command m))

(cl:ensure-generic-function 'torque_ffwd_command-val :lambda-list '(m))
(cl:defmethod torque_ffwd_command-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:torque_ffwd_command-val is deprecated.  Use endpoint_msgs-msg:torque_ffwd_command instead.")
  (torque_ffwd_command m))

(cl:ensure-generic-function 'target_control_motor-val :lambda-list '(m))
(cl:defmethod target_control_motor-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:target_control_motor-val is deprecated.  Use endpoint_msgs-msg:target_control_motor instead.")
  (target_control_motor m))

(cl:ensure-generic-function 'target_control_mode-val :lambda-list '(m))
(cl:defmethod target_control_mode-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:target_control_mode-val is deprecated.  Use endpoint_msgs-msg:target_control_mode instead.")
  (target_control_mode m))

(cl:ensure-generic-function 'wheel_torque_lim_max-val :lambda-list '(m))
(cl:defmethod wheel_torque_lim_max-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_torque_lim_max-val is deprecated.  Use endpoint_msgs-msg:wheel_torque_lim_max instead.")
  (wheel_torque_lim_max m))

(cl:ensure-generic-function 'wheel_torque_lim_min-val :lambda-list '(m))
(cl:defmethod wheel_torque_lim_min-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_torque_lim_min-val is deprecated.  Use endpoint_msgs-msg:wheel_torque_lim_min instead.")
  (wheel_torque_lim_min m))

(cl:ensure-generic-function 'wheel_torque_rate_max-val :lambda-list '(m))
(cl:defmethod wheel_torque_rate_max-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_torque_rate_max-val is deprecated.  Use endpoint_msgs-msg:wheel_torque_rate_max instead.")
  (wheel_torque_rate_max m))

(cl:ensure-generic-function 'wheel_torque_rate_min-val :lambda-list '(m))
(cl:defmethod wheel_torque_rate_min-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_torque_rate_min-val is deprecated.  Use endpoint_msgs-msg:wheel_torque_rate_min instead.")
  (wheel_torque_rate_min m))

(cl:ensure-generic-function 'torque_unload_rate-val :lambda-list '(m))
(cl:defmethod torque_unload_rate-val ((m <SpeedCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:torque_unload_rate-val is deprecated.  Use endpoint_msgs-msg:torque_unload_rate instead.")
  (torque_unload_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedCommandData>) ostream)
  "Serializes a message object of type '<SpeedCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speed_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'toque_unload_enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torque_ffwd_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_control_motor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_control_mode) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_torque_lim_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_torque_lim_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_torque_rate_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_torque_rate_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torque_unload_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedCommandData>) istream)
  "Deserializes a message object of type '<SpeedCommandData>"
    (cl:setf (cl:slot-value msg 'speed_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'toque_unload_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_command) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque_ffwd_command) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_control_motor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_control_mode) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_torque_lim_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_torque_lim_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_torque_rate_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_torque_rate_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque_unload_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedCommandData>)))
  "Returns string type for a message object of type '<SpeedCommandData>"
  "endpoint_msgs/SpeedCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedCommandData)))
  "Returns string type for a message object of type 'SpeedCommandData"
  "endpoint_msgs/SpeedCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedCommandData>)))
  "Returns md5sum for a message object of type '<SpeedCommandData>"
  "eeb860bee7aa67ec8ce4d5fe72162bb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedCommandData)))
  "Returns md5sum for a message object of type 'SpeedCommandData"
  "eeb860bee7aa67ec8ce4d5fe72162bb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedCommandData>)))
  "Returns full string definition for message of type '<SpeedCommandData>"
  (cl:format cl:nil "bool speed_enable~%bool toque_unload_enable~%float32 speed_command~%float32 torque_ffwd_command~%endpoint_msgs/TargetControlMotor target_control_motor~%endpoint_msgs/TargetControlMode target_control_mode~%float32 wheel_torque_lim_max~%float32 wheel_torque_lim_min~%float32 wheel_torque_rate_max~%float32 wheel_torque_rate_min~%float32 torque_unload_rate~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMotor~%uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMode~%uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedCommandData)))
  "Returns full string definition for message of type 'SpeedCommandData"
  (cl:format cl:nil "bool speed_enable~%bool toque_unload_enable~%float32 speed_command~%float32 torque_ffwd_command~%endpoint_msgs/TargetControlMotor target_control_motor~%endpoint_msgs/TargetControlMode target_control_mode~%float32 wheel_torque_lim_max~%float32 wheel_torque_lim_min~%float32 wheel_torque_rate_max~%float32 wheel_torque_rate_min~%float32 torque_unload_rate~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMotor~%uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TargetControlMode~%uint8 NONE = 0~%uint8 TORQUE = 1~%uint8 SPEED = 2~%uint8 RESERVE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedCommandData>))
  (cl:+ 0
     1
     1
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_control_motor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_control_mode))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedCommandData
    (cl:cons ':speed_enable (speed_enable msg))
    (cl:cons ':toque_unload_enable (toque_unload_enable msg))
    (cl:cons ':speed_command (speed_command msg))
    (cl:cons ':torque_ffwd_command (torque_ffwd_command msg))
    (cl:cons ':target_control_motor (target_control_motor msg))
    (cl:cons ':target_control_mode (target_control_mode msg))
    (cl:cons ':wheel_torque_lim_max (wheel_torque_lim_max msg))
    (cl:cons ':wheel_torque_lim_min (wheel_torque_lim_min msg))
    (cl:cons ':wheel_torque_rate_max (wheel_torque_rate_max msg))
    (cl:cons ':wheel_torque_rate_min (wheel_torque_rate_min msg))
    (cl:cons ':torque_unload_rate (torque_unload_rate msg))
))
