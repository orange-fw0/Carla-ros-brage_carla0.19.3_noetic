; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude MffVehicleCommand.msg.html

(cl:defclass <MffVehicleCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (mff_vehicle_command_data
    :reader mff_vehicle_command_data
    :initarg :mff_vehicle_command_data
    :type endpoint_msgs-msg:MffVehicleCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:MffVehicleCommandData))
   (json_command
    :reader json_command
    :initarg :json_command
    :type cl:string
    :initform ""))
)

(cl:defclass MffVehicleCommand (<MffVehicleCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MffVehicleCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MffVehicleCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<MffVehicleCommand> is deprecated: use endpoint_msgs-msg:MffVehicleCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MffVehicleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'mff_vehicle_command_data-val :lambda-list '(m))
(cl:defmethod mff_vehicle_command_data-val ((m <MffVehicleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:mff_vehicle_command_data-val is deprecated.  Use endpoint_msgs-msg:mff_vehicle_command_data instead.")
  (mff_vehicle_command_data m))

(cl:ensure-generic-function 'json_command-val :lambda-list '(m))
(cl:defmethod json_command-val ((m <MffVehicleCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:json_command-val is deprecated.  Use endpoint_msgs-msg:json_command instead.")
  (json_command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MffVehicleCommand>)))
    "Constants for message type '<MffVehicleCommand>"
  '((:MFF_VEHICLE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MffVehicleCommand)))
    "Constants for message type 'MffVehicleCommand"
  '((:MFF_VEHICLE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MffVehicleCommand>) ostream)
  "Serializes a message object of type '<MffVehicleCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mff_vehicle_command_data) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MffVehicleCommand>) istream)
  "Deserializes a message object of type '<MffVehicleCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mff_vehicle_command_data) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MffVehicleCommand>)))
  "Returns string type for a message object of type '<MffVehicleCommand>"
  "endpoint_msgs/MffVehicleCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MffVehicleCommand)))
  "Returns string type for a message object of type 'MffVehicleCommand"
  "endpoint_msgs/MffVehicleCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MffVehicleCommand>)))
  "Returns md5sum for a message object of type '<MffVehicleCommand>"
  "8482add1d3da79c9d38a17fa8e74b284")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MffVehicleCommand)))
  "Returns md5sum for a message object of type 'MffVehicleCommand"
  "8482add1d3da79c9d38a17fa8e74b284")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MffVehicleCommand>)))
  "Returns full string definition for message of type '<MffVehicleCommand>"
  (cl:format cl:nil "uint8 MFF_VEHICLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/MffVehicleCommandData mff_vehicle_command_data~%string json_command~%~%================================================================================~%MSG: endpoint_msgs/MffVehicleCommandData~%uint64 timestamp_us~%endpoint_msgs/HeatWireCommand heat_wire_command~%endpoint_msgs/RearviewMirrorCommand rearview_mirror_command~%endpoint_msgs/SuspensionCommand suspension_comand~%endpoint_msgs/SentryModeCommand sentrymode_command~%endpoint_msgs/TurnSignalCommand turn_signal_command~%~%================================================================================~%MSG: endpoint_msgs/HeatWireCommand~%endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorCommand~%bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionCommand~%bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryModeCommand~%endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignalCommand~%bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MffVehicleCommand)))
  "Returns full string definition for message of type 'MffVehicleCommand"
  (cl:format cl:nil "uint8 MFF_VEHICLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/MffVehicleCommandData mff_vehicle_command_data~%string json_command~%~%================================================================================~%MSG: endpoint_msgs/MffVehicleCommandData~%uint64 timestamp_us~%endpoint_msgs/HeatWireCommand heat_wire_command~%endpoint_msgs/RearviewMirrorCommand rearview_mirror_command~%endpoint_msgs/SuspensionCommand suspension_comand~%endpoint_msgs/SentryModeCommand sentrymode_command~%endpoint_msgs/TurnSignalCommand turn_signal_command~%~%================================================================================~%MSG: endpoint_msgs/HeatWireCommand~%endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorCommand~%bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionCommand~%bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryModeCommand~%endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignalCommand~%bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MffVehicleCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mff_vehicle_command_data))
     4 (cl:length (cl:slot-value msg 'json_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MffVehicleCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MffVehicleCommand
    (cl:cons ':available (available msg))
    (cl:cons ':mff_vehicle_command_data (mff_vehicle_command_data msg))
    (cl:cons ':json_command (json_command msg))
))
