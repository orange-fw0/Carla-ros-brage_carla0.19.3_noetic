; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HumanProtectedDeviceType.msg.html

(cl:defclass <HumanProtectedDeviceType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HumanProtectedDeviceType (<HumanProtectedDeviceType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanProtectedDeviceType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanProtectedDeviceType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HumanProtectedDeviceType> is deprecated: use endpoint_msgs-msg:HumanProtectedDeviceType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HumanProtectedDeviceType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HumanProtectedDeviceType>)))
    "Constants for message type '<HumanProtectedDeviceType>"
  '((:DRIVER_SEATBELT . 0)
    (:PASSENGER_SEATBELT . 1)
    (:PASSENGER_DETECT . 2)
    (:PASSENGER_AIRBAG . 3)
    (:SECOND_LEFT_BELT . 4)
    (:SECOND_MID_BELT . 5)
    (:SECOND_RIGHT_BELT . 6)
    (:RESERVED1 . 7)
    (:RESERVED2 . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HumanProtectedDeviceType)))
    "Constants for message type 'HumanProtectedDeviceType"
  '((:DRIVER_SEATBELT . 0)
    (:PASSENGER_SEATBELT . 1)
    (:PASSENGER_DETECT . 2)
    (:PASSENGER_AIRBAG . 3)
    (:SECOND_LEFT_BELT . 4)
    (:SECOND_MID_BELT . 5)
    (:SECOND_RIGHT_BELT . 6)
    (:RESERVED1 . 7)
    (:RESERVED2 . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanProtectedDeviceType>) ostream)
  "Serializes a message object of type '<HumanProtectedDeviceType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanProtectedDeviceType>) istream)
  "Deserializes a message object of type '<HumanProtectedDeviceType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanProtectedDeviceType>)))
  "Returns string type for a message object of type '<HumanProtectedDeviceType>"
  "endpoint_msgs/HumanProtectedDeviceType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanProtectedDeviceType)))
  "Returns string type for a message object of type 'HumanProtectedDeviceType"
  "endpoint_msgs/HumanProtectedDeviceType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanProtectedDeviceType>)))
  "Returns md5sum for a message object of type '<HumanProtectedDeviceType>"
  "f86a8be5ee82122d8d4bf0bfca43b3a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanProtectedDeviceType)))
  "Returns md5sum for a message object of type 'HumanProtectedDeviceType"
  "f86a8be5ee82122d8d4bf0bfca43b3a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanProtectedDeviceType>)))
  "Returns full string definition for message of type '<HumanProtectedDeviceType>"
  (cl:format cl:nil "uint8 DRIVER_SEATBELT = 0~%uint8 PASSENGER_SEATBELT = 1~%uint8 PASSENGER_DETECT = 2~%uint8 PASSENGER_AIRBAG = 3~%uint8 SECOND_LEFT_BELT = 4~%uint8 SECOND_MID_BELT = 5~%uint8 SECOND_RIGHT_BELT = 6~%uint8 RESERVED1 = 7~%uint8 RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanProtectedDeviceType)))
  "Returns full string definition for message of type 'HumanProtectedDeviceType"
  (cl:format cl:nil "uint8 DRIVER_SEATBELT = 0~%uint8 PASSENGER_SEATBELT = 1~%uint8 PASSENGER_DETECT = 2~%uint8 PASSENGER_AIRBAG = 3~%uint8 SECOND_LEFT_BELT = 4~%uint8 SECOND_MID_BELT = 5~%uint8 SECOND_RIGHT_BELT = 6~%uint8 RESERVED1 = 7~%uint8 RESERVED2 = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanProtectedDeviceType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanProtectedDeviceType>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanProtectedDeviceType
    (cl:cons ':value (value msg))
))
