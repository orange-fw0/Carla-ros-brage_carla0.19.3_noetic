; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ThrottleReportData.msg.html

(cl:defclass <ThrottleReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type endpoint_msgs-msg:ThrottleType
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleType))
   (driver_work_type
    :reader driver_work_type
    :initarg :driver_work_type
    :type endpoint_msgs-msg:WorkType
    :initform (cl:make-instance 'endpoint_msgs-msg:WorkType))
   (pedal_input
    :reader pedal_input
    :initarg :pedal_input
    :type cl:float
    :initform 0.0)
   (command
    :reader command
    :initarg :command
    :type cl:float
    :initform 0.0)
   (throttle_output
    :reader throttle_output
    :initarg :throttle_output
    :type cl:float
    :initform 0.0)
   (override
    :reader override
    :initarg :override
    :type cl:boolean
    :initform cl:nil)
   (vcu_max_neg_torque
    :reader vcu_max_neg_torque
    :initarg :vcu_max_neg_torque
    :type cl:float
    :initform 0.0)
   (vcu_max_pos_torque
    :reader vcu_max_pos_torque
    :initarg :vcu_max_pos_torque
    :type cl:float
    :initform 0.0)
   (vcu_max_neg_torque_valid
    :reader vcu_max_neg_torque_valid
    :initarg :vcu_max_neg_torque_valid
    :type cl:boolean
    :initform cl:nil)
   (vcu_max_pos_torque_valid
    :reader vcu_max_pos_torque_valid
    :initarg :vcu_max_pos_torque_valid
    :type cl:boolean
    :initform cl:nil)
   (vcu_exec_throttle_torque
    :reader vcu_exec_throttle_torque
    :initarg :vcu_exec_throttle_torque
    :type cl:float
    :initform 0.0)
   (vcu_exec_throttle_torque_valid
    :reader vcu_exec_throttle_torque_valid
    :initarg :vcu_exec_throttle_torque_valid
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

(cl:defclass ThrottleReportData (<ThrottleReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ThrottleReportData> is deprecated: use endpoint_msgs-msg:ThrottleReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:type-val is deprecated.  Use endpoint_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'driver_work_type-val :lambda-list '(m))
(cl:defmethod driver_work_type-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:driver_work_type-val is deprecated.  Use endpoint_msgs-msg:driver_work_type instead.")
  (driver_work_type m))

(cl:ensure-generic-function 'pedal_input-val :lambda-list '(m))
(cl:defmethod pedal_input-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:pedal_input-val is deprecated.  Use endpoint_msgs-msg:pedal_input instead.")
  (pedal_input m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:command-val is deprecated.  Use endpoint_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'throttle_output-val :lambda-list '(m))
(cl:defmethod throttle_output-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_output-val is deprecated.  Use endpoint_msgs-msg:throttle_output instead.")
  (throttle_output m))

(cl:ensure-generic-function 'override-val :lambda-list '(m))
(cl:defmethod override-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:override-val is deprecated.  Use endpoint_msgs-msg:override instead.")
  (override m))

(cl:ensure-generic-function 'vcu_max_neg_torque-val :lambda-list '(m))
(cl:defmethod vcu_max_neg_torque-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vcu_max_neg_torque-val is deprecated.  Use endpoint_msgs-msg:vcu_max_neg_torque instead.")
  (vcu_max_neg_torque m))

(cl:ensure-generic-function 'vcu_max_pos_torque-val :lambda-list '(m))
(cl:defmethod vcu_max_pos_torque-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vcu_max_pos_torque-val is deprecated.  Use endpoint_msgs-msg:vcu_max_pos_torque instead.")
  (vcu_max_pos_torque m))

(cl:ensure-generic-function 'vcu_max_neg_torque_valid-val :lambda-list '(m))
(cl:defmethod vcu_max_neg_torque_valid-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vcu_max_neg_torque_valid-val is deprecated.  Use endpoint_msgs-msg:vcu_max_neg_torque_valid instead.")
  (vcu_max_neg_torque_valid m))

(cl:ensure-generic-function 'vcu_max_pos_torque_valid-val :lambda-list '(m))
(cl:defmethod vcu_max_pos_torque_valid-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vcu_max_pos_torque_valid-val is deprecated.  Use endpoint_msgs-msg:vcu_max_pos_torque_valid instead.")
  (vcu_max_pos_torque_valid m))

(cl:ensure-generic-function 'vcu_exec_throttle_torque-val :lambda-list '(m))
(cl:defmethod vcu_exec_throttle_torque-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vcu_exec_throttle_torque-val is deprecated.  Use endpoint_msgs-msg:vcu_exec_throttle_torque instead.")
  (vcu_exec_throttle_torque m))

(cl:ensure-generic-function 'vcu_exec_throttle_torque_valid-val :lambda-list '(m))
(cl:defmethod vcu_exec_throttle_torque_valid-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vcu_exec_throttle_torque_valid-val is deprecated.  Use endpoint_msgs-msg:vcu_exec_throttle_torque_valid instead.")
  (vcu_exec_throttle_torque_valid m))

(cl:ensure-generic-function 'ready-val :lambda-list '(m))
(cl:defmethod ready-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:ready-val is deprecated.  Use endpoint_msgs-msg:ready instead.")
  (ready m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <ThrottleReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleReportData>) ostream)
  "Serializes a message object of type '<ThrottleReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver_work_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pedal_input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vcu_max_neg_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vcu_max_pos_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vcu_max_neg_torque_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vcu_max_pos_torque_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vcu_exec_throttle_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vcu_exec_throttle_torque_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleReportData>) istream)
  "Deserializes a message object of type '<ThrottleReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver_work_type) istream)
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
    (cl:setf (cl:slot-value msg 'command) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_output) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vcu_max_neg_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vcu_max_pos_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vcu_max_neg_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vcu_max_pos_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vcu_exec_throttle_torque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'vcu_exec_throttle_torque_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleReportData>)))
  "Returns string type for a message object of type '<ThrottleReportData>"
  "endpoint_msgs/ThrottleReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleReportData)))
  "Returns string type for a message object of type 'ThrottleReportData"
  "endpoint_msgs/ThrottleReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleReportData>)))
  "Returns md5sum for a message object of type '<ThrottleReportData>"
  "49ebd9dca1e8f74993b8da2ab73bd493")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleReportData)))
  "Returns md5sum for a message object of type 'ThrottleReportData"
  "49ebd9dca1e8f74993b8da2ab73bd493")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleReportData>)))
  "Returns full string definition for message of type '<ThrottleReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/ThrottleType type~%endpoint_msgs/WorkType driver_work_type~%float32 pedal_input~%float32 command~%float32 throttle_output~%bool override~%float32 vcu_max_neg_torque~%float32 vcu_max_pos_torque~%bool vcu_max_neg_torque_valid~%bool vcu_max_pos_torque_valid~%float32 vcu_exec_throttle_torque~%bool vcu_exec_throttle_torque_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleReportData)))
  "Returns full string definition for message of type 'ThrottleReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/ThrottleType type~%endpoint_msgs/WorkType driver_work_type~%float32 pedal_input~%float32 command~%float32 throttle_output~%bool override~%float32 vcu_max_neg_torque~%float32 vcu_max_pos_torque~%bool vcu_max_neg_torque_valid~%bool vcu_max_pos_torque_valid~%float32 vcu_exec_throttle_torque~%bool vcu_exec_throttle_torque_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver_work_type))
     4
     4
     4
     1
     4
     4
     1
     1
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':type (type msg))
    (cl:cons ':driver_work_type (driver_work_type msg))
    (cl:cons ':pedal_input (pedal_input msg))
    (cl:cons ':command (command msg))
    (cl:cons ':throttle_output (throttle_output msg))
    (cl:cons ':override (override msg))
    (cl:cons ':vcu_max_neg_torque (vcu_max_neg_torque msg))
    (cl:cons ':vcu_max_pos_torque (vcu_max_pos_torque msg))
    (cl:cons ':vcu_max_neg_torque_valid (vcu_max_neg_torque_valid msg))
    (cl:cons ':vcu_max_pos_torque_valid (vcu_max_pos_torque_valid msg))
    (cl:cons ':vcu_exec_throttle_torque (vcu_exec_throttle_torque msg))
    (cl:cons ':vcu_exec_throttle_torque_valid (vcu_exec_throttle_torque_valid msg))
    (cl:cons ':ready (ready msg))
    (cl:cons ':valid (valid msg))
))
