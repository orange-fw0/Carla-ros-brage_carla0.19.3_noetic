; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AcceCommand.msg.html

(cl:defclass <AcceCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (acce_command_data
    :reader acce_command_data
    :initarg :acce_command_data
    :type endpoint_msgs-msg:AcceCommandData
    :initform (cl:make-instance 'endpoint_msgs-msg:AcceCommandData)))
)

(cl:defclass AcceCommand (<AcceCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcceCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcceCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AcceCommand> is deprecated: use endpoint_msgs-msg:AcceCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AcceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'acce_command_data-val :lambda-list '(m))
(cl:defmethod acce_command_data-val ((m <AcceCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:acce_command_data-val is deprecated.  Use endpoint_msgs-msg:acce_command_data instead.")
  (acce_command_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AcceCommand>)))
    "Constants for message type '<AcceCommand>"
  '((:ACCE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AcceCommand)))
    "Constants for message type 'AcceCommand"
  '((:ACCE_COMMAND_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcceCommand>) ostream)
  "Serializes a message object of type '<AcceCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acce_command_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcceCommand>) istream)
  "Deserializes a message object of type '<AcceCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acce_command_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcceCommand>)))
  "Returns string type for a message object of type '<AcceCommand>"
  "endpoint_msgs/AcceCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcceCommand)))
  "Returns string type for a message object of type 'AcceCommand"
  "endpoint_msgs/AcceCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcceCommand>)))
  "Returns md5sum for a message object of type '<AcceCommand>"
  "2f6de581af5b4a3715678c4b86420f26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcceCommand)))
  "Returns md5sum for a message object of type 'AcceCommand"
  "2f6de581af5b4a3715678c4b86420f26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcceCommand>)))
  "Returns full string definition for message of type '<AcceCommand>"
  (cl:format cl:nil "uint8 ACCE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AcceCommandData acce_command_data~%~%================================================================================~%MSG: endpoint_msgs/AcceCommandData~%uint64 timestamp_us~%float32 command_value~%bool acce_command_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcceCommand)))
  "Returns full string definition for message of type 'AcceCommand"
  (cl:format cl:nil "uint8 ACCE_COMMAND_DATA = 1~%uint8 available~%endpoint_msgs/AcceCommandData acce_command_data~%~%================================================================================~%MSG: endpoint_msgs/AcceCommandData~%uint64 timestamp_us~%float32 command_value~%bool acce_command_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcceCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acce_command_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcceCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'AcceCommand
    (cl:cons ':available (available msg))
    (cl:cons ':acce_command_data (acce_command_data msg))
))
