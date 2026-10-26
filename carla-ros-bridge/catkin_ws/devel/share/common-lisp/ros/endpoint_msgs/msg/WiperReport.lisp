; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WiperReport.msg.html

(cl:defclass <WiperReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wiper_report_data
    :reader wiper_report_data
    :initarg :wiper_report_data
    :type endpoint_msgs-msg:WiperReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WiperReportData)))
)

(cl:defclass WiperReport (<WiperReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WiperReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WiperReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WiperReport> is deprecated: use endpoint_msgs-msg:WiperReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WiperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wiper_report_data-val :lambda-list '(m))
(cl:defmethod wiper_report_data-val ((m <WiperReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wiper_report_data-val is deprecated.  Use endpoint_msgs-msg:wiper_report_data instead.")
  (wiper_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WiperReport>)))
    "Constants for message type '<WiperReport>"
  '((:WIPER_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WiperReport)))
    "Constants for message type 'WiperReport"
  '((:WIPER_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WiperReport>) ostream)
  "Serializes a message object of type '<WiperReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wiper_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WiperReport>) istream)
  "Deserializes a message object of type '<WiperReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wiper_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WiperReport>)))
  "Returns string type for a message object of type '<WiperReport>"
  "endpoint_msgs/WiperReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WiperReport)))
  "Returns string type for a message object of type 'WiperReport"
  "endpoint_msgs/WiperReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WiperReport>)))
  "Returns md5sum for a message object of type '<WiperReport>"
  "aae3c58e902eb64e17b4b2bd6b41ae95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WiperReport)))
  "Returns md5sum for a message object of type 'WiperReport"
  "aae3c58e902eb64e17b4b2bd6b41ae95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WiperReport>)))
  "Returns full string definition for message of type '<WiperReport>"
  (cl:format cl:nil "uint8 WIPER_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WiperReportData wiper_report_data~%~%================================================================================~%MSG: endpoint_msgs/WiperReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/WiperStateType front_wiper_state~%endpoint_msgs/WiperStateType rear_wiper_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WiperStateType~%uint8 OFF = 0~%uint8 AUTO_OFF = 1~%uint8 AUTO_MOVING = 2~%uint8 MANUAL_OFF = 3~%uint8 MANUAL_ON = 4~%uint8 MANUAL_LOW = 5~%uint8 MANUAL_HIGH = 6~%uint8 MIST_FLICK = 7~%uint8 WASH = 8~%uint8 AUTO_LOW = 9~%uint8 AUTO_HIGH = 10~%uint8 COURTESY_WIPE = 11~%uint8 AUTO_ADJUST = 12~%uint8 RESERVED = 13~%uint8 STALLED = 14~%uint8 NONE = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WiperReport)))
  "Returns full string definition for message of type 'WiperReport"
  (cl:format cl:nil "uint8 WIPER_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WiperReportData wiper_report_data~%~%================================================================================~%MSG: endpoint_msgs/WiperReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/WiperStateType front_wiper_state~%endpoint_msgs/WiperStateType rear_wiper_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WiperStateType~%uint8 OFF = 0~%uint8 AUTO_OFF = 1~%uint8 AUTO_MOVING = 2~%uint8 MANUAL_OFF = 3~%uint8 MANUAL_ON = 4~%uint8 MANUAL_LOW = 5~%uint8 MANUAL_HIGH = 6~%uint8 MIST_FLICK = 7~%uint8 WASH = 8~%uint8 AUTO_LOW = 9~%uint8 AUTO_HIGH = 10~%uint8 COURTESY_WIPE = 11~%uint8 AUTO_ADJUST = 12~%uint8 RESERVED = 13~%uint8 STALLED = 14~%uint8 NONE = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WiperReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wiper_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WiperReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WiperReport
    (cl:cons ':available (available msg))
    (cl:cons ':wiper_report_data (wiper_report_data msg))
))
