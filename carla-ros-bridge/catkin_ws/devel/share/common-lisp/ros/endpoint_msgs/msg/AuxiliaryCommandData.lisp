; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AuxiliaryCommandData.msg.html

(cl:defclass <AuxiliaryCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (wiper_enable
    :reader wiper_enable
    :initarg :wiper_enable
    :type cl:boolean
    :initform cl:nil)
   (front_wiper
    :reader front_wiper
    :initarg :front_wiper
    :type endpoint_msgs-msg:WiperCommandType
    :initform (cl:make-instance 'endpoint_msgs-msg:WiperCommandType))
   (rear_wiper
    :reader rear_wiper
    :initarg :rear_wiper
    :type endpoint_msgs-msg:WiperCommandType
    :initform (cl:make-instance 'endpoint_msgs-msg:WiperCommandType))
   (rearview_mirror
    :reader rearview_mirror
    :initarg :rearview_mirror
    :type endpoint_msgs-msg:MirrorState
    :initform (cl:make-instance 'endpoint_msgs-msg:MirrorState))
   (vehicle_power
    :reader vehicle_power
    :initarg :vehicle_power
    :type endpoint_msgs-msg:PowerModeType
    :initform (cl:make-instance 'endpoint_msgs-msg:PowerModeType))
   (vehicle_lock
    :reader vehicle_lock
    :initarg :vehicle_lock
    :type endpoint_msgs-msg:VehicleLockType
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleLockType))
   (seat_belt_alarm
    :reader seat_belt_alarm
    :initarg :seat_belt_alarm
    :type cl:boolean
    :initform cl:nil)
   (seat_belt_tightening
    :reader seat_belt_tightening
    :initarg :seat_belt_tightening
    :type cl:boolean
    :initform cl:nil)
   (steering_wheel_alarm
    :reader steering_wheel_alarm
    :initarg :steering_wheel_alarm
    :type cl:boolean
    :initform cl:nil)
   (buzzer_alarm
    :reader buzzer_alarm
    :initarg :buzzer_alarm
    :type cl:boolean
    :initform cl:nil)
   (horn_enable
    :reader horn_enable
    :initarg :horn_enable
    :type cl:boolean
    :initform cl:nil)
   (parking_lonti_control_mode
    :reader parking_lonti_control_mode
    :initarg :parking_lonti_control_mode
    :type endpoint_msgs-msg:ApaVcurCtlMode
    :initform (cl:make-instance 'endpoint_msgs-msg:ApaVcurCtlMode))
   (emergencybraking_enable
    :reader emergencybraking_enable
    :initarg :emergencybraking_enable
    :type cl:boolean
    :initform cl:nil)
   (gradualbraking_enable
    :reader gradualbraking_enable
    :initarg :gradualbraking_enable
    :type cl:boolean
    :initform cl:nil)
   (shared_control_enable
    :reader shared_control_enable
    :initarg :shared_control_enable
    :type cl:boolean
    :initform cl:nil)
   (shared_contro_state
    :reader shared_contro_state
    :initarg :shared_contro_state
    :type cl:boolean
    :initform cl:nil)
   (shared_control_steer_gain_level
    :reader shared_control_steer_gain_level
    :initarg :shared_control_steer_gain_level
    :type cl:float
    :initform 0.0)
   (shared_control_eps_torque_limit
    :reader shared_control_eps_torque_limit
    :initarg :shared_control_eps_torque_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass AuxiliaryCommandData (<AuxiliaryCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuxiliaryCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuxiliaryCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AuxiliaryCommandData> is deprecated: use endpoint_msgs-msg:AuxiliaryCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'wiper_enable-val :lambda-list '(m))
(cl:defmethod wiper_enable-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wiper_enable-val is deprecated.  Use endpoint_msgs-msg:wiper_enable instead.")
  (wiper_enable m))

(cl:ensure-generic-function 'front_wiper-val :lambda-list '(m))
(cl:defmethod front_wiper-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_wiper-val is deprecated.  Use endpoint_msgs-msg:front_wiper instead.")
  (front_wiper m))

(cl:ensure-generic-function 'rear_wiper-val :lambda-list '(m))
(cl:defmethod rear_wiper-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_wiper-val is deprecated.  Use endpoint_msgs-msg:rear_wiper instead.")
  (rear_wiper m))

(cl:ensure-generic-function 'rearview_mirror-val :lambda-list '(m))
(cl:defmethod rearview_mirror-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rearview_mirror-val is deprecated.  Use endpoint_msgs-msg:rearview_mirror instead.")
  (rearview_mirror m))

(cl:ensure-generic-function 'vehicle_power-val :lambda-list '(m))
(cl:defmethod vehicle_power-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_power-val is deprecated.  Use endpoint_msgs-msg:vehicle_power instead.")
  (vehicle_power m))

(cl:ensure-generic-function 'vehicle_lock-val :lambda-list '(m))
(cl:defmethod vehicle_lock-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_lock-val is deprecated.  Use endpoint_msgs-msg:vehicle_lock instead.")
  (vehicle_lock m))

(cl:ensure-generic-function 'seat_belt_alarm-val :lambda-list '(m))
(cl:defmethod seat_belt_alarm-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:seat_belt_alarm-val is deprecated.  Use endpoint_msgs-msg:seat_belt_alarm instead.")
  (seat_belt_alarm m))

(cl:ensure-generic-function 'seat_belt_tightening-val :lambda-list '(m))
(cl:defmethod seat_belt_tightening-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:seat_belt_tightening-val is deprecated.  Use endpoint_msgs-msg:seat_belt_tightening instead.")
  (seat_belt_tightening m))

(cl:ensure-generic-function 'steering_wheel_alarm-val :lambda-list '(m))
(cl:defmethod steering_wheel_alarm-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_wheel_alarm-val is deprecated.  Use endpoint_msgs-msg:steering_wheel_alarm instead.")
  (steering_wheel_alarm m))

(cl:ensure-generic-function 'buzzer_alarm-val :lambda-list '(m))
(cl:defmethod buzzer_alarm-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:buzzer_alarm-val is deprecated.  Use endpoint_msgs-msg:buzzer_alarm instead.")
  (buzzer_alarm m))

(cl:ensure-generic-function 'horn_enable-val :lambda-list '(m))
(cl:defmethod horn_enable-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:horn_enable-val is deprecated.  Use endpoint_msgs-msg:horn_enable instead.")
  (horn_enable m))

(cl:ensure-generic-function 'parking_lonti_control_mode-val :lambda-list '(m))
(cl:defmethod parking_lonti_control_mode-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:parking_lonti_control_mode-val is deprecated.  Use endpoint_msgs-msg:parking_lonti_control_mode instead.")
  (parking_lonti_control_mode m))

(cl:ensure-generic-function 'emergencybraking_enable-val :lambda-list '(m))
(cl:defmethod emergencybraking_enable-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:emergencybraking_enable-val is deprecated.  Use endpoint_msgs-msg:emergencybraking_enable instead.")
  (emergencybraking_enable m))

(cl:ensure-generic-function 'gradualbraking_enable-val :lambda-list '(m))
(cl:defmethod gradualbraking_enable-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:gradualbraking_enable-val is deprecated.  Use endpoint_msgs-msg:gradualbraking_enable instead.")
  (gradualbraking_enable m))

(cl:ensure-generic-function 'shared_control_enable-val :lambda-list '(m))
(cl:defmethod shared_control_enable-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:shared_control_enable-val is deprecated.  Use endpoint_msgs-msg:shared_control_enable instead.")
  (shared_control_enable m))

(cl:ensure-generic-function 'shared_contro_state-val :lambda-list '(m))
(cl:defmethod shared_contro_state-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:shared_contro_state-val is deprecated.  Use endpoint_msgs-msg:shared_contro_state instead.")
  (shared_contro_state m))

(cl:ensure-generic-function 'shared_control_steer_gain_level-val :lambda-list '(m))
(cl:defmethod shared_control_steer_gain_level-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:shared_control_steer_gain_level-val is deprecated.  Use endpoint_msgs-msg:shared_control_steer_gain_level instead.")
  (shared_control_steer_gain_level m))

(cl:ensure-generic-function 'shared_control_eps_torque_limit-val :lambda-list '(m))
(cl:defmethod shared_control_eps_torque_limit-val ((m <AuxiliaryCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:shared_control_eps_torque_limit-val is deprecated.  Use endpoint_msgs-msg:shared_control_eps_torque_limit instead.")
  (shared_control_eps_torque_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuxiliaryCommandData>) ostream)
  "Serializes a message object of type '<AuxiliaryCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wiper_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_wiper) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear_wiper) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rearview_mirror) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_power) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_lock) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'seat_belt_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'seat_belt_tightening) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steering_wheel_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buzzer_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'horn_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_lonti_control_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergencybraking_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gradualbraking_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shared_control_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shared_contro_state) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shared_control_steer_gain_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shared_control_eps_torque_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuxiliaryCommandData>) istream)
  "Deserializes a message object of type '<AuxiliaryCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wiper_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_wiper) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear_wiper) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rearview_mirror) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_power) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_lock) istream)
    (cl:setf (cl:slot-value msg 'seat_belt_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'seat_belt_tightening) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'steering_wheel_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buzzer_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'horn_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_lonti_control_mode) istream)
    (cl:setf (cl:slot-value msg 'emergencybraking_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gradualbraking_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'shared_control_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'shared_contro_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shared_control_steer_gain_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shared_control_eps_torque_limit) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuxiliaryCommandData>)))
  "Returns string type for a message object of type '<AuxiliaryCommandData>"
  "endpoint_msgs/AuxiliaryCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuxiliaryCommandData)))
  "Returns string type for a message object of type 'AuxiliaryCommandData"
  "endpoint_msgs/AuxiliaryCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuxiliaryCommandData>)))
  "Returns md5sum for a message object of type '<AuxiliaryCommandData>"
  "41eec34e86b9dc8b6e2aa4c7d0428198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuxiliaryCommandData)))
  "Returns md5sum for a message object of type 'AuxiliaryCommandData"
  "41eec34e86b9dc8b6e2aa4c7d0428198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuxiliaryCommandData>)))
  "Returns full string definition for message of type '<AuxiliaryCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool wiper_enable~%endpoint_msgs/WiperCommandType front_wiper~%endpoint_msgs/WiperCommandType rear_wiper~%endpoint_msgs/MirrorState rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power~%endpoint_msgs/VehicleLockType vehicle_lock~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%bool horn_enable~%endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode~%bool emergencybraking_enable~%bool gradualbraking_enable~%bool shared_control_enable~%bool shared_contro_state~%float32 shared_control_steer_gain_level~%float32 shared_control_eps_torque_limit~%~%================================================================================~%MSG: endpoint_msgs/WiperCommandType~%uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLockType~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ApaVcurCtlMode~%uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuxiliaryCommandData)))
  "Returns full string definition for message of type 'AuxiliaryCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%bool wiper_enable~%endpoint_msgs/WiperCommandType front_wiper~%endpoint_msgs/WiperCommandType rear_wiper~%endpoint_msgs/MirrorState rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power~%endpoint_msgs/VehicleLockType vehicle_lock~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%bool horn_enable~%endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode~%bool emergencybraking_enable~%bool gradualbraking_enable~%bool shared_control_enable~%bool shared_contro_state~%float32 shared_control_steer_gain_level~%float32 shared_control_eps_torque_limit~%~%================================================================================~%MSG: endpoint_msgs/WiperCommandType~%uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleLockType~%uint8 NONE = 0~%uint8 UNLOCK = 1~%uint8 LOCK = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ApaVcurCtlMode~%uint8 NORMAL = 0~%uint8 DR_SWITCH_MODE = 1~%uint8 OBSTACLE_CROSSING_MODE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuxiliaryCommandData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_wiper))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear_wiper))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rearview_mirror))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_power))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_lock))
     1
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_lonti_control_mode))
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuxiliaryCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'AuxiliaryCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':wiper_enable (wiper_enable msg))
    (cl:cons ':front_wiper (front_wiper msg))
    (cl:cons ':rear_wiper (rear_wiper msg))
    (cl:cons ':rearview_mirror (rearview_mirror msg))
    (cl:cons ':vehicle_power (vehicle_power msg))
    (cl:cons ':vehicle_lock (vehicle_lock msg))
    (cl:cons ':seat_belt_alarm (seat_belt_alarm msg))
    (cl:cons ':seat_belt_tightening (seat_belt_tightening msg))
    (cl:cons ':steering_wheel_alarm (steering_wheel_alarm msg))
    (cl:cons ':buzzer_alarm (buzzer_alarm msg))
    (cl:cons ':horn_enable (horn_enable msg))
    (cl:cons ':parking_lonti_control_mode (parking_lonti_control_mode msg))
    (cl:cons ':emergencybraking_enable (emergencybraking_enable msg))
    (cl:cons ':gradualbraking_enable (gradualbraking_enable msg))
    (cl:cons ':shared_control_enable (shared_control_enable msg))
    (cl:cons ':shared_contro_state (shared_contro_state msg))
    (cl:cons ':shared_control_steer_gain_level (shared_control_steer_gain_level msg))
    (cl:cons ':shared_control_eps_torque_limit (shared_control_eps_torque_limit msg))
))
