; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ThrottleInfoReportData.msg.html

(cl:defclass <ThrottleInfoReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (front_left_mot_rpm
    :reader front_left_mot_rpm
    :initarg :front_left_mot_rpm
    :type cl:float
    :initform 0.0)
   (front_left_mot_rpm_valid
    :reader front_left_mot_rpm_valid
    :initarg :front_left_mot_rpm_valid
    :type cl:boolean
    :initform cl:nil)
   (front_right_mot_rpm
    :reader front_right_mot_rpm
    :initarg :front_right_mot_rpm
    :type cl:float
    :initform 0.0)
   (front_right_mot_rpm_valid
    :reader front_right_mot_rpm_valid
    :initarg :front_right_mot_rpm_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_left_mot_rpm
    :reader rear_left_mot_rpm
    :initarg :rear_left_mot_rpm
    :type cl:float
    :initform 0.0)
   (rear_left_mot_rpm_valid
    :reader rear_left_mot_rpm_valid
    :initarg :rear_left_mot_rpm_valid
    :type cl:boolean
    :initform cl:nil)
   (rear_right_mot_rpm
    :reader rear_right_mot_rpm
    :initarg :rear_right_mot_rpm
    :type cl:float
    :initform 0.0)
   (rear_right_mot_rpm_valid
    :reader rear_right_mot_rpm_valid
    :initarg :rear_right_mot_rpm_valid
    :type cl:boolean
    :initform cl:nil)
   (throttle_pedal_percent
    :reader throttle_pedal_percent
    :initarg :throttle_pedal_percent
    :type cl:float
    :initform 0.0)
   (throttle_pedal_rate
    :reader throttle_pedal_rate
    :initarg :throttle_pedal_rate
    :type cl:float
    :initform 0.0)
   (vehicle_speed_average
    :reader vehicle_speed_average
    :initarg :vehicle_speed_average
    :type cl:float
    :initform 0.0)
   (vehicle_speed_average_valid
    :reader vehicle_speed_average_valid
    :initarg :vehicle_speed_average_valid
    :type cl:boolean
    :initform cl:nil)
   (vehicle_mileage
    :reader vehicle_mileage
    :initarg :vehicle_mileage
    :type cl:float
    :initform 0.0)
   (throttle_torque_delivery
    :reader throttle_torque_delivery
    :initarg :throttle_torque_delivery
    :type cl:float
    :initform 0.0)
   (throttle_torque_delivery_valid
    :reader throttle_torque_delivery_valid
    :initarg :throttle_torque_delivery_valid
    :type cl:boolean
    :initform cl:nil)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:boolean
    :initform cl:nil)
   (input_shaft_speed
    :reader input_shaft_speed
    :initarg :input_shaft_speed
    :type cl:float
    :initform 0.0)
   (output_shaft_speed
    :reader output_shaft_speed
    :initarg :output_shaft_speed
    :type cl:float
    :initform 0.0)
   (curr_transmission_gear
    :reader curr_transmission_gear
    :initarg :curr_transmission_gear
    :type cl:fixnum
    :initform 0)
   (curr_gear_ration
    :reader curr_gear_ration
    :initarg :curr_gear_ration
    :type cl:float
    :initform 0.0)
   (input_shaft_speed_valid
    :reader input_shaft_speed_valid
    :initarg :input_shaft_speed_valid
    :type cl:boolean
    :initform cl:nil)
   (output_shaft_speed_valid
    :reader output_shaft_speed_valid
    :initarg :output_shaft_speed_valid
    :type cl:boolean
    :initform cl:nil)
   (curr_transmission_gear_valid
    :reader curr_transmission_gear_valid
    :initarg :curr_transmission_gear_valid
    :type cl:boolean
    :initform cl:nil)
   (curr_gear_ration_valid
    :reader curr_gear_ration_valid
    :initarg :curr_gear_ration_valid
    :type cl:boolean
    :initform cl:nil)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:float
    :initform 0.0))
)

