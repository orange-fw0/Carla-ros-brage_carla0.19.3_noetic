; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficBarrierTypeEnum.msg.html

(cl:defclass <TrafficBarrierTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficBarrierTypeEnum (<TrafficBarrierTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficBarrierTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficBarrierTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficBarrierTypeEnum> is deprecated: use perception_interface_msgs-msg:TrafficBarrierTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficBarrierTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficBarrierTypeEnum>)))
    "Constants for message type '<TrafficBarrierTypeEnum>"
  '((:TRAFFIC_BARRIER_TYPE_UNKNOWN . 0)
    (:TRAFFIC_BARRIER_TYPE_CONE . 1)
    (:TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE . 2)
    (:TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE . 3)
    (:TRAFFIC_BARRIER_TYPE_PARKING_LOCK . 4)
    (:TRAFFIC_BARRIER_TYPE_AFRAME_SIGN . 5)
    (:TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET . 6)
    (:TRAFFIC_BARRIER_TYPE_DUSTBIN . 7)
    (:TRAFFIC_BARRIER_TYPE_BARRIER_STONE . 8)
    (:TRAFFIC_BARRIER_TYPE_WATER_BARRIER . 9)
    (:TRAFFIC_BARRIER_TYPE_PARKING_STOPPER . 10)
    (:TRAFFIC_BARRIER_TYPE_UNMARKED . 11)
    (:TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN . 12)
    (:TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER . 13)
    (:TRAFFIC_BARRIER_TYPE_PARKING_GATE . 14)
    (:TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON . 15)
    (:TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF . 16)
    (:TRAFFIC_BARRIER_TYPE_EU_FENCE . 17)
    (:TRAFFIC_BARRIER_TYPE_US_CONE . 18)
    (:TRAFFIC_BARRIER_TYPE_PAPER_BOX . 19)
    (:TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS . 20)
    (:TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE . 21)
    (:TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING . 22)
    (:TRAFFIC_BARRIER_TYPE_AVIOD . 23)
    (:TRAFFIC_BARRIER_TYPE_BRAKE . 24)
    (:TRAFFIC_BARRIER_TYPE_FAR . 25)
    (:TRAFFIC_BARRIER_TYPE_NEAR . 26))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficBarrierTypeEnum)))
    "Constants for message type 'TrafficBarrierTypeEnum"
  '((:TRAFFIC_BARRIER_TYPE_UNKNOWN . 0)
    (:TRAFFIC_BARRIER_TYPE_CONE . 1)
    (:TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE . 2)
    (:TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE . 3)
    (:TRAFFIC_BARRIER_TYPE_PARKING_LOCK . 4)
    (:TRAFFIC_BARRIER_TYPE_AFRAME_SIGN . 5)
    (:TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET . 6)
    (:TRAFFIC_BARRIER_TYPE_DUSTBIN . 7)
    (:TRAFFIC_BARRIER_TYPE_BARRIER_STONE . 8)
    (:TRAFFIC_BARRIER_TYPE_WATER_BARRIER . 9)
    (:TRAFFIC_BARRIER_TYPE_PARKING_STOPPER . 10)
    (:TRAFFIC_BARRIER_TYPE_UNMARKED . 11)
    (:TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN . 12)
    (:TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER . 13)
    (:TRAFFIC_BARRIER_TYPE_PARKING_GATE . 14)
    (:TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON . 15)
    (:TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF . 16)
    (:TRAFFIC_BARRIER_TYPE_EU_FENCE . 17)
    (:TRAFFIC_BARRIER_TYPE_US_CONE . 18)
    (:TRAFFIC_BARRIER_TYPE_PAPER_BOX . 19)
    (:TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS . 20)
    (:TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE . 21)
    (:TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING . 22)
    (:TRAFFIC_BARRIER_TYPE_AVIOD . 23)
    (:TRAFFIC_BARRIER_TYPE_BRAKE . 24)
    (:TRAFFIC_BARRIER_TYPE_FAR . 25)
    (:TRAFFIC_BARRIER_TYPE_NEAR . 26))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficBarrierTypeEnum>) ostream)
  "Serializes a message object of type '<TrafficBarrierTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficBarrierTypeEnum>) istream)
  "Deserializes a message object of type '<TrafficBarrierTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficBarrierTypeEnum>)))
  "Returns string type for a message object of type '<TrafficBarrierTypeEnum>"
  "perception_interface_msgs/TrafficBarrierTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficBarrierTypeEnum)))
  "Returns string type for a message object of type 'TrafficBarrierTypeEnum"
  "perception_interface_msgs/TrafficBarrierTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficBarrierTypeEnum>)))
  "Returns md5sum for a message object of type '<TrafficBarrierTypeEnum>"
  "31db85895201704e77e307146acd3a05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficBarrierTypeEnum)))
  "Returns md5sum for a message object of type 'TrafficBarrierTypeEnum"
  "31db85895201704e77e307146acd3a05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficBarrierTypeEnum>)))
  "Returns full string definition for message of type '<TrafficBarrierTypeEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficBarrierTypeEnum)))
  "Returns full string definition for message of type 'TrafficBarrierTypeEnum"
  (cl:format cl:nil "uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10~%uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12~%uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16~%uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17~%uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18~%uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19~%uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21~%uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22~%uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23~%uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24~%uint8 TRAFFIC_BARRIER_TYPE_FAR = 25~%uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficBarrierTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficBarrierTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficBarrierTypeEnum
    (cl:cons ':value (value msg))
))
