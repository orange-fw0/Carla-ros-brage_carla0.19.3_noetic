; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude TirePressureReport.msg.html

(cl:defclass <TirePressureReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (tire_pressure_report_data
    :reader tire_pressure_report_data
    :initarg :tire_pressure_report_data
    :type endpoint_msgs-msg:TirePressureReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:TirePressureReportData)))
)

(cl:defclass TirePressureReport (<TirePressureReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TirePressureReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TirePressureReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<TirePressureReport> is deprecated: use endpoint_msgs-msg:TirePressureReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TirePressureReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'tire_pressure_report_data-val :lambda-list '(m))
(cl:defmethod tire_pressure_report_data-val ((m <TirePressureReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:tire_pressure_report_data-val is deprecated.  Use endpoint_msgs-msg:tire_pressure_report_data instead.")
  (tire_pressure_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TirePressureReport>)))
    "Constants for message type '<TirePressureReport>"
  '((:TIRE_PRESSURE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TirePressureReport)))
    "Constants for message type 'TirePressureReport"
  '((:TIRE_PRESSURE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TirePressureReport>) ostream)
  "Serializes a message object of type '<TirePressureReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tire_pressure_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TirePressureReport>) istream)
  "Deserializes a message object of type '<TirePressureReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tire_pressure_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TirePressureReport>)))
  "Returns string type for a message object of type '<TirePressureReport>"
  "endpoint_msgs/TirePressureReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TirePressureReport)))
  "Returns string type for a message object of type 'TirePressureReport"
  "endpoint_msgs/TirePressureReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TirePressureReport>)))
  "Returns md5sum for a message object of type '<TirePressureReport>"
  "99880e90926d831c93e6c0ef60107cde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TirePressureReport)))
  "Returns md5sum for a message object of type 'TirePressureReport"
  "99880e90926d831c93e6c0ef60107cde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TirePressureReport>)))
  "Returns full string definition for message of type '<TirePressureReport>"
  (cl:format cl:nil "uint8 TIRE_PRESSURE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/TirePressureReportData tire_pressure_report_data~%~%================================================================================~%MSG: endpoint_msgs/TirePressureReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TirePressureReport)))
  "Returns full string definition for message of type 'TirePressureReport"
  (cl:format cl:nil "uint8 TIRE_PRESSURE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/TirePressureReportData tire_pressure_report_data~%~%================================================================================~%MSG: endpoint_msgs/TirePressureReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TirePressureReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tire_pressure_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TirePressureReport>))
  "Converts a ROS message object to a list"
  (cl:list 'TirePressureReport
    (cl:cons ':available (available msg))
    (cl:cons ':tire_pressure_report_data (tire_pressure_report_data msg))
))
