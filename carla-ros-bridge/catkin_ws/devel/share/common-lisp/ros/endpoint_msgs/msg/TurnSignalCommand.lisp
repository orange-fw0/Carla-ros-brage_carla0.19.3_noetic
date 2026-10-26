; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude TurnSignalCommand.msg.html

(cl:defclass <TurnSignalCommand> (roslisp-msg-protocol:ros-message)
  ((turn_signal_enable
    :reader turn_signal_enable
    :initarg :turn_signal_enable
    :type cl:boolean
    :initform cl:nil)
   (turn_signal_state
    :reader turn_signal_state
    :initarg :turn_signal_state
    :type endpoint_msgs-msg:TurnSignal
    :initform (cl:make-instance 'endpoint_msgs-msg:TurnSignal)))
)

(cl:defclass TurnSignalCommand (<TurnSignalCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnSignalCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnSignalCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<TurnSignalCommand> is deprecated: use endpoint_msgs-msg:TurnSignalCommand instead.")))

(cl:ensure-generic-function 'turn_signal_enable-val :lambda-list '(m))
(cl:defmethod turn_signal_enable-val ((m <TurnSignalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:turn_signal_enable-val is deprecated.  Use endpoint_msgs-msg:turn_signal_enable instead.")
  (turn_signal_enable m))

(cl:ensure-generic-function 'turn_signal_state-val :lambda-list '(m))
(cl:defmethod turn_signal_state-val ((m <TurnSignalCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:turn_signal_state-val is deprecated.  Use endpoint_msgs-msg:turn_signal_state instead.")
  (turn_signal_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnSignalCommand>) ostream)
  "Serializes a message object of type '<TurnSignalCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turn_signal_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnSignalCommand>) istream)
  "Deserializes a message object of type '<TurnSignalCommand>"
    (cl:setf (cl:slot-value msg 'turn_signal_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnSignalCommand>)))
  "Returns string type for a message object of type '<TurnSignalCommand>"
  "endpoint_msgs/TurnSignalCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnSignalCommand)))
  "Returns string type for a message object of type 'TurnSignalCommand"
  "endpoint_msgs/TurnSignalCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnSignalCommand>)))
  "Returns md5sum for a message object of type '<TurnSignalCommand>"
  "f2879d580ed4b1fcfc2133a5e9fc9408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnSignalCommand)))
  "Returns md5sum for a message object of type 'TurnSignalCommand"
  "f2879d580ed4b1fcfc2133a5e9fc9408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnSignalCommand>)))
  "Returns full string definition for message of type '<TurnSignalCommand>"
  (cl:format cl:nil "bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnSignalCommand)))
  "Returns full string definition for message of type 'TurnSignalCommand"
  (cl:format cl:nil "bool turn_signal_enable~%endpoint_msgs/TurnSignal turn_signal_state~%~%================================================================================~%MSG: endpoint_msgs/TurnSignal~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 EMERGENCY_FLASHER = 3~%uint8 INVALID = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnSignalCommand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnSignalCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnSignalCommand
    (cl:cons ':turn_signal_enable (turn_signal_enable msg))
    (cl:cons ':turn_signal_state (turn_signal_state msg))
))
