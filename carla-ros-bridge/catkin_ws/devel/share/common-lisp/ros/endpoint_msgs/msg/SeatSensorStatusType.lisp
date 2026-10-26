; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SeatSensorStatusType.msg.html

(cl:defclass <SeatSensorStatusType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SeatSensorStatusType (<SeatSensorStatusType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SeatSensorStatusType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SeatSensorStatusType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SeatSensorStatusType> is deprecated: use endpoint_msgs-msg:SeatSensorStatusType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SeatSensorStatusType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SeatSensorStatusType>)))
    "Constants for message type '<SeatSensorStatusType>"
  '((:DRIVER_SEAT_STATUS . 0)
    (:PASSENGER_SEAT_STATUS . 1)
    (:SECOND_LEFT_SEAT_STATUS . 2)
    (:SECOND_MID_SEAT_STATUS . 3)
    (:SECOND_RIGHT_SEAT_STATUS . 4)
    (:RESERVED1 . 5)
    (:RESERVED2 . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SeatSensorStatusType)))
    "Constants for message type 'SeatSensorStatusType"
  '((:DRIVER_SEAT_STATUS . 0)
    (:PASSENGER_SEAT_STATUS . 1)
    (:SECOND_LEFT_SEAT_STATUS . 2)
    (:SECOND_MID_SEAT_STATUS . 3)
    (:SECOND_RIGHT_SEAT_STATUS . 4)
    (:RESERVED1 . 5)
    (:RESERVED2 . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SeatSensorStatusType>) ostream)
  "Serializes a message object of type '<SeatSensorStatusType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SeatSensorStatusType>) istream)
  "Deserializes a message object of type '<SeatSensorStatusType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SeatSensorStatusType>)))
  "Returns string type for a message object of type '<SeatSensorStatusType>"
  "endpoint_msgs/SeatSensorStatusType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SeatSensorStatusType)))
  "Returns string type for a message object of type 'SeatSensorStatusType"
  "endpoint_msgs/SeatSensorStatusType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SeatSensorStatusType>)))
  "Returns md5sum for a message object of type '<SeatSensorStatusType>"
  "2cc387be9db3d79e8b437ada1b551465")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SeatSensorStatusType)))
  "Returns md5sum for a message object of type 'SeatSensorStatusType"
  "2cc387be9db3d79e8b437ada1b551465")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SeatSensorStatusType>)))
  "Returns full string definition for message of type '<SeatSensorStatusType>"
  (cl:format cl:nil "uint8 DRIVER_SEAT_STATUS = 0~%uint8 PASSENGER_SEAT_STATUS = 1~%uint8 SECOND_LEFT_SEAT_STATUS = 2~%uint8 SECOND_MID_SEAT_STATUS = 3~%uint8 SECOND_RIGHT_SEAT_STATUS = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SeatSensorStatusType)))
  "Returns full string definition for message of type 'SeatSensorStatusType"
  (cl:format cl:nil "uint8 DRIVER_SEAT_STATUS = 0~%uint8 PASSENGER_SEAT_STATUS = 1~%uint8 SECOND_LEFT_SEAT_STATUS = 2~%uint8 SECOND_MID_SEAT_STATUS = 3~%uint8 SECOND_RIGHT_SEAT_STATUS = 4~%uint8 RESERVED1 = 5~%uint8 RESERVED2 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SeatSensorStatusType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SeatSensorStatusType>))
  "Converts a ROS message object to a list"
  (cl:list 'SeatSensorStatusType
    (cl:cons ':value (value msg))
))
