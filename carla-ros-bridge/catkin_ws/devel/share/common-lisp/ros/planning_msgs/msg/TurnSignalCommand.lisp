; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TurnSignalCommand.msg.html

(cl:defclass <TurnSignalCommand> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (turn_signal_data
    :reader turn_signal_data
    :initarg :turn_signal_data
    :type planning_msgs-msg:TurnSignal
    :initform (cl:make-instance 'planning_msgs-msg:TurnSignal))
   (turn_signal_source
    :reader turn_signal_source
    :initarg :turn_signal_source
    :type planning_msgs-msg:TurnSignalSource
    :initform (cl:make-instance 'planning_msgs-msg:TurnSignalSource)))
)

(cl:defclass TurnSignalCommand (<TurnSignalCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnSignalCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnSignalCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TurnSignalCommand> is deprecated: use planning_msgs-msg:TurnSignalCommand instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TurnSignalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'turn_signal_data-val :lambda-list '(m))
(cl:defmethod turn_signal_data-val ((m <TurnSignalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:turn_signal_data-val is deprecated.  Use planning_msgs-msg:turn_signal_data instead.")
  (turn_signal_data m))

(cl:ensure-generic-function 'turn_signal_source-val :lambda-list '(m))
(cl:defmethod turn_signal_source-val ((m <TurnSignalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:turn_signal_source-val is deprecated.  Use planning_msgs-msg:turn_signal_source instead.")
  (turn_signal_source m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TurnSignalCommand>)))
    "Constants for message type '<TurnSignalCommand>"
  '((:TURN_SIGNAL_DATA . 1)
    (:TURN_SIGNAL_SOURCE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TurnSignalCommand)))
    "Constants for message type 'TurnSignalCommand"
  '((:TURN_SIGNAL_DATA . 1)
    (:TURN_SIGNAL_SOURCE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnSignalCommand>) ostream)
  "Serializes a message object of type '<TurnSignalCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_source) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnSignalCommand>) istream)
  "Deserializes a message object of type '<TurnSignalCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_source) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnSignalCommand>)))
  "Returns string type for a message object of type '<TurnSignalCommand>"
  "planning_msgs/TurnSignalCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnSignalCommand)))
  "Returns string type for a message object of type 'TurnSignalCommand"
  "planning_msgs/TurnSignalCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnSignalCommand>)))
  "Returns md5sum for a message object of type '<TurnSignalCommand>"
  "d5992dff01409a9a14e9e8979f4a12de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnSignalCommand)))
  "Returns md5sum for a message object of type 'TurnSignalCommand"
  "d5992dff01409a9a14e9e8979f4a12de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnSignalCommand>)))
  "Returns full string definition for message of type '<TurnSignalCommand>"
  (cl:format cl:nil "uint8 TURN_SIGNAL_DATA = 1~%uint8 TURN_SIGNAL_SOURCE = 2~%uint8 available~%planning_msgs/TurnSignal turn_signal_data~%planning_msgs/TurnSignalSource turn_signal_source~%~%================================================================================~%MSG: planning_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/TurnSignalSource~%uint8 NONE = 0~%uint8 MAP = 1~%uint8 LC = 2~%uint8 LB = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnSignalCommand)))
  "Returns full string definition for message of type 'TurnSignalCommand"
  (cl:format cl:nil "uint8 TURN_SIGNAL_DATA = 1~%uint8 TURN_SIGNAL_SOURCE = 2~%uint8 available~%planning_msgs/TurnSignal turn_signal_data~%planning_msgs/TurnSignalSource turn_signal_source~%~%================================================================================~%MSG: planning_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 value~%~%================================================================================~%MSG: planning_msgs/TurnSignalSource~%uint8 NONE = 0~%uint8 MAP = 1~%uint8 LC = 2~%uint8 LB = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnSignalCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_source))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnSignalCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnSignalCommand
    (cl:cons ':available (available msg))
    (cl:cons ':turn_signal_data (turn_signal_data msg))
    (cl:cons ':turn_signal_source (turn_signal_source msg))
))
