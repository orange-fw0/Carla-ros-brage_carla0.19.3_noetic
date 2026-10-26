; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleAlarmReportData.msg.html

(cl:defclass <VehicleAlarmReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (seat_belt_alarm
    :reader seat_belt_alarm
    :initarg :seat_belt_alarm
    :type cl:boolean
    :initform cl:nil)
   (seat_belt_tightening
    :reader seat_belt_tightening
    :initarg :seat_belt_tightening
    :type cl:boolean
    :initform cl:nil)
   (steering_wheel_alarm
    :reader steering_wheel_alarm
    :initarg :steering_wheel_alarm
    :type cl:boolean
    :initform cl:nil)
   (buzzer_alarm
    :reader buzzer_alarm
    :initarg :buzzer_alarm
    :type cl:boolean
    :initform cl:nil)
   (steering_handoff
    :reader steering_handoff
    :initarg :steering_handoff
    :type endpoint_msgs-msg:HandOffStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:HandOffStatus))
   (feet_off
    :reader feet_off
    :initarg :feet_off
    :type endpoint_msgs-msg:FeetOffStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:FeetOffStatus))
   (pkg_fastswitch_enable
    :reader pkg_fastswitch_enable
    :initarg :pkg_fastswitch_enable
    :type cl:boolean
    :initform cl:nil)
   (tire_alarm
    :reader tire_alarm
    :initarg :tire_alarm
    :type cl:boolean
    :initform cl:nil)
   (vehicle_crash_status
    :reader vehicle_crash_status
    :initarg :vehicle_crash_status
    :type endpoint_msgs-msg:VehicleCrashStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleCrashStatus))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleAlarmReportData (<VehicleAlarmReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleAlarmReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleAlarmReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleAlarmReportData> is deprecated: use endpoint_msgs-msg:VehicleAlarmReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'seat_belt_alarm-val :lambda-list '(m))
(cl:defmethod seat_belt_alarm-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:seat_belt_alarm-val is deprecated.  Use endpoint_msgs-msg:seat_belt_alarm instead.")
  (seat_belt_alarm m))

(cl:ensure-generic-function 'seat_belt_tightening-val :lambda-list '(m))
(cl:defmethod seat_belt_tightening-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:seat_belt_tightening-val is deprecated.  Use endpoint_msgs-msg:seat_belt_tightening instead.")
  (seat_belt_tightening m))

(cl:ensure-generic-function 'steering_wheel_alarm-val :lambda-list '(m))
(cl:defmethod steering_wheel_alarm-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_wheel_alarm-val is deprecated.  Use endpoint_msgs-msg:steering_wheel_alarm instead.")
  (steering_wheel_alarm m))

(cl:ensure-generic-function 'buzzer_alarm-val :lambda-list '(m))
(cl:defmethod buzzer_alarm-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:buzzer_alarm-val is deprecated.  Use endpoint_msgs-msg:buzzer_alarm instead.")
  (buzzer_alarm m))

(cl:ensure-generic-function 'steering_handoff-val :lambda-list '(m))
(cl:defmethod steering_handoff-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:steering_handoff-val is deprecated.  Use endpoint_msgs-msg:steering_handoff instead.")
  (steering_handoff m))

(cl:ensure-generic-function 'feet_off-val :lambda-list '(m))
(cl:defmethod feet_off-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:feet_off-val is deprecated.  Use endpoint_msgs-msg:feet_off instead.")
  (feet_off m))

(cl:ensure-generic-function 'pkg_fastswitch_enable-val :lambda-list '(m))
(cl:defmethod pkg_fastswitch_enable-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pkg_fastswitch_enable-val is deprecated.  Use endpoint_msgs-msg:pkg_fastswitch_enable instead.")
  (pkg_fastswitch_enable m))

(cl:ensure-generic-function 'tire_alarm-val :lambda-list '(m))
(cl:defmethod tire_alarm-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:tire_alarm-val is deprecated.  Use endpoint_msgs-msg:tire_alarm instead.")
  (tire_alarm m))

