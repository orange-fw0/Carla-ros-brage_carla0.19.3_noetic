; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude EnergyRemainingReport.msg.html

(cl:defclass <EnergyRemainingReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (energy_remaining_report_data
    :reader energy_remaining_report_data
    :initarg :energy_remaining_report_data
    :type endpoint_msgs-msg:EnergyRemainingReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:EnergyRemainingReportData)))
)

(cl:defclass EnergyRemainingReport (<EnergyRemainingReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnergyRemainingReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnergyRemainingReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<EnergyRemainingReport> is deprecated: use endpoint_msgs-msg:EnergyRemainingReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <EnergyRemainingReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'energy_remaining_report_data-val :lambda-list '(m))
(cl:defmethod energy_remaining_report_data-val ((m <EnergyRemainingReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:energy_remaining_report_data-val is deprecated.  Use endpoint_msgs-msg:energy_remaining_report_data instead.")
  (energy_remaining_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EnergyRemainingReport>)))
    "Constants for message type '<EnergyRemainingReport>"
  '((:ENERGY_REMAINING_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EnergyRemainingReport)))
    "Constants for message type 'EnergyRemainingReport"
  '((:ENERGY_REMAINING_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnergyRemainingReport>) ostream)
  "Serializes a message object of type '<EnergyRemainingReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'energy_remaining_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnergyRemainingReport>) istream)
  "Deserializes a message object of type '<EnergyRemainingReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'energy_remaining_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnergyRemainingReport>)))
  "Returns string type for a message object of type '<EnergyRemainingReport>"
  "endpoint_msgs/EnergyRemainingReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnergyRemainingReport)))
  "Returns string type for a message object of type 'EnergyRemainingReport"
  "endpoint_msgs/EnergyRemainingReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnergyRemainingReport>)))
  "Returns md5sum for a message object of type '<EnergyRemainingReport>"
  "67632ed96489635b9c2922977d559b76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnergyRemainingReport)))
  "Returns md5sum for a message object of type 'EnergyRemainingReport"
  "67632ed96489635b9c2922977d559b76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnergyRemainingReport>)))
  "Returns full string definition for message of type '<EnergyRemainingReport>"
  (cl:format cl:nil "uint8 ENERGY_REMAINING_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/EnergyRemainingReportData energy_remaining_report_data~%~%================================================================================~%MSG: endpoint_msgs/EnergyRemainingReportData~%uint64 timestamp_us~%float32 level~%float32 remaining_mileage~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnergyRemainingReport)))
  "Returns full string definition for message of type 'EnergyRemainingReport"
  (cl:format cl:nil "uint8 ENERGY_REMAINING_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/EnergyRemainingReportData energy_remaining_report_data~%~%================================================================================~%MSG: endpoint_msgs/EnergyRemainingReportData~%uint64 timestamp_us~%float32 level~%float32 remaining_mileage~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnergyRemainingReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'energy_remaining_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnergyRemainingReport>))
  "Converts a ROS message object to a list"
  (cl:list 'EnergyRemainingReport
    (cl:cons ':available (available msg))
    (cl:cons ':energy_remaining_report_data (energy_remaining_report_data msg))
))
