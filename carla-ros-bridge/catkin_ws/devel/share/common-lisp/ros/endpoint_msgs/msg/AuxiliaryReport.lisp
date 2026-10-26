; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AuxiliaryReport.msg.html

(cl:defclass <AuxiliaryReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (auxiliary_report_data
    :reader auxiliary_report_data
    :initarg :auxiliary_report_data
    :type endpoint_msgs-msg:AuxiliaryReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:AuxiliaryReportData)))
)

(cl:defclass AuxiliaryReport (<AuxiliaryReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuxiliaryReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuxiliaryReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AuxiliaryReport> is deprecated: use endpoint_msgs-msg:AuxiliaryReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AuxiliaryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'auxiliary_report_data-val :lambda-list '(m))
(cl:defmethod auxiliary_report_data-val ((m <AuxiliaryReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:auxiliary_report_data-val is deprecated.  Use endpoint_msgs-msg:auxiliary_report_data instead.")
  (auxiliary_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AuxiliaryReport>)))
    "Constants for message type '<AuxiliaryReport>"
  '((:AUXILIARY_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AuxiliaryReport)))
    "Constants for message type 'AuxiliaryReport"
  '((:AUXILIARY_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuxiliaryReport>) ostream)
  "Serializes a message object of type '<AuxiliaryReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auxiliary_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuxiliaryReport>) istream)
  "Deserializes a message object of type '<AuxiliaryReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auxiliary_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuxiliaryReport>)))
  "Returns string type for a message object of type '<AuxiliaryReport>"
  "endpoint_msgs/AuxiliaryReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuxiliaryReport)))
  "Returns string type for a message object of type 'AuxiliaryReport"
  "endpoint_msgs/AuxiliaryReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuxiliaryReport>)))
  "Returns md5sum for a message object of type '<AuxiliaryReport>"
  "6651f4ec1683fcefcc01e5bcd9a9df24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuxiliaryReport)))
  "Returns md5sum for a message object of type 'AuxiliaryReport"
  "6651f4ec1683fcefcc01e5bcd9a9df24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuxiliaryReport>)))
  "Returns full string definition for message of type '<AuxiliaryReport>"
  (cl:format cl:nil "uint8 AUXILIARY_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/AuxiliaryReportData auxiliary_report_data~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryReportData~%uint64 timestamp_us~%endpoint_msgs/RearviewMirrorStatus rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power_mode~%bool vehicle_power_valid~%bool vehicle_lock~%bool vehicle_horn~%endpoint_msgs/RainSensorLevel rain_sensor_level~%float32 vehicle_speed_on_dashboard~%bool vehicle_speed_on_dashboard_valid~%endpoint_msgs/VehicleSpeedonDashboardUnit vehicle_speed_on_dashboard_unit~%float32 vehicle_outside_temp~%bool vehicle_outside_temp_valid~%float32 vechile_inside_temp~%bool vechile_inside_temp_valid~%endpoint_msgs/VehicleModeState vehicle_mode_state~%endpoint_msgs/VehicledrivingMode vehicle_driving_mode~%endpoint_msgs/ChargeConnectState charge_connect_status~%endpoint_msgs/AutoDriveStatus auto_driver_status~%bool shared_control_state~%bool shared_control_enable~%endpoint_msgs/RearviewMirrorAdjustSwitch rearview_mirror_adjust_switch~%float32 horizontal_light_lumens~%bool horizontal_light_lumens_valid~%float32 vertical_light_lumens~%bool vertical_light_lumens_valid~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorStatus~%uint8 NONE = 0~%uint8 OPEN = 1~%uint8 CLOSE = 2~%uint8 OPENING = 3~%uint8 CLOSING = 4~%uint8 PROCESSING = 5~%uint8 RESERVED = 6~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RainSensorLevel~%uint8 RAIN_SENSOR_OFF = 0~%uint8 RARIN_SENSOR_LEVEL_LOW = 1~%uint8 RARIN_SENSOR_LEVEL_MID = 2~%uint8 RARIN_SENSOR_LEVEL_HIGH = 3~%uint8 RARIN_SENSOR_LEVEL_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleSpeedonDashboardUnit~%uint8 NONE = 0~%uint8 KMH = 1~%uint8 MILEH = 2~%uint8 UNKNOWN = 3~%uint8 RESVERD = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleModeState~%uint8 NONE = 0~%uint8 NORMAL_MODE = 1~%uint8 MANUFACTURE_MODE = 2~%uint8 TRANSPORT_MODE = 3~%uint8 SHOWROOM_MODE = 4~%uint8 POSTCRASH_MODE = 5~%uint8 MAINTENANCE_MODE = 6~%uint8 CARWASH_MODE = 7~%uint8 BENCHTEST_MODE = 8~%uint8 DRAG_MODE = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 RESERVED3 = 12~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicledrivingMode~%uint8 NONE = 0~%uint8 NORMAL = 1~%uint8 DRIFT_EXP = 2~%uint8 WINTER_SPORT = 3~%uint8 OFFROAD = 4~%uint8 RACE_TRACK = 5~%uint8 ROCK = 6~%uint8 SAND = 7~%uint8 SPORT = 8~%uint8 ECO = 9~%uint8 MUD = 10~%uint8 OPD = 11~%uint8 WADING = 12~%uint8 SNOW = 13~%uint8 ICE = 14~%uint8 GRASS = 15~%uint8 GRIT = 16~%uint8 MOUNTAIN = 17~%uint8 SUPER_WADING = 18~%uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19~%uint8 TURN_IN_PLACE = 20~%uint8 ECO_PLUS = 21~%uint8 RALLY = 22~%uint8 LIMP_MODE = 23~%uint8 SPORT_PLUS = 24~%uint8 CREEP = 25~%uint8 OVERCLOCKING_MODE = 26~%uint8 ANTISKID_CHAIN = 27~%uint8 STRUCK_ASSISTANT = 28~%uint8 TERRAIN_ASSISTANT = 29~%uint8 ITAC = 30~%uint8 Ext_Endurance = 31~%uint8 DEEPSNOW = 32~%uint8 TBS_Detn = 33~%uint8 AUTOMATIC_MODE = 34~%uint8 CUSTOM_MODE = 35~%uint8 RESERVED1 = 36~%uint8 RESERVED2 = 37~%uint8 RESERVED3 = 38~%uint8 mode~%uint8 sub_mode~%~%================================================================================~%MSG: endpoint_msgs/ChargeConnectState~%uint8 NONE = 0~%uint8 NOT_CONNECTED = 1~%uint8 CONNECTED = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoDriveStatus~%uint8 NONE = 0~%uint8 READY = 1~%uint8 NOT_READY = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorAdjustSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuxiliaryReport)))
  "Returns full string definition for message of type 'AuxiliaryReport"
  (cl:format cl:nil "uint8 AUXILIARY_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/AuxiliaryReportData auxiliary_report_data~%~%================================================================================~%MSG: endpoint_msgs/AuxiliaryReportData~%uint64 timestamp_us~%endpoint_msgs/RearviewMirrorStatus rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power_mode~%bool vehicle_power_valid~%bool vehicle_lock~%bool vehicle_horn~%endpoint_msgs/RainSensorLevel rain_sensor_level~%float32 vehicle_speed_on_dashboard~%bool vehicle_speed_on_dashboard_valid~%endpoint_msgs/VehicleSpeedonDashboardUnit vehicle_speed_on_dashboard_unit~%float32 vehicle_outside_temp~%bool vehicle_outside_temp_valid~%float32 vechile_inside_temp~%bool vechile_inside_temp_valid~%endpoint_msgs/VehicleModeState vehicle_mode_state~%endpoint_msgs/VehicledrivingMode vehicle_driving_mode~%endpoint_msgs/ChargeConnectState charge_connect_status~%endpoint_msgs/AutoDriveStatus auto_driver_status~%bool shared_control_state~%bool shared_control_enable~%endpoint_msgs/RearviewMirrorAdjustSwitch rearview_mirror_adjust_switch~%float32 horizontal_light_lumens~%bool horizontal_light_lumens_valid~%float32 vertical_light_lumens~%bool vertical_light_lumens_valid~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorStatus~%uint8 NONE = 0~%uint8 OPEN = 1~%uint8 CLOSE = 2~%uint8 OPENING = 3~%uint8 CLOSING = 4~%uint8 PROCESSING = 5~%uint8 RESERVED = 6~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RainSensorLevel~%uint8 RAIN_SENSOR_OFF = 0~%uint8 RARIN_SENSOR_LEVEL_LOW = 1~%uint8 RARIN_SENSOR_LEVEL_MID = 2~%uint8 RARIN_SENSOR_LEVEL_HIGH = 3~%uint8 RARIN_SENSOR_LEVEL_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleSpeedonDashboardUnit~%uint8 NONE = 0~%uint8 KMH = 1~%uint8 MILEH = 2~%uint8 UNKNOWN = 3~%uint8 RESVERD = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleModeState~%uint8 NONE = 0~%uint8 NORMAL_MODE = 1~%uint8 MANUFACTURE_MODE = 2~%uint8 TRANSPORT_MODE = 3~%uint8 SHOWROOM_MODE = 4~%uint8 POSTCRASH_MODE = 5~%uint8 MAINTENANCE_MODE = 6~%uint8 CARWASH_MODE = 7~%uint8 BENCHTEST_MODE = 8~%uint8 DRAG_MODE = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 RESERVED3 = 12~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicledrivingMode~%uint8 NONE = 0~%uint8 NORMAL = 1~%uint8 DRIFT_EXP = 2~%uint8 WINTER_SPORT = 3~%uint8 OFFROAD = 4~%uint8 RACE_TRACK = 5~%uint8 ROCK = 6~%uint8 SAND = 7~%uint8 SPORT = 8~%uint8 ECO = 9~%uint8 MUD = 10~%uint8 OPD = 11~%uint8 WADING = 12~%uint8 SNOW = 13~%uint8 ICE = 14~%uint8 GRASS = 15~%uint8 GRIT = 16~%uint8 MOUNTAIN = 17~%uint8 SUPER_WADING = 18~%uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19~%uint8 TURN_IN_PLACE = 20~%uint8 ECO_PLUS = 21~%uint8 RALLY = 22~%uint8 LIMP_MODE = 23~%uint8 SPORT_PLUS = 24~%uint8 CREEP = 25~%uint8 OVERCLOCKING_MODE = 26~%uint8 ANTISKID_CHAIN = 27~%uint8 STRUCK_ASSISTANT = 28~%uint8 TERRAIN_ASSISTANT = 29~%uint8 ITAC = 30~%uint8 Ext_Endurance = 31~%uint8 DEEPSNOW = 32~%uint8 TBS_Detn = 33~%uint8 AUTOMATIC_MODE = 34~%uint8 CUSTOM_MODE = 35~%uint8 RESERVED1 = 36~%uint8 RESERVED2 = 37~%uint8 RESERVED3 = 38~%uint8 mode~%uint8 sub_mode~%~%================================================================================~%MSG: endpoint_msgs/ChargeConnectState~%uint8 NONE = 0~%uint8 NOT_CONNECTED = 1~%uint8 CONNECTED = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoDriveStatus~%uint8 NONE = 0~%uint8 READY = 1~%uint8 NOT_READY = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorAdjustSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuxiliaryReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auxiliary_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuxiliaryReport>))
  "Converts a ROS message object to a list"
  (cl:list 'AuxiliaryReport
    (cl:cons ':available (available msg))
    (cl:cons ':auxiliary_report_data (auxiliary_report_data msg))
))
