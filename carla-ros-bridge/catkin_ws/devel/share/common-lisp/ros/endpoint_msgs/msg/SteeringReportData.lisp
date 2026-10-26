; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SteeringReportData.msg.html

(cl:defclass <SteeringReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (driver_work_type
    :reader driver_work_type
    :initarg :driver_work_type
    :type endpoint_msgs-msg:WorkType
    :initform (cl:make-instance 'endpoint_msgs-msg:WorkType))
   (steering_type
    :reader steering_type
    :initarg :steering_type
    :type endpoint_msgs-msg:SteeringType
    :initform (cl:make-instance 'endpoint_msgs-msg:SteeringType))
   (steering_cmd
    :reader steering_cmd
    :initarg :steering_cmd
    :type cl:float
    :initform 0.0)
   (steering_report
    :reader steering_report
    :initarg :steering_report
    :type cl:float
    :initform 0.0)
   (steering_wheel_angle_report
    :reader steering_wheel_angle_report
    :initarg :steering_wheel_angle_report
    :type cl:float
    :initform 0.0)
   (steering_wheel_torque_report
    :reader steering_wheel_torque_report
    :initarg :steering_wheel_torque_report
    :type cl:float
    :initform 0.0)
   (steering_follow_rate
    :reader steering_follow_rate
    :initarg :steering_follow_rate
    :type cl:float
    :initform 0.0)
   (rws_mode_report
    :reader rws_mode_report
    :initarg :rws_mode_report
    :type endpoint_msgs-msg:RWhSteerModType
    :initform (cl:make-instance 'endpoint_msgs-msg:RWhSteerModType))
   (rws_angle
    :reader rws_angle
    :initarg :rws_angle
    :type cl:float
    :initform 0.0)
   (override
    :reader override
    :initarg :override
    :type cl:boolean
    :initform cl:nil)
   (steering_elc_assist_torque
    :reader steering_elc_assist_torque
    :initarg :steering_elc_assist_torque
    :type cl:float
    :initform 0.0)
   (steering_elc_assist_torque_valid
    :reader steering_elc_assist_torque_valid
    :initarg :steering_elc_assist_torque_valid
    :type cl:boolean
    :initform cl:nil)
   (steering_total_torque
    :reader steering_total_torque
    :initarg :steering_total_torque
    :type cl:float
    :initform 0.0)
   (steering_total_torque_valid
    :reader steering_total_torque_valid
    :initarg :steering_total_torque_valid
    :type cl:boolean
    :initform cl:nil)
   (eps_calibration_state
    :reader eps_calibration_state
    :initarg :eps_calibration_state
    :type endpoint_msgs-msg:CalibrationType
    :initform (cl:make-instance 'endpoint_msgs-msg:CalibrationType))
   (rws_direction_report
    :reader rws_direction_report
    :initarg :rws_direction_report
    :type endpoint_msgs-msg:RWhSteerDirection
    :initform (cl:make-instance 'endpoint_msgs-msg:RWhSteerDirection))
   (ready
    :reader ready
    :initarg :ready
    :type cl:boolean
    :initform cl:nil)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SteeringReportData (<SteeringReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SteeringReportData> is deprecated: use endpoint_msgs-msg:SteeringReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'driver_work_type-val :lambda-list '(m))
(cl:defmethod driver_work_type-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:driver_work_type-val is deprecated.  Use endpoint_msgs-msg:driver_work_type instead.")
  (driver_work_type m))

(cl:ensure-generic-function 'steering_type-val :lambda-list '(m))
(cl:defmethod steering_type-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_type-val is deprecated.  Use endpoint_msgs-msg:steering_type instead.")
  (steering_type m))

(cl:ensure-generic-function 'steering_cmd-val :lambda-list '(m))
(cl:defmethod steering_cmd-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_cmd-val is deprecated.  Use endpoint_msgs-msg:steering_cmd instead.")
  (steering_cmd m))

(cl:ensure-generic-function 'steering_report-val :lambda-list '(m))
(cl:defmethod steering_report-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_report-val is deprecated.  Use endpoint_msgs-msg:steering_report instead.")
  (steering_report m))

(cl:ensure-generic-function 'steering_wheel_angle_report-val :lambda-list '(m))
(cl:defmethod steering_wheel_angle_report-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_wheel_angle_report-val is deprecated.  Use endpoint_msgs-msg:steering_wheel_angle_report instead.")
  (steering_wheel_angle_report m))

(cl:ensure-generic-function 'steering_wheel_torque_report-val :lambda-list '(m))
(cl:defmethod steering_wheel_torque_report-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_wheel_torque_report-val is deprecated.  Use endpoint_msgs-msg:steering_wheel_torque_report instead.")
  (steering_wheel_torque_report m))

(cl:ensure-generic-function 'steering_follow_rate-val :lambda-list '(m))
(cl:defmethod steering_follow_rate-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_follow_rate-val is deprecated.  Use endpoint_msgs-msg:steering_follow_rate instead.")
  (steering_follow_rate m))

(cl:ensure-generic-function 'rws_mode_report-val :lambda-list '(m))
(cl:defmethod rws_mode_report-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rws_mode_report-val is deprecated.  Use endpoint_msgs-msg:rws_mode_report instead.")
  (rws_mode_report m))

(cl:ensure-generic-function 'rws_angle-val :lambda-list '(m))
(cl:defmethod rws_angle-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rws_angle-val is deprecated.  Use endpoint_msgs-msg:rws_angle instead.")
  (rws_angle m))

(cl:ensure-generic-function 'override-val :lambda-list '(m))
(cl:defmethod override-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:override-val is deprecated.  Use endpoint_msgs-msg:override instead.")
  (override m))

(cl:ensure-generic-function 'steering_elc_assist_torque-val :lambda-list '(m))
(cl:defmethod steering_elc_assist_torque-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_elc_assist_torque-val is deprecated.  Use endpoint_msgs-msg:steering_elc_assist_torque instead.")
  (steering_elc_assist_torque m))

(cl:ensure-generic-function 'steering_elc_assist_torque_valid-val :lambda-list '(m))
(cl:defmethod steering_elc_assist_torque_valid-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_elc_assist_torque_valid-val is deprecated.  Use endpoint_msgs-msg:steering_elc_assist_torque_valid instead.")
  (steering_elc_assist_torque_valid m))

(cl:ensure-generic-function 'steering_total_torque-val :lambda-list '(m))
(cl:defmethod steering_total_torque-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_total_torque-val is deprecated.  Use endpoint_msgs-msg:steering_total_torque instead.")
  (steering_total_torque m))

(cl:ensure-generic-function 'steering_total_torque_valid-val :lambda-list '(m))
(cl:defmethod steering_total_torque_valid-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_total_torque_valid-val is deprecated.  Use endpoint_msgs-msg:steering_total_torque_valid instead.")
  (steering_total_torque_valid m))

(cl:ensure-generic-function 'eps_calibration_state-val :lambda-list '(m))
(cl:defmethod eps_calibration_state-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:eps_calibration_state-val is deprecated.  Use endpoint_msgs-msg:eps_calibration_state instead.")
  (eps_calibration_state m))

(cl:ensure-generic-function 'rws_direction_report-val :lambda-list '(m))
(cl:defmethod rws_direction_report-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rws_direction_report-val is deprecated.  Use endpoint_msgs-msg:rws_direction_report instead.")
  (rws_direction_report m))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ready-val is deprecated.  Use endpoint_msgs-msg:ready instead.")
  (ready m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <SteeringReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringReportData>) ostream)
  "Serializes a message object of type '<SteeringReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver_work_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_report))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_wheel_angle_report))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_wheel_torque_report))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_follow_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rws_mode_report) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rws_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_elc_assist_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steering_elc_assist_torque_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_total_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steering_total_torque_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eps_calibration_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rws_direction_report) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringReportData>) istream)
  "Deserializes a message object of type '<SteeringReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver_work_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_report) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_wheel_angle_report) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_wheel_torque_report) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_follow_rate) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rws_mode_report) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rws_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_elc_assist_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'steering_elc_assist_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_total_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'steering_total_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eps_calibration_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rws_direction_report) istream)
    (cl:setf (cl:slot-value msg 'ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringReportData>)))
  "Returns string type for a message object of type '<SteeringReportData>"
  "endpoint_msgs/SteeringReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringReportData)))
  "Returns string type for a message object of type 'SteeringReportData"
  "endpoint_msgs/SteeringReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringReportData>)))
  "Returns md5sum for a message object of type '<SteeringReportData>"
  "73ab7abff1beb2ddf3c5f3ef84d11617")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringReportData)))
  "Returns md5sum for a message object of type 'SteeringReportData"
  "73ab7abff1beb2ddf3c5f3ef84d11617")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringReportData>)))
  "Returns full string definition for message of type '<SteeringReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/SteeringType steering_type~%float32 steering_cmd~%float32 steering_report~%float32 steering_wheel_angle_report~%float32 steering_wheel_torque_report~%float32 steering_follow_rate~%endpoint_msgs/RWhSteerModType rws_mode_report~%float32 rws_angle~%bool override~%float32 steering_elc_assist_torque~%bool steering_elc_assist_torque_valid~%float32 steering_total_torque~%bool steering_total_torque_valid~%endpoint_msgs/CalibrationType eps_calibration_state~%endpoint_msgs/RWhSteerDirection rws_direction_report~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/CalibrationType~%uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringReportData)))
  "Returns full string definition for message of type 'SteeringReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/SteeringType steering_type~%float32 steering_cmd~%float32 steering_report~%float32 steering_wheel_angle_report~%float32 steering_wheel_torque_report~%float32 steering_follow_rate~%endpoint_msgs/RWhSteerModType rws_mode_report~%float32 rws_angle~%bool override~%float32 steering_elc_assist_torque~%bool steering_elc_assist_torque_valid~%float32 steering_total_torque~%bool steering_total_torque_valid~%endpoint_msgs/CalibrationType eps_calibration_state~%endpoint_msgs/RWhSteerDirection rws_direction_report~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SteeringType~%uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerModType~%uint8 NO_REQUEST = 0~%uint8 CONTROL_REQUEST = 1~%uint8 LOCK_REQUEST = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/CalibrationType~%uint8 NONE = 0~%uint8 CALIBRATION = 1~%uint8 NOT_CALIBRATION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RWhSteerDirection~%uint8 NONE = 0~%uint8 SAME_DIRECTION = 1~%uint8 OPPOSITE_DIRECTION = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver_work_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_type))
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rws_mode_report))
     4
     1
     4
     1
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eps_calibration_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rws_direction_report))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':driver_work_type (driver_work_type msg))
    (cl:cons ':steering_type (steering_type msg))
    (cl:cons ':steering_cmd (steering_cmd msg))
    (cl:cons ':steering_report (steering_report msg))
    (cl:cons ':steering_wheel_angle_report (steering_wheel_angle_report msg))
    (cl:cons ':steering_wheel_torque_report (steering_wheel_torque_report msg))
    (cl:cons ':steering_follow_rate (steering_follow_rate msg))
    (cl:cons ':rws_mode_report (rws_mode_report msg))
    (cl:cons ':rws_angle (rws_angle msg))
    (cl:cons ':override (override msg))
    (cl:cons ':steering_elc_assist_torque (steering_elc_assist_torque msg))
    (cl:cons ':steering_elc_assist_torque_valid (steering_elc_assist_torque_valid msg))
    (cl:cons ':steering_total_torque (steering_total_torque msg))
    (cl:cons ':steering_total_torque_valid (steering_total_torque_valid msg))
    (cl:cons ':eps_calibration_state (eps_calibration_state msg))
    (cl:cons ':rws_direction_report (rws_direction_report msg))
    (cl:cons ':ready (ready msg))
    (cl:cons ':valid (valid msg))
))
