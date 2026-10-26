; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelPositionReport.msg.html

(cl:defclass <WheelPositionReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wheel_position_report_data
    :reader wheel_position_report_data
    :initarg :wheel_position_report_data
    :type endpoint_msgs-msg:WheelPositionReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelPositionReportData)))
)

(cl:defclass WheelPositionReport (<WheelPositionReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelPositionReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelPositionReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelPositionReport> is deprecated: use endpoint_msgs-msg:WheelPositionReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WheelPositionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wheel_position_report_data-val :lambda-list '(m))
(cl:defmethod wheel_position_report_data-val ((m <WheelPositionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_position_report_data-val is deprecated.  Use endpoint_msgs-msg:wheel_position_report_data instead.")
  (wheel_position_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelPositionReport>)))
    "Constants for message type '<WheelPositionReport>"
  '((:WHEEL_POSITION_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelPositionReport)))
    "Constants for message type 'WheelPositionReport"
  '((:WHEEL_POSITION_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelPositionReport>) ostream)
  "Serializes a message object of type '<WheelPositionReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_position_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelPositionReport>) istream)
  "Deserializes a message object of type '<WheelPositionReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_position_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelPositionReport>)))
  "Returns string type for a message object of type '<WheelPositionReport>"
  "endpoint_msgs/WheelPositionReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelPositionReport)))
  "Returns string type for a message object of type 'WheelPositionReport"
  "endpoint_msgs/WheelPositionReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelPositionReport>)))
  "Returns md5sum for a message object of type '<WheelPositionReport>"
  "fb35a5946173d79e5b1c24ec1f5a7e36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelPositionReport)))
  "Returns md5sum for a message object of type 'WheelPositionReport"
  "fb35a5946173d79e5b1c24ec1f5a7e36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelPositionReport>)))
  "Returns full string definition for message of type '<WheelPositionReport>"
  (cl:format cl:nil "uint8 WHEEL_POSITION_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelPositionReportData wheel_position_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelPositionReportData~%uint64 timestamp_us~%int16 front_left~%int16 front_right~%int16 rear_left~%int16 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelPositionReport)))
  "Returns full string definition for message of type 'WheelPositionReport"
  (cl:format cl:nil "uint8 WHEEL_POSITION_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelPositionReportData wheel_position_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelPositionReportData~%uint64 timestamp_us~%int16 front_left~%int16 front_right~%int16 rear_left~%int16 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelPositionReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_position_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelPositionReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelPositionReport
    (cl:cons ':available (available msg))
    (cl:cons ':wheel_position_report_data (wheel_position_report_data msg))
))
