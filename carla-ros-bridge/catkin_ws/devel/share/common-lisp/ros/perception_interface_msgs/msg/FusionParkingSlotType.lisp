; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionParkingSlotType.msg.html

(cl:defclass <FusionParkingSlotType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FusionParkingSlotType (<FusionParkingSlotType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionParkingSlotType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionParkingSlotType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionParkingSlotType> is deprecated: use perception_interface_msgs-msg:FusionParkingSlotType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FusionParkingSlotType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionParkingSlotType>)))
    "Constants for message type '<FusionParkingSlotType>"
  '((:PARKING_SLOT_TYPE_UNKOWN . 0)
    (:PARKING_SLOT_TYPE_VERTICAL . 1)
    (:PARKING_SLOT_TYPE_PARALLEL . 2)
    (:PARKING_SLOT_TYPE_NORMAL_DIAGONAL . 3)
    (:PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL . 4)
    (:PARKING_SLOT_TYPE_TOTAL_NUM . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionParkingSlotType)))
    "Constants for message type 'FusionParkingSlotType"
  '((:PARKING_SLOT_TYPE_UNKOWN . 0)
    (:PARKING_SLOT_TYPE_VERTICAL . 1)
    (:PARKING_SLOT_TYPE_PARALLEL . 2)
    (:PARKING_SLOT_TYPE_NORMAL_DIAGONAL . 3)
    (:PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL . 4)
    (:PARKING_SLOT_TYPE_TOTAL_NUM . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionParkingSlotType>) ostream)
  "Serializes a message object of type '<FusionParkingSlotType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionParkingSlotType>) istream)
  "Deserializes a message object of type '<FusionParkingSlotType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionParkingSlotType>)))
  "Returns string type for a message object of type '<FusionParkingSlotType>"
  "perception_interface_msgs/FusionParkingSlotType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionParkingSlotType)))
  "Returns string type for a message object of type 'FusionParkingSlotType"
  "perception_interface_msgs/FusionParkingSlotType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionParkingSlotType>)))
  "Returns md5sum for a message object of type '<FusionParkingSlotType>"
  "79c8682f15227c4aedff23a8ca997116")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionParkingSlotType)))
  "Returns md5sum for a message object of type 'FusionParkingSlotType"
  "79c8682f15227c4aedff23a8ca997116")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionParkingSlotType>)))
  "Returns full string definition for message of type '<FusionParkingSlotType>"
  (cl:format cl:nil "uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionParkingSlotType)))
  "Returns full string definition for message of type 'FusionParkingSlotType"
  (cl:format cl:nil "uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionParkingSlotType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionParkingSlotType>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionParkingSlotType
    (cl:cons ':value (value msg))
))
