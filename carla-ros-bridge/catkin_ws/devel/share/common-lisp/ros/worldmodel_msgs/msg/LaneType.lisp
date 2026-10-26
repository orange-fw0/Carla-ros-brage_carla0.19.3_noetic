; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneType.msg.html

(cl:defclass <LaneType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneType (<LaneType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneType> is deprecated: use worldmodel_msgs-msg:LaneType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneType>)))
    "Constants for message type '<LaneType>"
  '((:UNKNOWN . 0)
    (:NORMAL . 1)
    (:VIRTUAL . 2)
    (:PARKING . 3)
    (:ACCELERATE . 4)
    (:DECELERATE . 5)
    (:BUS . 6)
    (:EMERGENCY . 7)
    (:ACCELERATE_DECELERATE . 8)
    (:LEFT_TURN_WAITTING_AREA . 9)
    (:NON_MOTOR . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneType)))
    "Constants for message type 'LaneType"
  '((:UNKNOWN . 0)
    (:NORMAL . 1)
    (:VIRTUAL . 2)
    (:PARKING . 3)
    (:ACCELERATE . 4)
    (:DECELERATE . 5)
    (:BUS . 6)
    (:EMERGENCY . 7)
    (:ACCELERATE_DECELERATE . 8)
    (:LEFT_TURN_WAITTING_AREA . 9)
    (:NON_MOTOR . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneType>) ostream)
  "Serializes a message object of type '<LaneType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneType>) istream)
  "Deserializes a message object of type '<LaneType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneType>)))
  "Returns string type for a message object of type '<LaneType>"
  "worldmodel_msgs/LaneType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneType)))
  "Returns string type for a message object of type 'LaneType"
  "worldmodel_msgs/LaneType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneType>)))
  "Returns md5sum for a message object of type '<LaneType>"
  "6fb4cc01a35d399e06b3df66aa882780")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneType)))
  "Returns md5sum for a message object of type 'LaneType"
  "6fb4cc01a35d399e06b3df66aa882780")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneType>)))
  "Returns full string definition for message of type '<LaneType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneType)))
  "Returns full string definition for message of type 'LaneType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneType>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneType
    (cl:cons ':value (value msg))
))
