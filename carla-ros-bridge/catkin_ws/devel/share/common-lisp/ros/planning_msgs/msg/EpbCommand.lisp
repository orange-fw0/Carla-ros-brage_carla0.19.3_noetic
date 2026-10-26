; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude EpbCommand.msg.html

(cl:defclass <EpbCommand> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EpbCommand (<EpbCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EpbCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EpbCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<EpbCommand> is deprecated: use planning_msgs-msg:EpbCommand instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <EpbCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EpbCommand>)))
    "Constants for message type '<EpbCommand>"
  '((:NO_REQUEST . 0)
    (:REQUEST . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EpbCommand)))
    "Constants for message type 'EpbCommand"
  '((:NO_REQUEST . 0)
    (:REQUEST . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EpbCommand>) ostream)
  "Serializes a message object of type '<EpbCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EpbCommand>) istream)
  "Deserializes a message object of type '<EpbCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EpbCommand>)))
  "Returns string type for a message object of type '<EpbCommand>"
  "planning_msgs/EpbCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EpbCommand)))
  "Returns string type for a message object of type 'EpbCommand"
  "planning_msgs/EpbCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EpbCommand>)))
  "Returns md5sum for a message object of type '<EpbCommand>"
  "f0d610a7f9a164735c9202e7dd328bae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EpbCommand)))
  "Returns md5sum for a message object of type 'EpbCommand"
  "f0d610a7f9a164735c9202e7dd328bae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EpbCommand>)))
  "Returns full string definition for message of type '<EpbCommand>"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EpbCommand)))
  "Returns full string definition for message of type 'EpbCommand"
  (cl:format cl:nil "uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EpbCommand>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EpbCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'EpbCommand
    (cl:cons ':value (value msg))
))
