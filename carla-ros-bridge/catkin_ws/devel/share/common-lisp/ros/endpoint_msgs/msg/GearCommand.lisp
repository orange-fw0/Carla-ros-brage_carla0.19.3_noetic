; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude GearCommand.msg.html

(cl:defclass <GearCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (gear_command_data
    :reader gear_command_data
    :initarg :gear_command_data
    :type endpoint_msgs-msg:GearCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:GearCommandData)))
)

(cl:defclass GearCommand (<GearCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<GearCommand> is deprecated: use endpoint_msgs-msg:GearCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <GearCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'gear_command_data-val :lambda-list '(m))
(cl:defmethod gear_command_data-val ((m <GearCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:gear_command_data-val is deprecated.  Use endpoint_msgs-msg:gear_command_data instead.")
  (gear_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GearCommand>)))
    "Constants for message type '<GearCommand>"
  '((:GEAR_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GearCommand)))
    "Constants for message type 'GearCommand"
  '((:GEAR_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearCommand>) ostream)
  "Serializes a message object of type '<GearCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearCommand>) istream)
  "Deserializes a message object of type '<GearCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearCommand>)))
  "Returns string type for a message object of type '<GearCommand>"
  "endpoint_msgs/GearCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearCommand)))
  "Returns string type for a message object of type 'GearCommand"
  "endpoint_msgs/GearCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearCommand>)))
  "Returns md5sum for a message object of type '<GearCommand>"
  "15582187c9de1557d187ccf881085401")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearCommand)))
  "Returns md5sum for a message object of type 'GearCommand"
  "15582187c9de1557d187ccf881085401")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearCommand>)))
  "Returns full string definition for message of type '<GearCommand>"
  (cl:format cl:nil "uint8 GEAR_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/GearCommandData gear_command_data~%~%================================================================================~%MSG: endpoint_msgs/GearCommandData~%uint64 timestamp_us~%bool gear_enable~%endpoint_msgs/Gear gear_type~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearCommand)))
  "Returns full string definition for message of type 'GearCommand"
  (cl:format cl:nil "uint8 GEAR_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/GearCommandData gear_command_data~%~%================================================================================~%MSG: endpoint_msgs/GearCommandData~%uint64 timestamp_us~%bool gear_enable~%endpoint_msgs/Gear gear_type~%~%================================================================================~%MSG: endpoint_msgs/Gear~%uint8 NONE = 0~%uint8 PARK = 1~%uint8 REVERSE = 2~%uint8 NEUTRAL = 3~%uint8 DRIVE = 4~%uint8 LOW = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'GearCommand
    (cl:cons ':available (available msg))
    (cl:cons ':gear_command_data (gear_command_data msg))
))
