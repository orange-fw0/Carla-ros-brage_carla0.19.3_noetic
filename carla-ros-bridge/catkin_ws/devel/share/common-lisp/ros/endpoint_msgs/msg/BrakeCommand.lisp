; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeCommand.msg.html

(cl:defclass <BrakeCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (brake_command_data
    :reader brake_command_data
    :initarg :brake_command_data
    :type endpoint_msgs-msg:BrakeCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeCommandData)))
)

(cl:defclass BrakeCommand (<BrakeCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeCommand> is deprecated: use endpoint_msgs-msg:BrakeCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <BrakeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'brake_command_data-val :lambda-list '(m))
(cl:defmethod brake_command_data-val ((m <BrakeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_command_data-val is deprecated.  Use endpoint_msgs-msg:brake_command_data instead.")
  (brake_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeCommand>)))
    "Constants for message type '<BrakeCommand>"
  '((:BRAKE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeCommand)))
    "Constants for message type 'BrakeCommand"
  '((:BRAKE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeCommand>) ostream)
  "Serializes a message object of type '<BrakeCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeCommand>) istream)
  "Deserializes a message object of type '<BrakeCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeCommand>)))
  "Returns string type for a message object of type '<BrakeCommand>"
  "endpoint_msgs/BrakeCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeCommand)))
  "Returns string type for a message object of type 'BrakeCommand"
  "endpoint_msgs/BrakeCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeCommand>)))
  "Returns md5sum for a message object of type '<BrakeCommand>"
  "06db64568b504b0dd22685d0e06d3223")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeCommand)))
  "Returns md5sum for a message object of type 'BrakeCommand"
  "06db64568b504b0dd22685d0e06d3223")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeCommand>)))
  "Returns full string definition for message of type '<BrakeCommand>"
  (cl:format cl:nil "uint8 BRAKE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/BrakeCommandData brake_command_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeCommandData~%uint64 timestamp_us~%bool brake_enable~%endpoint_msgs/BrakeType brake_type~%float32 brake_command~%endpoint_msgs/BrakeControlType brake_control_type~%endpoint_msgs/AccStandstillType brake_acc_standstill~%bool brake_acc_go~%bool epb_enable~%bool epb_command~%bool auto_hold_command~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeControlType~%uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AccStandstillType~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeCommand)))
  "Returns full string definition for message of type 'BrakeCommand"
  (cl:format cl:nil "uint8 BRAKE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/BrakeCommandData brake_command_data~%~%================================================================================~%MSG: endpoint_msgs/BrakeCommandData~%uint64 timestamp_us~%bool brake_enable~%endpoint_msgs/BrakeType brake_type~%float32 brake_command~%endpoint_msgs/BrakeControlType brake_control_type~%endpoint_msgs/AccStandstillType brake_acc_standstill~%bool brake_acc_go~%bool epb_enable~%bool epb_command~%bool auto_hold_command~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeControlType~%uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AccStandstillType~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeCommand
    (cl:cons ':available (available msg))
    (cl:cons ':brake_command_data (brake_command_data msg))
))
