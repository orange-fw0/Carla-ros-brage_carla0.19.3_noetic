; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotSpecialTypeEnum.msg.html

(cl:defclass <ParkingSlotSpecialTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSlotSpecialTypeEnum (<ParkingSlotSpecialTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotSpecialTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotSpecialTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotSpecialTypeEnum> is deprecated: use perception_interface_msgs-msg:ParkingSlotSpecialTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSlotSpecialTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSlotSpecialTypeEnum>)))
    "Constants for message type '<ParkingSlotSpecialTypeEnum>"
  '((:PARKING_SLOT_SPECIAL_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_SPECIAL_TYPE_NORMAL . 1)
    (:PARKING_SLOT_SPECIAL_TYPE_CHARGE . 2)
    (:PARKING_SLOT_SPECIAL_TYPE_MECHANICAL . 3)
    (:PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSlotSpecialTypeEnum)))
    "Constants for message type 'ParkingSlotSpecialTypeEnum"
  '((:PARKING_SLOT_SPECIAL_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_SPECIAL_TYPE_NORMAL . 1)
    (:PARKING_SLOT_SPECIAL_TYPE_CHARGE . 2)
    (:PARKING_SLOT_SPECIAL_TYPE_MECHANICAL . 3)
    (:PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotSpecialTypeEnum>) ostream)
  "Serializes a message object of type '<ParkingSlotSpecialTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotSpecialTypeEnum>) istream)
  "Deserializes a message object of type '<ParkingSlotSpecialTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotSpecialTypeEnum>)))
  "Returns string type for a message object of type '<ParkingSlotSpecialTypeEnum>"
  "perception_interface_msgs/ParkingSlotSpecialTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotSpecialTypeEnum)))
  "Returns string type for a message object of type 'ParkingSlotSpecialTypeEnum"
  "perception_interface_msgs/ParkingSlotSpecialTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotSpecialTypeEnum>)))
  "Returns md5sum for a message object of type '<ParkingSlotSpecialTypeEnum>"
  "289cceacdcb9179fbeda8fe9b4968cbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotSpecialTypeEnum)))
  "Returns md5sum for a message object of type 'ParkingSlotSpecialTypeEnum"
  "289cceacdcb9179fbeda8fe9b4968cbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotSpecialTypeEnum>)))
  "Returns full string definition for message of type '<ParkingSlotSpecialTypeEnum>"
  (cl:format cl:nil "uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotSpecialTypeEnum)))
  "Returns full string definition for message of type 'ParkingSlotSpecialTypeEnum"
  (cl:format cl:nil "uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotSpecialTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotSpecialTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotSpecialTypeEnum
    (cl:cons ':value (value msg))
))
