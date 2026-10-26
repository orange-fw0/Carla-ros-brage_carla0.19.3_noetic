; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleAlarmReport.msg.html

(cl:defclass <VehicleAlarmReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vehicle_alarm_report_data
    :reader vehicle_alarm_report_data
    :initarg :vehicle_alarm_report_data
    :type endpoint_msgs-msg:VehicleAlarmReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleAlarmReportData)))
)

(cl:defclass VehicleAlarmReport (<VehicleAlarmReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleAlarmReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleAlarmReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleAlarmReport> is deprecated: use endpoint_msgs-msg:VehicleAlarmReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <VehicleAlarmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vehicle_alarm_report_data-val :lambda-list '(m))
(cl:defmethod vehicle_alarm_report_data-val ((m <VehicleAlarmReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_alarm_report_data-val is deprecated.  Use endpoint_msgs-msg:vehicle_alarm_report_data instead.")
  (vehicle_alarm_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleAlarmReport>)))
    "Constants for message type '<VehicleAlarmReport>"
  '((:VEHICLE_ALARM_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleAlarmReport)))
    "Constants for message type 'VehicleAlarmReport"
  '((:VEHICLE_ALARM_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleAlarmReport>) ostream)
  "Serializes a message object of type '<VehicleAlarmReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_alarm_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleAlarmReport>) istream)
  "Deserializes a message object of type '<VehicleAlarmReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_alarm_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleAlarmReport>)))
  "Returns string type for a message object of type '<VehicleAlarmReport>"
  "endpoint_msgs/VehicleAlarmReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleAlarmReport)))
  "Returns string type for a message object of type 'VehicleAlarmReport"
  "endpoint_msgs/VehicleAlarmReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleAlarmReport>)))
  "Returns md5sum for a message object of type '<VehicleAlarmReport>"
  "a49b06bc689f6938e2e2fd6c0542d0cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleAlarmReport)))
  "Returns md5sum for a message object of type 'VehicleAlarmReport"
  "a49b06bc689f6938e2e2fd6c0542d0cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleAlarmReport>)))
  "Returns full string definition for message of type '<VehicleAlarmReport>"
  (cl:format cl:nil "uint8 VEHICLE_ALARM_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleAlarmReportData vehicle_alarm_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleAlarmReportData~%uint64 timestamp_us~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%endpoint_msgs/HandOffStatus steering_handoff~%endpoint_msgs/FeetOffStatus feet_off~%bool pkg_fastswitch_enable~%bool tire_alarm~%endpoint_msgs/VehicleCrashStatus vehicle_crash_status~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HandOffStatus~%uint8 HAND_OFF_STATUS_NONE = 0~%uint8 HAND_OFF_STATUS_TRUE = 1~%uint8 HAND_OFF_STATUS_FALSE = 2~%uint8 HAND_OFF_STATUS_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FeetOffStatus~%uint8 FEET_OFF_STATUS_NONE = 0~%uint8 FEET_OFF_STATUS_TRUE = 1~%uint8 FEET_OFF_STATUS_FALSE = 2~%uint8 FEET_OFF_STATUS_INVALUD = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleCrashStatus~%uint8 NONE = 0~%uint8 NO_CRASH = 1~%uint8 CRASH = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleAlarmReport)))
  "Returns full string definition for message of type 'VehicleAlarmReport"
  (cl:format cl:nil "uint8 VEHICLE_ALARM_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleAlarmReportData vehicle_alarm_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleAlarmReportData~%uint64 timestamp_us~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%endpoint_msgs/HandOffStatus steering_handoff~%endpoint_msgs/FeetOffStatus feet_off~%bool pkg_fastswitch_enable~%bool tire_alarm~%endpoint_msgs/VehicleCrashStatus vehicle_crash_status~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HandOffStatus~%uint8 HAND_OFF_STATUS_NONE = 0~%uint8 HAND_OFF_STATUS_TRUE = 1~%uint8 HAND_OFF_STATUS_FALSE = 2~%uint8 HAND_OFF_STATUS_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FeetOffStatus~%uint8 FEET_OFF_STATUS_NONE = 0~%uint8 FEET_OFF_STATUS_TRUE = 1~%uint8 FEET_OFF_STATUS_FALSE = 2~%uint8 FEET_OFF_STATUS_INVALUD = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleCrashStatus~%uint8 NONE = 0~%uint8 NO_CRASH = 1~%uint8 CRASH = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleAlarmReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_alarm_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleAlarmReport>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleAlarmReport
    (cl:cons ':available (available msg))
    (cl:cons ':vehicle_alarm_report_data (vehicle_alarm_report_data msg))
))