(cl:ensure-generic-function 'vehicle_crash_status-val :lambda-list '(m))
(cl:defmethod vehicle_crash_status-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_crash_status-val is deprecated.  Use endpoint_msgs-msg:vehicle_crash_status instead.")
  (vehicle_crash_status m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <VehicleAlarmReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleAlarmReportData>) ostream)
  "Serializes a message object of type '<VehicleAlarmReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'seat_belt_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'seat_belt_tightening) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steering_wheel_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buzzer_alarm) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steering_handoff) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feet_off) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pkg_fastswitch_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tire_alarm) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_crash_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleAlarmReportData>) istream)
  "Deserializes a message object of type '<VehicleAlarmReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'seat_belt_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'seat_belt_tightening) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'steering_wheel_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buzzer_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steering_handoff) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feet_off) istream)
    (cl:setf (cl:slot-value msg 'pkg_fastswitch_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tire_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_crash_status) istream)
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleAlarmReportData>)))
  "Returns string type for a message object of type '<VehicleAlarmReportData>"
  "endpoint_msgs/VehicleAlarmReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleAlarmReportData)))
  "Returns string type for a message object of type 'VehicleAlarmReportData"
  "endpoint_msgs/VehicleAlarmReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleAlarmReportData>)))
  "Returns md5sum for a message object of type '<VehicleAlarmReportData>"
  "77614ad3f82aa7f64ccfd6a72883ce41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleAlarmReportData)))
  "Returns md5sum for a message object of type 'VehicleAlarmReportData"
  "77614ad3f82aa7f64ccfd6a72883ce41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleAlarmReportData>)))
  "Returns full string definition for message of type '<VehicleAlarmReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%endpoint_msgs/HandOffStatus steering_handoff~%endpoint_msgs/FeetOffStatus feet_off~%bool pkg_fastswitch_enable~%bool tire_alarm~%endpoint_msgs/VehicleCrashStatus vehicle_crash_status~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HandOffStatus~%uint8 HAND_OFF_STATUS_NONE = 0~%uint8 HAND_OFF_STATUS_TRUE = 1~%uint8 HAND_OFF_STATUS_FALSE = 2~%uint8 HAND_OFF_STATUS_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FeetOffStatus~%uint8 FEET_OFF_STATUS_NONE = 0~%uint8 FEET_OFF_STATUS_TRUE = 1~%uint8 FEET_OFF_STATUS_FALSE = 2~%uint8 FEET_OFF_STATUS_INVALUD = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleCrashStatus~%uint8 NONE = 0~%uint8 NO_CRASH = 1~%uint8 CRASH = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleAlarmReportData)))
  "Returns full string definition for message of type 'VehicleAlarmReportData"
  (cl:format cl:nil "uint64 timestamp_us~%bool seat_belt_alarm~%bool seat_belt_tightening~%bool steering_wheel_alarm~%bool buzzer_alarm~%endpoint_msgs/HandOffStatus steering_handoff~%endpoint_msgs/FeetOffStatus feet_off~%bool pkg_fastswitch_enable~%bool tire_alarm~%endpoint_msgs/VehicleCrashStatus vehicle_crash_status~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/HandOffStatus~%uint8 HAND_OFF_STATUS_NONE = 0~%uint8 HAND_OFF_STATUS_TRUE = 1~%uint8 HAND_OFF_STATUS_FALSE = 2~%uint8 HAND_OFF_STATUS_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FeetOffStatus~%uint8 FEET_OFF_STATUS_NONE = 0~%uint8 FEET_OFF_STATUS_TRUE = 1~%uint8 FEET_OFF_STATUS_FALSE = 2~%uint8 FEET_OFF_STATUS_INVALUD = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/VehicleCrashStatus~%uint8 NONE = 0~%uint8 NO_CRASH = 1~%uint8 CRASH = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleAlarmReportData>))
  (cl:+ 0
     8
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steering_handoff))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feet_off))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_crash_status))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleAlarmReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleAlarmReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':seat_belt_alarm (seat_belt_alarm msg))
    (cl:cons ':seat_belt_tightening (seat_belt_tightening msg))
    (cl:cons ':steering_wheel_alarm (steering_wheel_alarm msg))
    (cl:cons ':buzzer_alarm (buzzer_alarm msg))
    (cl:cons ':steering_handoff (steering_handoff msg))
    (cl:cons ':feet_off (feet_off msg))
    (cl:cons ':pkg_fastswitch_enable (pkg_fastswitch_enable msg))
    (cl:cons ':tire_alarm (tire_alarm msg))
    (cl:cons ':vehicle_crash_status (vehicle_crash_status msg))
    (cl:cons ':valid (valid msg))
))
