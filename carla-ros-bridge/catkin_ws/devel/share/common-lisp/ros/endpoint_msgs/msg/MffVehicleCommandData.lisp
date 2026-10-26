; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude MffVehicleCommandData.msg.html

(cl:defclass <MffVehicleCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (heat_wire_command
    :reader heat_wire_command
    :initarg :heat_wire_command
    :type endpoint_msgs-msg:HeatWireCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:HeatWireCommand))
   (rearview_mirror_command
    :reader rearview_mirror_command
    :initarg :rearview_mirror_command
    :type endpoint_msgs-msg:RearviewMirrorCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:RearviewMirrorCommand))
   (suspension_comand
    :reader suspension_comand
    :initarg :suspension_comand
    :type endpoint_msgs-msg:SuspensionCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:SuspensionCommand))
   (sentrymode_command
    :reader sentrymode_command
    :initarg :sentrymode_command
    :type endpoint_msgs-msg:SentryModeCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:SentryModeCommand))
   (turn_signal_command
    :reader turn_signal_command
    :initarg :turn_signal_command
    :type endpoint_msgs-msg:TurnSignalCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:TurnSignalCommand)))
)

(cl:defclass MffVehicleCommandData (<MffVehicleCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MffVehicleCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MffVehicleCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<MffVehicleCommandData> is deprecated: use endpoint_msgs-msg:MffVehicleCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <MffVehicleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'heat_wire_command-val :lambda-list '(m))
(cl:defmethod heat_wire_command-val ((m <MffVehicleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:heat_wire_command-val is deprecated.  Use endpoint_msgs-msg:heat_wire_command instead.")
  (heat_wire_command m))

(cl:ensure-generic-function 'rearview_mirror_command-val :lambda-list '(m))
(cl:defmethod rearview_mirror_command-val ((m <MffVehicleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rearview_mirror_command-val is deprecated.  Use endpoint_msgs-msg:rearview_mirror_command instead.")
  (rearview_mirror_command m))

(cl:ensure-generic-function 'suspension_comand-val :lambda-list '(m))
(cl:defmethod suspension_comand-val ((m <MffVehicleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_comand-val is deprecated.  Use endpoint_msgs-msg:suspension_comand instead.")
  (suspension_comand m))

(cl:ensure-generic-function 'sentrymode_command-val :lambda-list '(m))
(cl:defmethod sentrymode_command-val ((m <MffVehicleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:sentrymode_command-val is deprecated.  Use endpoint_msgs-msg:sentrymode_command instead.")
  (sentrymode_command m))

(cl:ensure-generic-function 'turn_signal_command-val :lambda-list '(m))
(cl:defmethod turn_signal_command-val ((m <MffVehicleCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:turn_signal_command-val is deprecated.  Use endpoint_msgs-msg:turn_signal_command instead.")
  (turn_signal_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MffVehicleCommandData>) ostream)
  "Serializes a message object of type '<MffVehicleCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heat_wire_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rearview_mirror_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'suspension_comand) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sentrymode_command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MffVehicleCommandData>) istream)
  "Deserializes a message object of type '<MffVehicleCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heat_wire_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rearview_mirror_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'suspension_comand) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sentrymode_command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MffVehicleCommandData>)))
  "Returns string type for a message object of type '<MffVehicleCommandData>"
  "endpoint_msgs/MffVehicleCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MffVehicleCommandData)))
  "Returns string type for a message object of type 'MffVehicleCommandData"
  "endpoint_msgs/MffVehicleCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MffVehicleCommandData>)))
  "Returns md5sum for a message object of type '<MffVehicleCommandData>"
  "43d96094e63e3fa9197ef19e0cceec16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MffVehicleCommandData)))
  "Returns md5sum for a message object of type 'MffVehicleCommandData"
  "43d96094e63e3fa9197ef19e0cceec16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MffVehicleCommandData>)))
  "Returns full string definition for message of type '<MffVehicleCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/HeatWireCommand heat_wire_command~%endpoint_msgs/RearviewMirrorCommand rearview_mirror_command~%endpoint_msgs/SuspensionCommand suspension_comand~%endpoint_msgs/SentryModeCommand sentrymode_command~%endpoint_msgs/TurnSignalCommand turn_signal_command~%~%================================================================================~%MSG: endpoint_msgs/HeatWireCommand~%endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorCommand~%bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionCommand~%bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryModeCommand~%endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignalCommand~%bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MffVehicleCommandData)))
  "Returns full string definition for message of type 'MffVehicleCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/HeatWireCommand heat_wire_command~%endpoint_msgs/RearviewMirrorCommand rearview_mirror_command~%endpoint_msgs/SuspensionCommand suspension_comand~%endpoint_msgs/SentryModeCommand sentrymode_command~%endpoint_msgs/TurnSignalCommand turn_signal_command~%~%================================================================================~%MSG: endpoint_msgs/HeatWireCommand~%endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorCommand~%bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionCommand~%bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryModeCommand~%endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignalCommand~%bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MffVehicleCommandData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heat_wire_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rearview_mirror_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'suspension_comand))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sentrymode_command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MffVehicleCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'MffVehicleCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':heat_wire_command (heat_wire_command msg))
    (cl:cons ':rearview_mirror_command (rearview_mirror_command msg))
    (cl:cons ':suspension_comand (suspension_comand msg))
    (cl:cons ':sentrymode_command (sentrymode_command msg))
    (cl:cons ':turn_signal_command (turn_signal_command msg))
))
