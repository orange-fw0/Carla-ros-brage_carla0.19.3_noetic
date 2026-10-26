; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelFrctTorqueReport.msg.html

(cl:defclass <WheelFrctTorqueReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wheel_frct_torque_report_data
    :reader wheel_frct_torque_report_data
    :initarg :wheel_frct_torque_report_data
    :type endpoint_msgs-msg:WheelFrctTorqueReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelFrctTorqueReportData)))
)

(cl:defclass WheelFrctTorqueReport (<WheelFrctTorqueReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelFrctTorqueReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelFrctTorqueReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelFrctTorqueReport> is deprecated: use endpoint_msgs-msg:WheelFrctTorqueReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WheelFrctTorqueReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wheel_frct_torque_report_data-val :lambda-list '(m))
(cl:defmethod wheel_frct_torque_report_data-val ((m <WheelFrctTorqueReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_frct_torque_report_data-val is deprecated.  Use endpoint_msgs-msg:wheel_frct_torque_report_data instead.")
  (wheel_frct_torque_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelFrctTorqueReport>)))
    "Constants for message type '<WheelFrctTorqueReport>"
  '((:WHEEL_FRCT_TORQUE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelFrctTorqueReport)))
    "Constants for message type 'WheelFrctTorqueReport"
  '((:WHEEL_FRCT_TORQUE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelFrctTorqueReport>) ostream)
  "Serializes a message object of type '<WheelFrctTorqueReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_frct_torque_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelFrctTorqueReport>) istream)
  "Deserializes a message object of type '<WheelFrctTorqueReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_frct_torque_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelFrctTorqueReport>)))
  "Returns string type for a message object of type '<WheelFrctTorqueReport>"
  "endpoint_msgs/WheelFrctTorqueReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelFrctTorqueReport)))
  "Returns string type for a message object of type 'WheelFrctTorqueReport"
  "endpoint_msgs/WheelFrctTorqueReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelFrctTorqueReport>)))
  "Returns md5sum for a message object of type '<WheelFrctTorqueReport>"
  "52516e6244acda6483e926a006c64bd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelFrctTorqueReport)))
  "Returns md5sum for a message object of type 'WheelFrctTorqueReport"
  "52516e6244acda6483e926a006c64bd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelFrctTorqueReport>)))
  "Returns full string definition for message of type '<WheelFrctTorqueReport>"
  (cl:format cl:nil "uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelFrctTorqueReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelFrctTorqueReport)))
  "Returns full string definition for message of type 'WheelFrctTorqueReport"
  (cl:format cl:nil "uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelFrctTorqueReportData~%uint64 timestamp_us~%float32 front_left~%float32 front_right~%float32 rear_left~%float32 rear_right~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelFrctTorqueReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_frct_torque_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelFrctTorqueReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelFrctTorqueReport
    (cl:cons ':available (available msg))
    (cl:cons ':wheel_frct_torque_report_data (wheel_frct_torque_report_data msg))
))
