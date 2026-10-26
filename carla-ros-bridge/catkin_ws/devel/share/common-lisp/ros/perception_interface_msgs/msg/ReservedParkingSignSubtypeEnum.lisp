; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ReservedParkingSignSubtypeEnum.msg.html

(cl:defclass <ReservedParkingSignSubtypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReservedParkingSignSubtypeEnum (<ReservedParkingSignSubtypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReservedParkingSignSubtypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReservedParkingSignSubtypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ReservedParkingSignSubtypeEnum> is deprecated: use perception_interface_msgs-msg:ReservedParkingSignSubtypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ReservedParkingSignSubtypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ReservedParkingSignSubtypeEnum>)))
    "Constants for message type '<ReservedParkingSignSubtypeEnum>"
  '((:RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN . 0)
    (:RESERVED_PARKING_SIGN_SUBTYPE_OTHER . 1)
    (:RESERVED_PARKING_SIGN_SUBTYPE_TAXI . 2)
    (:RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS . 3)
    (:RESERVED_PARKING_SIGN_SUBTYPE_BUS . 4)
    (:RESERVED_PARKING_SIGN_SUBTYPE_DISABLED . 5)
    (:RESERVED_PARKING_SIGN_SUBTYPE_FEMALE . 6)
    (:RESERVED_PARKING_SIGN_SUBTYPE_CHARGING . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ReservedParkingSignSubtypeEnum)))
    "Constants for message type 'ReservedParkingSignSubtypeEnum"
  '((:RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN . 0)
    (:RESERVED_PARKING_SIGN_SUBTYPE_OTHER . 1)
    (:RESERVED_PARKING_SIGN_SUBTYPE_TAXI . 2)
    (:RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS . 3)
    (:RESERVED_PARKING_SIGN_SUBTYPE_BUS . 4)
    (:RESERVED_PARKING_SIGN_SUBTYPE_DISABLED . 5)
    (:RESERVED_PARKING_SIGN_SUBTYPE_FEMALE . 6)
    (:RESERVED_PARKING_SIGN_SUBTYPE_CHARGING . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReservedParkingSignSubtypeEnum>) ostream)
  "Serializes a message object of type '<ReservedParkingSignSubtypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReservedParkingSignSubtypeEnum>) istream)
  "Deserializes a message object of type '<ReservedParkingSignSubtypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReservedParkingSignSubtypeEnum>)))
  "Returns string type for a message object of type '<ReservedParkingSignSubtypeEnum>"
  "perception_interface_msgs/ReservedParkingSignSubtypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReservedParkingSignSubtypeEnum)))
  "Returns string type for a message object of type 'ReservedParkingSignSubtypeEnum"
  "perception_interface_msgs/ReservedParkingSignSubtypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReservedParkingSignSubtypeEnum>)))
  "Returns md5sum for a message object of type '<ReservedParkingSignSubtypeEnum>"
  "b195fe7065d4a8b446d7ae3483cfc8a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReservedParkingSignSubtypeEnum)))
  "Returns md5sum for a message object of type 'ReservedParkingSignSubtypeEnum"
  "b195fe7065d4a8b446d7ae3483cfc8a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReservedParkingSignSubtypeEnum>)))
  "Returns full string definition for message of type '<ReservedParkingSignSubtypeEnum>"
  (cl:format cl:nil "uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReservedParkingSignSubtypeEnum)))
  "Returns full string definition for message of type 'ReservedParkingSignSubtypeEnum"
  (cl:format cl:nil "uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6~%uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReservedParkingSignSubtypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReservedParkingSignSubtypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ReservedParkingSignSubtypeEnum
    (cl:cons ':value (value msg))
))
