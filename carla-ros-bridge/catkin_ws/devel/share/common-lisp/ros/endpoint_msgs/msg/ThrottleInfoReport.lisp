; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ThrottleInfoReport.msg.html

(cl:defclass <ThrottleInfoReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (throttle_info_report_data
    :reader throttle_info_report_data
    :initarg :throttle_info_report_data
    :type endpoint_msgs-msg:ThrottleInfoReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleInfoReportData)))
)

(cl:defclass ThrottleInfoReport (<ThrottleInfoReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleInfoReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleInfoReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ThrottleInfoReport> is deprecated: use endpoint_msgs-msg:ThrottleInfoReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'throttle_info_report_data-val :lambda-list '(m))
(cl:defmethod throttle_info_report_data-val ((m <ThrottleInfoReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_info_report_data-val is deprecated.  Use endpoint_msgs-msg:throttle_info_report_data instead.")
  (throttle_info_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ThrottleInfoReport>)))
    "Constants for message type '<ThrottleInfoReport>"
  '((:THROTTLE_INFO_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ThrottleInfoReport)))
    "Constants for message type 'ThrottleInfoReport"
  '((:THROTTLE_INFO_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleInfoReport>) ostream)
  "Serializes a message object of type '<ThrottleInfoReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_info_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleInfoReport>) istream)
  "Deserializes a message object of type '<ThrottleInfoReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_info_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleInfoReport>)))
  "Returns string type for a message object of type '<ThrottleInfoReport>"
  "endpoint_msgs/ThrottleInfoReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleInfoReport)))
  "Returns string type for a message object of type 'ThrottleInfoReport"
  "endpoint_msgs/ThrottleInfoReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleInfoReport>)))
  "Returns md5sum for a message object of type '<ThrottleInfoReport>"
  "27ae743fc9496156b97c8c69dab60cc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleInfoReport)))
  "Returns md5sum for a message object of type 'ThrottleInfoReport"
  "27ae743fc9496156b97c8c69dab60cc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleInfoReport>)))
  "Returns full string definition for message of type '<ThrottleInfoReport>"
  (cl:format cl:nil "uint8 THROTTLE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleInfoReportData throttle_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleInfoReportData~%uint64 timestamp_us~%float32 front_left_mot_rpm~%bool front_left_mot_rpm_valid~%float32 front_right_mot_rpm~%bool front_right_mot_rpm_valid~%float32 rear_left_mot_rpm~%bool rear_left_mot_rpm_valid~%float32 rear_right_mot_rpm~%bool rear_right_mot_rpm_valid~%float32 throttle_pedal_percent~%float32 throttle_pedal_rate~%float32 vehicle_speed_average~%bool vehicle_speed_average_valid~%float32 vehicle_mileage~%float32 throttle_torque_delivery~%bool throttle_torque_delivery_valid~%bool pressure~%float32 input_shaft_speed~%float32 output_shaft_speed~%int8 curr_transmission_gear~%float32 curr_gear_ration~%bool input_shaft_speed_valid~%bool output_shaft_speed_valid~%bool curr_transmission_gear_valid~%bool curr_gear_ration_valid~%float32 reserved1~%float32 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleInfoReport)))
  "Returns full string definition for message of type 'ThrottleInfoReport"
  (cl:format cl:nil "uint8 THROTTLE_INFO_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleInfoReportData throttle_info_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleInfoReportData~%uint64 timestamp_us~%float32 front_left_mot_rpm~%bool front_left_mot_rpm_valid~%float32 front_right_mot_rpm~%bool front_right_mot_rpm_valid~%float32 rear_left_mot_rpm~%bool rear_left_mot_rpm_valid~%float32 rear_right_mot_rpm~%bool rear_right_mot_rpm_valid~%float32 throttle_pedal_percent~%float32 throttle_pedal_rate~%float32 vehicle_speed_average~%bool vehicle_speed_average_valid~%float32 vehicle_mileage~%float32 throttle_torque_delivery~%bool throttle_torque_delivery_valid~%bool pressure~%float32 input_shaft_speed~%float32 output_shaft_speed~%int8 curr_transmission_gear~%float32 curr_gear_ration~%bool input_shaft_speed_valid~%bool output_shaft_speed_valid~%bool curr_transmission_gear_valid~%bool curr_gear_ration_valid~%float32 reserved1~%float32 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleInfoReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_info_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleInfoReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleInfoReport
    (cl:cons ':available (available msg))
    (cl:cons ':throttle_info_report_data (throttle_info_report_data msg))
))
