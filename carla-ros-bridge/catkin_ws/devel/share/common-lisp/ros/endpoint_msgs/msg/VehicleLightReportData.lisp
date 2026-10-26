; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleLightReportData.msg.html

(cl:defclass <VehicleLightReportData> (roslisp-msg-protocol:ros-message)
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
   (turn_signal_type
    :reader turn_signal_type
    :initarg :turn_signal_type
    :type endpoint_msgs-msg:TurnSignal
    :initform (cl:make-instance 'endpoint_msgs-msg:TurnSignal))
   (front_light
    :reader front_light
    :initarg :front_light
    :type endpoint_msgs-msg:FrontLightState
    :initform (cl:make-instance 'endpoint_msgs-msg:FrontLightState))
   (width_light
    :reader width_light
    :initarg :width_light
    :type cl:boolean
    :initform cl:nil)
   (reversing_light
    :reader reversing_light
    :initarg :reversing_light
    :type cl:boolean
    :initform cl:nil)
   (front_fog_light
    :reader front_fog_light
    :initarg :front_fog_light
    :type cl:boolean
    :initform cl:nil)
   (rear_fog_light
    :reader rear_fog_light
    :initarg :rear_fog_light
    :type cl:boolean
    :initform cl:nil)
   (lever_state
    :reader lever_state
    :initarg :lever_state
    :type endpoint_msgs-msg:LeverStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:LeverStatus))
   (position_light_status
    :reader position_light_status
    :initarg :position_light_status
    :type cl:boolean
    :initform cl:nil)
   (brake_light
    :reader brake_light
    :initarg :brake_light
    :type endpoint_msgs-msg:BrakeLightStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeLightStatus))
   (lever_type
    :reader lever_type
    :initarg :lever_type
    :type endpoint_msgs-msg:LeverType
    :initform (cl:make-instance 'endpoint_msgs-msg:LeverType))
   (auto_light_ctrl_state
    :reader auto_light_ctrl_state
    :initarg :auto_light_ctrl_state
    :type cl:boolean
    :initform cl:nil)
   (light_mode_status
    :reader light_mode_status
    :initarg :light_mode_status
    :type endpoint_msgs-msg:LightModeState
    :initform (cl:make-instance 'endpoint_msgs-msg:LightModeState))
   (front_light_switch_state
    :reader front_light_switch_state
    :initarg :front_light_switch_state
    :type endpoint_msgs-msg:FrontLightSwitchState
    :initform (cl:make-instance 'endpoint_msgs-msg:FrontLightSwitchState))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleLightReportData (<VehicleLightReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLightReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLightReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleLightReportData> is deprecated: use endpoint_msgs-msg:VehicleLightReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'driver_work_type-val :lambda-list '(m))
(cl:defmethod driver_work_type-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:driver_work_type-val is deprecated.  Use endpoint_msgs-msg:driver_work_type instead.")
  (driver_work_type m))

(cl:ensure-generic-function 'turn_signal_type-val :lambda-list '(m))
(cl:defmethod turn_signal_type-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:turn_signal_type-val is deprecated.  Use endpoint_msgs-msg:turn_signal_type instead.")
  (turn_signal_type m))

(cl:ensure-generic-function 'front_light-val :lambda-list '(m))
(cl:defmethod front_light-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_light-val is deprecated.  Use endpoint_msgs-msg:front_light instead.")
  (front_light m))

(cl:ensure-generic-function 'width_light-val :lambda-list '(m))
(cl:defmethod width_light-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:width_light-val is deprecated.  Use endpoint_msgs-msg:width_light instead.")
  (width_light m))

(cl:ensure-generic-function 'reversing_light-val :lambda-list '(m))
(cl:defmethod reversing_light-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reversing_light-val is deprecated.  Use endpoint_msgs-msg:reversing_light instead.")
  (reversing_light m))

(cl:ensure-generic-function 'front_fog_light-val :lambda-list '(m))
(cl:defmethod front_fog_light-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_fog_light-val is deprecated.  Use endpoint_msgs-msg:front_fog_light instead.")
  (front_fog_light m))

(cl:ensure-generic-function 'rear_fog_light-val :lambda-list '(m))
(cl:defmethod rear_fog_light-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_fog_light-val is deprecated.  Use endpoint_msgs-msg:rear_fog_light instead.")
  (rear_fog_light m))

(cl:ensure-generic-function 'lever_state-val :lambda-list '(m))
(cl:defmethod lever_state-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:lever_state-val is deprecated.  Use endpoint_msgs-msg:lever_state instead.")
  (lever_state m))

(cl:ensure-generic-function 'position_light_status-val :lambda-list '(m))
(cl:defmethod position_light_status-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:position_light_status-val is deprecated.  Use endpoint_msgs-msg:position_light_status instead.")
  (position_light_status m))

(cl:ensure-generic-function 'brake_light-val :lambda-list '(m))
(cl:defmethod brake_light-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_light-val is deprecated.  Use endpoint_msgs-msg:brake_light instead.")
  (brake_light m))

(cl:ensure-generic-function 'lever_type-val :lambda-list '(m))
(cl:defmethod lever_type-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:lever_type-val is deprecated.  Use endpoint_msgs-msg:lever_type instead.")
  (lever_type m))

(cl:ensure-generic-function 'auto_light_ctrl_state-val :lambda-list '(m))
(cl:defmethod auto_light_ctrl_state-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:auto_light_ctrl_state-val is deprecated.  Use endpoint_msgs-msg:auto_light_ctrl_state instead.")
  (auto_light_ctrl_state m))

(cl:ensure-generic-function 'light_mode_status-val :lambda-list '(m))
(cl:defmethod light_mode_status-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:light_mode_status-val is deprecated.  Use endpoint_msgs-msg:light_mode_status instead.")
  (light_mode_status m))

(cl:ensure-generic-function 'front_light_switch_state-val :lambda-list '(m))
(cl:defmethod front_light_switch_state-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_light_switch_state-val is deprecated.  Use endpoint_msgs-msg:front_light_switch_state instead.")
  (front_light_switch_state m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <VehicleLightReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLightReportData>) ostream)
  "Serializes a message object of type '<VehicleLightReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver_work_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_light) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'width_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reversing_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_fog_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_fog_light) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lever_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_light_status) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_light) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lever_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_light_ctrl_state) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'light_mode_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_light_switch_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLightReportData>) istream)
  "Deserializes a message object of type '<VehicleLightReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver_work_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_light) istream)
    (cl:setf (cl:slot-value msg 'width_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reversing_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_fog_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_fog_light) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lever_state) istream)
    (cl:setf (cl:slot-value msg 'position_light_status) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_light) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lever_type) istream)
    (cl:setf (cl:slot-value msg 'auto_light_ctrl_state) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'light_mode_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_light_switch_state) istream)
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLightReportData>)))
  "Returns string type for a message object of type '<VehicleLightReportData>"
  "endpoint_msgs/VehicleLightReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLightReportData)))
  "Returns string type for a message object of type 'VehicleLightReportData"
  "endpoint_msgs/VehicleLightReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLightReportData>)))
  "Returns md5sum for a message object of type '<VehicleLightReportData>"
  "a2aff46d4a50d3f8495bd5d2edf45ed3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLightReportData)))
  "Returns md5sum for a message object of type 'VehicleLightReportData"
  "a2aff46d4a50d3f8495bd5d2edf45ed3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLightReportData>)))
  "Returns full string definition for message of type '<VehicleLightReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/TurnSignal turn_signal_type~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%endpoint_msgs/LeverStatus lever_state~%bool position_light_status~%endpoint_msgs/BrakeLightStatus brake_light~%endpoint_msgs/LeverType lever_type~%bool auto_light_ctrl_state~%endpoint_msgs/LightModeState light_mode_status~%endpoint_msgs/FrontLightSwitchState front_light_switch_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverStatus~%uint8 LEVER_STATE_OFF = 0~%uint8 LEVER_STATE_LEFT = 1~%uint8 LEVER_STATE_RIGHT = 2~%uint8 LEVER_STATE_LEFT_INVALID = 3~%uint8 LEVER_STATE_RIGHT_INVALID = 4~%uint8 LEVER_STATE_LEFT_LIGHT = 5~%uint8 LEVER_STATE_RIGHT_LIGHT = 6~%uint8 LEVER_STATE_RESERVED1 = 7~%uint8 LEVER_STATE_RESERVED3 = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeLightStatus~%uint8 BRAKE_LIGHT_NONE = 0~%uint8 BRAKE_LIGHT_OFF = 1~%uint8 BRAKE_LIGHT_ON = 2~%uint8 BRAKE_LIGHT_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverType~%uint8 LEVER_TYPE_MECHANICAL = 0~%uint8 LEVER_TYPE_ELECTRONIC = 1~%uint8 LEVER_STATE_RESERVED1 = 2~%uint8 LEVER_STATE_RESERVED2 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LightModeState~%uint8 LIGHT_OFF = 0~%uint8 LIGHT_AUTO = 1~%uint8 LIGHT_LOW_BEAM = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightSwitchState~%uint8 FRONT_LIGHT_OFF = 0~%uint8 FRONT_LIGHT_LOW = 1~%uint8 FRONT_LIGHT_HIGH = 2~%uint8 FRONT_LIGHT_FLASH = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLightReportData)))
  "Returns full string definition for message of type 'VehicleLightReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/TurnSignal turn_signal_type~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%endpoint_msgs/LeverStatus lever_state~%bool position_light_status~%endpoint_msgs/BrakeLightStatus brake_light~%endpoint_msgs/LeverType lever_type~%bool auto_light_ctrl_state~%endpoint_msgs/LightModeState light_mode_status~%endpoint_msgs/FrontLightSwitchState front_light_switch_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverStatus~%uint8 LEVER_STATE_OFF = 0~%uint8 LEVER_STATE_LEFT = 1~%uint8 LEVER_STATE_RIGHT = 2~%uint8 LEVER_STATE_LEFT_INVALID = 3~%uint8 LEVER_STATE_RIGHT_INVALID = 4~%uint8 LEVER_STATE_LEFT_LIGHT = 5~%uint8 LEVER_STATE_RIGHT_LIGHT = 6~%uint8 LEVER_STATE_RESERVED1 = 7~%uint8 LEVER_STATE_RESERVED3 = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeLightStatus~%uint8 BRAKE_LIGHT_NONE = 0~%uint8 BRAKE_LIGHT_OFF = 1~%uint8 BRAKE_LIGHT_ON = 2~%uint8 BRAKE_LIGHT_INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LeverType~%uint8 LEVER_TYPE_MECHANICAL = 0~%uint8 LEVER_TYPE_ELECTRONIC = 1~%uint8 LEVER_STATE_RESERVED1 = 2~%uint8 LEVER_STATE_RESERVED2 = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/LightModeState~%uint8 LIGHT_OFF = 0~%uint8 LIGHT_AUTO = 1~%uint8 LIGHT_LOW_BEAM = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightSwitchState~%uint8 FRONT_LIGHT_OFF = 0~%uint8 FRONT_LIGHT_LOW = 1~%uint8 FRONT_LIGHT_HIGH = 2~%uint8 FRONT_LIGHT_FLASH = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLightReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver_work_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_light))
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lever_state))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_light))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lever_type))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'light_mode_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_light_switch_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLightReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLightReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':driver_work_type (driver_work_type msg))
    (cl:cons ':turn_signal_type (turn_signal_type msg))
    (cl:cons ':front_light (front_light msg))
    (cl:cons ':width_light (width_light msg))
    (cl:cons ':reversing_light (reversing_light msg))
    (cl:cons ':front_fog_light (front_fog_light msg))
    (cl:cons ':rear_fog_light (rear_fog_light msg))
    (cl:cons ':lever_state (lever_state msg))
    (cl:cons ':position_light_status (position_light_status msg))
    (cl:cons ':brake_light (brake_light msg))
    (cl:cons ':lever_type (lever_type msg))
    (cl:cons ':auto_light_ctrl_state (auto_light_ctrl_state msg))
    (cl:cons ':light_mode_status (light_mode_status msg))
    (cl:cons ':front_light_switch_state (front_light_switch_state msg))
    (cl:cons ':valid (valid msg))
))
