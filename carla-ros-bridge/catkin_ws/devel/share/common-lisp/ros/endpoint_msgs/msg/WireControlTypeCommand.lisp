; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WireControlTypeCommand.msg.html

(cl:defclass <WireControlTypeCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wire_control_command_data
    :reader wire_control_command_data
    :initarg :wire_control_command_data
    :type endpoint_msgs-msg:WireControlTypeCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:WireControlTypeCommandData)))
)

(cl:defclass WireControlTypeCommand (<WireControlTypeCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WireControlTypeCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WireControlTypeCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WireControlTypeCommand> is deprecated: use endpoint_msgs-msg:WireControlTypeCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WireControlTypeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wire_control_command_data-val :lambda-list '(m))
(cl:defmethod wire_control_command_data-val ((m <WireControlTypeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wire_control_command_data-val is deprecated.  Use endpoint_msgs-msg:wire_control_command_data instead.")
  (wire_control_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WireControlTypeCommand>)))
    "Constants for message type '<WireControlTypeCommand>"
  '((:WIRE_CONTROL_TYPE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WireControlTypeCommand)))
    "Constants for message type 'WireControlTypeCommand"
  '((:WIRE_CONTROL_TYPE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WireControlTypeCommand>) ostream)
  "Serializes a message object of type '<WireControlTypeCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wire_control_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WireControlTypeCommand>) istream)
  "Deserializes a message object of type '<WireControlTypeCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wire_control_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WireControlTypeCommand>)))
  "Returns string type for a message object of type '<WireControlTypeCommand>"
  "endpoint_msgs/WireControlTypeCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WireControlTypeCommand)))
  "Returns string type for a message object of type 'WireControlTypeCommand"
  "endpoint_msgs/WireControlTypeCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WireControlTypeCommand>)))
  "Returns md5sum for a message object of type '<WireControlTypeCommand>"
  "8feecdf63f47b53b2d0bd3053eca8d62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WireControlTypeCommand)))
  "Returns md5sum for a message object of type 'WireControlTypeCommand"
  "8feecdf63f47b53b2d0bd3053eca8d62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WireControlTypeCommand>)))
  "Returns full string definition for message of type '<WireControlTypeCommand>"
  (cl:format cl:nil "uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WireControlTypeCommandData wire_control_command_data~%~%================================================================================~%MSG: endpoint_msgs/WireControlTypeCommandData~%uint64 timestamp_us~%endpoint_msgs/WireControlType wire_type~%~%================================================================================~%MSG: endpoint_msgs/WireControlType~%uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WireControlTypeCommand)))
  "Returns full string definition for message of type 'WireControlTypeCommand"
  (cl:format cl:nil "uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/WireControlTypeCommandData wire_control_command_data~%~%================================================================================~%MSG: endpoint_msgs/WireControlTypeCommandData~%uint64 timestamp_us~%endpoint_msgs/WireControlType wire_type~%~%================================================================================~%MSG: endpoint_msgs/WireControlType~%uint8 SYETEM_REQ_NONE = 0~%uint8 SYSTEM_REQ_PILOT = 1~%uint8 SYSTEM_REQ_APA = 2~%uint8 SYSTEM_REQ_ACC = 3~%uint8 SYSTEM_REQ_AVP = 4~%uint8 SYSTEM_REQ_LVP = 5~%uint8 SYSTEM_REQ_MRC = 6~%uint8 RESERVED = 7~%uint8 wire_control_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WireControlTypeCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wire_control_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WireControlTypeCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'WireControlTypeCommand
    (cl:cons ':available (available msg))
    (cl:cons ':wire_control_command_data (wire_control_command_data msg))
))
