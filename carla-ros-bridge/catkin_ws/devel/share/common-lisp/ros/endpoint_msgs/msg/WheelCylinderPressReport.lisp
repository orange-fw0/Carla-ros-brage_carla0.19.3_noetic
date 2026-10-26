; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelCylinderPressReport.msg.html

(cl:defclass <WheelCylinderPressReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wheel_cylinder_press_report_data
    :reader wheel_cylinder_press_report_data
    :initarg :wheel_cylinder_press_report_data
    :type endpoint_msgs-msg:WheelCylinderPressReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelCylinderPressReportData)))
)

(cl:defclass WheelCylinderPressReport (<WheelCylinderPressReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelCylinderPressReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelCylinderPressReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelCylinderPressReport> is deprecated: use endpoint_msgs-msg:WheelCylinderPressReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WheelCylinderPressReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wheel_cylinder_press_report_data-val :lambda-list '(m))
(cl:defmethod wheel_cylinder_press_report_data-val ((m <WheelCylinderPressReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_cylinder_press_report_data-val is deprecated.  Use endpoint_msgs-msg:wheel_cylinder_press_report_data instead.")
  (wheel_cylinder_press_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelCylinderPressReport>)))
    "Constants for message type '<WheelCylinderPressReport>"
  '((:WHEEL_CYLINDER_PRESS_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelCylinderPressReport)))
    "Constants for message type 'WheelCylinderPressReport"
  '((:WHEEL_CYLINDER_PRESS_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelCylinderPressReport>) ostream)
  "Serializes a message object of type '<WheelCylinderPressReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_cylinder_press_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelCylinderPressReport>) istream)
  "Deserializes a message object of type '<WheelCylinderPressReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_cylinder_press_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelCylinderPressReport>)))
  "Returns string type for a message object of type '<WheelCylinderPressReport>"
  "endpoint_msgs/WheelCylinderPressReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelCylinderPressReport)))
  "Returns string type for a message object of type 'WheelCylinderPressReport"
  "endpoint_msgs/WheelCylinderPressReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelCylinderPressReport>)))
  "Returns md5sum for a message object of type '<WheelCylinderPressReport>"
  "4d51347d2d1ff717fe5efbd77c6a005a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelCylinderPressReport)))
  "Returns md5sum for a message object of type 'WheelCylinderPressReport"
  "4d51347d2d1ff717fe5efbd77c6a005a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelCylinderPressReport>)))
  "Returns full string definition for message of type '<WheelCylinderPressReport>"
  (cl:format cl:nil "uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelCylinderPressReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelCylinderPressReport)))
  "Returns full string definition for message of type 'WheelCylinderPressReport"
  (cl:format cl:nil "uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelCylinderPressReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelCylinderPressReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_cylinder_press_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelCylinderPressReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelCylinderPressReport
    (cl:cons ':available (available msg))
    (cl:cons ':wheel_cylinder_press_report_data (wheel_cylinder_press_report_data msg))
))
