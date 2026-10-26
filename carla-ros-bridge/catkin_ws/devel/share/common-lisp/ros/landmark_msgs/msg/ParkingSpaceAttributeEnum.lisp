; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude ParkingSpaceAttributeEnum.msg.html

(cl:defclass <ParkingSpaceAttributeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSpaceAttributeEnum (<ParkingSpaceAttributeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSpaceAttributeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSpaceAttributeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<ParkingSpaceAttributeEnum> is deprecated: use landmark_msgs-msg:ParkingSpaceAttributeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSpaceAttributeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSpaceAttributeEnum>)))
    "Constants for message type '<ParkingSpaceAttributeEnum>"
  '((:PARKING_SPACE_ATTRIBUTE_UNKNOWN . 0)
    (:PARKING_SPACE_ATTRIBUTE_NORMAL . 1)
    (:PARKING_SPACE_ATTRIBUTE_CHARGING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSpaceAttributeEnum)))
    "Constants for message type 'ParkingSpaceAttributeEnum"
  '((:PARKING_SPACE_ATTRIBUTE_UNKNOWN . 0)
    (:PARKING_SPACE_ATTRIBUTE_NORMAL . 1)
    (:PARKING_SPACE_ATTRIBUTE_CHARGING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSpaceAttributeEnum>) ostream)
  "Serializes a message object of type '<ParkingSpaceAttributeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSpaceAttributeEnum>) istream)
  "Deserializes a message object of type '<ParkingSpaceAttributeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSpaceAttributeEnum>)))
  "Returns string type for a message object of type '<ParkingSpaceAttributeEnum>"
  "landmark_msgs/ParkingSpaceAttributeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSpaceAttributeEnum)))
  "Returns string type for a message object of type 'ParkingSpaceAttributeEnum"
  "landmark_msgs/ParkingSpaceAttributeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSpaceAttributeEnum>)))
  "Returns md5sum for a message object of type '<ParkingSpaceAttributeEnum>"
  "43a3920e54ba9ac6cb3e138aa3a1674a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSpaceAttributeEnum)))
  "Returns md5sum for a message object of type 'ParkingSpaceAttributeEnum"
  "43a3920e54ba9ac6cb3e138aa3a1674a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSpaceAttributeEnum>)))
  "Returns full string definition for message of type '<ParkingSpaceAttributeEnum>"
  (cl:format cl:nil "uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0~%uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1~%uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSpaceAttributeEnum)))
  "Returns full string definition for message of type 'ParkingSpaceAttributeEnum"
  (cl:format cl:nil "uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0~%uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1~%uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSpaceAttributeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSpaceAttributeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSpaceAttributeEnum
    (cl:cons ':value (value msg))
))
