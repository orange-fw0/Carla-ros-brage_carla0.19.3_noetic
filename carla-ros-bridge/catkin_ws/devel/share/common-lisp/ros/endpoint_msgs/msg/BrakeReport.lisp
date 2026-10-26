; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeReport.msg.html

(cl:defclass <BrakeReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (brake_report_data
    :reader brake_report_data
    :initarg :brake_report_data
    :type endpoint_msgs-msg:BrakeReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeReportData)))
)

(cl:defclass BrakeReport (<BrakeReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeReport> is deprecated: use endpoint_msgs-msg:BrakeReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <BrakeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'brake_report_data-val :lambda-list '(m))
(cl:defmethod brake_report_data-val ((m <BrakeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_report_data-val is deprecated.  Use endpoint_msgs-msg:brake_report_data instead.")
  (brake_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeReport>)))
    "Constants for message type '<BrakeReport>"
  '((:BRAKE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeReport)))
    "Constants for message type 'BrakeReport"
  '((:BRAKE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeReport>) ostream)
  "Serializes a message object of type '<BrakeReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeReport>) istream)
  "Deserializes a message object of type '<BrakeReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeReport>)))
  "Returns string type for a message object of type '<BrakeReport>"
  "endpoint_msgs/BrakeReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeReport)))
  "Returns string type for a message object of type 'BrakeReport"
  "endpoint_msgs/BrakeReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeReport>)))
  "Returns md5sum for a message object of type '<BrakeReport>"
  "5d0730876c9eaa82cf827c44cc09db2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeReport)))
  "Returns md5sum for a message object of type 'BrakeReport"
  "5d0730876c9eaa82cf827c44cc09db2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeReport>)))
  "Returns full string definition for message of type '<BrakeReport>"
  (cl:format cl:nil "uint8 BRAKE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeReportData brake_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/BrakeType brake_type~%float32 pedal_input~%float32 brake_command~%float32 brake_output~%bool override~%float32 ahb_exec_brake_force~%bool ahb_exec_brake_force_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeReport)))
  "Returns full string definition for message of type 'BrakeReport"
  (cl:format cl:nil "uint8 BRAKE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeReportData brake_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/BrakeType brake_type~%float32 pedal_input~%float32 brake_command~%float32 brake_output~%bool override~%float32 ahb_exec_brake_force~%bool ahb_exec_brake_force_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeReport>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeReport
    (cl:cons ':available (available msg))
    (cl:cons ':brake_report_data (brake_report_data msg))
))
