; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HumanProtectedDeviceReport.msg.html

(cl:defclass <HumanProtectedDeviceReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (human_protected_device_report_data
    :reader human_protected_device_report_data
    :initarg :human_protected_device_report_data
    :type endpoint_msgs-msg:HumanProtectedDeviceReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:HumanProtectedDeviceReportData))
   (seat_sensor_status_report_data
    :reader seat_sensor_status_report_data
    :initarg :seat_sensor_status_report_data
    :type endpoint_msgs-msg:SeatSensorStatusReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:SeatSensorStatusReportData)))
)

(cl:defclass HumanProtectedDeviceReport (<HumanProtectedDeviceReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanProtectedDeviceReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanProtectedDeviceReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HumanProtectedDeviceReport> is deprecated: use endpoint_msgs-msg:HumanProtectedDeviceReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <HumanProtectedDeviceReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'human_protected_device_report_data-val :lambda-list '(m))
(cl:defmethod human_protected_device_report_data-val ((m <HumanProtectedDeviceReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:human_protected_device_report_data-val is deprecated.  Use endpoint_msgs-msg:human_protected_device_report_data instead.")
  (human_protected_device_report_data m))

(cl:ensure-generic-function 'seat_sensor_status_report_data-val :lambda-list '(m))
(cl:defmethod seat_sensor_status_report_data-val ((m <HumanProtectedDeviceReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:seat_sensor_status_report_data-val is deprecated.  Use endpoint_msgs-msg:seat_sensor_status_report_data instead.")
  (seat_sensor_status_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HumanProtectedDeviceReport>)))
    "Constants for message type '<HumanProtectedDeviceReport>"
  '((:HUMAN_PROTECTED_DEVICE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HumanProtectedDeviceReport)))
    "Constants for message type 'HumanProtectedDeviceReport"
  '((:HUMAN_PROTECTED_DEVICE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanProtectedDeviceReport>) ostream)
  "Serializes a message object of type '<HumanProtectedDeviceReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'human_protected_device_report_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'seat_sensor_status_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanProtectedDeviceReport>) istream)
  "Deserializes a message object of type '<HumanProtectedDeviceReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'human_protected_device_report_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'seat_sensor_status_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanProtectedDeviceReport>)))
  "Returns string type for a message object of type '<HumanProtectedDeviceReport>"
  "endpoint_msgs/HumanProtectedDeviceReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanProtectedDeviceReport)))
  "Returns string type for a message object of type 'HumanProtectedDeviceReport"
  "endpoint_msgs/HumanProtectedDeviceReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanProtectedDeviceReport>)))
  "Returns md5sum for a message object of type '<HumanProtectedDeviceReport>"
  "99aabe4955f5e9e44655eb8177d146dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanProtectedDeviceReport)))
  "Returns md5sum for a message object of type 'HumanProtectedDeviceReport"
  "99aabe4955f5e9e44655eb8177d146dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanProtectedDeviceReport>)))
  "Returns full string definition for message of type '<HumanProtectedDeviceReport>"
  (cl:format cl:nil "uint8 HUMAN_PROTECTED_DEVICE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/HumanProtectedDeviceReportData human_protected_device_report_data~%endpoint_msgs/SeatSensorStatusReportData seat_sensor_status_report_data~%~%================================================================================~%MSG: endpoint_msgs/HumanProtectedDeviceReportData~%uint64 timestamp_us~%endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HumanProtectedDeviceType~%uint8 DRIVER_SEATBELT = 0~%uint8 PASSENGER_SEATBELT = 1~%uint8 PASSENGER_DETECT = 2~%uint8 PASSENGER_AIRBAG = 3~%uint8 SECOND_LEFT_BELT = 4~%uint8 SECOND_MID_BELT = 5~%uint8 SECOND_RIGHT_BELT = 6~%uint8 RESERVED1 = 7~%uint8 RESERVED2 = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SeatSensorStatusReportData~%uint64 timestamp_us~%endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/SeatSensorStatusType~%uint8 DRIVER_SEAT_STATUS = 0~%uint8 PASSENGER_SEAT_STATUS = 1~%uint8 SECOND_LEFT_SEAT_STATUS = 2~%uint8 SECOND_MID_SEAT_STATUS = 3~%uint8 SECOND_RIGHT_SEAT_STATUS = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanProtectedDeviceReport)))
  "Returns full string definition for message of type 'HumanProtectedDeviceReport"
  (cl:format cl:nil "uint8 HUMAN_PROTECTED_DEVICE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/HumanProtectedDeviceReportData human_protected_device_report_data~%endpoint_msgs/SeatSensorStatusReportData seat_sensor_status_report_data~%~%================================================================================~%MSG: endpoint_msgs/HumanProtectedDeviceReportData~%uint64 timestamp_us~%endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HumanProtectedDeviceType~%uint8 DRIVER_SEATBELT = 0~%uint8 PASSENGER_SEATBELT = 1~%uint8 PASSENGER_DETECT = 2~%uint8 PASSENGER_AIRBAG = 3~%uint8 SECOND_LEFT_BELT = 4~%uint8 SECOND_MID_BELT = 5~%uint8 SECOND_RIGHT_BELT = 6~%uint8 RESERVED1 = 7~%uint8 RESERVED2 = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SeatSensorStatusReportData~%uint64 timestamp_us~%endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/SeatSensorStatusType~%uint8 DRIVER_SEAT_STATUS = 0~%uint8 PASSENGER_SEAT_STATUS = 1~%uint8 SECOND_LEFT_SEAT_STATUS = 2~%uint8 SECOND_MID_SEAT_STATUS = 3~%uint8 SECOND_RIGHT_SEAT_STATUS = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanProtectedDeviceReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'human_protected_device_report_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'seat_sensor_status_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanProtectedDeviceReport>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanProtectedDeviceReport
    (cl:cons ':available (available msg))
    (cl:cons ':human_protected_device_report_data (human_protected_device_report_data msg))
    (cl:cons ':seat_sensor_status_report_data (seat_sensor_status_report_data msg))
))
