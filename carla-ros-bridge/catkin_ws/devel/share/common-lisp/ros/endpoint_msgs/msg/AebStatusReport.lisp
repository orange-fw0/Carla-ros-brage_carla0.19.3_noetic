; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebStatusReport.msg.html

(cl:defclass <AebStatusReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (aeb_status_data
    :reader aeb_status_data
    :initarg :aeb_status_data
    :type endpoint_msgs-msg:AebStatusReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:AebStatusReportData)))
)

(cl:defclass AebStatusReport (<AebStatusReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebStatusReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebStatusReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebStatusReport> is deprecated: use endpoint_msgs-msg:AebStatusReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AebStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'aeb_status_data-val :lambda-list '(m))
(cl:defmethod aeb_status_data-val ((m <AebStatusReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:aeb_status_data-val is deprecated.  Use endpoint_msgs-msg:aeb_status_data instead.")
  (aeb_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebStatusReport>)))
    "Constants for message type '<AebStatusReport>"
  '((:AEB_STATUS_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebStatusReport)))
    "Constants for message type 'AebStatusReport"
  '((:AEB_STATUS_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebStatusReport>) ostream)
  "Serializes a message object of type '<AebStatusReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aeb_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebStatusReport>) istream)
  "Deserializes a message object of type '<AebStatusReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aeb_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebStatusReport>)))
  "Returns string type for a message object of type '<AebStatusReport>"
  "endpoint_msgs/AebStatusReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebStatusReport)))
  "Returns string type for a message object of type 'AebStatusReport"
  "endpoint_msgs/AebStatusReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebStatusReport>)))
  "Returns md5sum for a message object of type '<AebStatusReport>"
  "c91c9f34e8112f573a399902202d66e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebStatusReport)))
  "Returns md5sum for a message object of type 'AebStatusReport"
  "c91c9f34e8112f573a399902202d66e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebStatusReport>)))
  "Returns full string definition for message of type '<AebStatusReport>"
  (cl:format cl:nil "uint8 AEB_STATUS_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/AebStatusReportData aeb_status_data~%~%================================================================================~%MSG: endpoint_msgs/AebStatusReportData~%uint64 timestamp_us~%endpoint_msgs/AebSysStatus aeb_system_status~%endpoint_msgs/AebSysFaultStatus aeb_system_fault_status~%endpoint_msgs/AebBrkJerkResp awb_status~%endpoint_msgs/AebDclResp dcl_status~%endpoint_msgs/HbaStatus hba_status~%endpoint_msgs/AebPrflResp prfl_status~%bool aeb_valid~%endpoint_msgs/FcwStatus fcw_status~%bool fcw_valid~%endpoint_msgs/VseSysState vse_state~%bool vse_valid~%endpoint_msgs/SwcStatus swc_status~%bool swc_valid~%~%================================================================================~%MSG: endpoint_msgs/AebSysStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebSysFaultStatus~%uint8 AEB_SYS_FALULT_NO_ERROR = 0~%uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1~%uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2~%uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3~%uint8 AEB_SYS_FALULT_RESERVED1 = 4~%uint8 AEB_SYS_FALULT_RESERVED2 = 5~%uint8 AEB_SYS_FALULT_RESERVED3 = 6~%uint8 AEB_SYS_FALULT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkResp~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1~%uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2~%uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_BRAKE_JERK_RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclResp~%uint8 AEB_DCL_NO_REQUEST = 0~%uint8 AEB_DCL_REQUEST_HONORED = 1~%uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_DCL_REQUEST_RESERVED1 = 5~%uint8 AEB_DCL_REQUEST_RESERVED2 = 6~%uint8 AEB_DCL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HbaStatus~%uint8 AEB_HBA_NO_REQUEST = 0~%uint8 AEB_HBA_REQUEST_HONORED = 1~%uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_HBA_REQUEST_RESERVED1 = 5~%uint8 AEB_HBA_REQUEST_RESERVED2 = 6~%uint8 AEB_HBA_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebPrflResp~%uint8 AEB_PRFL_NO_REQUEST = 0~%uint8 AEB_PRFL_REQUEST_HONORED = 1~%uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_PRFL_REQUEST_RESERVED1 = 5~%uint8 AEB_PRFL_REQUEST_RESERVED2 = 6~%uint8 AEB_PRFL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FcwStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VseSysState~%uint8 INAVTIVE = 0~%uint8 ACTIVE = 1~%uint8 FAULT = 2~%uint8 WARMING_UP = 3~%uint8 NOT_READY = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SwcStatus~%uint8 SWC_STATUS_NOT_ACTIVE = 0~%uint8 SWC_STATUS_NORMAL = 1~%uint8 SWC_STATUS_ERROR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebStatusReport)))
  "Returns full string definition for message of type 'AebStatusReport"
  (cl:format cl:nil "uint8 AEB_STATUS_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/AebStatusReportData aeb_status_data~%~%================================================================================~%MSG: endpoint_msgs/AebStatusReportData~%uint64 timestamp_us~%endpoint_msgs/AebSysStatus aeb_system_status~%endpoint_msgs/AebSysFaultStatus aeb_system_fault_status~%endpoint_msgs/AebBrkJerkResp awb_status~%endpoint_msgs/AebDclResp dcl_status~%endpoint_msgs/HbaStatus hba_status~%endpoint_msgs/AebPrflResp prfl_status~%bool aeb_valid~%endpoint_msgs/FcwStatus fcw_status~%bool fcw_valid~%endpoint_msgs/VseSysState vse_state~%bool vse_valid~%endpoint_msgs/SwcStatus swc_status~%bool swc_valid~%~%================================================================================~%MSG: endpoint_msgs/AebSysStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebSysFaultStatus~%uint8 AEB_SYS_FALULT_NO_ERROR = 0~%uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1~%uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2~%uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3~%uint8 AEB_SYS_FALULT_RESERVED1 = 4~%uint8 AEB_SYS_FALULT_RESERVED2 = 5~%uint8 AEB_SYS_FALULT_RESERVED3 = 6~%uint8 AEB_SYS_FALULT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkResp~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1~%uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2~%uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_BRAKE_JERK_RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclResp~%uint8 AEB_DCL_NO_REQUEST = 0~%uint8 AEB_DCL_REQUEST_HONORED = 1~%uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_DCL_REQUEST_RESERVED1 = 5~%uint8 AEB_DCL_REQUEST_RESERVED2 = 6~%uint8 AEB_DCL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HbaStatus~%uint8 AEB_HBA_NO_REQUEST = 0~%uint8 AEB_HBA_REQUEST_HONORED = 1~%uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_HBA_REQUEST_RESERVED1 = 5~%uint8 AEB_HBA_REQUEST_RESERVED2 = 6~%uint8 AEB_HBA_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebPrflResp~%uint8 AEB_PRFL_NO_REQUEST = 0~%uint8 AEB_PRFL_REQUEST_HONORED = 1~%uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_PRFL_REQUEST_RESERVED1 = 5~%uint8 AEB_PRFL_REQUEST_RESERVED2 = 6~%uint8 AEB_PRFL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FcwStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VseSysState~%uint8 INAVTIVE = 0~%uint8 ACTIVE = 1~%uint8 FAULT = 2~%uint8 WARMING_UP = 3~%uint8 NOT_READY = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SwcStatus~%uint8 SWC_STATUS_NOT_ACTIVE = 0~%uint8 SWC_STATUS_NORMAL = 1~%uint8 SWC_STATUS_ERROR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebStatusReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aeb_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebStatusReport>))
  "Converts a ROS message object to a list"
  (cl:list 'AebStatusReport
    (cl:cons ':available (available msg))
    (cl:cons ':aeb_status_data (aeb_status_data msg))
))
