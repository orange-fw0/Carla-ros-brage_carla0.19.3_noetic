; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotPointTypeEnum.msg.html

(cl:defclass <ParkingSlotPointTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSlotPointTypeEnum (<ParkingSlotPointTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotPointTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotPointTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotPointTypeEnum> is deprecated: use perception_interface_msgs-msg:ParkingSlotPointTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSlotPointTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSlotPointTypeEnum>)))
    "Constants for message type '<ParkingSlotPointTypeEnum>"
  '((:PARKING_SLOT_POINT_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_POINT_TYPE_REAL . 1)
    (:PARKING_SLOT_POINT_TYPE_FAKE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSlotPointTypeEnum)))
    "Constants for message type 'ParkingSlotPointTypeEnum"
  '((:PARKING_SLOT_POINT_TYPE_UNKNOWN . 0)
    (:PARKING_SLOT_POINT_TYPE_REAL . 1)
    (:PARKING_SLOT_POINT_TYPE_FAKE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotPointTypeEnum>) ostream)
  "Serializes a message object of type '<ParkingSlotPointTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotPointTypeEnum>) istream)
  "Deserializes a message object of type '<ParkingSlotPointTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotPointTypeEnum>)))
  "Returns string type for a message object of type '<ParkingSlotPointTypeEnum>"
  "perception_interface_msgs/ParkingSlotPointTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotPointTypeEnum)))
  "Returns string type for a message object of type 'ParkingSlotPointTypeEnum"
  "perception_interface_msgs/ParkingSlotPointTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotPointTypeEnum>)))
  "Returns md5sum for a message object of type '<ParkingSlotPointTypeEnum>"
  "4bb2aac2b3a42afd41451b69821886ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotPointTypeEnum)))
  "Returns md5sum for a message object of type 'ParkingSlotPointTypeEnum"
  "4bb2aac2b3a42afd41451b69821886ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotPointTypeEnum>)))
  "Returns full string definition for message of type '<ParkingSlotPointTypeEnum>"
  (cl:format cl:nil "uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotPointTypeEnum)))
  "Returns full string definition for message of type 'ParkingSlotPointTypeEnum"
  (cl:format cl:nil "uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotPointTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotPointTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotPointTypeEnum
    (cl:cons ':value (value msg))
))
