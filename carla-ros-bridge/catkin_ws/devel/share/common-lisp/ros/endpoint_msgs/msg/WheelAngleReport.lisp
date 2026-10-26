; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelAngleReport.msg.html

(cl:defclass <WheelAngleReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wheel_angle_report_data
    :reader wheel_angle_report_data
    :initarg :wheel_angle_report_data
    :type endpoint_msgs-msg:WheelAngleReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelAngleReportData)))
)

(cl:defclass WheelAngleReport (<WheelAngleReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelAngleReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelAngleReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelAngleReport> is deprecated: use endpoint_msgs-msg:WheelAngleReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WheelAngleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wheel_angle_report_data-val :lambda-list '(m))
(cl:defmethod wheel_angle_report_data-val ((m <WheelAngleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_angle_report_data-val is deprecated.  Use endpoint_msgs-msg:wheel_angle_report_data instead.")
  (wheel_angle_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelAngleReport>)))
    "Constants for message type '<WheelAngleReport>"
  '((:WHEEL_ANGLE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelAngleReport)))
    "Constants for message type 'WheelAngleReport"
  '((:WHEEL_ANGLE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelAngleReport>) ostream)
  "Serializes a message object of type '<WheelAngleReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_angle_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelAngleReport>) istream)
  "Deserializes a message object of type '<WheelAngleReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_angle_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelAngleReport>)))
  "Returns string type for a message object of type '<WheelAngleReport>"
  "endpoint_msgs/WheelAngleReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelAngleReport)))
  "Returns string type for a message object of type 'WheelAngleReport"
  "endpoint_msgs/WheelAngleReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelAngleReport>)))
  "Returns md5sum for a message object of type '<WheelAngleReport>"
  "cdaf5cf35e4a2593cc6d4f4aa9804a97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelAngleReport)))
  "Returns md5sum for a message object of type 'WheelAngleReport"
  "cdaf5cf35e4a2593cc6d4f4aa9804a97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelAngleReport>)))
  "Returns full string definition for message of type '<WheelAngleReport>"
  (cl:format cl:nil "uint8 WHEEL_ANGLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelAngleReportData wheel_angle_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelAngleReportData~%uint64 timestamp_us~%endpoint_msgs/RwsSysStatus rws_state~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/RwsSysStatus~%uint8 STANDARD_MODE = 0~%uint8 COMFORTABLE_MODE = 1~%uint8 SPORT_MODE = 2~%uint8 AD_MODE = 3~%uint8 ADLOCK_MODE = 4~%uint8 RESERVED = 5~%bool valid~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelAngleReport)))
  "Returns full string definition for message of type 'WheelAngleReport"
  (cl:format cl:nil "uint8 WHEEL_ANGLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelAngleReportData wheel_angle_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelAngleReportData~%uint64 timestamp_us~%endpoint_msgs/RwsSysStatus rws_state~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/RwsSysStatus~%uint8 STANDARD_MODE = 0~%uint8 COMFORTABLE_MODE = 1~%uint8 SPORT_MODE = 2~%uint8 AD_MODE = 3~%uint8 ADLOCK_MODE = 4~%uint8 RESERVED = 5~%bool valid~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelAngleReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_angle_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelAngleReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelAngleReport
    (cl:cons ':available (available msg))
    (cl:cons ':wheel_angle_report_data (wheel_angle_report_data msg))
))
