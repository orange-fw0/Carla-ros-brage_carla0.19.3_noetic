; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneChangeState.msg.html

(cl:defclass <LaneChangeState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneChangeState (<LaneChangeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneChangeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneChangeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneChangeState> is deprecated: use worldmodel_msgs-msg:LaneChangeState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneChangeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneChangeState>)))
    "Constants for message type '<LaneChangeState>"
  '((:FOLLOW . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneChangeState)))
    "Constants for message type 'LaneChangeState"
  '((:FOLLOW . 0)
    (:TURN_LEFT . 1)
    (:TURN_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneChangeState>) ostream)
  "Serializes a message object of type '<LaneChangeState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneChangeState>) istream)
  "Deserializes a message object of type '<LaneChangeState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneChangeState>)))
  "Returns string type for a message object of type '<LaneChangeState>"
  "worldmodel_msgs/LaneChangeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneChangeState)))
  "Returns string type for a message object of type 'LaneChangeState"
  "worldmodel_msgs/LaneChangeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneChangeState>)))
  "Returns md5sum for a message object of type '<LaneChangeState>"
  "662de7b3ca7028afea5d63f31d223f9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneChangeState)))
  "Returns md5sum for a message object of type 'LaneChangeState"
  "662de7b3ca7028afea5d63f31d223f9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneChangeState>)))
  "Returns full string definition for message of type '<LaneChangeState>"
  (cl:format cl:nil "uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneChangeState)))
  "Returns full string definition for message of type 'LaneChangeState"
  (cl:format cl:nil "uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneChangeState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneChangeState>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneChangeState
    (cl:cons ':value (value msg))
))
