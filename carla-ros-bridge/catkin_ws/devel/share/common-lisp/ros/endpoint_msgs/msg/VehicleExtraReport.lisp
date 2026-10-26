; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleExtraReport.msg.html

(cl:defclass <VehicleExtraReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vehicle_extra_report_data
    :reader vehicle_extra_report_data
    :initarg :vehicle_extra_report_data
    :type endpoint_msgs-msg:VehicleExtraReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleExtraReportData)))
)

(cl:defclass VehicleExtraReport (<VehicleExtraReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleExtraReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleExtraReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleExtraReport> is deprecated: use endpoint_msgs-msg:VehicleExtraReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <VehicleExtraReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vehicle_extra_report_data-val :lambda-list '(m))
(cl:defmethod vehicle_extra_report_data-val ((m <VehicleExtraReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_extra_report_data-val is deprecated.  Use endpoint_msgs-msg:vehicle_extra_report_data instead.")
  (vehicle_extra_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleExtraReport>)))
    "Constants for message type '<VehicleExtraReport>"
  '((:VEHICLE_EXTRA_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleExtraReport)))
    "Constants for message type 'VehicleExtraReport"
  '((:VEHICLE_EXTRA_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleExtraReport>) ostream)
  "Serializes a message object of type '<VehicleExtraReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_extra_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleExtraReport>) istream)
  "Deserializes a message object of type '<VehicleExtraReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_extra_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleExtraReport>)))
  "Returns string type for a message object of type '<VehicleExtraReport>"
  "endpoint_msgs/VehicleExtraReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleExtraReport)))
  "Returns string type for a message object of type 'VehicleExtraReport"
  "endpoint_msgs/VehicleExtraReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleExtraReport>)))
  "Returns md5sum for a message object of type '<VehicleExtraReport>"
  "ff7c1937abce7fa12f5200d7982e3233")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleExtraReport)))
  "Returns md5sum for a message object of type 'VehicleExtraReport"
  "ff7c1937abce7fa12f5200d7982e3233")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleExtraReport>)))
  "Returns full string definition for message of type '<VehicleExtraReport>"
  (cl:format cl:nil "uint8 VEHICLE_EXTRA_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleExtraReportData vehicle_extra_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleExtraReportData~%uint64 timestamp_us~%endpoint_msgs/CtaState cta_lf~%endpoint_msgs/CtaState cta_rf~%endpoint_msgs/CtaState cta_lr~%endpoint_msgs/CtaState cta_rr~%bool cta_valid~%endpoint_msgs/DlpStatus dlp_state~%bool dlp_valid~%endpoint_msgs/HdcState hdc_state~%bool hdc_valid~%endpoint_msgs/LdpStatus ldp_status_left_lane~%endpoint_msgs/LdpStatus ldp_status_right_lane~%bool ldp_valid~%endpoint_msgs/LdwStatus ldw_status~%bool ldw_valid~%endpoint_msgs/SrsCollosion srs_collosion~%endpoint_msgs/ExtraReport extra~%~%================================================================================~%MSG: endpoint_msgs/CtaState~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVE_1 = 1~%uint8 WARNING_LEVE_2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/DlpStatus~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVEL1 = 1~%uint8 WARNING_LEVEL2 = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HdcState~%uint8 NORMAL = 0~%uint8 ENABLED = 1~%uint8 ACTIVED = 2~%uint8 FAILED = 3~%uint8 TEMPORARILY_INHIBITED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdpStatus~%uint8 LDP_STATUS_OFF = 0~%uint8 LDP_STATUS_STANDBY = 1~%uint8 LDP_STATUS_ACTIVE = 2~%uint8 LDP_STATUS_RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdwStatus~%uint8 LDW_STATUS_OFF = 0~%uint8 LDW_STATUS_STANDBY = 1~%uint8 LDW_STATUS_DISABLED = 2~%uint8 LDW_STATUS_OVERIDE = 3~%uint8 LDW_STATUS_ACTIVE = 4~%uint8 LDW_STATUS_RESERVED1 = 5~%uint8 LDW_STATUS_RESERVED2 = 6~%uint8 LDW_STATUS_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SrsCollosion~%uint8 NONE = 0~%uint8 NOT_COLLOSION = 1~%uint8 COLLOSION = 2~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ExtraReport~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleExtraReport)))
  "Returns full string definition for message of type 'VehicleExtraReport"
  (cl:format cl:nil "uint8 VEHICLE_EXTRA_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/VehicleExtraReportData vehicle_extra_report_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleExtraReportData~%uint64 timestamp_us~%endpoint_msgs/CtaState cta_lf~%endpoint_msgs/CtaState cta_rf~%endpoint_msgs/CtaState cta_lr~%endpoint_msgs/CtaState cta_rr~%bool cta_valid~%endpoint_msgs/DlpStatus dlp_state~%bool dlp_valid~%endpoint_msgs/HdcState hdc_state~%bool hdc_valid~%endpoint_msgs/LdpStatus ldp_status_left_lane~%endpoint_msgs/LdpStatus ldp_status_right_lane~%bool ldp_valid~%endpoint_msgs/LdwStatus ldw_status~%bool ldw_valid~%endpoint_msgs/SrsCollosion srs_collosion~%endpoint_msgs/ExtraReport extra~%~%================================================================================~%MSG: endpoint_msgs/CtaState~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVE_1 = 1~%uint8 WARNING_LEVE_2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/DlpStatus~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVEL1 = 1~%uint8 WARNING_LEVEL2 = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HdcState~%uint8 NORMAL = 0~%uint8 ENABLED = 1~%uint8 ACTIVED = 2~%uint8 FAILED = 3~%uint8 TEMPORARILY_INHIBITED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdpStatus~%uint8 LDP_STATUS_OFF = 0~%uint8 LDP_STATUS_STANDBY = 1~%uint8 LDP_STATUS_ACTIVE = 2~%uint8 LDP_STATUS_RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdwStatus~%uint8 LDW_STATUS_OFF = 0~%uint8 LDW_STATUS_STANDBY = 1~%uint8 LDW_STATUS_DISABLED = 2~%uint8 LDW_STATUS_OVERIDE = 3~%uint8 LDW_STATUS_ACTIVE = 4~%uint8 LDW_STATUS_RESERVED1 = 5~%uint8 LDW_STATUS_RESERVED2 = 6~%uint8 LDW_STATUS_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SrsCollosion~%uint8 NONE = 0~%uint8 NOT_COLLOSION = 1~%uint8 COLLOSION = 2~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ExtraReport~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleExtraReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_extra_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleExtraReport>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleExtraReport
    (cl:cons ':available (available msg))
    (cl:cons ':vehicle_extra_report_data (vehicle_extra_report_data msg))
))
