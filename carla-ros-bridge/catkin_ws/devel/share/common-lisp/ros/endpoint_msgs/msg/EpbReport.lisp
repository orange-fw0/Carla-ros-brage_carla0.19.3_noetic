; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude EpbReport.msg.html

(cl:defclass <EpbReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (epb_report_data
    :reader epb_report_data
    :initarg :epb_report_data
    :type endpoint_msgs-msg:EpbReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:EpbReportData)))
)

(cl:defclass EpbReport (<EpbReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EpbReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EpbReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<EpbReport> is deprecated: use endpoint_msgs-msg:EpbReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <EpbReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'epb_report_data-val :lambda-list '(m))
(cl:defmethod epb_report_data-val ((m <EpbReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:epb_report_data-val is deprecated.  Use endpoint_msgs-msg:epb_report_data instead.")
  (epb_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EpbReport>)))
    "Constants for message type '<EpbReport>"
  '((:EPB_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EpbReport)))
    "Constants for message type 'EpbReport"
  '((:EPB_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EpbReport>) ostream)
  "Serializes a message object of type '<EpbReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'epb_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EpbReport>) istream)
  "Deserializes a message object of type '<EpbReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'epb_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EpbReport>)))
  "Returns string type for a message object of type '<EpbReport>"
  "endpoint_msgs/EpbReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EpbReport)))
  "Returns string type for a message object of type 'EpbReport"
  "endpoint_msgs/EpbReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EpbReport>)))
  "Returns md5sum for a message object of type '<EpbReport>"
  "3c51bf21506af305eac481f247be5f57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EpbReport)))
  "Returns md5sum for a message object of type 'EpbReport"
  "3c51bf21506af305eac481f247be5f57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EpbReport>)))
  "Returns full string definition for message of type '<EpbReport>"
  (cl:format cl:nil "uint8 EPB_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/EpbReportData epb_report_data~%~%================================================================================~%MSG: endpoint_msgs/EpbReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/EpbStatus epb_report~%endpoint_msgs/AutoHoldStatus auto_hold_state~%bool vehicle_hold_active~%bool overide~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/EpbStatus~%uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoHoldStatus~%uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EpbReport)))
  "Returns full string definition for message of type 'EpbReport"
  (cl:format cl:nil "uint8 EPB_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/EpbReportData epb_report_data~%~%================================================================================~%MSG: endpoint_msgs/EpbReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/EpbStatus epb_report~%endpoint_msgs/AutoHoldStatus auto_hold_state~%bool vehicle_hold_active~%bool overide~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/EpbStatus~%uint8 RELEASE = 0~%uint8 PULLING = 1~%uint8 PULL = 2~%uint8 RELEASING = 3~%uint8 RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoHoldStatus~%uint8 SYS_OFF = 0~%uint8 SYS_INTERVENTION = 1~%uint8 SYS_STANDBY = 2~%uint8 SYS_ERR = 3~%uint8 RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EpbReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'epb_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EpbReport>))
  "Converts a ROS message object to a list"
  (cl:list 'EpbReport
    (cl:cons ':available (available msg))
    (cl:cons ':epb_report_data (epb_report_data msg))
))
