; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeReportData.msg.html

(cl:defclass <BrakeReportData> (roslisp-msg-protocol:ros-message)
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
   (brake_type
    :reader brake_type
    :initarg :brake_type
    :type endpoint_msgs-msg:BrakeType
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeType))
   (pedal_input
    :reader pedal_input
    :initarg :pedal_input
    :type cl:float
    :initform 0.0)
   (brake_command
    :reader brake_command
    :initarg :brake_command
    :type cl:float
    :initform 0.0)
   (brake_output
    :reader brake_output
    :initarg :brake_output
    :type cl:float
    :initform 0.0)
   (override
    :reader override
    :initarg :override
    :type cl:boolean
    :initform cl:nil)
   (ahb_exec_brake_force
    :reader ahb_exec_brake_force
    :initarg :ahb_exec_brake_force
    :type cl:float
    :initform 0.0)
   (ahb_exec_brake_force_valid
    :reader ahb_exec_brake_force_valid
    :initarg :ahb_exec_brake_force_valid
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass BrakeReportData (<BrakeReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeReportData> is deprecated: use endpoint_msgs-msg:BrakeReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'driver_work_type-val :lambda-list '(m))
(cl:defmethod driver_work_type-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:driver_work_type-val is deprecated.  Use endpoint_msgs-msg:driver_work_type instead.")
  (driver_work_type m))

(cl:ensure-generic-function 'brake_type-val :lambda-list '(m))
(cl:defmethod brake_type-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_type-val is deprecated.  Use endpoint_msgs-msg:brake_type instead.")
  (brake_type m))

(cl:ensure-generic-function 'pedal_input-val :lambda-list '(m))
(cl:defmethod pedal_input-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pedal_input-val is deprecated.  Use endpoint_msgs-msg:pedal_input instead.")
  (pedal_input m))

(cl:ensure-generic-function 'brake_command-val :lambda-list '(m))
(cl:defmethod brake_command-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_command-val is deprecated.  Use endpoint_msgs-msg:brake_command instead.")
  (brake_command m))

(cl:ensure-generic-function 'brake_output-val :lambda-list '(m))
(cl:defmethod brake_output-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_output-val is deprecated.  Use endpoint_msgs-msg:brake_output instead.")
  (brake_output m))

(cl:ensure-generic-function 'override-val :lambda-list '(m))
(cl:defmethod override-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:override-val is deprecated.  Use endpoint_msgs-msg:override instead.")
  (override m))

(cl:ensure-generic-function 'ahb_exec_brake_force-val :lambda-list '(m))
(cl:defmethod ahb_exec_brake_force-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ahb_exec_brake_force-val is deprecated.  Use endpoint_msgs-msg:ahb_exec_brake_force instead.")
  (ahb_exec_brake_force m))

(cl:ensure-generic-function 'ahb_exec_brake_force_valid-val :lambda-list '(m))
(cl:defmethod ahb_exec_brake_force_valid-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ahb_exec_brake_force_valid-val is deprecated.  Use endpoint_msgs-msg:ahb_exec_brake_force_valid instead.")
  (ahb_exec_brake_force_valid m))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ready-val is deprecated.  Use endpoint_msgs-msg:ready instead.")
  (ready m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <BrakeReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeReportData>) ostream)
  "Serializes a message object of type '<BrakeReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver_work_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pedal_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ahb_exec_brake_force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ahb_exec_brake_force_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeReportData>) istream)
  "Deserializes a message object of type '<BrakeReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver_work_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pedal_input) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_command) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_output) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ahb_exec_brake_force) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'ahb_exec_brake_force_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeReportData>)))
  "Returns string type for a message object of type '<BrakeReportData>"
  "endpoint_msgs/BrakeReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeReportData)))
  "Returns string type for a message object of type 'BrakeReportData"
  "endpoint_msgs/BrakeReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeReportData>)))
  "Returns md5sum for a message object of type '<BrakeReportData>"
  "bf668966e40d0ee16cd0a310cbbab49e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeReportData)))
  "Returns md5sum for a message object of type 'BrakeReportData"
  "bf668966e40d0ee16cd0a310cbbab49e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeReportData>)))
  "Returns full string definition for message of type '<BrakeReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/BrakeType brake_type~%float32 pedal_input~%float32 brake_command~%float32 brake_output~%bool override~%float32 ahb_exec_brake_force~%bool ahb_exec_brake_force_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeReportData)))
  "Returns full string definition for message of type 'BrakeReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/BrakeType brake_type~%float32 pedal_input~%float32 brake_command~%float32 brake_output~%bool override~%float32 ahb_exec_brake_force~%bool ahb_exec_brake_force_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver_work_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_type))
     4
     4
     4
     1
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':driver_work_type (driver_work_type msg))
    (cl:cons ':brake_type (brake_type msg))
    (cl:cons ':pedal_input (pedal_input msg))
    (cl:cons ':brake_command (brake_command msg))
    (cl:cons ':brake_output (brake_output msg))
    (cl:cons ':override (override msg))
    (cl:cons ':ahb_exec_brake_force (ahb_exec_brake_force msg))
    (cl:cons ':ahb_exec_brake_force_valid (ahb_exec_brake_force_valid msg))
    (cl:cons ':ready (ready msg))
    (cl:cons ':valid (valid msg))
))
