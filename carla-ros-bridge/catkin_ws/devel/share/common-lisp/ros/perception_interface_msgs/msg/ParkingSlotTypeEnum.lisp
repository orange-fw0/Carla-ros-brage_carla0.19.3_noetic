; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotTypeEnum.msg.html

(cl:defclass <ParkingSlotTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSlotTypeEnum (<ParkingSlotTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotTypeEnum> is deprecated: use perception_interface_msgs-msg:ParkingSlotTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSlotTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSlotTypeEnum>)))
    "Constants for message type '<ParkingSlotTypeEnum>"
  '((:PARKING_SLOT_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_TYPE_AVAILABLE . 1)
    (:PARKING_SLOT_TYPE_OCCUPIED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSlotTypeEnum)))
    "Constants for message type 'ParkingSlotTypeEnum"
  '((:PARKING_SLOT_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_TYPE_AVAILABLE . 1)
    (:PARKING_SLOT_TYPE_OCCUPIED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotTypeEnum>) ostream)
  "Serializes a message object of type '<ParkingSlotTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotTypeEnum>) istream)
  "Deserializes a message object of type '<ParkingSlotTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotTypeEnum>)))
  "Returns string type for a message object of type '<ParkingSlotTypeEnum>"
  "perception_interface_msgs/ParkingSlotTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotTypeEnum)))
  "Returns string type for a message object of type 'ParkingSlotTypeEnum"
  "perception_interface_msgs/ParkingSlotTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotTypeEnum>)))
  "Returns md5sum for a message object of type '<ParkingSlotTypeEnum>"
  "d0b2d32831154d819174eff11ca81c68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotTypeEnum)))
  "Returns md5sum for a message object of type 'ParkingSlotTypeEnum"
  "d0b2d32831154d819174eff11ca81c68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotTypeEnum>)))
  "Returns full string definition for message of type '<ParkingSlotTypeEnum>"
  (cl:format cl:nil "uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotTypeEnum)))
  "Returns full string definition for message of type 'ParkingSlotTypeEnum"
  (cl:format cl:nil "uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotTypeEnum
    (cl:cons ':value (value msg))
))
