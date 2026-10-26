; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude MffCommand.msg.html

(cl:defclass <MffCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mff_vehicle_command
    :reader mff_vehicle_command
    :initarg :mff_vehicle_command
    :type endpoint_msgs-msg:MffVehicleCommand
    :initform (cl:make-instance 'endpoint_msgs-msg:MffVehicleCommand)))
)

(cl:defclass MffCommand (<MffCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MffCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MffCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<MffCommand> is deprecated: use endpoint_msgs-msg:MffCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MffCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:header-val is deprecated.  Use endpoint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mff_vehicle_command-val :lambda-list '(m))
(cl:defmethod mff_vehicle_command-val ((m <MffCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:mff_vehicle_command-val is deprecated.  Use endpoint_msgs-msg:mff_vehicle_command instead.")
  (mff_vehicle_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MffCommand>) ostream)
  "Serializes a message object of type '<MffCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mff_vehicle_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MffCommand>) istream)
  "Deserializes a message object of type '<MffCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mff_vehicle_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MffCommand>)))
  "Returns string type for a message object of type '<MffCommand>"
  "endpoint_msgs/MffCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MffCommand)))
  "Returns string type for a message object of type 'MffCommand"
  "endpoint_msgs/MffCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MffCommand>)))
  "Returns md5sum for a message object of type '<MffCommand>"
  "82fd94470458a3806d1e9ab9ea8f37ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MffCommand)))
  "Returns md5sum for a message object of type 'MffCommand"
  "82fd94470458a3806d1e9ab9ea8f37ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MffCommand>)))
  "Returns full string definition for message of type '<MffCommand>"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/MffVehicleCommand mff_vehicle_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/MffVehicleCommand~%uint8 MFF_VEHICLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/MffVehicleCommandData mff_vehicle_command_data~%string json_command~%~%================================================================================~%MSG: endpoint_msgs/MffVehicleCommandData~%uint64 timestamp_us~%endpoint_msgs/HeatWireCommand heat_wire_command~%endpoint_msgs/RearviewMirrorCommand rearview_mirror_command~%endpoint_msgs/SuspensionCommand suspension_comand~%endpoint_msgs/SentryModeCommand sentrymode_command~%endpoint_msgs/TurnSignalCommand turn_signal_command~%~%================================================================================~%MSG: endpoint_msgs/HeatWireCommand~%endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorCommand~%bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionCommand~%bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryModeCommand~%endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignalCommand~%bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MffCommand)))
  "Returns full string definition for message of type 'MffCommand"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/MffVehicleCommand mff_vehicle_command~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/MffVehicleCommand~%uint8 MFF_VEHICLE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/MffVehicleCommandData mff_vehicle_command_data~%string json_command~%~%================================================================================~%MSG: endpoint_msgs/MffVehicleCommandData~%uint64 timestamp_us~%endpoint_msgs/HeatWireCommand heat_wire_command~%endpoint_msgs/RearviewMirrorCommand rearview_mirror_command~%endpoint_msgs/SuspensionCommand suspension_comand~%endpoint_msgs/SentryModeCommand sentrymode_command~%endpoint_msgs/TurnSignalCommand turn_signal_command~%~%================================================================================~%MSG: endpoint_msgs/HeatWireCommand~%endpoint_msgs/CameraSurfaceCondition ff_camera_status~%endpoint_msgs/CameraSurfaceCondition fw_camera_status~%endpoint_msgs/HeatWireControlType heat_wire_control~%~%================================================================================~%MSG: endpoint_msgs/CameraSurfaceCondition~%uint8 INVALID = 0~%uint8 NORMAL = 1~%uint8 WATER = 2~%uint8 MOISTURE = 3~%uint8 BLOCKAGE = 4~%uint8 DIZZY = 5~%uint8 DARKNESS = 6~%uint8 DIRTY = 7~%uint8 RESERVED1 = 8~%uint8 RESERVED2 = 9~%uint8 RESERVED3 = 10~%uint8 RESERVED4 = 11~%uint8 RESERVED5 = 12~%uint8 RESERVED6 = 13~%uint8 RESERVED7 = 14~%uint8 RESERVED8 = 15~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HeatWireControlType~%uint8 NONE = 0~%uint8 STANDBY = 1~%uint8 HEAT = 2~%uint8 NOHEAT = 3~%uint8 FAILURE = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorCommand~%bool rearview_mirror_enable~%endpoint_msgs/MirrorState rearview_mirror_command~%endpoint_msgs/RWhSteerModType rwheel_steer_mode~%~%================================================================================~%MSG: endpoint_msgs/MirrorState~%uint8 NO_REQUEST = 0~%uint8 REQUEST_UNFOLD = 1~%uint8 REQUEST_FOLD = 2~%uint8 RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionCommand~%bool suspension_enable~%bool suspension_adjust_pause~%bool suspension_safety_mode~%endpoint_msgs/SuspensionLevel suspension_level_command~%~%================================================================================~%MSG: endpoint_msgs/SuspensionLevel~%uint8 SUSPENSION_NONE = 0~%uint8 SUSPENSION_LEVEL1 = 1~%uint8 SUSPENSION_LEVEL2 = 2~%uint8 SUSPENSION_LEVEL3 = 3~%uint8 SUSPENSION_LEVEL4 = 4~%uint8 SUSPENSION_LEVEL5 = 5~%uint8 SUSPENSION_LEVEL6 = 6~%uint8 SUSPENSION_LEVEL7 = 7~%uint8 SUSPENSION_LEVEL8 = 8~%uint8 SUSPENSION_LEVEL9 = 9~%uint8 SUSPENSION_LEVEL10 = 10~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryModeCommand~%endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignalCommand~%bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MffCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mff_vehicle_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MffCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MffCommand
    (cl:cons ':header (header msg))
    (cl:cons ':mff_vehicle_command (mff_vehicle_command msg))
))
