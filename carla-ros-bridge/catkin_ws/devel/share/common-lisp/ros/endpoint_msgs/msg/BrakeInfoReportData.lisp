; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeInfoReportData.msg.html

(cl:defclass <BrakeInfoReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (accleration_on_wheel
    :reader accleration_on_wheel
    :initarg :accleration_on_wheel
    :type cl:float
    :initform 0.0)
   (lateral_accleration_on_wheel
    :reader lateral_accleration_on_wheel
    :initarg :lateral_accleration_on_wheel
    :type cl:float
    :initform 0.0)
   (stationary
    :reader stationary
    :initarg :stationary
    :type cl:boolean
    :initform cl:nil)
   (abs_active
    :reader abs_active
    :initarg :abs_active
    :type cl:boolean
    :initform cl:nil)
   (abs_fault
    :reader abs_fault
    :initarg :abs_fault
    :type cl:boolean
    :initform cl:nil)
   (tcs_active
    :reader tcs_active
    :initarg :tcs_active
    :type cl:boolean
    :initform cl:nil)
   (tcs_fault
    :reader tcs_fault
    :initarg :tcs_fault
    :type cl:boolean
    :initform cl:nil)
   (msr_active
    :reader msr_active
    :initarg :msr_active
    :type cl:boolean
    :initform cl:nil)
   (msr_fault
    :reader msr_fault
    :initarg :msr_fault
    :type cl:boolean
    :initform cl:nil)
   (esp_active
    :reader esp_active
    :initarg :esp_active
    :type cl:boolean
    :initform cl:nil)
   (esp_fault
    :reader esp_fault
    :initarg :esp_fault
    :type cl:boolean
    :initform cl:nil)
   (tsr_active
    :reader tsr_active
    :initarg :tsr_active
    :type cl:boolean
    :initform cl:nil)
   (tsr_fault
    :reader tsr_fault
    :initarg :tsr_fault
    :type cl:boolean
    :initform cl:nil)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:boolean
    :initform cl:nil)
   (brake_torque_delivery
    :reader brake_torque_delivery
    :initarg :brake_torque_delivery
    :type cl:float
    :initform 0.0)
   (brake_torque_delivery_valid
    :reader brake_torque_delivery_valid
    :initarg :brake_torque_delivery_valid
    :type cl:boolean
    :initform cl:nil)
   (brake_regen_torque_delivery
    :reader brake_regen_torque_delivery
    :initarg :brake_regen_torque_delivery
    :type cl:float
    :initform 0.0)
   (brake_regen_torque_delivery_valid
    :reader brake_regen_torque_delivery_valid
    :initarg :brake_regen_torque_delivery_valid
    :type cl:boolean
    :initform cl:nil)
   (brake_frct_torque_delivery
    :reader brake_frct_torque_delivery
    :initarg :brake_frct_torque_delivery
    :type cl:float
    :initform 0.0)
   (brake_frct_torque_delivery_valid
    :reader brake_frct_torque_delivery_valid
    :initarg :brake_frct_torque_delivery_valid
    :type cl:boolean
    :initform cl:nil)
   (master_pressure_delivery
    :reader master_pressure_delivery
    :initarg :master_pressure_delivery
    :type cl:float
    :initform 0.0)
   (master_pressure_delivery_valid
    :reader master_pressure_delivery_valid
    :initarg :master_pressure_delivery_valid
    :type cl:boolean
    :initform cl:nil)
   (pedal_brake_torque
    :reader pedal_brake_torque
    :initarg :pedal_brake_torque
    :type cl:float
    :initform 0.0)
   (pedal_brake_torque_valid
    :reader pedal_brake_torque_valid
    :initarg :pedal_brake_torque_valid
    :type cl:boolean
    :initform cl:nil)
   (pkg_fastswitch_enable
    :reader pkg_fastswitch_enable
    :initarg :pkg_fastswitch_enable
    :type cl:boolean
    :initform cl:nil)
   (vehicle_block
    :reader vehicle_block
    :initarg :vehicle_block
    :type cl:boolean
    :initform cl:nil)
   (esp_status
    :reader esp_status
    :initarg :esp_status
    :type endpoint_msgs-msg:VehESPSwitch
    :initform (cl:make-instance 'endpoint_msgs-msg:VehESPSwitch))
   (vdc_active
    :reader vdc_active
    :initarg :vdc_active
    :type cl:boolean
    :initform cl:nil)
   (vdc_fault
    :reader vdc_fault
    :initarg :vdc_fault
    :type cl:boolean
    :initform cl:nil)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeInfoReportData (<BrakeInfoReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeInfoReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeInfoReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeInfoReportData> is deprecated: use endpoint_msgs-msg:BrakeInfoReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'accleration_on_wheel-val :lambda-list '(m))
(cl:defmethod accleration_on_wheel-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:accleration_on_wheel-val is deprecated.  Use endpoint_msgs-msg:accleration_on_wheel instead.")
  (accleration_on_wheel m))

(cl:ensure-generic-function 'lateral_accleration_on_wheel-val :lambda-list '(m))
(cl:defmethod lateral_accleration_on_wheel-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:lateral_accleration_on_wheel-val is deprecated.  Use endpoint_msgs-msg:lateral_accleration_on_wheel instead.")
  (lateral_accleration_on_wheel m))

(cl:ensure-generic-function 'stationary-val :lambda-list '(m))
(cl:defmethod stationary-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:stationary-val is deprecated.  Use endpoint_msgs-msg:stationary instead.")
  (stationary m))

(cl:ensure-generic-function 'abs_active-val :lambda-list '(m))
(cl:defmethod abs_active-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:abs_active-val is deprecated.  Use endpoint_msgs-msg:abs_active instead.")
  (abs_active m))

(cl:ensure-generic-function 'abs_fault-val :lambda-list '(m))
(cl:defmethod abs_fault-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:abs_fault-val is deprecated.  Use endpoint_msgs-msg:abs_fault instead.")
  (abs_fault m))

(cl:ensure-generic-function 'tcs_active-val :lambda-list '(m))
(cl:defmethod tcs_active-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:tcs_active-val is deprecated.  Use endpoint_msgs-msg:tcs_active instead.")
  (tcs_active m))

(cl:ensure-generic-function 'tcs_fault-val :lambda-list '(m))
(cl:defmethod tcs_fault-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:tcs_fault-val is deprecated.  Use endpoint_msgs-msg:tcs_fault instead.")
  (tcs_fault m))

(cl:ensure-generic-function 'msr_active-val :lambda-list '(m))
(cl:defmethod msr_active-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:msr_active-val is deprecated.  Use endpoint_msgs-msg:msr_active instead.")
  (msr_active m))

(cl:ensure-generic-function 'msr_fault-val :lambda-list '(m))
(cl:defmethod msr_fault-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:msr_fault-val is deprecated.  Use endpoint_msgs-msg:msr_fault instead.")
  (msr_fault m))

(cl:ensure-generic-function 'esp_active-val :lambda-list '(m))
(cl:defmethod esp_active-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:esp_active-val is deprecated.  Use endpoint_msgs-msg:esp_active instead.")
  (esp_active m))

(cl:ensure-generic-function 'esp_fault-val :lambda-list '(m))
(cl:defmethod esp_fault-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:esp_fault-val is deprecated.  Use endpoint_msgs-msg:esp_fault instead.")
  (esp_fault m))

(cl:ensure-generic-function 'tsr_active-val :lambda-list '(m))
(cl:defmethod tsr_active-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:tsr_active-val is deprecated.  Use endpoint_msgs-msg:tsr_active instead.")
  (tsr_active m))

(cl:ensure-generic-function 'tsr_fault-val :lambda-list '(m))
(cl:defmethod tsr_fault-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:tsr_fault-val is deprecated.  Use endpoint_msgs-msg:tsr_fault instead.")
  (tsr_fault m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pressure-val is deprecated.  Use endpoint_msgs-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'brake_torque_delivery-val :lambda-list '(m))
(cl:defmethod brake_torque_delivery-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_torque_delivery-val is deprecated.  Use endpoint_msgs-msg:brake_torque_delivery instead.")
  (brake_torque_delivery m))

(cl:ensure-generic-function 'brake_torque_delivery_valid-val :lambda-list '(m))
(cl:defmethod brake_torque_delivery_valid-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_torque_delivery_valid-val is deprecated.  Use endpoint_msgs-msg:brake_torque_delivery_valid instead.")
  (brake_torque_delivery_valid m))

(cl:ensure-generic-function 'brake_regen_torque_delivery-val :lambda-list '(m))
(cl:defmethod brake_regen_torque_delivery-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_regen_torque_delivery-val is deprecated.  Use endpoint_msgs-msg:brake_regen_torque_delivery instead.")
  (brake_regen_torque_delivery m))

(cl:ensure-generic-function 'brake_regen_torque_delivery_valid-val :lambda-list '(m))
(cl:defmethod brake_regen_torque_delivery_valid-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_regen_torque_delivery_valid-val is deprecated.  Use endpoint_msgs-msg:brake_regen_torque_delivery_valid instead.")
  (brake_regen_torque_delivery_valid m))

(cl:ensure-generic-function 'brake_frct_torque_delivery-val :lambda-list '(m))
(cl:defmethod brake_frct_torque_delivery-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_frct_torque_delivery-val is deprecated.  Use endpoint_msgs-msg:brake_frct_torque_delivery instead.")
  (brake_frct_torque_delivery m))

(cl:ensure-generic-function 'brake_frct_torque_delivery_valid-val :lambda-list '(m))
(cl:defmethod brake_frct_torque_delivery_valid-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_frct_torque_delivery_valid-val is deprecated.  Use endpoint_msgs-msg:brake_frct_torque_delivery_valid instead.")
  (brake_frct_torque_delivery_valid m))

(cl:ensure-generic-function 'master_pressure_delivery-val :lambda-list '(m))
(cl:defmethod master_pressure_delivery-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:master_pressure_delivery-val is deprecated.  Use endpoint_msgs-msg:master_pressure_delivery instead.")
  (master_pressure_delivery m))

(cl:ensure-generic-function 'master_pressure_delivery_valid-val :lambda-list '(m))
(cl:defmethod master_pressure_delivery_valid-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:master_pressure_delivery_valid-val is deprecated.  Use endpoint_msgs-msg:master_pressure_delivery_valid instead.")
  (master_pressure_delivery_valid m))

(cl:ensure-generic-function 'pedal_brake_torque-val :lambda-list '(m))
(cl:defmethod pedal_brake_torque-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pedal_brake_torque-val is deprecated.  Use endpoint_msgs-msg:pedal_brake_torque instead.")
  (pedal_brake_torque m))

(cl:ensure-generic-function 'pedal_brake_torque_valid-val :lambda-list '(m))
(cl:defmethod pedal_brake_torque_valid-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pedal_brake_torque_valid-val is deprecated.  Use endpoint_msgs-msg:pedal_brake_torque_valid instead.")
  (pedal_brake_torque_valid m))

(cl:ensure-generic-function 'pkg_fastswitch_enable-val :lambda-list '(m))
(cl:defmethod pkg_fastswitch_enable-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pkg_fastswitch_enable-val is deprecated.  Use endpoint_msgs-msg:pkg_fastswitch_enable instead.")
  (pkg_fastswitch_enable m))

(cl:ensure-generic-function 'vehicle_block-val :lambda-list '(m))
(cl:defmethod vehicle_block-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_block-val is deprecated.  Use endpoint_msgs-msg:vehicle_block instead.")
  (vehicle_block m))

(cl:ensure-generic-function 'esp_status-val :lambda-list '(m))
(cl:defmethod esp_status-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:esp_status-val is deprecated.  Use endpoint_msgs-msg:esp_status instead.")
  (esp_status m))

(cl:ensure-generic-function 'vdc_active-val :lambda-list '(m))
(cl:defmethod vdc_active-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vdc_active-val is deprecated.  Use endpoint_msgs-msg:vdc_active instead.")
  (vdc_active m))

(cl:ensure-generic-function 'vdc_fault-val :lambda-list '(m))
(cl:defmethod vdc_fault-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vdc_fault-val is deprecated.  Use endpoint_msgs-msg:vdc_fault instead.")
  (vdc_fault m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <BrakeInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reserved-val is deprecated.  Use endpoint_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeInfoReportData>) ostream)
  "Serializes a message object of type '<BrakeInfoReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accleration_on_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateral_accleration_on_wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stationary) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'abs_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'abs_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tcs_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tcs_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'msr_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'msr_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'esp_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'esp_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tsr_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tsr_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pressure) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_torque_delivery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_torque_delivery_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_regen_torque_delivery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_regen_torque_delivery_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_frct_torque_delivery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_frct_torque_delivery_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'master_pressure_delivery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'master_pressure_delivery_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pedal_brake_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pedal_brake_torque_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pkg_fastswitch_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_block) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'esp_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vdc_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vdc_fault) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeInfoReportData>) istream)
  "Deserializes a message object of type '<BrakeInfoReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accleration_on_wheel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_accleration_on_wheel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'stationary) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'abs_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'abs_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tcs_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tcs_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'msr_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'msr_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'esp_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'esp_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tsr_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tsr_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pressure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_torque_delivery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'brake_torque_delivery_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_regen_torque_delivery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'brake_regen_torque_delivery_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_frct_torque_delivery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'brake_frct_torque_delivery_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'master_pressure_delivery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'master_pressure_delivery_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pedal_brake_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'pedal_brake_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pkg_fastswitch_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_block) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'esp_status) istream)
    (cl:setf (cl:slot-value msg 'vdc_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vdc_fault) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeInfoReportData>)))
  "Returns string type for a message object of type '<BrakeInfoReportData>"
  "endpoint_msgs/BrakeInfoReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeInfoReportData)))
  "Returns string type for a message object of type 'BrakeInfoReportData"
  "endpoint_msgs/BrakeInfoReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeInfoReportData>)))
  "Returns md5sum for a message object of type '<BrakeInfoReportData>"
  "8ca52bf3a77488f03bf8723c06136c01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeInfoReportData)))
  "Returns md5sum for a message object of type 'BrakeInfoReportData"
  "8ca52bf3a77488f03bf8723c06136c01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeInfoReportData>)))
  "Returns full string definition for message of type '<BrakeInfoReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%float32 accleration_on_wheel~%float32 lateral_accleration_on_wheel~%bool stationary~%bool abs_active~%bool abs_fault~%bool tcs_active~%bool tcs_fault~%bool msr_active~%bool msr_fault~%bool esp_active~%bool esp_fault~%bool tsr_active~%bool tsr_fault~%bool pressure~%float32 brake_torque_delivery~%bool brake_torque_delivery_valid~%float32 brake_regen_torque_delivery~%bool brake_regen_torque_delivery_valid~%float32 brake_frct_torque_delivery~%bool brake_frct_torque_delivery_valid~%float32 master_pressure_delivery~%bool master_pressure_delivery_valid~%float32 pedal_brake_torque~%bool pedal_brake_torque_valid~%bool pkg_fastswitch_enable~%bool vehicle_block~%endpoint_msgs/VehESPSwitch esp_status~%bool vdc_active~%bool vdc_fault~%uint8 reserved~%~%================================================================================~%MSG: endpoint_msgs/VehESPSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeInfoReportData)))
  "Returns full string definition for message of type 'BrakeInfoReportData"
  (cl:format cl:nil "uint64 timestamp_us~%float32 accleration_on_wheel~%float32 lateral_accleration_on_wheel~%bool stationary~%bool abs_active~%bool abs_fault~%bool tcs_active~%bool tcs_fault~%bool msr_active~%bool msr_fault~%bool esp_active~%bool esp_fault~%bool tsr_active~%bool tsr_fault~%bool pressure~%float32 brake_torque_delivery~%bool brake_torque_delivery_valid~%float32 brake_regen_torque_delivery~%bool brake_regen_torque_delivery_valid~%float32 brake_frct_torque_delivery~%bool brake_frct_torque_delivery_valid~%float32 master_pressure_delivery~%bool master_pressure_delivery_valid~%float32 pedal_brake_torque~%bool pedal_brake_torque_valid~%bool pkg_fastswitch_enable~%bool vehicle_block~%endpoint_msgs/VehESPSwitch esp_status~%bool vdc_active~%bool vdc_fault~%uint8 reserved~%~%================================================================================~%MSG: endpoint_msgs/VehESPSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 RESVERD = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeInfoReportData>))
  (cl:+ 0
     8
     4
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     1
     4
     1
     4
     1
     4
     1
     4
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'esp_status))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeInfoReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeInfoReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':accleration_on_wheel (accleration_on_wheel msg))
    (cl:cons ':lateral_accleration_on_wheel (lateral_accleration_on_wheel msg))
    (cl:cons ':stationary (stationary msg))
    (cl:cons ':abs_active (abs_active msg))
    (cl:cons ':abs_fault (abs_fault msg))
    (cl:cons ':tcs_active (tcs_active msg))
    (cl:cons ':tcs_fault (tcs_fault msg))
    (cl:cons ':msr_active (msr_active msg))
    (cl:cons ':msr_fault (msr_fault msg))
    (cl:cons ':esp_active (esp_active msg))
    (cl:cons ':esp_fault (esp_fault msg))
    (cl:cons ':tsr_active (tsr_active msg))
    (cl:cons ':tsr_fault (tsr_fault msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':brake_torque_delivery (brake_torque_delivery msg))
    (cl:cons ':brake_torque_delivery_valid (brake_torque_delivery_valid msg))
    (cl:cons ':brake_regen_torque_delivery (brake_regen_torque_delivery msg))
    (cl:cons ':brake_regen_torque_delivery_valid (brake_regen_torque_delivery_valid msg))
    (cl:cons ':brake_frct_torque_delivery (brake_frct_torque_delivery msg))
    (cl:cons ':brake_frct_torque_delivery_valid (brake_frct_torque_delivery_valid msg))
    (cl:cons ':master_pressure_delivery (master_pressure_delivery msg))
    (cl:cons ':master_pressure_delivery_valid (master_pressure_delivery_valid msg))
    (cl:cons ':pedal_brake_torque (pedal_brake_torque msg))
    (cl:cons ':pedal_brake_torque_valid (pedal_brake_torque_valid msg))
    (cl:cons ':pkg_fastswitch_enable (pkg_fastswitch_enable msg))
    (cl:cons ':vehicle_block (vehicle_block msg))
    (cl:cons ':esp_status (esp_status msg))
    (cl:cons ':vdc_active (vdc_active msg))
    (cl:cons ':vdc_fault (vdc_fault msg))
    (cl:cons ':reserved (reserved msg))
))
