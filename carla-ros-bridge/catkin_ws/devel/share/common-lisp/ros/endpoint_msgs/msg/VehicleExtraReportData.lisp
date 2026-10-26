; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleExtraReportData.msg.html

(cl:defclass <VehicleExtraReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (cta_lf
    :reader cta_lf
    :initarg :cta_lf
    :type endpoint_msgs-msg:CtaState
    :initform (cl:make-instance 'endpoint_msgs-msg:CtaState))
   (cta_rf
    :reader cta_rf
    :initarg :cta_rf
    :type endpoint_msgs-msg:CtaState
    :initform (cl:make-instance 'endpoint_msgs-msg:CtaState))
   (cta_lr
    :reader cta_lr
    :initarg :cta_lr
    :type endpoint_msgs-msg:CtaState
    :initform (cl:make-instance 'endpoint_msgs-msg:CtaState))
   (cta_rr
    :reader cta_rr
    :initarg :cta_rr
    :type endpoint_msgs-msg:CtaState
    :initform (cl:make-instance 'endpoint_msgs-msg:CtaState))
   (cta_valid
    :reader cta_valid
    :initarg :cta_valid
    :type cl:boolean
    :initform cl:nil)
   (dlp_state
    :reader dlp_state
    :initarg :dlp_state
    :type endpoint_msgs-msg:DlpStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:DlpStatus))
   (dlp_valid
    :reader dlp_valid
    :initarg :dlp_valid
    :type cl:boolean
    :initform cl:nil)
   (hdc_state
    :reader hdc_state
    :initarg :hdc_state
    :type endpoint_msgs-msg:HdcState
    :initform (cl:make-instance 'endpoint_msgs-msg:HdcState))
   (hdc_valid
    :reader hdc_valid
    :initarg :hdc_valid
    :type cl:boolean
    :initform cl:nil)
   (ldp_status_left_lane
    :reader ldp_status_left_lane
    :initarg :ldp_status_left_lane
    :type endpoint_msgs-msg:LdpStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:LdpStatus))
   (ldp_status_right_lane
    :reader ldp_status_right_lane
    :initarg :ldp_status_right_lane
    :type endpoint_msgs-msg:LdpStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:LdpStatus))
   (ldp_valid
    :reader ldp_valid
    :initarg :ldp_valid
    :type cl:boolean
    :initform cl:nil)
   (ldw_status
    :reader ldw_status
    :initarg :ldw_status
    :type endpoint_msgs-msg:LdwStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:LdwStatus))
   (ldw_valid
    :reader ldw_valid
    :initarg :ldw_valid
    :type cl:boolean
    :initform cl:nil)
   (srs_collosion
    :reader srs_collosion
    :initarg :srs_collosion
    :type endpoint_msgs-msg:SrsCollosion
    :initform (cl:make-instance 'endpoint_msgs-msg:SrsCollosion))
   (extra
    :reader extra
    :initarg :extra
    :type endpoint_msgs-msg:ExtraReport
    :initform (cl:make-instance 'endpoint_msgs-msg:ExtraReport)))
)

(cl:defclass VehicleExtraReportData (<VehicleExtraReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleExtraReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleExtraReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleExtraReportData> is deprecated: use endpoint_msgs-msg:VehicleExtraReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'cta_lf-val :lambda-list '(m))
(cl:defmethod cta_lf-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:cta_lf-val is deprecated.  Use endpoint_msgs-msg:cta_lf instead.")
  (cta_lf m))

(cl:ensure-generic-function 'cta_rf-val :lambda-list '(m))
(cl:defmethod cta_rf-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:cta_rf-val is deprecated.  Use endpoint_msgs-msg:cta_rf instead.")
  (cta_rf m))

(cl:ensure-generic-function 'cta_lr-val :lambda-list '(m))
(cl:defmethod cta_lr-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:cta_lr-val is deprecated.  Use endpoint_msgs-msg:cta_lr instead.")
  (cta_lr m))

(cl:ensure-generic-function 'cta_rr-val :lambda-list '(m))
(cl:defmethod cta_rr-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:cta_rr-val is deprecated.  Use endpoint_msgs-msg:cta_rr instead.")
  (cta_rr m))

(cl:ensure-generic-function 'cta_valid-val :lambda-list '(m))
(cl:defmethod cta_valid-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:cta_valid-val is deprecated.  Use endpoint_msgs-msg:cta_valid instead.")
  (cta_valid m))

(cl:ensure-generic-function 'dlp_state-val :lambda-list '(m))
(cl:defmethod dlp_state-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:dlp_state-val is deprecated.  Use endpoint_msgs-msg:dlp_state instead.")
  (dlp_state m))

(cl:ensure-generic-function 'dlp_valid-val :lambda-list '(m))
(cl:defmethod dlp_valid-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:dlp_valid-val is deprecated.  Use endpoint_msgs-msg:dlp_valid instead.")
  (dlp_valid m))

(cl:ensure-generic-function 'hdc_state-val :lambda-list '(m))
(cl:defmethod hdc_state-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:hdc_state-val is deprecated.  Use endpoint_msgs-msg:hdc_state instead.")
  (hdc_state m))

(cl:ensure-generic-function 'hdc_valid-val :lambda-list '(m))
(cl:defmethod hdc_valid-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:hdc_valid-val is deprecated.  Use endpoint_msgs-msg:hdc_valid instead.")
  (hdc_valid m))

(cl:ensure-generic-function 'ldp_status_left_lane-val :lambda-list '(m))
(cl:defmethod ldp_status_left_lane-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ldp_status_left_lane-val is deprecated.  Use endpoint_msgs-msg:ldp_status_left_lane instead.")
  (ldp_status_left_lane m))

(cl:ensure-generic-function 'ldp_status_right_lane-val :lambda-list '(m))
(cl:defmethod ldp_status_right_lane-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ldp_status_right_lane-val is deprecated.  Use endpoint_msgs-msg:ldp_status_right_lane instead.")
  (ldp_status_right_lane m))

(cl:ensure-generic-function 'ldp_valid-val :lambda-list '(m))
(cl:defmethod ldp_valid-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ldp_valid-val is deprecated.  Use endpoint_msgs-msg:ldp_valid instead.")
  (ldp_valid m))

(cl:ensure-generic-function 'ldw_status-val :lambda-list '(m))
(cl:defmethod ldw_status-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ldw_status-val is deprecated.  Use endpoint_msgs-msg:ldw_status instead.")
  (ldw_status m))

(cl:ensure-generic-function 'ldw_valid-val :lambda-list '(m))
(cl:defmethod ldw_valid-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ldw_valid-val is deprecated.  Use endpoint_msgs-msg:ldw_valid instead.")
  (ldw_valid m))

(cl:ensure-generic-function 'srs_collosion-val :lambda-list '(m))
(cl:defmethod srs_collosion-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:srs_collosion-val is deprecated.  Use endpoint_msgs-msg:srs_collosion instead.")
  (srs_collosion m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <VehicleExtraReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:extra-val is deprecated.  Use endpoint_msgs-msg:extra instead.")
  (extra m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleExtraReportData>) ostream)
  "Serializes a message object of type '<VehicleExtraReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cta_lf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cta_rf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cta_lr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cta_rr) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cta_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dlp_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dlp_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hdc_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hdc_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ldp_status_left_lane) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ldp_status_right_lane) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ldp_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ldw_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ldw_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'srs_collosion) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extra) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleExtraReportData>) istream)
  "Deserializes a message object of type '<VehicleExtraReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cta_lf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cta_rf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cta_lr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cta_rr) istream)
    (cl:setf (cl:slot-value msg 'cta_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dlp_state) istream)
    (cl:setf (cl:slot-value msg 'dlp_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hdc_state) istream)
    (cl:setf (cl:slot-value msg 'hdc_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ldp_status_left_lane) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ldp_status_right_lane) istream)
    (cl:setf (cl:slot-value msg 'ldp_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ldw_status) istream)
    (cl:setf (cl:slot-value msg 'ldw_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'srs_collosion) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extra) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleExtraReportData>)))
  "Returns string type for a message object of type '<VehicleExtraReportData>"
  "endpoint_msgs/VehicleExtraReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleExtraReportData)))
  "Returns string type for a message object of type 'VehicleExtraReportData"
  "endpoint_msgs/VehicleExtraReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleExtraReportData>)))
  "Returns md5sum for a message object of type '<VehicleExtraReportData>"
  "240b37eb7464abfe670438de392535fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleExtraReportData)))
  "Returns md5sum for a message object of type 'VehicleExtraReportData"
  "240b37eb7464abfe670438de392535fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleExtraReportData>)))
  "Returns full string definition for message of type '<VehicleExtraReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/CtaState cta_lf~%endpoint_msgs/CtaState cta_rf~%endpoint_msgs/CtaState cta_lr~%endpoint_msgs/CtaState cta_rr~%bool cta_valid~%endpoint_msgs/DlpStatus dlp_state~%bool dlp_valid~%endpoint_msgs/HdcState hdc_state~%bool hdc_valid~%endpoint_msgs/LdpStatus ldp_status_left_lane~%endpoint_msgs/LdpStatus ldp_status_right_lane~%bool ldp_valid~%endpoint_msgs/LdwStatus ldw_status~%bool ldw_valid~%endpoint_msgs/SrsCollosion srs_collosion~%endpoint_msgs/ExtraReport extra~%~%================================================================================~%MSG: endpoint_msgs/CtaState~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVE_1 = 1~%uint8 WARNING_LEVE_2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/DlpStatus~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVEL1 = 1~%uint8 WARNING_LEVEL2 = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HdcState~%uint8 NORMAL = 0~%uint8 ENABLED = 1~%uint8 ACTIVED = 2~%uint8 FAILED = 3~%uint8 TEMPORARILY_INHIBITED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdpStatus~%uint8 LDP_STATUS_OFF = 0~%uint8 LDP_STATUS_STANDBY = 1~%uint8 LDP_STATUS_ACTIVE = 2~%uint8 LDP_STATUS_RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdwStatus~%uint8 LDW_STATUS_OFF = 0~%uint8 LDW_STATUS_STANDBY = 1~%uint8 LDW_STATUS_DISABLED = 2~%uint8 LDW_STATUS_OVERIDE = 3~%uint8 LDW_STATUS_ACTIVE = 4~%uint8 LDW_STATUS_RESERVED1 = 5~%uint8 LDW_STATUS_RESERVED2 = 6~%uint8 LDW_STATUS_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SrsCollosion~%uint8 NONE = 0~%uint8 NOT_COLLOSION = 1~%uint8 COLLOSION = 2~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ExtraReport~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleExtraReportData)))
  "Returns full string definition for message of type 'VehicleExtraReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/CtaState cta_lf~%endpoint_msgs/CtaState cta_rf~%endpoint_msgs/CtaState cta_lr~%endpoint_msgs/CtaState cta_rr~%bool cta_valid~%endpoint_msgs/DlpStatus dlp_state~%bool dlp_valid~%endpoint_msgs/HdcState hdc_state~%bool hdc_valid~%endpoint_msgs/LdpStatus ldp_status_left_lane~%endpoint_msgs/LdpStatus ldp_status_right_lane~%bool ldp_valid~%endpoint_msgs/LdwStatus ldw_status~%bool ldw_valid~%endpoint_msgs/SrsCollosion srs_collosion~%endpoint_msgs/ExtraReport extra~%~%================================================================================~%MSG: endpoint_msgs/CtaState~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVE_1 = 1~%uint8 WARNING_LEVE_2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/DlpStatus~%uint8 NO_WARNING = 0~%uint8 WARNING_LEVEL1 = 1~%uint8 WARNING_LEVEL2 = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/HdcState~%uint8 NORMAL = 0~%uint8 ENABLED = 1~%uint8 ACTIVED = 2~%uint8 FAILED = 3~%uint8 TEMPORARILY_INHIBITED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdpStatus~%uint8 LDP_STATUS_OFF = 0~%uint8 LDP_STATUS_STANDBY = 1~%uint8 LDP_STATUS_ACTIVE = 2~%uint8 LDP_STATUS_RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LdwStatus~%uint8 LDW_STATUS_OFF = 0~%uint8 LDW_STATUS_STANDBY = 1~%uint8 LDW_STATUS_DISABLED = 2~%uint8 LDW_STATUS_OVERIDE = 3~%uint8 LDW_STATUS_ACTIVE = 4~%uint8 LDW_STATUS_RESERVED1 = 5~%uint8 LDW_STATUS_RESERVED2 = 6~%uint8 LDW_STATUS_RESERVED3 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SrsCollosion~%uint8 NONE = 0~%uint8 NOT_COLLOSION = 1~%uint8 COLLOSION = 2~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/ExtraReport~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleExtraReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cta_lf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cta_rf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cta_lr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cta_rr))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dlp_state))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hdc_state))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ldp_status_left_lane))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ldp_status_right_lane))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ldw_status))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'srs_collosion))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extra))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleExtraReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleExtraReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':cta_lf (cta_lf msg))
    (cl:cons ':cta_rf (cta_rf msg))
    (cl:cons ':cta_lr (cta_lr msg))
    (cl:cons ':cta_rr (cta_rr msg))
    (cl:cons ':cta_valid (cta_valid msg))
    (cl:cons ':dlp_state (dlp_state msg))
    (cl:cons ':dlp_valid (dlp_valid msg))
    (cl:cons ':hdc_state (hdc_state msg))
    (cl:cons ':hdc_valid (hdc_valid msg))
    (cl:cons ':ldp_status_left_lane (ldp_status_left_lane msg))
    (cl:cons ':ldp_status_right_lane (ldp_status_right_lane msg))
    (cl:cons ':ldp_valid (ldp_valid msg))
    (cl:cons ':ldw_status (ldw_status msg))
    (cl:cons ':ldw_valid (ldw_valid msg))
    (cl:cons ':srs_collosion (srs_collosion msg))
    (cl:cons ':extra (extra msg))
))
