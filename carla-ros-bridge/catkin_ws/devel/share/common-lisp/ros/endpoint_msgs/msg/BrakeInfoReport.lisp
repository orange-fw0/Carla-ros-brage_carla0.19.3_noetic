; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeInfoReport.msg.html

(cl:defclass <BrakeInfoReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (brake_info_report_data
    :reader brake_info_report_data
    :initarg :brake_info_report_data
    :type endpoint_msgs-msg:BrakeInfoReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeInfoReportData)))
)

(cl:defclass BrakeInfoReport (<BrakeInfoReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeInfoReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeInfoReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeInfoReport> is deprecated: use endpoint_msgs-msg:BrakeInfoReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <BrakeInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'brake_info_report_data-val :lambda-list '(m))
(cl:defmethod brake_info_report_data-val ((m <BrakeInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_info_report_data-val is deprecated.  Use endpoint_msgs-msg:brake_info_report_data instead.")
  (brake_info_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeInfoReport>)))
    "Constants for message type '<BrakeInfoReport>"
  '((:BRAKE_INFO_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeInfoReport)))
    "Constants for message type 'BrakeInfoReport"
  '((:BRAKE_INFO_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeInfoReport>) ostream)
  "Serializes a message object of type '<BrakeInfoReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_info_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeInfoReport>) istream)
  "Deserializes a message object of type '<BrakeInfoReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_info_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeInfoReport>)))
  "Returns string type for a message object of type '<BrakeInfoReport>"
  "endpoint_msgs/BrakeInfoReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeInfoReport)))
  "Returns string type for a message object of type 'BrakeInfoReport"
  "endpoint_msgs/BrakeInfoReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeInfoReport>)))
  "Returns md5sum for a message object of type '<BrakeInfoReport>"
  "4217cb9b7eb12b8d3bb88d65609a071a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeInfoReport)))
  "Returns md5sum for a message object of type 'BrakeInfoReport"
  "4217cb9b7eb12b8d3bb88d65609a071a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeInfoReport>)))
  "Returns full string definition for message of type '<BrakeInfoReport>"
  (cl:format cl:nil "uint8 BRAKE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeInfoReportData brake_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeInfoReportData~%uint64 timestamp_us~%float32 accleration_on_wheel~%float32 lateral_accleration_on_wheel~%bool stationary~%bool abs_active~%bool abs_fault~%bool tcs_active~%bool tcs_fault~%bool msr_active~%bool msr_fault~%bool esp_active~%bool esp_fault~%bool tsr_active~%bool tsr_fault~%bool pressure~%float32 brake_torque_delivery~%bool brake_torque_delivery_valid~%float32 brake_regen_torque_delivery~%bool brake_regen_torque_delivery_valid~%float32 brake_frct_torque_delivery~%bool brake_frct_torque_delivery_valid~%float32 master_pressure_delivery~%bool master_pressure_delivery_valid~%float32 pedal_brake_torque~%bool pedal_brake_torque_valid~%bool pkg_fastswitch_enable~%bool vehicle_block~%endpoint_msgs/VehESPSwitch esp_status~%bool vdc_active~%bool vdc_fault~%uint8 reserved~%~%================================================================================~%MSG: endpoint_msgs/VehESPSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeInfoReport)))
  "Returns full string definition for message of type 'BrakeInfoReport"
  (cl:format cl:nil "uint8 BRAKE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/BrakeInfoReportData brake_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeInfoReportData~%uint64 timestamp_us~%float32 accleration_on_wheel~%float32 lateral_accleration_on_wheel~%bool stationary~%bool abs_active~%bool abs_fault~%bool tcs_active~%bool tcs_fault~%bool msr_active~%bool msr_fault~%bool esp_active~%bool esp_fault~%bool tsr_active~%bool tsr_fault~%bool pressure~%float32 brake_torque_delivery~%bool brake_torque_delivery_valid~%float32 brake_regen_torque_delivery~%bool brake_regen_torque_delivery_valid~%float32 brake_frct_torque_delivery~%bool brake_frct_torque_delivery_valid~%float32 master_pressure_delivery~%bool master_pressure_delivery_valid~%float32 pedal_brake_torque~%bool pedal_brake_torque_valid~%bool pkg_fastswitch_enable~%bool vehicle_block~%endpoint_msgs/VehESPSwitch esp_status~%bool vdc_active~%bool vdc_fault~%uint8 reserved~%~%================================================================================~%MSG: endpoint_msgs/VehESPSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeInfoReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_info_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeInfoReport>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeInfoReport
    (cl:cons ':available (available msg))
    (cl:cons ':brake_info_report_data (brake_info_report_data msg))
))
