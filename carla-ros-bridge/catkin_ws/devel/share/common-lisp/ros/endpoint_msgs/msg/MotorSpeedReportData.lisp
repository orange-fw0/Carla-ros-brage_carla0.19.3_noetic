; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude MotorSpeedReportData.msg.html

(cl:defclass <MotorSpeedReportData> (roslisp-msg-protocol:ros-message)
  ((motor_speed_control_status
    :reader motor_speed_control_status
    :initarg :motor_speed_control_status
    :type endpoint_msgs-msg:MotorSpeedControlStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:MotorSpeedControlStatus))
   (motor_speed
    :reader motor_speed
    :initarg :motor_speed
    :type cl:float
    :initform 0.0)
   (motor_raw_speed
    :reader motor_raw_speed
    :initarg :motor_raw_speed
    :type cl:float
    :initform 0.0)
   (motor_raw_speed_valid
    :reader motor_raw_speed_valid
    :initarg :motor_raw_speed_valid
    :type cl:boolean
    :initform cl:nil)
   (mcu_stuck_status
    :reader mcu_stuck_status
    :initarg :mcu_stuck_status
    :type endpoint_msgs-msg:McuStuckStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:McuStuckStatus))
   (mcu_standstill_status
    :reader mcu_standstill_status
    :initarg :mcu_standstill_status
    :type endpoint_msgs-msg:McuStandstillStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:McuStandstillStatus))
   (spdctl_fault_mode
    :reader spdctl_fault_mode
    :initarg :spdctl_fault_mode
    :type endpoint_msgs-msg:SpdctlFaultMode
    :initform (cl:make-instance 'endpoint_msgs-msg:SpdctlFaultMode))
   (spdctl_valid
    :reader spdctl_valid
    :initarg :spdctl_valid
    :type cl:boolean
    :initform cl:nil)
   (spdctl_rollingback_status
    :reader spdctl_rollingback_status
    :initarg :spdctl_rollingback_status
    :type endpoint_msgs-msg:SpdctlRollingbackStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:SpdctlRollingbackStatus))
   (mcu_req_torque
    :reader mcu_req_torque
    :initarg :mcu_req_torque
    :type cl:float
    :initform 0.0)
   (mcu_req_torque_valid
    :reader mcu_req_torque_valid
    :initarg :mcu_req_torque_valid
    :type cl:boolean
    :initform cl:nil)
   (motor_actual_toruqe
    :reader motor_actual_toruqe
    :initarg :motor_actual_toruqe
    :type cl:float
    :initform 0.0)
   (motor_actual_toruqe_valid
    :reader motor_actual_toruqe_valid
    :initarg :motor_actual_toruqe_valid
    :type cl:boolean
    :initform cl:nil)
   (motor_wheel_regen_torque
    :reader motor_wheel_regen_torque
    :initarg :motor_wheel_regen_torque
    :type cl:float
    :initform 0.0)
   (motor_wheel_regen_torque_valid
    :reader motor_wheel_regen_torque_valid
    :initarg :motor_wheel_regen_torque_valid
    :type cl:boolean
    :initform cl:nil)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MotorSpeedReportData (<MotorSpeedReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorSpeedReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorSpeedReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<MotorSpeedReportData> is deprecated: use endpoint_msgs-msg:MotorSpeedReportData instead.")))

(cl:ensure-generic-function 'motor_speed_control_status-val :lambda-list '(m))
(cl:defmethod motor_speed_control_status-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_speed_control_status-val is deprecated.  Use endpoint_msgs-msg:motor_speed_control_status instead.")
  (motor_speed_control_status m))

(cl:ensure-generic-function 'motor_speed-val :lambda-list '(m))
(cl:defmethod motor_speed-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_speed-val is deprecated.  Use endpoint_msgs-msg:motor_speed instead.")
  (motor_speed m))

(cl:ensure-generic-function 'motor_raw_speed-val :lambda-list '(m))
(cl:defmethod motor_raw_speed-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_raw_speed-val is deprecated.  Use endpoint_msgs-msg:motor_raw_speed instead.")
  (motor_raw_speed m))

(cl:ensure-generic-function 'motor_raw_speed_valid-val :lambda-list '(m))
(cl:defmethod motor_raw_speed_valid-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_raw_speed_valid-val is deprecated.  Use endpoint_msgs-msg:motor_raw_speed_valid instead.")
  (motor_raw_speed_valid m))

(cl:ensure-generic-function 'mcu_stuck_status-val :lambda-list '(m))
(cl:defmethod mcu_stuck_status-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:mcu_stuck_status-val is deprecated.  Use endpoint_msgs-msg:mcu_stuck_status instead.")
  (mcu_stuck_status m))

(cl:ensure-generic-function 'mcu_standstill_status-val :lambda-list '(m))
(cl:defmethod mcu_standstill_status-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:mcu_standstill_status-val is deprecated.  Use endpoint_msgs-msg:mcu_standstill_status instead.")
  (mcu_standstill_status m))

(cl:ensure-generic-function 'spdctl_fault_mode-val :lambda-list '(m))
(cl:defmethod spdctl_fault_mode-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:spdctl_fault_mode-val is deprecated.  Use endpoint_msgs-msg:spdctl_fault_mode instead.")
  (spdctl_fault_mode m))

(cl:ensure-generic-function 'spdctl_valid-val :lambda-list '(m))
(cl:defmethod spdctl_valid-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:spdctl_valid-val is deprecated.  Use endpoint_msgs-msg:spdctl_valid instead.")
  (spdctl_valid m))

(cl:ensure-generic-function 'spdctl_rollingback_status-val :lambda-list '(m))
(cl:defmethod spdctl_rollingback_status-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:spdctl_rollingback_status-val is deprecated.  Use endpoint_msgs-msg:spdctl_rollingback_status instead.")
  (spdctl_rollingback_status m))

(cl:ensure-generic-function 'mcu_req_torque-val :lambda-list '(m))
(cl:defmethod mcu_req_torque-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:mcu_req_torque-val is deprecated.  Use endpoint_msgs-msg:mcu_req_torque instead.")
  (mcu_req_torque m))

(cl:ensure-generic-function 'mcu_req_torque_valid-val :lambda-list '(m))
(cl:defmethod mcu_req_torque_valid-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:mcu_req_torque_valid-val is deprecated.  Use endpoint_msgs-msg:mcu_req_torque_valid instead.")
  (mcu_req_torque_valid m))

(cl:ensure-generic-function 'motor_actual_toruqe-val :lambda-list '(m))
(cl:defmethod motor_actual_toruqe-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_actual_toruqe-val is deprecated.  Use endpoint_msgs-msg:motor_actual_toruqe instead.")
  (motor_actual_toruqe m))

(cl:ensure-generic-function 'motor_actual_toruqe_valid-val :lambda-list '(m))
(cl:defmethod motor_actual_toruqe_valid-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_actual_toruqe_valid-val is deprecated.  Use endpoint_msgs-msg:motor_actual_toruqe_valid instead.")
  (motor_actual_toruqe_valid m))

(cl:ensure-generic-function 'motor_wheel_regen_torque-val :lambda-list '(m))
(cl:defmethod motor_wheel_regen_torque-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_wheel_regen_torque-val is deprecated.  Use endpoint_msgs-msg:motor_wheel_regen_torque instead.")
  (motor_wheel_regen_torque m))

(cl:ensure-generic-function 'motor_wheel_regen_torque_valid-val :lambda-list '(m))
(cl:defmethod motor_wheel_regen_torque_valid-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:motor_wheel_regen_torque_valid-val is deprecated.  Use endpoint_msgs-msg:motor_wheel_regen_torque_valid instead.")
  (motor_wheel_regen_torque_valid m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <MotorSpeedReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorSpeedReportData>) ostream)
  "Serializes a message object of type '<MotorSpeedReportData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motor_speed_control_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_raw_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_raw_speed_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mcu_stuck_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mcu_standstill_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spdctl_fault_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spdctl_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spdctl_rollingback_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mcu_req_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mcu_req_torque_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_actual_toruqe))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_actual_toruqe_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_wheel_regen_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_wheel_regen_torque_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorSpeedReportData>) istream)
  "Deserializes a message object of type '<MotorSpeedReportData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motor_speed_control_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_raw_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'motor_raw_speed_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mcu_stuck_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mcu_standstill_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spdctl_fault_mode) istream)
    (cl:setf (cl:slot-value msg 'spdctl_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spdctl_rollingback_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mcu_req_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'mcu_req_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_actual_toruqe) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'motor_actual_toruqe_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_wheel_regen_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'motor_wheel_regen_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorSpeedReportData>)))
  "Returns string type for a message object of type '<MotorSpeedReportData>"
  "endpoint_msgs/MotorSpeedReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorSpeedReportData)))
  "Returns string type for a message object of type 'MotorSpeedReportData"
  "endpoint_msgs/MotorSpeedReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorSpeedReportData>)))
  "Returns md5sum for a message object of type '<MotorSpeedReportData>"
  "78d9de3bca84bb959c33e02d23d6c824")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorSpeedReportData)))
  "Returns md5sum for a message object of type 'MotorSpeedReportData"
  "78d9de3bca84bb959c33e02d23d6c824")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorSpeedReportData>)))
  "Returns full string definition for message of type '<MotorSpeedReportData>"
  (cl:format cl:nil "endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status~%float32 motor_speed~%float32 motor_raw_speed~%bool motor_raw_speed_valid~%endpoint_msgs/McuStuckStatus mcu_stuck_status~%endpoint_msgs/McuStandstillStatus mcu_standstill_status~%endpoint_msgs/SpdctlFaultMode spdctl_fault_mode~%bool spdctl_valid~%endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status~%float32 mcu_req_torque~%bool mcu_req_torque_valid~%float32 motor_actual_toruqe~%bool motor_actual_toruqe_valid~%float32 motor_wheel_regen_torque~%bool motor_wheel_regen_torque_valid~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedControlStatus~%uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStuckStatus~%uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStandstillStatus~%uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlFaultMode~%uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlRollingbackStatus~%uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorSpeedReportData)))
  "Returns full string definition for message of type 'MotorSpeedReportData"
  (cl:format cl:nil "endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status~%float32 motor_speed~%float32 motor_raw_speed~%bool motor_raw_speed_valid~%endpoint_msgs/McuStuckStatus mcu_stuck_status~%endpoint_msgs/McuStandstillStatus mcu_standstill_status~%endpoint_msgs/SpdctlFaultMode spdctl_fault_mode~%bool spdctl_valid~%endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status~%float32 mcu_req_torque~%bool mcu_req_torque_valid~%float32 motor_actual_toruqe~%bool motor_actual_toruqe_valid~%float32 motor_wheel_regen_torque~%bool motor_wheel_regen_torque_valid~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/MotorSpeedControlStatus~%uint8 NONE = 0~%uint8 NO_ACTIVE = 1~%uint8 ACTIVE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStuckStatus~%uint8 NONE = 0~%uint8 NO_STUCK = 1~%uint8 STUCK = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/McuStandstillStatus~%uint8 NONE = 0~%uint8 NO_STANDSTILL = 1~%uint8 STANDSTILL = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlFaultMode~%uint8 NONE = 0~%uint8 NO_FAULT = 1~%uint8 FAULT1 = 2~%uint8 FAULT2 = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SpdctlRollingbackStatus~%uint8 NONE = 0~%uint8 NO_SILDE = 1~%uint8 SILDE = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorSpeedReportData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motor_speed_control_status))
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mcu_stuck_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mcu_standstill_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spdctl_fault_mode))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spdctl_rollingback_status))
     4
     1
     4
     1
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorSpeedReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorSpeedReportData
    (cl:cons ':motor_speed_control_status (motor_speed_control_status msg))
    (cl:cons ':motor_speed (motor_speed msg))
    (cl:cons ':motor_raw_speed (motor_raw_speed msg))
    (cl:cons ':motor_raw_speed_valid (motor_raw_speed_valid msg))
    (cl:cons ':mcu_stuck_status (mcu_stuck_status msg))
    (cl:cons ':mcu_standstill_status (mcu_standstill_status msg))
    (cl:cons ':spdctl_fault_mode (spdctl_fault_mode msg))
    (cl:cons ':spdctl_valid (spdctl_valid msg))
    (cl:cons ':spdctl_rollingback_status (spdctl_rollingback_status msg))
    (cl:cons ':mcu_req_torque (mcu_req_torque msg))
    (cl:cons ':mcu_req_torque_valid (mcu_req_torque_valid msg))
    (cl:cons ':motor_actual_toruqe (motor_actual_toruqe msg))
    (cl:cons ':motor_actual_toruqe_valid (motor_actual_toruqe_valid msg))
    (cl:cons ':motor_wheel_regen_torque (motor_wheel_regen_torque msg))
    (cl:cons ':motor_wheel_regen_torque_valid (motor_wheel_regen_torque_valid msg))
    (cl:cons ':valid (valid msg))
))
