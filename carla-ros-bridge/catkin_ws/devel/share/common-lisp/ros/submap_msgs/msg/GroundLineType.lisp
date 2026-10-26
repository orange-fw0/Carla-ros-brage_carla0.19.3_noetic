; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude GroundLineType.msg.html

(cl:defclass <GroundLineType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GroundLineType (<GroundLineType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroundLineType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroundLineType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<GroundLineType> is deprecated: use submap_msgs-msg:GroundLineType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GroundLineType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:value-val is deprecated.  Use submap_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GroundLineType>)))
    "Constants for message type '<GroundLineType>"
  '((:UNKNOWN . 0)
    (:WALL . 1)
    (:PILLAR . 2)
    (:FENCE . 3)
    (:STEP . 4)
    (:SPECIAL . 5)
    (:PARKING_GATE . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GroundLineType)))
    "Constants for message type 'GroundLineType"
  '((:UNKNOWN . 0)
    (:WALL . 1)
    (:PILLAR . 2)
    (:FENCE . 3)
    (:STEP . 4)
    (:SPECIAL . 5)
    (:PARKING_GATE . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroundLineType>) ostream)
  "Serializes a message object of type '<GroundLineType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroundLineType>) istream)
  "Deserializes a message object of type '<GroundLineType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroundLineType>)))
  "Returns string type for a message object of type '<GroundLineType>"
  "submap_msgs/GroundLineType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroundLineType)))
  "Returns string type for a message object of type 'GroundLineType"
  "submap_msgs/GroundLineType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroundLineType>)))
  "Returns md5sum for a message object of type '<GroundLineType>"
  "94f048ee3cd713fd9880d35eea373e11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroundLineType)))
  "Returns md5sum for a message object of type 'GroundLineType"
  "94f048ee3cd713fd9880d35eea373e11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroundLineType>)))
  "Returns full string definition for message of type '<GroundLineType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroundLineType)))
  "Returns full string definition for message of type 'GroundLineType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroundLineType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroundLineType>))
  "Converts a ROS message object to a list"
  (cl:list 'GroundLineType
    (cl:cons ':value (value msg))
))
