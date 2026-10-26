; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebStatusReportData.msg.html

(cl:defclass <AebStatusReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (aeb_system_status
    :reader aeb_system_status
    :initarg :aeb_system_status
    :type endpoint_msgs-msg:AebSysStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:AebSysStatus))
   (aeb_system_fault_status
    :reader aeb_system_fault_status
    :initarg :aeb_system_fault_status
    :type endpoint_msgs-msg:AebSysFaultStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:AebSysFaultStatus))
   (awb_status
    :reader awb_status
    :initarg :awb_status
    :type endpoint_msgs-msg:AebBrkJerkResp
    :initform (cl:make-instance 'endpoint_msgs-msg:AebBrkJerkResp))
   (dcl_status
    :reader dcl_status
    :initarg :dcl_status
    :type endpoint_msgs-msg:AebDclResp
    :initform (cl:make-instance 'endpoint_msgs-msg:AebDclResp))
   (hba_status
    :reader hba_status
    :initarg :hba_status
    :type endpoint_msgs-msg:HbaStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:HbaStatus))
   (prfl_status
    :reader prfl_status
    :initarg :prfl_status
    :type endpoint_msgs-msg:AebPrflResp
    :initform (cl:make-instance 'endpoint_msgs-msg:AebPrflResp))
   (aeb_valid
    :reader aeb_valid
    :initarg :aeb_valid
    :type cl:boolean
    :initform cl:nil)
   (fcw_status
    :reader fcw_status
    :initarg :fcw_status
    :type endpoint_msgs-msg:FcwStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:FcwStatus))
   (fcw_valid
    :reader fcw_valid
    :initarg :fcw_valid
    :type cl:boolean
    :initform cl:nil)
   (vse_state
    :reader vse_state
    :initarg :vse_state
    :type endpoint_msgs-msg:VseSysState
    :initform (cl:make-instance 'endpoint_msgs-msg:VseSysState))
   (vse_valid
    :reader vse_valid
    :initarg :vse_valid
    :type cl:boolean
    :initform cl:nil)
   (swc_status
    :reader swc_status
    :initarg :swc_status
    :type endpoint_msgs-msg:SwcStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:SwcStatus))
   (swc_valid
    :reader swc_valid
    :initarg :swc_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AebStatusReportData (<AebStatusReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebStatusReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebStatusReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebStatusReportData> is deprecated: use endpoint_msgs-msg:AebStatusReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'aeb_system_status-val :lambda-list '(m))
(cl:defmethod aeb_system_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:aeb_system_status-val is deprecated.  Use endpoint_msgs-msg:aeb_system_status instead.")
  (aeb_system_status m))

(cl:ensure-generic-function 'aeb_system_fault_status-val :lambda-list '(m))
(cl:defmethod aeb_system_fault_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:aeb_system_fault_status-val is deprecated.  Use endpoint_msgs-msg:aeb_system_fault_status instead.")
  (aeb_system_fault_status m))

(cl:ensure-generic-function 'awb_status-val :lambda-list '(m))
(cl:defmethod awb_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:awb_status-val is deprecated.  Use endpoint_msgs-msg:awb_status instead.")
  (awb_status m))

(cl:ensure-generic-function 'dcl_status-val :lambda-list '(m))
(cl:defmethod dcl_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:dcl_status-val is deprecated.  Use endpoint_msgs-msg:dcl_status instead.")
  (dcl_status m))

(cl:ensure-generic-function 'hba_status-val :lambda-list '(m))
(cl:defmethod hba_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:hba_status-val is deprecated.  Use endpoint_msgs-msg:hba_status instead.")
  (hba_status m))

(cl:ensure-generic-function 'prfl_status-val :lambda-list '(m))
(cl:defmethod prfl_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:prfl_status-val is deprecated.  Use endpoint_msgs-msg:prfl_status instead.")
  (prfl_status m))

(cl:ensure-generic-function 'aeb_valid-val :lambda-list '(m))
(cl:defmethod aeb_valid-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:aeb_valid-val is deprecated.  Use endpoint_msgs-msg:aeb_valid instead.")
  (aeb_valid m))

(cl:ensure-generic-function 'fcw_status-val :lambda-list '(m))
(cl:defmethod fcw_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:fcw_status-val is deprecated.  Use endpoint_msgs-msg:fcw_status instead.")
  (fcw_status m))

(cl:ensure-generic-function 'fcw_valid-val :lambda-list '(m))
(cl:defmethod fcw_valid-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:fcw_valid-val is deprecated.  Use endpoint_msgs-msg:fcw_valid instead.")
  (fcw_valid m))

(cl:ensure-generic-function 'vse_state-val :lambda-list '(m))
(cl:defmethod vse_state-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vse_state-val is deprecated.  Use endpoint_msgs-msg:vse_state instead.")
  (vse_state m))

(cl:ensure-generic-function 'vse_valid-val :lambda-list '(m))
(cl:defmethod vse_valid-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vse_valid-val is deprecated.  Use endpoint_msgs-msg:vse_valid instead.")
  (vse_valid m))

(cl:ensure-generic-function 'swc_status-val :lambda-list '(m))
(cl:defmethod swc_status-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:swc_status-val is deprecated.  Use endpoint_msgs-msg:swc_status instead.")
  (swc_status m))

(cl:ensure-generic-function 'swc_valid-val :lambda-list '(m))
(cl:defmethod swc_valid-val ((m <AebStatusReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:swc_valid-val is deprecated.  Use endpoint_msgs-msg:swc_valid instead.")
  (swc_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebStatusReportData>) ostream)
  "Serializes a message object of type '<AebStatusReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aeb_system_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aeb_system_fault_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'awb_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dcl_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hba_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'prfl_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'aeb_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fcw_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fcw_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vse_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vse_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'swc_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'swc_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebStatusReportData>) istream)
  "Deserializes a message object of type '<AebStatusReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aeb_system_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aeb_system_fault_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'awb_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dcl_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hba_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'prfl_status) istream)
    (cl:setf (cl:slot-value msg 'aeb_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fcw_status) istream)
    (cl:setf (cl:slot-value msg 'fcw_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vse_state) istream)
    (cl:setf (cl:slot-value msg 'vse_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'swc_status) istream)
    (cl:setf (cl:slot-value msg 'swc_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebStatusReportData>)))
  "Returns string type for a message object of type '<AebStatusReportData>"
  "endpoint_msgs/AebStatusReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebStatusReportData)))
  "Returns string type for a message object of type 'AebStatusReportData"
  "endpoint_msgs/AebStatusReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebStatusReportData>)))
  "Returns md5sum for a message object of type '<AebStatusReportData>"
  "1e42c12d20e48f5461d66160ba2f1653")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebStatusReportData)))
  "Returns md5sum for a message object of type 'AebStatusReportData"
  "1e42c12d20e48f5461d66160ba2f1653")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebStatusReportData>)))
  "Returns full string definition for message of type '<AebStatusReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/AebSysStatus aeb_system_status~%endpoint_msgs/AebSysFaultStatus aeb_system_fault_status~%endpoint_msgs/AebBrkJerkResp awb_status~%endpoint_msgs/AebDclResp dcl_status~%endpoint_msgs/HbaStatus hba_status~%endpoint_msgs/AebPrflResp prfl_status~%bool aeb_valid~%endpoint_msgs/FcwStatus fcw_status~%bool fcw_valid~%endpoint_msgs/VseSysState vse_state~%bool vse_valid~%endpoint_msgs/SwcStatus swc_status~%bool swc_valid~%~%================================================================================~%MSG: endpoint_msgs/AebSysStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebSysFaultStatus~%uint8 AEB_SYS_FALULT_NO_ERROR = 0~%uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1~%uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2~%uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3~%uint8 AEB_SYS_FALULT_RESERVED1 = 4~%uint8 AEB_SYS_FALULT_RESERVED2 = 5~%uint8 AEB_SYS_FALULT_RESERVED3 = 6~%uint8 AEB_SYS_FALULT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkResp~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1~%uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2~%uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_BRAKE_JERK_RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclResp~%uint8 AEB_DCL_NO_REQUEST = 0~%uint8 AEB_DCL_REQUEST_HONORED = 1~%uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_DCL_REQUEST_RESERVED1 = 5~%uint8 AEB_DCL_REQUEST_RESERVED2 = 6~%uint8 AEB_DCL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HbaStatus~%uint8 AEB_HBA_NO_REQUEST = 0~%uint8 AEB_HBA_REQUEST_HONORED = 1~%uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_HBA_REQUEST_RESERVED1 = 5~%uint8 AEB_HBA_REQUEST_RESERVED2 = 6~%uint8 AEB_HBA_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebPrflResp~%uint8 AEB_PRFL_NO_REQUEST = 0~%uint8 AEB_PRFL_REQUEST_HONORED = 1~%uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_PRFL_REQUEST_RESERVED1 = 5~%uint8 AEB_PRFL_REQUEST_RESERVED2 = 6~%uint8 AEB_PRFL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FcwStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VseSysState~%uint8 INAVTIVE = 0~%uint8 ACTIVE = 1~%uint8 FAULT = 2~%uint8 WARMING_UP = 3~%uint8 NOT_READY = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SwcStatus~%uint8 SWC_STATUS_NOT_ACTIVE = 0~%uint8 SWC_STATUS_NORMAL = 1~%uint8 SWC_STATUS_ERROR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebStatusReportData)))
  "Returns full string definition for message of type 'AebStatusReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/AebSysStatus aeb_system_status~%endpoint_msgs/AebSysFaultStatus aeb_system_fault_status~%endpoint_msgs/AebBrkJerkResp awb_status~%endpoint_msgs/AebDclResp dcl_status~%endpoint_msgs/HbaStatus hba_status~%endpoint_msgs/AebPrflResp prfl_status~%bool aeb_valid~%endpoint_msgs/FcwStatus fcw_status~%bool fcw_valid~%endpoint_msgs/VseSysState vse_state~%bool vse_valid~%endpoint_msgs/SwcStatus swc_status~%bool swc_valid~%~%================================================================================~%MSG: endpoint_msgs/AebSysStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebSysFaultStatus~%uint8 AEB_SYS_FALULT_NO_ERROR = 0~%uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1~%uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2~%uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3~%uint8 AEB_SYS_FALULT_RESERVED1 = 4~%uint8 AEB_SYS_FALULT_RESERVED2 = 5~%uint8 AEB_SYS_FALULT_RESERVED3 = 6~%uint8 AEB_SYS_FALULT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkResp~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1~%uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2~%uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_BRAKE_JERK_RESERVED = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclResp~%uint8 AEB_DCL_NO_REQUEST = 0~%uint8 AEB_DCL_REQUEST_HONORED = 1~%uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_DCL_REQUEST_RESERVED1 = 5~%uint8 AEB_DCL_REQUEST_RESERVED2 = 6~%uint8 AEB_DCL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HbaStatus~%uint8 AEB_HBA_NO_REQUEST = 0~%uint8 AEB_HBA_REQUEST_HONORED = 1~%uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_HBA_REQUEST_RESERVED1 = 5~%uint8 AEB_HBA_REQUEST_RESERVED2 = 6~%uint8 AEB_HBA_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebPrflResp~%uint8 AEB_PRFL_NO_REQUEST = 0~%uint8 AEB_PRFL_REQUEST_HONORED = 1~%uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_PRFL_REQUEST_RESERVED1 = 5~%uint8 AEB_PRFL_REQUEST_RESERVED2 = 6~%uint8 AEB_PRFL_REQUEST_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FcwStatus~%uint8 OFF = 0~%uint8 STANDBY = 1~%uint8 DISABLE = 2~%uint8 OVERRIDE = 3~%uint8 ACTIVED = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VseSysState~%uint8 INAVTIVE = 0~%uint8 ACTIVE = 1~%uint8 FAULT = 2~%uint8 WARMING_UP = 3~%uint8 NOT_READY = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SwcStatus~%uint8 SWC_STATUS_NOT_ACTIVE = 0~%uint8 SWC_STATUS_NORMAL = 1~%uint8 SWC_STATUS_ERROR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebStatusReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aeb_system_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aeb_system_fault_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'awb_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dcl_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hba_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'prfl_status))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fcw_status))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vse_state))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'swc_status))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebStatusReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'AebStatusReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':aeb_system_status (aeb_system_status msg))
    (cl:cons ':aeb_system_fault_status (aeb_system_fault_status msg))
    (cl:cons ':awb_status (awb_status msg))
    (cl:cons ':dcl_status (dcl_status msg))
    (cl:cons ':hba_status (hba_status msg))
    (cl:cons ':prfl_status (prfl_status msg))
    (cl:cons ':aeb_valid (aeb_valid msg))
    (cl:cons ':fcw_status (fcw_status msg))
    (cl:cons ':fcw_valid (fcw_valid msg))
    (cl:cons ':vse_state (vse_state msg))
    (cl:cons ':vse_valid (vse_valid msg))
    (cl:cons ':swc_status (swc_status msg))
    (cl:cons ':swc_valid (swc_valid msg))
))
