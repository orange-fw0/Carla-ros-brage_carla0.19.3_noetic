; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SteeringReport.msg.html

(cl:defclass <SteeringReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (steering_report_data
    :reader steering_report_data
    :initarg :steering_report_data
    :type endpoint_msgs-msg:SteeringReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:SteeringReportData)))
)

(cl:defclass SteeringReport (<SteeringReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SteeringReport> is deprecated: use endpoint_msgs-msg:SteeringReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'steering_report_data-val :lambda-list '(m))
(cl:defmethod steering_report_data-val ((m <SteeringReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_report_data-val is deprecated.  Use endpoint_msgs-msg:steering_report_data instead.")
  (steering_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SteeringReport>)))
    "Constants for message type '<SteeringReport>"
  '((:STEERING_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SteeringReport)))
    "Constants for message type 'SteeringReport"
  '((:STEERING_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringReport>) ostream)
  "Serializes a message object of type '<SteeringReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringReport>) istream)
  "Deserializes a message object of type '<SteeringReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringReport>)))
  "Returns string type for a message object of type '<SteeringReport>"
  "endpoint_msgs/SteeringReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringReport)))
  "Returns string type for a message object of type 'SteeringReport"
  "endpoint_msgs/SteeringReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringReport>)))
  "Returns md5sum for a message object of type '<SteeringReport>"
  "62f7d27892bd0045d37d17394bb908a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringReport)))
  "Returns md5sum for a message object of type 'SteeringReport"
  "62f7d27892bd0045d37d17394bb908a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringReport>)))
  "Returns full string definition for message of type '<SteeringReport>"
  (cl:format cl:nil "uint8 STEERING_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/SteeringReportData steering_report_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/SteeringType steering_type~%float32 steering_cmd~%float32 steering_report~%float32 steering_wheel_angle_report~%float32 steering_wheel_torque_report~%float32 steering_follow_rate~%endpoint_msgs/RWhSteerModType rws_mode_report~%float32 rws_angle~%bool override~%float32 steering_elc_assist_torque~%bool steering_elc_assist_torque_valid~%float32 steering_total_torque~%bool steering_total_torque_valid~%endpoint_msgs/CalibrationType eps_calibration_state~%endpoint_msgs/RWhSteerDirection rws_direction_report~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/CalibrationType~%uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringReport)))
  "Returns full string definition for message of type 'SteeringReport"
  (cl:format cl:nil "uint8 STEERING_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/SteeringReportData steering_report_data~%~%================================================================================~%MSG: endpoint_msgs/SteeringReportData~%uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/SteeringType steering_type~%float32 steering_cmd~%float32 steering_report~%float32 steering_wheel_angle_report~%float32 steering_wheel_torque_report~%float32 steering_follow_rate~%endpoint_msgs/RWhSteerModType rws_mode_report~%float32 rws_angle~%bool override~%float32 steering_elc_assist_torque~%bool steering_elc_assist_torque_valid~%float32 steering_total_torque~%bool steering_total_torque_valid~%endpoint_msgs/CalibrationType eps_calibration_state~%endpoint_msgs/RWhSteerDirection rws_direction_report~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/CalibrationType~%uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringReport
    (cl:cons ':available (available msg))
    (cl:cons ':steering_report_data (steering_report_data msg))
))