(cl:defclass ThrottleInfoReportData (<ThrottleInfoReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleInfoReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleInfoReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ThrottleInfoReportData> is deprecated: use endpoint_msgs-msg:ThrottleInfoReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'front_left_mot_rpm-val :lambda-list '(m))
(cl:defmethod front_left_mot_rpm-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_left_mot_rpm-val is deprecated.  Use endpoint_msgs-msg:front_left_mot_rpm instead.")
  (front_left_mot_rpm m))

(cl:ensure-generic-function 'front_left_mot_rpm_valid-val :lambda-list '(m))
(cl:defmethod front_left_mot_rpm_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_left_mot_rpm_valid-val is deprecated.  Use endpoint_msgs-msg:front_left_mot_rpm_valid instead.")
  (front_left_mot_rpm_valid m))

(cl:ensure-generic-function 'front_right_mot_rpm-val :lambda-list '(m))
(cl:defmethod front_right_mot_rpm-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_right_mot_rpm-val is deprecated.  Use endpoint_msgs-msg:front_right_mot_rpm instead.")
  (front_right_mot_rpm m))

(cl:ensure-generic-function 'front_right_mot_rpm_valid-val :lambda-list '(m))
(cl:defmethod front_right_mot_rpm_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_right_mot_rpm_valid-val is deprecated.  Use endpoint_msgs-msg:front_right_mot_rpm_valid instead.")
  (front_right_mot_rpm_valid m))

(cl:ensure-generic-function 'rear_left_mot_rpm-val :lambda-list '(m))
(cl:defmethod rear_left_mot_rpm-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_left_mot_rpm-val is deprecated.  Use endpoint_msgs-msg:rear_left_mot_rpm instead.")
  (rear_left_mot_rpm m))

(cl:ensure-generic-function 'rear_left_mot_rpm_valid-val :lambda-list '(m))
(cl:defmethod rear_left_mot_rpm_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_left_mot_rpm_valid-val is deprecated.  Use endpoint_msgs-msg:rear_left_mot_rpm_valid instead.")
  (rear_left_mot_rpm_valid m))

(cl:ensure-generic-function 'rear_right_mot_rpm-val :lambda-list '(m))
(cl:defmethod rear_right_mot_rpm-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_right_mot_rpm-val is deprecated.  Use endpoint_msgs-msg:rear_right_mot_rpm instead.")
  (rear_right_mot_rpm m))

(cl:ensure-generic-function 'rear_right_mot_rpm_valid-val :lambda-list '(m))
(cl:defmethod rear_right_mot_rpm_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_right_mot_rpm_valid-val is deprecated.  Use endpoint_msgs-msg:rear_right_mot_rpm_valid instead.")
  (rear_right_mot_rpm_valid m))

(cl:ensure-generic-function 'throttle_pedal_percent-val :lambda-list '(m))
(cl:defmethod throttle_pedal_percent-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_pedal_percent-val is deprecated.  Use endpoint_msgs-msg:throttle_pedal_percent instead.")
  (throttle_pedal_percent m))

(cl:ensure-generic-function 'throttle_pedal_rate-val :lambda-list '(m))
(cl:defmethod throttle_pedal_rate-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_pedal_rate-val is deprecated.  Use endpoint_msgs-msg:throttle_pedal_rate instead.")
  (throttle_pedal_rate m))

(cl:ensure-generic-function 'vehicle_speed_average-val :lambda-list '(m))
(cl:defmethod vehicle_speed_average-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_speed_average-val is deprecated.  Use endpoint_msgs-msg:vehicle_speed_average instead.")
  (vehicle_speed_average m))

(cl:ensure-generic-function 'vehicle_speed_average_valid-val :lambda-list '(m))
(cl:defmethod vehicle_speed_average_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_speed_average_valid-val is deprecated.  Use endpoint_msgs-msg:vehicle_speed_average_valid instead.")
  (vehicle_speed_average_valid m))

(cl:ensure-generic-function 'vehicle_mileage-val :lambda-list '(m))
(cl:defmethod vehicle_mileage-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_mileage-val is deprecated.  Use endpoint_msgs-msg:vehicle_mileage instead.")
  (vehicle_mileage m))

(cl:ensure-generic-function 'throttle_torque_delivery-val :lambda-list '(m))
(cl:defmethod throttle_torque_delivery-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_torque_delivery-val is deprecated.  Use endpoint_msgs-msg:throttle_torque_delivery instead.")
  (throttle_torque_delivery m))

(cl:ensure-generic-function 'throttle_torque_delivery_valid-val :lambda-list '(m))
(cl:defmethod throttle_torque_delivery_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_torque_delivery_valid-val is deprecated.  Use endpoint_msgs-msg:throttle_torque_delivery_valid instead.")
  (throttle_torque_delivery_valid m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pressure-val is deprecated.  Use endpoint_msgs-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'input_shaft_speed-val :lambda-list '(m))
(cl:defmethod input_shaft_speed-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:input_shaft_speed-val is deprecated.  Use endpoint_msgs-msg:input_shaft_speed instead.")
  (input_shaft_speed m))

(cl:ensure-generic-function 'output_shaft_speed-val :lambda-list '(m))
(cl:defmethod output_shaft_speed-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:output_shaft_speed-val is deprecated.  Use endpoint_msgs-msg:output_shaft_speed instead.")
  (output_shaft_speed m))

(cl:ensure-generic-function 'curr_transmission_gear-val :lambda-list '(m))
(cl:defmethod curr_transmission_gear-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:curr_transmission_gear-val is deprecated.  Use endpoint_msgs-msg:curr_transmission_gear instead.")
  (curr_transmission_gear m))

(cl:ensure-generic-function 'curr_gear_ration-val :lambda-list '(m))
(cl:defmethod curr_gear_ration-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:curr_gear_ration-val is deprecated.  Use endpoint_msgs-msg:curr_gear_ration instead.")
  (curr_gear_ration m))

(cl:ensure-generic-function 'input_shaft_speed_valid-val :lambda-list '(m))
(cl:defmethod input_shaft_speed_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:input_shaft_speed_valid-val is deprecated.  Use endpoint_msgs-msg:input_shaft_speed_valid instead.")
  (input_shaft_speed_valid m))

(cl:ensure-generic-function 'output_shaft_speed_valid-val :lambda-list '(m))
(cl:defmethod output_shaft_speed_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:output_shaft_speed_valid-val is deprecated.  Use endpoint_msgs-msg:output_shaft_speed_valid instead.")
  (output_shaft_speed_valid m))

(cl:ensure-generic-function 'curr_transmission_gear_valid-val :lambda-list '(m))
(cl:defmethod curr_transmission_gear_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:curr_transmission_gear_valid-val is deprecated.  Use endpoint_msgs-msg:curr_transmission_gear_valid instead.")
  (curr_transmission_gear_valid m))

(cl:ensure-generic-function 'curr_gear_ration_valid-val :lambda-list '(m))
(cl:defmethod curr_gear_ration_valid-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:curr_gear_ration_valid-val is deprecated.  Use endpoint_msgs-msg:curr_gear_ration_valid instead.")
  (curr_gear_ration_valid m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reserved1-val is deprecated.  Use endpoint_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <ThrottleInfoReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reserved2-val is deprecated.  Use endpoint_msgs-msg:reserved2 instead.")
  (reserved2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleInfoReportData>) ostream)
  "Serializes a message object of type '<ThrottleInfoReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_left_mot_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_left_mot_rpm_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_right_mot_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_right_mot_rpm_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_left_mot_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_left_mot_rpm_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_right_mot_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_right_mot_rpm_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_pedal_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_pedal_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_speed_average))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_speed_average_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_torque_delivery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'throttle_torque_delivery_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pressure) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'input_shaft_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'output_shaft_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'curr_transmission_gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curr_gear_ration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'input_shaft_speed_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output_shaft_speed_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'curr_transmission_gear_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'curr_gear_ration_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleInfoReportData>) istream)
  "Deserializes a message object of type '<ThrottleInfoReportData>"
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
    (cl:setf (cl:slot-value msg 'front_left_mot_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'front_left_mot_rpm_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_mot_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'front_right_mot_rpm_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_left_mot_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rear_left_mot_rpm_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_right_mot_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rear_right_mot_rpm_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_pedal_percent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_pedal_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_speed_average) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vehicle_speed_average_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_mileage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_torque_delivery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'throttle_torque_delivery_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pressure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'input_shaft_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_shaft_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'curr_transmission_gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curr_gear_ration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'input_shaft_speed_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'output_shaft_speed_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'curr_transmission_gear_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'curr_gear_ration_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleInfoReportData>)))
  "Returns string type for a message object of type '<ThrottleInfoReportData>"
  "endpoint_msgs/ThrottleInfoReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleInfoReportData)))
  "Returns string type for a message object of type 'ThrottleInfoReportData"
  "endpoint_msgs/ThrottleInfoReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleInfoReportData>)))
  "Returns md5sum for a message object of type '<ThrottleInfoReportData>"
  "585fc9da6858b598f65e3db3cfbda26e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleInfoReportData)))
  "Returns md5sum for a message object of type 'ThrottleInfoReportData"
  "585fc9da6858b598f65e3db3cfbda26e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleInfoReportData>)))
  "Returns full string definition for message of type '<ThrottleInfoReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%float32 front_left_mot_rpm~%bool front_left_mot_rpm_valid~%float32 front_right_mot_rpm~%bool front_right_mot_rpm_valid~%float32 rear_left_mot_rpm~%bool rear_left_mot_rpm_valid~%float32 rear_right_mot_rpm~%bool rear_right_mot_rpm_valid~%float32 throttle_pedal_percent~%float32 throttle_pedal_rate~%float32 vehicle_speed_average~%bool vehicle_speed_average_valid~%float32 vehicle_mileage~%float32 throttle_torque_delivery~%bool throttle_torque_delivery_valid~%bool pressure~%float32 input_shaft_speed~%float32 output_shaft_speed~%int8 curr_transmission_gear~%float32 curr_gear_ration~%bool input_shaft_speed_valid~%bool output_shaft_speed_valid~%bool curr_transmission_gear_valid~%bool curr_gear_ration_valid~%float32 reserved1~%float32 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleInfoReportData)))
  "Returns full string definition for message of type 'ThrottleInfoReportData"
  (cl:format cl:nil "uint64 timestamp_us~%float32 front_left_mot_rpm~%bool front_left_mot_rpm_valid~%float32 front_right_mot_rpm~%bool front_right_mot_rpm_valid~%float32 rear_left_mot_rpm~%bool rear_left_mot_rpm_valid~%float32 rear_right_mot_rpm~%bool rear_right_mot_rpm_valid~%float32 throttle_pedal_percent~%float32 throttle_pedal_rate~%float32 vehicle_speed_average~%bool vehicle_speed_average_valid~%float32 vehicle_mileage~%float32 throttle_torque_delivery~%bool throttle_torque_delivery_valid~%bool pressure~%float32 input_shaft_speed~%float32 output_shaft_speed~%int8 curr_transmission_gear~%float32 curr_gear_ration~%bool input_shaft_speed_valid~%bool output_shaft_speed_valid~%bool curr_transmission_gear_valid~%bool curr_gear_ration_valid~%float32 reserved1~%float32 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleInfoReportData>))
  (cl:+ 0
     8
     4
     1
     4
     1
     4
     1
     4
     1
     4
     4
     4
     1
     4
     4
     1
     1
     4
     4
     1
     4
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleInfoReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleInfoReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':front_left_mot_rpm (front_left_mot_rpm msg))
    (cl:cons ':front_left_mot_rpm_valid (front_left_mot_rpm_valid msg))
    (cl:cons ':front_right_mot_rpm (front_right_mot_rpm msg))
    (cl:cons ':front_right_mot_rpm_valid (front_right_mot_rpm_valid msg))
    (cl:cons ':rear_left_mot_rpm (rear_left_mot_rpm msg))
    (cl:cons ':rear_left_mot_rpm_valid (rear_left_mot_rpm_valid msg))
    (cl:cons ':rear_right_mot_rpm (rear_right_mot_rpm msg))
    (cl:cons ':rear_right_mot_rpm_valid (rear_right_mot_rpm_valid msg))
    (cl:cons ':throttle_pedal_percent (throttle_pedal_percent msg))
    (cl:cons ':throttle_pedal_rate (throttle_pedal_rate msg))
    (cl:cons ':vehicle_speed_average (vehicle_speed_average msg))
    (cl:cons ':vehicle_speed_average_valid (vehicle_speed_average_valid msg))
    (cl:cons ':vehicle_mileage (vehicle_mileage msg))
    (cl:cons ':throttle_torque_delivery (throttle_torque_delivery msg))
    (cl:cons ':throttle_torque_delivery_valid (throttle_torque_delivery_valid msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':input_shaft_speed (input_shaft_speed msg))
    (cl:cons ':output_shaft_speed (output_shaft_speed msg))
    (cl:cons ':curr_transmission_gear (curr_transmission_gear msg))
    (cl:cons ':curr_gear_ration (curr_gear_ration msg))
    (cl:cons ':input_shaft_speed_valid (input_shaft_speed_valid msg))
    (cl:cons ':output_shaft_speed_valid (output_shaft_speed_valid msg))
    (cl:cons ':curr_transmission_gear_valid (curr_transmission_gear_valid msg))
    (cl:cons ':curr_gear_ration_valid (curr_gear_ration_valid msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':reserved2 (reserved2 msg))
))
