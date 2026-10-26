; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionSpecialParkingSlotType.msg.html

(cl:defclass <FusionSpecialParkingSlotType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FusionSpecialParkingSlotType (<FusionSpecialParkingSlotType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionSpecialParkingSlotType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionSpecialParkingSlotType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionSpecialParkingSlotType> is deprecated: use perception_interface_msgs-msg:FusionSpecialParkingSlotType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FusionSpecialParkingSlotType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionSpecialParkingSlotType>)))
    "Constants for message type '<FusionSpecialParkingSlotType>"
  '((:SPECIAL_PARKING_SLOT_TYPE_DEFAULT . 0)
    (:SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE . 1)
    (:SPECIAL_PARKING_SLOT_TYPE_MECHANICAL . 2)
    (:SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionSpecialParkingSlotType)))
    "Constants for message type 'FusionSpecialParkingSlotType"
  '((:SPECIAL_PARKING_SLOT_TYPE_DEFAULT . 0)
    (:SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE . 1)
    (:SPECIAL_PARKING_SLOT_TYPE_MECHANICAL . 2)
    (:SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionSpecialParkingSlotType>) ostream)
  "Serializes a message object of type '<FusionSpecialParkingSlotType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionSpecialParkingSlotType>) istream)
  "Deserializes a message object of type '<FusionSpecialParkingSlotType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionSpecialParkingSlotType>)))
  "Returns string type for a message object of type '<FusionSpecialParkingSlotType>"
  "perception_interface_msgs/FusionSpecialParkingSlotType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionSpecialParkingSlotType)))
  "Returns string type for a message object of type 'FusionSpecialParkingSlotType"
  "perception_interface_msgs/FusionSpecialParkingSlotType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionSpecialParkingSlotType>)))
  "Returns md5sum for a message object of type '<FusionSpecialParkingSlotType>"
  "1222fcf8e33a977abc4456e4db5b195c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionSpecialParkingSlotType)))
  "Returns md5sum for a message object of type 'FusionSpecialParkingSlotType"
  "1222fcf8e33a977abc4456e4db5b195c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionSpecialParkingSlotType>)))
  "Returns full string definition for message of type '<FusionSpecialParkingSlotType>"
  (cl:format cl:nil "uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionSpecialParkingSlotType)))
  "Returns full string definition for message of type 'FusionSpecialParkingSlotType"
  (cl:format cl:nil "uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionSpecialParkingSlotType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionSpecialParkingSlotType>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionSpecialParkingSlotType
    (cl:cons ':value (value msg))
))
