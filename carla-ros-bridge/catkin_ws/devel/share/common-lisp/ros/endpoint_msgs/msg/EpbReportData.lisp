; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude EpbReportData.msg.html

(cl:defclass <EpbReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (driver_work_type
    :reader driver_work_type
    :initarg :driver_work_type
    :type endpoint_msgs-msg:WorkType
    :initform (cl:make-instance 'endpoint_msgs-msg:WorkType))
   (epb_report
    :reader epb_report
    :initarg :epb_report
    :type endpoint_msgs-msg:EpbStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:EpbStatus))
   (auto_hold_state
    :reader auto_hold_state
    :initarg :auto_hold_state
    :type endpoint_msgs-msg:AutoHoldStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:AutoHoldStatus))
   (vehicle_hold_active
    :reader vehicle_hold_active
    :initarg :vehicle_hold_active
    :type cl:boolean
    :initform cl:nil)
   (overide
    :reader overide
    :initarg :overide
    :type cl:boolean
    :initform cl:nil)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EpbReportData (<EpbReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EpbReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EpbReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<EpbReportData> is deprecated: use endpoint_msgs-msg:EpbReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <EpbReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'driver_work_type-val :lambda-list '(m))
(cl:defmethod driver_work_type-val ((m <EpbReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:driver_work_type-val is deprecated.  Use endpoint_msgs-msg:driver_work_type instead.")
  (driver_work_type m))

(cl:ensure-generic-function 'epb_report-val :lambda-list '(m))
(cl:defmethod epb_report-val ((m <EpbReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:epb_report-val is deprecated.  Use endpoint_msgs-msg:epb_report instead.")
  (epb_report m))

(cl:ensure-generic-function 'auto_hold_state-val :lambda-list '(m))
(cl:defmethod auto_hold_state-val ((m <EpbReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:auto_hold_state-val is deprecated.  Use endpoint_msgs-msg:auto_hold_state instead.")
  (auto_hold_state m))

(cl:ensure-generic-function 'vehicle_hold_active-val :lambda-list '(m))
(cl:defmethod vehicle_hold_active-val ((m <EpbReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_hold_active-val is deprecated.  Use endpoint_msgs-msg:vehicle_hold_active instead.")
  (vehicle_hold_active m))

(cl:ensure-generic-function 'overide-val :lambda-list '(m))
(cl:defmethod overide-val ((m <EpbReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:overide-val is deprecated.  Use endpoint_msgs-msg:overide instead.")
  (overide m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <EpbReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EpbReportData>) ostream)
  "Serializes a message object of type '<EpbReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver_work_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'epb_report) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auto_hold_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_hold_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overide) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EpbReportData>) istream)
  "Deserializes a message object of type '<EpbReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver_work_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'epb_report) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auto_hold_state) istream)
    (cl:setf (cl:slot-value msg 'vehicle_hold_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overide) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EpbReportData>)))
  "Returns string type for a message object of type '<EpbReportData>"
  "endpoint_msgs/EpbReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EpbReportData)))
  "Returns string type for a message object of type 'EpbReportData"
  "endpoint_msgs/EpbReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EpbReportData>)))
  "Returns md5sum for a message object of type '<EpbReportData>"
  "ce462684a53c617db505f9faac2ca167")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EpbReportData)))
  "Returns md5sum for a message object of type 'EpbReportData"
  "ce462684a53c617db505f9faac2ca167")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EpbReportData>)))
  "Returns full string definition for message of type '<EpbReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/EpbStatus epb_report~%endpoint_msgs/AutoHoldStatus auto_hold_state~%bool vehicle_hold_active~%bool overide~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/EpbStatus~%uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoHoldStatus~%uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EpbReportData)))
  "Returns full string definition for message of type 'EpbReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/EpbStatus epb_report~%endpoint_msgs/AutoHoldStatus auto_hold_state~%bool vehicle_hold_active~%bool overide~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/EpbStatus~%uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoHoldStatus~%uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EpbReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver_work_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'epb_report))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auto_hold_state))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EpbReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'EpbReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':driver_work_type (driver_work_type msg))
    (cl:cons ':epb_report (epb_report msg))
    (cl:cons ':auto_hold_state (auto_hold_state msg))
    (cl:cons ':vehicle_hold_active (vehicle_hold_active msg))
    (cl:cons ':overide (overide msg))
    (cl:cons ':valid (valid msg))
))
