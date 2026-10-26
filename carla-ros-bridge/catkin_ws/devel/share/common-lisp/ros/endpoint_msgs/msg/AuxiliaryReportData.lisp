; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AuxiliaryReportData.msg.html

(cl:defclass <AuxiliaryReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (rearview_mirror
    :reader rearview_mirror
    :initarg :rearview_mirror
    :type endpoint_msgs-msg:RearviewMirrorStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:RearviewMirrorStatus))
   (vehicle_power_mode
    :reader vehicle_power_mode
    :initarg :vehicle_power_mode
    :type endpoint_msgs-msg:PowerModeType
    :initform (cl:make-instance 'endpoint_msgs-msg:PowerModeType))
   (vehicle_power_valid
    :reader vehicle_power_valid
    :initarg :vehicle_power_valid
    :type cl:boolean
    :initform cl:nil)
   (vehicle_lock
    :reader vehicle_lock
    :initarg :vehicle_lock
    :type cl:boolean
    :initform cl:nil)
   (vehicle_horn
    :reader vehicle_horn
    :initarg :vehicle_horn
    :type cl:boolean
    :initform cl:nil)
   (rain_sensor_level
    :reader rain_sensor_level
    :initarg :rain_sensor_level
    :type endpoint_msgs-msg:RainSensorLevel
    :initform (cl:make-instance 'endpoint_msgs-msg:RainSensorLevel))
   (vehicle_speed_on_dashboard
    :reader vehicle_speed_on_dashboard
    :initarg :vehicle_speed_on_dashboard
    :type cl:float
    :initform 0.0)
   (vehicle_speed_on_dashboard_valid
    :reader vehicle_speed_on_dashboard_valid
    :initarg :vehicle_speed_on_dashboard_valid
    :type cl:boolean
    :initform cl:nil)
   (vehicle_speed_on_dashboard_unit
    :reader vehicle_speed_on_dashboard_unit
    :initarg :vehicle_speed_on_dashboard_unit
    :type endpoint_msgs-msg:VehicleSpeedonDashboardUnit
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleSpeedonDashboardUnit))
   (vehicle_outside_temp
    :reader vehicle_outside_temp
    :initarg :vehicle_outside_temp
    :type cl:float
    :initform 0.0)
   (vehicle_outside_temp_valid
    :reader vehicle_outside_temp_valid
    :initarg :vehicle_outside_temp_valid
    :type cl:boolean
    :initform cl:nil)
   (vechile_inside_temp
    :reader vechile_inside_temp
    :initarg :vechile_inside_temp
    :type cl:float
    :initform 0.0)
   (vechile_inside_temp_valid
    :reader vechile_inside_temp_valid
    :initarg :vechile_inside_temp_valid
    :type cl:boolean
    :initform cl:nil)
   (vehicle_mode_state
    :reader vehicle_mode_state
    :initarg :vehicle_mode_state
    :type endpoint_msgs-msg:VehicleModeState
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleModeState))
   (vehicle_driving_mode
    :reader vehicle_driving_mode
    :initarg :vehicle_driving_mode
    :type endpoint_msgs-msg:VehicledrivingMode
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicledrivingMode))
   (charge_connect_status
    :reader charge_connect_status
    :initarg :charge_connect_status
    :type endpoint_msgs-msg:ChargeConnectState
    :initform (cl:make-instance 'endpoint_msgs-msg:ChargeConnectState))
   (auto_driver_status
    :reader auto_driver_status
    :initarg :auto_driver_status
    :type endpoint_msgs-msg:AutoDriveStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:AutoDriveStatus))
   (shared_control_state
    :reader shared_control_state
    :initarg :shared_control_state
    :type cl:boolean
    :initform cl:nil)
   (shared_control_enable
    :reader shared_control_enable
    :initarg :shared_control_enable
    :type cl:boolean
    :initform cl:nil)
   (rearview_mirror_adjust_switch
    :reader rearview_mirror_adjust_switch
    :initarg :rearview_mirror_adjust_switch
    :type endpoint_msgs-msg:RearviewMirrorAdjustSwitch
    :initform (cl:make-instance 'endpoint_msgs-msg:RearviewMirrorAdjustSwitch))
   (horizontal_light_lumens
    :reader horizontal_light_lumens
    :initarg :horizontal_light_lumens
    :type cl:float
    :initform 0.0)
   (horizontal_light_lumens_valid
    :reader horizontal_light_lumens_valid
    :initarg :horizontal_light_lumens_valid
    :type cl:boolean
    :initform cl:nil)
   (vertical_light_lumens
    :reader vertical_light_lumens
    :initarg :vertical_light_lumens
    :type cl:float
    :initform 0.0)
   (vertical_light_lumens_valid
    :reader vertical_light_lumens_valid
    :initarg :vertical_light_lumens_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AuxiliaryReportData (<AuxiliaryReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuxiliaryReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuxiliaryReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AuxiliaryReportData> is deprecated: use endpoint_msgs-msg:AuxiliaryReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'rearview_mirror-val :lambda-list '(m))
(cl:defmethod rearview_mirror-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rearview_mirror-val is deprecated.  Use endpoint_msgs-msg:rearview_mirror instead.")
  (rearview_mirror m))

(cl:ensure-generic-function 'vehicle_power_mode-val :lambda-list '(m))
(cl:defmethod vehicle_power_mode-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_power_mode-val is deprecated.  Use endpoint_msgs-msg:vehicle_power_mode instead.")
  (vehicle_power_mode m))

(cl:ensure-generic-function 'vehicle_power_valid-val :lambda-list '(m))
(cl:defmethod vehicle_power_valid-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_power_valid-val is deprecated.  Use endpoint_msgs-msg:vehicle_power_valid instead.")
  (vehicle_power_valid m))

(cl:ensure-generic-function 'vehicle_lock-val :lambda-list '(m))
(cl:defmethod vehicle_lock-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_lock-val is deprecated.  Use endpoint_msgs-msg:vehicle_lock instead.")
  (vehicle_lock m))

(cl:ensure-generic-function 'vehicle_horn-val :lambda-list '(m))
(cl:defmethod vehicle_horn-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_horn-val is deprecated.  Use endpoint_msgs-msg:vehicle_horn instead.")
  (vehicle_horn m))

(cl:ensure-generic-function 'rain_sensor_level-val :lambda-list '(m))
(cl:defmethod rain_sensor_level-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rain_sensor_level-val is deprecated.  Use endpoint_msgs-msg:rain_sensor_level instead.")
  (rain_sensor_level m))

(cl:ensure-generic-function 'vehicle_speed_on_dashboard-val :lambda-list '(m))
(cl:defmethod vehicle_speed_on_dashboard-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_speed_on_dashboard-val is deprecated.  Use endpoint_msgs-msg:vehicle_speed_on_dashboard instead.")
  (vehicle_speed_on_dashboard m))

(cl:ensure-generic-function 'vehicle_speed_on_dashboard_valid-val :lambda-list '(m))
(cl:defmethod vehicle_speed_on_dashboard_valid-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_speed_on_dashboard_valid-val is deprecated.  Use endpoint_msgs-msg:vehicle_speed_on_dashboard_valid instead.")
  (vehicle_speed_on_dashboard_valid m))

(cl:ensure-generic-function 'vehicle_speed_on_dashboard_unit-val :lambda-list '(m))
(cl:defmethod vehicle_speed_on_dashboard_unit-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_speed_on_dashboard_unit-val is deprecated.  Use endpoint_msgs-msg:vehicle_speed_on_dashboard_unit instead.")
  (vehicle_speed_on_dashboard_unit m))

(cl:ensure-generic-function 'vehicle_outside_temp-val :lambda-list '(m))
(cl:defmethod vehicle_outside_temp-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_outside_temp-val is deprecated.  Use endpoint_msgs-msg:vehicle_outside_temp instead.")
  (vehicle_outside_temp m))

(cl:ensure-generic-function 'vehicle_outside_temp_valid-val :lambda-list '(m))
(cl:defmethod vehicle_outside_temp_valid-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_outside_temp_valid-val is deprecated.  Use endpoint_msgs-msg:vehicle_outside_temp_valid instead.")
  (vehicle_outside_temp_valid m))

(cl:ensure-generic-function 'vechile_inside_temp-val :lambda-list '(m))
(cl:defmethod vechile_inside_temp-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vechile_inside_temp-val is deprecated.  Use endpoint_msgs-msg:vechile_inside_temp instead.")
  (vechile_inside_temp m))

(cl:ensure-generic-function 'vechile_inside_temp_valid-val :lambda-list '(m))
(cl:defmethod vechile_inside_temp_valid-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vechile_inside_temp_valid-val is deprecated.  Use endpoint_msgs-msg:vechile_inside_temp_valid instead.")
  (vechile_inside_temp_valid m))

(cl:ensure-generic-function 'vehicle_mode_state-val :lambda-list '(m))
(cl:defmethod vehicle_mode_state-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_mode_state-val is deprecated.  Use endpoint_msgs-msg:vehicle_mode_state instead.")
  (vehicle_mode_state m))

(cl:ensure-generic-function 'vehicle_driving_mode-val :lambda-list '(m))
(cl:defmethod vehicle_driving_mode-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_driving_mode-val is deprecated.  Use endpoint_msgs-msg:vehicle_driving_mode instead.")
  (vehicle_driving_mode m))

(cl:ensure-generic-function 'charge_connect_status-val :lambda-list '(m))
(cl:defmethod charge_connect_status-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:charge_connect_status-val is deprecated.  Use endpoint_msgs-msg:charge_connect_status instead.")
  (charge_connect_status m))

(cl:ensure-generic-function 'auto_driver_status-val :lambda-list '(m))
(cl:defmethod auto_driver_status-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:auto_driver_status-val is deprecated.  Use endpoint_msgs-msg:auto_driver_status instead.")
  (auto_driver_status m))

(cl:ensure-generic-function 'shared_control_state-val :lambda-list '(m))
(cl:defmethod shared_control_state-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:shared_control_state-val is deprecated.  Use endpoint_msgs-msg:shared_control_state instead.")
  (shared_control_state m))

(cl:ensure-generic-function 'shared_control_enable-val :lambda-list '(m))
(cl:defmethod shared_control_enable-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:shared_control_enable-val is deprecated.  Use endpoint_msgs-msg:shared_control_enable instead.")
  (shared_control_enable m))

(cl:ensure-generic-function 'rearview_mirror_adjust_switch-val :lambda-list '(m))
(cl:defmethod rearview_mirror_adjust_switch-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rearview_mirror_adjust_switch-val is deprecated.  Use endpoint_msgs-msg:rearview_mirror_adjust_switch instead.")
  (rearview_mirror_adjust_switch m))

(cl:ensure-generic-function 'horizontal_light_lumens-val :lambda-list '(m))
(cl:defmethod horizontal_light_lumens-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:horizontal_light_lumens-val is deprecated.  Use endpoint_msgs-msg:horizontal_light_lumens instead.")
  (horizontal_light_lumens m))

(cl:ensure-generic-function 'horizontal_light_lumens_valid-val :lambda-list '(m))
(cl:defmethod horizontal_light_lumens_valid-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:horizontal_light_lumens_valid-val is deprecated.  Use endpoint_msgs-msg:horizontal_light_lumens_valid instead.")
  (horizontal_light_lumens_valid m))

(cl:ensure-generic-function 'vertical_light_lumens-val :lambda-list '(m))
(cl:defmethod vertical_light_lumens-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vertical_light_lumens-val is deprecated.  Use endpoint_msgs-msg:vertical_light_lumens instead.")
  (vertical_light_lumens m))

(cl:ensure-generic-function 'vertical_light_lumens_valid-val :lambda-list '(m))
(cl:defmethod vertical_light_lumens_valid-val ((m <AuxiliaryReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vertical_light_lumens_valid-val is deprecated.  Use endpoint_msgs-msg:vertical_light_lumens_valid instead.")
  (vertical_light_lumens_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuxiliaryReportData>) ostream)
  "Serializes a message object of type '<AuxiliaryReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rearview_mirror) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_power_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_power_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_lock) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_horn) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rain_sensor_level) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_speed_on_dashboard))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_speed_on_dashboard_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_speed_on_dashboard_unit) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_outside_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_outside_temp_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vechile_inside_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vechile_inside_temp_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_mode_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_driving_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'charge_connect_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auto_driver_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shared_control_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'shared_control_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rearview_mirror_adjust_switch) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'horizontal_light_lumens))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'horizontal_light_lumens_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vertical_light_lumens))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vertical_light_lumens_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuxiliaryReportData>) istream)
  "Deserializes a message object of type '<AuxiliaryReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rearview_mirror) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_power_mode) istream)
    (cl:setf (cl:slot-value msg 'vehicle_power_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_lock) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_horn) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rain_sensor_level) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_speed_on_dashboard) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vehicle_speed_on_dashboard_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_speed_on_dashboard_unit) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_outside_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vehicle_outside_temp_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vechile_inside_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vechile_inside_temp_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_mode_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_driving_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'charge_connect_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auto_driver_status) istream)
    (cl:setf (cl:slot-value msg 'shared_control_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'shared_control_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rearview_mirror_adjust_switch) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_light_lumens) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'horizontal_light_lumens_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_light_lumens) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vertical_light_lumens_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuxiliaryReportData>)))
  "Returns string type for a message object of type '<AuxiliaryReportData>"
  "endpoint_msgs/AuxiliaryReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuxiliaryReportData)))
  "Returns string type for a message object of type 'AuxiliaryReportData"
  "endpoint_msgs/AuxiliaryReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuxiliaryReportData>)))
  "Returns md5sum for a message object of type '<AuxiliaryReportData>"
  "a0917d93c1e7202420b8b4c45178a9f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuxiliaryReportData)))
  "Returns md5sum for a message object of type 'AuxiliaryReportData"
  "a0917d93c1e7202420b8b4c45178a9f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuxiliaryReportData>)))
  "Returns full string definition for message of type '<AuxiliaryReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/RearviewMirrorStatus rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power_mode~%bool vehicle_power_valid~%bool vehicle_lock~%bool vehicle_horn~%endpoint_msgs/RainSensorLevel rain_sensor_level~%float32 vehicle_speed_on_dashboard~%bool vehicle_speed_on_dashboard_valid~%endpoint_msgs/VehicleSpeedonDashboardUnit vehicle_speed_on_dashboard_unit~%float32 vehicle_outside_temp~%bool vehicle_outside_temp_valid~%float32 vechile_inside_temp~%bool vechile_inside_temp_valid~%endpoint_msgs/VehicleModeState vehicle_mode_state~%endpoint_msgs/VehicledrivingMode vehicle_driving_mode~%endpoint_msgs/ChargeConnectState charge_connect_status~%endpoint_msgs/AutoDriveStatus auto_driver_status~%bool shared_control_state~%bool shared_control_enable~%endpoint_msgs/RearviewMirrorAdjustSwitch rearview_mirror_adjust_switch~%float32 horizontal_light_lumens~%bool horizontal_light_lumens_valid~%float32 vertical_light_lumens~%bool vertical_light_lumens_valid~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorStatus~%uint8 NONE = 0~%uint8 OPEN = 1~%uint8 CLOSE = 2~%uint8 OPENING = 3~%uint8 CLOSING = 4~%uint8 PROCESSING = 5~%uint8 RESERVED = 6~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RainSensorLevel~%uint8 RAIN_SENSOR_OFF = 0~%uint8 RARIN_SENSOR_LEVEL_LOW = 1~%uint8 RARIN_SENSOR_LEVEL_MID = 2~%uint8 RARIN_SENSOR_LEVEL_HIGH = 3~%uint8 RARIN_SENSOR_LEVEL_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleSpeedonDashboardUnit~%uint8 NONE = 0~%uint8 KMH = 1~%uint8 MILEH = 2~%uint8 UNKNOWN = 3~%uint8 RESVERD = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleModeState~%uint8 NONE = 0~%uint8 NORMAL_MODE = 1~%uint8 MANUFACTURE_MODE = 2~%uint8 TRANSPORT_MODE = 3~%uint8 SHOWROOM_MODE = 4~%uint8 POSTCRASH_MODE = 5~%uint8 MAINTENANCE_MODE = 6~%uint8 CARWASH_MODE = 7~%uint8 BENCHTEST_MODE = 8~%uint8 DRAG_MODE = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 RESERVED3 = 12~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicledrivingMode~%uint8 NONE = 0~%uint8 NORMAL = 1~%uint8 DRIFT_EXP = 2~%uint8 WINTER_SPORT = 3~%uint8 OFFROAD = 4~%uint8 RACE_TRACK = 5~%uint8 ROCK = 6~%uint8 SAND = 7~%uint8 SPORT = 8~%uint8 ECO = 9~%uint8 MUD = 10~%uint8 OPD = 11~%uint8 WADING = 12~%uint8 SNOW = 13~%uint8 ICE = 14~%uint8 GRASS = 15~%uint8 GRIT = 16~%uint8 MOUNTAIN = 17~%uint8 SUPER_WADING = 18~%uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19~%uint8 TURN_IN_PLACE = 20~%uint8 ECO_PLUS = 21~%uint8 RALLY = 22~%uint8 LIMP_MODE = 23~%uint8 SPORT_PLUS = 24~%uint8 CREEP = 25~%uint8 OVERCLOCKING_MODE = 26~%uint8 ANTISKID_CHAIN = 27~%uint8 STRUCK_ASSISTANT = 28~%uint8 TERRAIN_ASSISTANT = 29~%uint8 ITAC = 30~%uint8 Ext_Endurance = 31~%uint8 DEEPSNOW = 32~%uint8 TBS_Detn = 33~%uint8 AUTOMATIC_MODE = 34~%uint8 CUSTOM_MODE = 35~%uint8 RESERVED1 = 36~%uint8 RESERVED2 = 37~%uint8 RESERVED3 = 38~%uint8 mode~%uint8 sub_mode~%~%================================================================================~%MSG: endpoint_msgs/ChargeConnectState~%uint8 NONE = 0~%uint8 NOT_CONNECTED = 1~%uint8 CONNECTED = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoDriveStatus~%uint8 NONE = 0~%uint8 READY = 1~%uint8 NOT_READY = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorAdjustSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuxiliaryReportData)))
  "Returns full string definition for message of type 'AuxiliaryReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/RearviewMirrorStatus rearview_mirror~%endpoint_msgs/PowerModeType vehicle_power_mode~%bool vehicle_power_valid~%bool vehicle_lock~%bool vehicle_horn~%endpoint_msgs/RainSensorLevel rain_sensor_level~%float32 vehicle_speed_on_dashboard~%bool vehicle_speed_on_dashboard_valid~%endpoint_msgs/VehicleSpeedonDashboardUnit vehicle_speed_on_dashboard_unit~%float32 vehicle_outside_temp~%bool vehicle_outside_temp_valid~%float32 vechile_inside_temp~%bool vechile_inside_temp_valid~%endpoint_msgs/VehicleModeState vehicle_mode_state~%endpoint_msgs/VehicledrivingMode vehicle_driving_mode~%endpoint_msgs/ChargeConnectState charge_connect_status~%endpoint_msgs/AutoDriveStatus auto_driver_status~%bool shared_control_state~%bool shared_control_enable~%endpoint_msgs/RearviewMirrorAdjustSwitch rearview_mirror_adjust_switch~%float32 horizontal_light_lumens~%bool horizontal_light_lumens_valid~%float32 vertical_light_lumens~%bool vertical_light_lumens_valid~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorStatus~%uint8 NONE = 0~%uint8 OPEN = 1~%uint8 CLOSE = 2~%uint8 OPENING = 3~%uint8 CLOSING = 4~%uint8 PROCESSING = 5~%uint8 RESERVED = 6~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/PowerModeType~%uint8 VEHILCE_POWER_MODE_OFF = 0~%uint8 VEHILCE_POWER_MODE_NORMAL = 1~%uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2~%uint8 VEHILCE_POWER_MODE_RESERVED1 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RainSensorLevel~%uint8 RAIN_SENSOR_OFF = 0~%uint8 RARIN_SENSOR_LEVEL_LOW = 1~%uint8 RARIN_SENSOR_LEVEL_MID = 2~%uint8 RARIN_SENSOR_LEVEL_HIGH = 3~%uint8 RARIN_SENSOR_LEVEL_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleSpeedonDashboardUnit~%uint8 NONE = 0~%uint8 KMH = 1~%uint8 MILEH = 2~%uint8 UNKNOWN = 3~%uint8 RESVERD = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleModeState~%uint8 NONE = 0~%uint8 NORMAL_MODE = 1~%uint8 MANUFACTURE_MODE = 2~%uint8 TRANSPORT_MODE = 3~%uint8 SHOWROOM_MODE = 4~%uint8 POSTCRASH_MODE = 5~%uint8 MAINTENANCE_MODE = 6~%uint8 CARWASH_MODE = 7~%uint8 BENCHTEST_MODE = 8~%uint8 DRAG_MODE = 9~%uint8 RESERVED1 = 10~%uint8 RESERVED2 = 11~%uint8 RESERVED3 = 12~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicledrivingMode~%uint8 NONE = 0~%uint8 NORMAL = 1~%uint8 DRIFT_EXP = 2~%uint8 WINTER_SPORT = 3~%uint8 OFFROAD = 4~%uint8 RACE_TRACK = 5~%uint8 ROCK = 6~%uint8 SAND = 7~%uint8 SPORT = 8~%uint8 ECO = 9~%uint8 MUD = 10~%uint8 OPD = 11~%uint8 WADING = 12~%uint8 SNOW = 13~%uint8 ICE = 14~%uint8 GRASS = 15~%uint8 GRIT = 16~%uint8 MOUNTAIN = 17~%uint8 SUPER_WADING = 18~%uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19~%uint8 TURN_IN_PLACE = 20~%uint8 ECO_PLUS = 21~%uint8 RALLY = 22~%uint8 LIMP_MODE = 23~%uint8 SPORT_PLUS = 24~%uint8 CREEP = 25~%uint8 OVERCLOCKING_MODE = 26~%uint8 ANTISKID_CHAIN = 27~%uint8 STRUCK_ASSISTANT = 28~%uint8 TERRAIN_ASSISTANT = 29~%uint8 ITAC = 30~%uint8 Ext_Endurance = 31~%uint8 DEEPSNOW = 32~%uint8 TBS_Detn = 33~%uint8 AUTOMATIC_MODE = 34~%uint8 CUSTOM_MODE = 35~%uint8 RESERVED1 = 36~%uint8 RESERVED2 = 37~%uint8 RESERVED3 = 38~%uint8 mode~%uint8 sub_mode~%~%================================================================================~%MSG: endpoint_msgs/ChargeConnectState~%uint8 NONE = 0~%uint8 NOT_CONNECTED = 1~%uint8 CONNECTED = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AutoDriveStatus~%uint8 NONE = 0~%uint8 READY = 1~%uint8 NOT_READY = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/RearviewMirrorAdjustSwitch~%uint8 NONE = 0~%uint8 ON = 1~%uint8 OFF = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuxiliaryReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rearview_mirror))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_power_mode))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rain_sensor_level))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_speed_on_dashboard_unit))
     4
     1
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_mode_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_driving_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'charge_connect_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auto_driver_status))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rearview_mirror_adjust_switch))
     4
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuxiliaryReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'AuxiliaryReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':rearview_mirror (rearview_mirror msg))
    (cl:cons ':vehicle_power_mode (vehicle_power_mode msg))
    (cl:cons ':vehicle_power_valid (vehicle_power_valid msg))
    (cl:cons ':vehicle_lock (vehicle_lock msg))
    (cl:cons ':vehicle_horn (vehicle_horn msg))
    (cl:cons ':rain_sensor_level (rain_sensor_level msg))
    (cl:cons ':vehicle_speed_on_dashboard (vehicle_speed_on_dashboard msg))
    (cl:cons ':vehicle_speed_on_dashboard_valid (vehicle_speed_on_dashboard_valid msg))
    (cl:cons ':vehicle_speed_on_dashboard_unit (vehicle_speed_on_dashboard_unit msg))
    (cl:cons ':vehicle_outside_temp (vehicle_outside_temp msg))
    (cl:cons ':vehicle_outside_temp_valid (vehicle_outside_temp_valid msg))
    (cl:cons ':vechile_inside_temp (vechile_inside_temp msg))
    (cl:cons ':vechile_inside_temp_valid (vechile_inside_temp_valid msg))
    (cl:cons ':vehicle_mode_state (vehicle_mode_state msg))
    (cl:cons ':vehicle_driving_mode (vehicle_driving_mode msg))
    (cl:cons ':charge_connect_status (charge_connect_status msg))
    (cl:cons ':auto_driver_status (auto_driver_status msg))
    (cl:cons ':shared_control_state (shared_control_state msg))
    (cl:cons ':shared_control_enable (shared_control_enable msg))
    (cl:cons ':rearview_mirror_adjust_switch (rearview_mirror_adjust_switch msg))
    (cl:cons ':horizontal_light_lumens (horizontal_light_lumens msg))
    (cl:cons ':horizontal_light_lumens_valid (horizontal_light_lumens_valid msg))
    (cl:cons ':vertical_light_lumens (vertical_light_lumens msg))
    (cl:cons ':vertical_light_lumens_valid (vertical_light_lumens_valid msg))
))
