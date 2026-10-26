; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotChargeTypeEnum.msg.html

(cl:defclass <ParkingSlotChargeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSlotChargeTypeEnum (<ParkingSlotChargeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotChargeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotChargeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotChargeTypeEnum> is deprecated: use perception_interface_msgs-msg:ParkingSlotChargeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSlotChargeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSlotChargeTypeEnum>)))
    "Constants for message type '<ParkingSlotChargeTypeEnum>"
  '((:PARKING_SLOT_CHARGE_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_CHARGE_TYPE_AVAILABLE . 1)
    (:PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSlotChargeTypeEnum)))
    "Constants for message type 'ParkingSlotChargeTypeEnum"
  '((:PARKING_SLOT_CHARGE_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_CHARGE_TYPE_AVAILABLE . 1)
    (:PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotChargeTypeEnum>) ostream)
  "Serializes a message object of type '<ParkingSlotChargeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotChargeTypeEnum>) istream)
  "Deserializes a message object of type '<ParkingSlotChargeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotChargeTypeEnum>)))
  "Returns string type for a message object of type '<ParkingSlotChargeTypeEnum>"
  "perception_interface_msgs/ParkingSlotChargeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotChargeTypeEnum)))
  "Returns string type for a message object of type 'ParkingSlotChargeTypeEnum"
  "perception_interface_msgs/ParkingSlotChargeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotChargeTypeEnum>)))
  "Returns md5sum for a message object of type '<ParkingSlotChargeTypeEnum>"
  "794cf6e2ecbe3a5a6b27754eb8802412")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotChargeTypeEnum)))
  "Returns md5sum for a message object of type 'ParkingSlotChargeTypeEnum"
  "794cf6e2ecbe3a5a6b27754eb8802412")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotChargeTypeEnum>)))
  "Returns full string definition for message of type '<ParkingSlotChargeTypeEnum>"
  (cl:format cl:nil "uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotChargeTypeEnum)))
  "Returns full string definition for message of type 'ParkingSlotChargeTypeEnum"
  (cl:format cl:nil "uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotChargeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotChargeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotChargeTypeEnum
    (cl:cons ':value (value msg))
))
