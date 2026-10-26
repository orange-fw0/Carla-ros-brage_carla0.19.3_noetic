; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude MotorSpeedReport.msg.html

(cl:defclass <MotorSpeedReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (motor_speed_report_data_fl
    :reader motor_speed_report_data_fl
    :initarg :motor_speed_report_data_fl
    :type endpoint_msgs-msg:MotorSpeedReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:MotorSpeedReportData))
   (motor_speed_report_data_fr
    :reader motor_speed_report_data_fr
    :initarg :motor_speed_report_data_fr
    :type endpoint_msgs-msg:MotorSpeedReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:MotorSpeedReportData))
   (motor_speed_report_data_rl
    :reader motor_speed_report_data_rl
    :initarg :motor_speed_report_data_rl
    :type endpoint_msgs-msg:MotorSpeedReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:MotorSpeedReportData))
   (motor_speed_report_data_rr
    :reader motor_speed_report_data_rr
    :initarg :motor_speed_report_data_rr
    :type endpoint_msgs-msg:MotorSpeedReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:MotorSpeedReportData)))
)

(cl:defclass MotorSpeedReport (<MotorSpeedReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorSpeedReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorSpeedReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<MotorSpeedReport> is deprecated: use endpoint_msgs-msg:MotorSpeedReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MotorSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'motor_speed_report_data_fl-val :lambda-list '(m))
(cl:defmethod motor_speed_report_data_fl-val ((m <MotorSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_speed_report_data_fl-val is deprecated.  Use endpoint_msgs-msg:motor_speed_report_data_fl instead.")
  (motor_speed_report_data_fl m))

(cl:ensure-generic-function 'motor_speed_report_data_fr-val :lambda-list '(m))
(cl:defmethod motor_speed_report_data_fr-val ((m <MotorSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_speed_report_data_fr-val is deprecated.  Use endpoint_msgs-msg:motor_speed_report_data_fr instead.")
  (motor_speed_report_data_fr m))

(cl:ensure-generic-function 'motor_speed_report_data_rl-val :lambda-list '(m))
(cl:defmethod motor_speed_report_data_rl-val ((m <MotorSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_speed_report_data_rl-val is deprecated.  Use endpoint_msgs-msg:motor_speed_report_data_rl instead.")
  (motor_speed_report_data_rl m))

(cl:ensure-generic-function 'motor_speed_report_data_rr-val :lambda-list '(m))
(cl:defmethod motor_speed_report_data_rr-val ((m <MotorSpeedReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_speed_report_data_rr-val is deprecated.  Use endpoint_msgs-msg:motor_speed_report_data_rr instead.")
  (motor_speed_report_data_rr m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotorSpeedReport>)))
    "Constants for message type '<MotorSpeedReport>"
  '((:MOTOR_SPEED_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotorSpeedReport)))
    "Constants for message type 'MotorSpeedReport"
  '((:MOTOR_SPEED_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorSpeedReport>) ostream)
  "Serializes a message object of type '<MotorSpeedReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_speed_report_data_fl) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_speed_report_data_fr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_speed_report_data_rl) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_speed_report_data_rr) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorSpeedReport>) istream)
  "Deserializes a message object of type '<MotorSpeedReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_speed_report_data_fl) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_speed_report_data_fr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_speed_report_data_rl) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_speed_report_data_rr) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorSpeedReport>)))
  "Returns string type for a message object of type '<MotorSpeedReport>"
  "endpoint_msgs/MotorSpeedReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorSpeedReport)))
  "Returns string type for a message object of type 'MotorSpeedReport"
  "endpoint_msgs/MotorSpeedReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorSpeedReport>)))
  "Returns md5sum for a message object of type '<MotorSpeedReport>"
  "bc949b95d6d8dc86d0bb61e9b2e01c07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorSpeedReport)))
  "Returns md5sum for a message object of type 'MotorSpeedReport"
  "bc949b95d6d8dc86d0bb61e9b2e01c07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorSpeedReport>)))
  "Returns full string definition for message of type '<MotorSpeedReport>"
  (cl:format cl:nil "uint8 MOTOR_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedReportData~%endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status~%float32 motor_speed~%float32 motor_raw_speed~%bool motor_raw_speed_valid~%endpoint_msgs/McuStuckStatus mcu_stuck_status~%endpoint_msgs/McuStandstillStatus mcu_standstill_status~%endpoint_msgs/SpdctlFaultMode spdctl_fault_mode~%bool spdctl_valid~%endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status~%float32 mcu_req_torque~%bool mcu_req_torque_valid~%float32 motor_actual_toruqe~%bool motor_actual_toruqe_valid~%float32 motor_wheel_regen_torque~%bool motor_wheel_regen_torque_valid~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedControlStatus~%uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStuckStatus~%uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStandstillStatus~%uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlFaultMode~%uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlRollingbackStatus~%uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorSpeedReport)))
  "Returns full string definition for message of type 'MotorSpeedReport"
  (cl:format cl:nil "uint8 MOTOR_SPEED_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl~%endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedReportData~%endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status~%float32 motor_speed~%float32 motor_raw_speed~%bool motor_raw_speed_valid~%endpoint_msgs/McuStuckStatus mcu_stuck_status~%endpoint_msgs/McuStandstillStatus mcu_standstill_status~%endpoint_msgs/SpdctlFaultMode spdctl_fault_mode~%bool spdctl_valid~%endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status~%float32 mcu_req_torque~%bool mcu_req_torque_valid~%float32 motor_actual_toruqe~%bool motor_actual_toruqe_valid~%float32 motor_wheel_regen_torque~%bool motor_wheel_regen_torque_valid~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedControlStatus~%uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStuckStatus~%uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStandstillStatus~%uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlFaultMode~%uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlRollingbackStatus~%uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorSpeedReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_speed_report_data_fl))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_speed_report_data_fr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_speed_report_data_rl))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_speed_report_data_rr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorSpeedReport>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorSpeedReport
    (cl:cons ':available (available msg))
    (cl:cons ':motor_speed_report_data_fl (motor_speed_report_data_fl msg))
    (cl:cons ':motor_speed_report_data_fr (motor_speed_report_data_fr msg))
    (cl:cons ':motor_speed_report_data_rl (motor_speed_report_data_rl msg))
    (cl:cons ':motor_speed_report_data_rr (motor_speed_report_data_rr msg))
))
