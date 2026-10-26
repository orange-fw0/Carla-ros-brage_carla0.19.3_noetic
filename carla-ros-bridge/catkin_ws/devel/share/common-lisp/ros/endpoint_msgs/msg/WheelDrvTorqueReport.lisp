; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelDrvTorqueReport.msg.html

(cl:defclass <WheelDrvTorqueReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wheel_drv_torque_report_data
    :reader wheel_drv_torque_report_data
    :initarg :wheel_drv_torque_report_data
    :type endpoint_msgs-msg:WheelDrvTorqueReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WheelDrvTorqueReportData)))
)

(cl:defclass WheelDrvTorqueReport (<WheelDrvTorqueReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelDrvTorqueReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelDrvTorqueReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelDrvTorqueReport> is deprecated: use endpoint_msgs-msg:WheelDrvTorqueReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WheelDrvTorqueReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wheel_drv_torque_report_data-val :lambda-list '(m))
(cl:defmethod wheel_drv_torque_report_data-val ((m <WheelDrvTorqueReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wheel_drv_torque_report_data-val is deprecated.  Use endpoint_msgs-msg:wheel_drv_torque_report_data instead.")
  (wheel_drv_torque_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelDrvTorqueReport>)))
    "Constants for message type '<WheelDrvTorqueReport>"
  '((:WHEEL_DRV_TORQUE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelDrvTorqueReport)))
    "Constants for message type 'WheelDrvTorqueReport"
  '((:WHEEL_DRV_TORQUE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelDrvTorqueReport>) ostream)
  "Serializes a message object of type '<WheelDrvTorqueReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheel_drv_torque_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelDrvTorqueReport>) istream)
  "Deserializes a message object of type '<WheelDrvTorqueReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheel_drv_torque_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelDrvTorqueReport>)))
  "Returns string type for a message object of type '<WheelDrvTorqueReport>"
  "endpoint_msgs/WheelDrvTorqueReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDrvTorqueReport)))
  "Returns string type for a message object of type 'WheelDrvTorqueReport"
  "endpoint_msgs/WheelDrvTorqueReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelDrvTorqueReport>)))
  "Returns md5sum for a message object of type '<WheelDrvTorqueReport>"
  "9e0ffa65f38cffe9e048528b06ed464b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelDrvTorqueReport)))
  "Returns md5sum for a message object of type 'WheelDrvTorqueReport"
  "9e0ffa65f38cffe9e048528b06ed464b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelDrvTorqueReport>)))
  "Returns full string definition for message of type '<WheelDrvTorqueReport>"
  (cl:format cl:nil "uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelDrvTorqueReportData~%uint64 timestamp_us~%float32 front_left~%bool front_left_valid~%float32 front_right~%float32 front_right_valid~%float32 rear_left~%float32 rear_left_valid~%float32 rear_right~%float32 rear_right_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelDrvTorqueReport)))
  "Returns full string definition for message of type 'WheelDrvTorqueReport"
  (cl:format cl:nil "uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data~%~%================================================================================~%MSG: endpoint_msgs/WheelDrvTorqueReportData~%uint64 timestamp_us~%float32 front_left~%bool front_left_valid~%float32 front_right~%float32 front_right_valid~%float32 rear_left~%float32 rear_left_valid~%float32 rear_right~%float32 rear_right_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelDrvTorqueReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheel_drv_torque_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelDrvTorqueReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelDrvTorqueReport
    (cl:cons ':available (available msg))
    (cl:cons ':wheel_drv_torque_report_data (wheel_drv_torque_report_data msg))
))
