; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TurnSignalSource.msg.html

(cl:defclass <TurnSignalSource> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TurnSignalSource (<TurnSignalSource>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnSignalSource>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnSignalSource)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TurnSignalSource> is deprecated: use planning_msgs-msg:TurnSignalSource instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TurnSignalSource>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TurnSignalSource>)))
    "Constants for message type '<TurnSignalSource>"
  '((:NONE . 0)
    (:MAP . 1)
    (:LC . 2)
    (:LB . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TurnSignalSource)))
    "Constants for message type 'TurnSignalSource"
  '((:NONE . 0)
    (:MAP . 1)
    (:LC . 2)
    (:LB . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnSignalSource>) ostream)
  "Serializes a message object of type '<TurnSignalSource>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnSignalSource>) istream)
  "Deserializes a message object of type '<TurnSignalSource>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnSignalSource>)))
  "Returns string type for a message object of type '<TurnSignalSource>"
  "planning_msgs/TurnSignalSource")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnSignalSource)))
  "Returns string type for a message object of type 'TurnSignalSource"
  "planning_msgs/TurnSignalSource")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnSignalSource>)))
  "Returns md5sum for a message object of type '<TurnSignalSource>"
  "ed55e23ce335dd0eb3b172e8793e5cf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnSignalSource)))
  "Returns md5sum for a message object of type 'TurnSignalSource"
  "ed55e23ce335dd0eb3b172e8793e5cf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnSignalSource>)))
  "Returns full string definition for message of type '<TurnSignalSource>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 MAP = 1~%uint8 LC = 2~%uint8 LB = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnSignalSource)))
  "Returns full string definition for message of type 'TurnSignalSource"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 MAP = 1~%uint8 LC = 2~%uint8 LB = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnSignalSource>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnSignalSource>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnSignalSource
    (cl:cons ':value (value msg))
))
