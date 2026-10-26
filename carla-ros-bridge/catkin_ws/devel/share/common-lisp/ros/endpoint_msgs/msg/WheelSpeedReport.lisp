; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelSpeedReport.msg.html

(cl:defclass <WheelSpeedReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wheel_speed_report_data
    :reader wheel_speed_report_data
    :initarg :wheel_speed_report_data
    :type endpoint_msgs-msg:WheelSpeedReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelSpeedReportData)))
)

(cl:defclass WheelSpeedReport (<WheelSpeedReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeedReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeedReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelSpeedReport> is deprecated: use endpoint_msgs-msg:WheelSpeedReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WheelSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wheel_speed_report_data-val :lambda-list '(m))
(cl:defmethod wheel_speed_report_data-val ((m <WheelSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_speed_report_data-val is deprecated.  Use endpoint_msgs-msg:wheel_speed_report_data instead.")
  (wheel_speed_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelSpeedReport>)))
    "Constants for message type '<WheelSpeedReport>"
  '((:WHEEL_SPEED_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelSpeedReport)))
    "Constants for message type 'WheelSpeedReport"
  '((:WHEEL_SPEED_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeedReport>) ostream)
  "Serializes a message object of type '<WheelSpeedReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_speed_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeedReport>) istream)
  "Deserializes a message object of type '<WheelSpeedReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_speed_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeedReport>)))
  "Returns string type for a message object of type '<WheelSpeedReport>"
  "endpoint_msgs/WheelSpeedReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeedReport)))
  "Returns string type for a message object of type 'WheelSpeedReport"
  "endpoint_msgs/WheelSpeedReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeedReport>)))
  "Returns md5sum for a message object of type '<WheelSpeedReport>"
  "e58af9dffa987dae3ddda85ae019745e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeedReport)))
  "Returns md5sum for a message object of type 'WheelSpeedReport"
  "e58af9dffa987dae3ddda85ae019745e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeedReport>)))
  "Returns full string definition for message of type '<WheelSpeedReport>"
  (cl:format cl:nil "uint8 WHEEL_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelSpeedReportData wheel_speed_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelSpeedReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%float32 front_left_mps~%float32 front_right_mps~%float32 rear_left_mps~%float32 rear_right_mps~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeedReport)))
  "Returns full string definition for message of type 'WheelSpeedReport"
  (cl:format cl:nil "uint8 WHEEL_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelSpeedReportData wheel_speed_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelSpeedReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%float32 front_left_mps~%float32 front_right_mps~%float32 rear_left_mps~%float32 rear_right_mps~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeedReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_speed_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeedReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeedReport
    (cl:cons ':available (available msg))
    (cl:cons ':wheel_speed_report_data (wheel_speed_report_data msg))
))
