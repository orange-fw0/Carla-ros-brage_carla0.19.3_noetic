; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude GearReportData.msg.html

(cl:defclass <GearReportData> (roslisp-msg-protocol:ros-message)
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
   (command
    :reader command
    :initarg :command
    :type endpoint_msgs-msg:Gear
    :initform (cl:make-instance 'endpoint_msgs-msg:Gear))
   (current_state
    :reader current_state
    :initarg :current_state
    :type endpoint_msgs-msg:Gear
    :initform (cl:make-instance 'endpoint_msgs-msg:Gear))
   (reject
    :reader reject
    :initarg :reject
    :type endpoint_msgs-msg:GearReject
    :initform (cl:make-instance 'endpoint_msgs-msg:GearReject))
   (override
    :reader override
    :initarg :override
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

(cl:defclass GearReportData (<GearReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<GearReportData> is deprecated: use endpoint_msgs-msg:GearReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'driver_work_type-val :lambda-list '(m))
(cl:defmethod driver_work_type-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:driver_work_type-val is deprecated.  Use endpoint_msgs-msg:driver_work_type instead.")
  (driver_work_type m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:command-val is deprecated.  Use endpoint_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:current_state-val is deprecated.  Use endpoint_msgs-msg:current_state instead.")
  (current_state m))

(cl:ensure-generic-function 'reject-val :lambda-list '(m))
(cl:defmethod reject-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reject-val is deprecated.  Use endpoint_msgs-msg:reject instead.")
  (reject m))

(cl:ensure-generic-function 'override-val :lambda-list '(m))
(cl:defmethod override-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:override-val is deprecated.  Use endpoint_msgs-msg:override instead.")
  (override m))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ready-val is deprecated.  Use endpoint_msgs-msg:ready instead.")
  (ready m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <GearReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearReportData>) ostream)
  "Serializes a message object of type '<GearReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver_work_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reject) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearReportData>) istream)
  "Deserializes a message object of type '<GearReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver_work_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reject) istream)
    (cl:setf (cl:slot-value msg 'override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearReportData>)))
  "Returns string type for a message object of type '<GearReportData>"
  "endpoint_msgs/GearReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearReportData)))
  "Returns string type for a message object of type 'GearReportData"
  "endpoint_msgs/GearReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearReportData>)))
  "Returns md5sum for a message object of type '<GearReportData>"
  "5cc81e97017d51ec84b6f8c273bed9fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearReportData)))
  "Returns md5sum for a message object of type 'GearReportData"
  "5cc81e97017d51ec84b6f8c273bed9fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearReportData>)))
  "Returns full string definition for message of type '<GearReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/Gear command~%endpoint_msgs/Gear current_state~%endpoint_msgs/GearReject reject~%bool override~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReject~%uint8 NONE = 0~%uint8 SHIFT_IN_PROGRESS = 1~%uint8 OVERRIDE = 2~%uint8 ROTARY_LOW = 3~%uint8 ROTARY_PARK = 4~%uint8 VEHICLE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearReportData)))
  "Returns full string definition for message of type 'GearReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/Gear command~%endpoint_msgs/Gear current_state~%endpoint_msgs/GearReject reject~%bool override~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/GearReject~%uint8 NONE = 0~%uint8 SHIFT_IN_PROGRESS = 1~%uint8 OVERRIDE = 2~%uint8 ROTARY_LOW = 3~%uint8 ROTARY_PARK = 4~%uint8 VEHICLE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver_work_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reject))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'GearReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':driver_work_type (driver_work_type msg))
    (cl:cons ':command (command msg))
    (cl:cons ':current_state (current_state msg))
    (cl:cons ':reject (reject msg))
    (cl:cons ':override (override msg))
    (cl:cons ':ready (ready msg))
    (cl:cons ':valid (valid msg))
))
