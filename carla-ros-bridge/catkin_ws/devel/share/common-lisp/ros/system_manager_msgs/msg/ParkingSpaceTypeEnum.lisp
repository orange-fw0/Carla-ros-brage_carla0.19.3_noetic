; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ParkingSpaceTypeEnum.msg.html

(cl:defclass <ParkingSpaceTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSpaceTypeEnum (<ParkingSpaceTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSpaceTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSpaceTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ParkingSpaceTypeEnum> is deprecated: use system_manager_msgs-msg:ParkingSpaceTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSpaceTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSpaceTypeEnum>)))
    "Constants for message type '<ParkingSpaceTypeEnum>"
  '((:UNKNOWN . 0)
    (:PARKING_SPACE_WITH_CHARGING . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSpaceTypeEnum)))
    "Constants for message type 'ParkingSpaceTypeEnum"
  '((:UNKNOWN . 0)
    (:PARKING_SPACE_WITH_CHARGING . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSpaceTypeEnum>) ostream)
  "Serializes a message object of type '<ParkingSpaceTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSpaceTypeEnum>) istream)
  "Deserializes a message object of type '<ParkingSpaceTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSpaceTypeEnum>)))
  "Returns string type for a message object of type '<ParkingSpaceTypeEnum>"
  "system_manager_msgs/ParkingSpaceTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSpaceTypeEnum)))
  "Returns string type for a message object of type 'ParkingSpaceTypeEnum"
  "system_manager_msgs/ParkingSpaceTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSpaceTypeEnum>)))
  "Returns md5sum for a message object of type '<ParkingSpaceTypeEnum>"
  "b9801e716806b6ea5cc7266064d80e9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSpaceTypeEnum)))
  "Returns md5sum for a message object of type 'ParkingSpaceTypeEnum"
  "b9801e716806b6ea5cc7266064d80e9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSpaceTypeEnum>)))
  "Returns full string definition for message of type '<ParkingSpaceTypeEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSpaceTypeEnum)))
  "Returns full string definition for message of type 'ParkingSpaceTypeEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PARKING_SPACE_WITH_CHARGING = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSpaceTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSpaceTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSpaceTypeEnum
    (cl:cons ':value (value msg))
))
