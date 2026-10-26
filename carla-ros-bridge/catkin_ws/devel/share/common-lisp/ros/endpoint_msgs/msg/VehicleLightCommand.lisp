; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude VehicleLightCommand.msg.html

(cl:defclass <VehicleLightCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vehicle_light_command_data
    :reader vehicle_light_command_data
    :initarg :vehicle_light_command_data
    :type endpoint_msgs-msg:VehicleLightCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:VehicleLightCommandData)))
)

(cl:defclass VehicleLightCommand (<VehicleLightCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLightCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLightCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<VehicleLightCommand> is deprecated: use endpoint_msgs-msg:VehicleLightCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <VehicleLightCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vehicle_light_command_data-val :lambda-list '(m))
(cl:defmethod vehicle_light_command_data-val ((m <VehicleLightCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:vehicle_light_command_data-val is deprecated.  Use endpoint_msgs-msg:vehicle_light_command_data instead.")
  (vehicle_light_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLightCommand>)))
    "Constants for message type '<VehicleLightCommand>"
  '((:VEHICLE_LIGHT_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLightCommand)))
    "Constants for message type 'VehicleLightCommand"
  '((:VEHICLE_LIGHT_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLightCommand>) ostream)
  "Serializes a message object of type '<VehicleLightCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_light_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLightCommand>) istream)
  "Deserializes a message object of type '<VehicleLightCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_light_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLightCommand>)))
  "Returns string type for a message object of type '<VehicleLightCommand>"
  "endpoint_msgs/VehicleLightCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLightCommand)))
  "Returns string type for a message object of type 'VehicleLightCommand"
  "endpoint_msgs/VehicleLightCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLightCommand>)))
  "Returns md5sum for a message object of type '<VehicleLightCommand>"
  "fa46016dcab547655c996a6a4d1a3a9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLightCommand)))
  "Returns md5sum for a message object of type 'VehicleLightCommand"
  "fa46016dcab547655c996a6a4d1a3a9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLightCommand>)))
  "Returns full string definition for message of type '<VehicleLightCommand>"
  (cl:format cl:nil "uint8 VEHICLE_LIGHT_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/VehicleLightCommandData vehicle_light_command_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightCommandData~%uint64 timestamp_us~%bool light_enable~%endpoint_msgs/TurnSignal turn_signal~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLightCommand)))
  "Returns full string definition for message of type 'VehicleLightCommand"
  (cl:format cl:nil "uint8 VEHICLE_LIGHT_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/VehicleLightCommandData vehicle_light_command_data~%~%================================================================================~%MSG: endpoint_msgs/VehicleLightCommandData~%uint64 timestamp_us~%bool light_enable~%endpoint_msgs/TurnSignal turn_signal~%endpoint_msgs/FrontLightState front_light~%bool width_light~%bool reversing_light~%bool front_fog_light~%bool rear_fog_light~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/FrontLightState~%uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLightCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_light_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLightCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLightCommand
    (cl:cons ':available (available msg))
    (cl:cons ':vehicle_light_command_data (vehicle_light_command_data msg))
))
