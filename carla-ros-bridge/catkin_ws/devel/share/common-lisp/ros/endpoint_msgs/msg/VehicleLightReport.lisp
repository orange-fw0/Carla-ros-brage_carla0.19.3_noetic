; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleLightReport.msg.html

(cl:defclass <VehicleLightReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vehicle_light_report_data
    :reader vehicle_light_report_data
    :initarg :vehicle_light_report_data
    :type endpoint_msgs-msg:VehicleLightReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleLightReportData)))
)

(cl:defclass VehicleLightReport (<VehicleLightReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLightReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLightReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleLightReport> is deprecated: use endpoint_msgs-msg:VehicleLightReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <VehicleLightReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vehicle_light_report_data-val :lambda-list '(m))
(cl:defmethod vehicle_light_report_data-val ((m <VehicleLightReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_light_report_data-val is deprecated.  Use endpoint_msgs-msg:vehicle_light_report_data instead.")
  (vehicle_light_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLightReport>)))
    "Constants for message type '<VehicleLightReport>"
  '((:VEHICLE_LIGHT_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLightReport)))
    "Constants for message type 'VehicleLightReport"
  '((:VEHICLE_LIGHT_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLightReport>) ostream)
  "Serializes a message object of type '<VehicleLightReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_light_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLightReport>) istream)
  "Deserializes a message object of type '<VehicleLightReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_light_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLightReport>)))
  "Returns string type for a message object of type '<VehicleLightReport>"
  "endpoint_msgs/VehicleLightReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLightReport)))
  "Returns string type for a message object of type 'VehicleLightReport"
  "endpoint_msgs/VehicleLightReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLightReport>)))
  "Returns md5sum for a message object of type '<VehicleLightReport>"
  "495d152b9132f367627d82e7367095d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLightReport)))
  "Returns md5sum for a message object of type 'VehicleLightReport"
  "495d152b9132f367627d82e7367095d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLightReport>)))
  "Returns full string definition for message of type '<VehicleLightReport>"
  (cl:format cl:nil "uint8 VEHICLE_LIGHT_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleLightReportData vehicle_light_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/TurnSignal turn_signal_type~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%endpoint_msgs/LeverStatus lever_state~%bool position_light_status~%endpoint_msgs/BrakeLightStatus brake_light~%endpoint_msgs/LeverType lever_type~%bool auto_light_ctrl_state~%endpoint_msgs/LightModeState light_mode_status~%endpoint_msgs/FrontLightSwitchState front_light_switch_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverStatus~%uint8 LEVER_STATE_OFF = 0~%uint8 LEVER_STATE_LEFT = 1~%uint8 LEVER_STATE_RIGHT = 2~%uint8 LEVER_STATE_LEFT_INVALID = 3~%uint8 LEVER_STATE_RIGHT_INVALID = 4~%uint8 LEVER_STATE_LEFT_LIGHT = 5~%uint8 LEVER_STATE_RIGHT_LIGHT = 6~%uint8 LEVER_STATE_RESERVED1 = 7~%uint8 LEVER_STATE_RESERVED3 = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeLightStatus~%uint8 BRAKE_LIGHT_NONE = 0~%uint8 BRAKE_LIGHT_OFF = 1~%uint8 BRAKE_LIGHT_ON = 2~%uint8 BRAKE_LIGHT_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverType~%uint8 LEVER_TYPE_MECHANICAL = 0~%uint8 LEVER_TYPE_ELECTRONIC = 1~%uint8 LEVER_STATE_RESERVED1 = 2~%uint8 LEVER_STATE_RESERVED2 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LightModeState~%uint8 LIGHT_OFF = 0~%uint8 LIGHT_AUTO = 1~%uint8 LIGHT_LOW_BEAM = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightSwitchState~%uint8 FRONT_LIGHT_OFF = 0~%uint8 FRONT_LIGHT_LOW = 1~%uint8 FRONT_LIGHT_HIGH = 2~%uint8 FRONT_LIGHT_FLASH = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLightReport)))
  "Returns full string definition for message of type 'VehicleLightReport"
  (cl:format cl:nil "uint8 VEHICLE_LIGHT_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleLightReportData vehicle_light_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/TurnSignal turn_signal_type~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%endpoint_msgs/LeverStatus lever_state~%bool position_light_status~%endpoint_msgs/BrakeLightStatus brake_light~%endpoint_msgs/LeverType lever_type~%bool auto_light_ctrl_state~%endpoint_msgs/LightModeState light_mode_status~%endpoint_msgs/FrontLightSwitchState front_light_switch_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverStatus~%uint8 LEVER_STATE_OFF = 0~%uint8 LEVER_STATE_LEFT = 1~%uint8 LEVER_STATE_RIGHT = 2~%uint8 LEVER_STATE_LEFT_INVALID = 3~%uint8 LEVER_STATE_RIGHT_INVALID = 4~%uint8 LEVER_STATE_LEFT_LIGHT = 5~%uint8 LEVER_STATE_RIGHT_LIGHT = 6~%uint8 LEVER_STATE_RESERVED1 = 7~%uint8 LEVER_STATE_RESERVED3 = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeLightStatus~%uint8 BRAKE_LIGHT_NONE = 0~%uint8 BRAKE_LIGHT_OFF = 1~%uint8 BRAKE_LIGHT_ON = 2~%uint8 BRAKE_LIGHT_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverType~%uint8 LEVER_TYPE_MECHANICAL = 0~%uint8 LEVER_TYPE_ELECTRONIC = 1~%uint8 LEVER_STATE_RESERVED1 = 2~%uint8 LEVER_STATE_RESERVED2 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LightModeState~%uint8 LIGHT_OFF = 0~%uint8 LIGHT_AUTO = 1~%uint8 LIGHT_LOW_BEAM = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightSwitchState~%uint8 FRONT_LIGHT_OFF = 0~%uint8 FRONT_LIGHT_LOW = 1~%uint8 FRONT_LIGHT_HIGH = 2~%uint8 FRONT_LIGHT_FLASH = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLightReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_light_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLightReport>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLightReport
    (cl:cons ':available (available msg))
    (cl:cons ':vehicle_light_report_data (vehicle_light_report_data msg))
))
