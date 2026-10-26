; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude GearReport.msg.html

(cl:defclass <GearReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (gear_report_data
    :reader gear_report_data
    :initarg :gear_report_data
    :type endpoint_msgs-msg:GearReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:GearReportData)))
)

(cl:defclass GearReport (<GearReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<GearReport> is deprecated: use endpoint_msgs-msg:GearReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <GearReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'gear_report_data-val :lambda-list '(m))
(cl:defmethod gear_report_data-val ((m <GearReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:gear_report_data-val is deprecated.  Use endpoint_msgs-msg:gear_report_data instead.")
  (gear_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GearReport>)))
    "Constants for message type '<GearReport>"
  '((:GEAR_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GearReport)))
    "Constants for message type 'GearReport"
  '((:GEAR_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearReport>) ostream)
  "Serializes a message object of type '<GearReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearReport>) istream)
  "Deserializes a message object of type '<GearReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearReport>)))
  "Returns string type for a message object of type '<GearReport>"
  "endpoint_msgs/GearReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearReport)))
  "Returns string type for a message object of type 'GearReport"
  "endpoint_msgs/GearReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearReport>)))
  "Returns md5sum for a message object of type '<GearReport>"
  "761777a6f2b3b5226be6c7801de6c2ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearReport)))
  "Returns md5sum for a message object of type 'GearReport"
  "761777a6f2b3b5226be6c7801de6c2ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearReport>)))
  "Returns full string definition for message of type '<GearReport>"
  (cl:format cl:nil "uint8 GEAR_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/GearReportData gear_report_data~%~%================================================================================~%MSG: endpoint_msgs/GearReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/Gear command~%endpoint_msgs/Gear current_state~%endpoint_msgs/GearReject reject~%bool override~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReject~%uint8 NONE = 0~%uint8 SHIFT_IN_PROGRESS = 1~%uint8 OVERRIDE = 2~%uint8 ROTARY_LOW = 3~%uint8 ROTARY_PARK = 4~%uint8 VEHICLE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearReport)))
  "Returns full string definition for message of type 'GearReport"
  (cl:format cl:nil "uint8 GEAR_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/GearReportData gear_report_data~%~%================================================================================~%MSG: endpoint_msgs/GearReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/Gear command~%endpoint_msgs/Gear current_state~%endpoint_msgs/GearReject reject~%bool override~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReject~%uint8 NONE = 0~%uint8 SHIFT_IN_PROGRESS = 1~%uint8 OVERRIDE = 2~%uint8 ROTARY_LOW = 3~%uint8 ROTARY_PARK = 4~%uint8 VEHICLE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearReport>))
  "Converts a ROS message object to a list"
  (cl:list 'GearReport
    (cl:cons ':available (available msg))
    (cl:cons ':gear_report_data (gear_report_data msg))
))
