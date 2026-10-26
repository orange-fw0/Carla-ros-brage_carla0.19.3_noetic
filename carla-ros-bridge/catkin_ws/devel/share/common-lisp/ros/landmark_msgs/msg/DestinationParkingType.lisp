; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude DestinationParkingType.msg.html

(cl:defclass <DestinationParkingType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DestinationParkingType (<DestinationParkingType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DestinationParkingType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DestinationParkingType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<DestinationParkingType> is deprecated: use landmark_msgs-msg:DestinationParkingType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DestinationParkingType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DestinationParkingType>)))
    "Constants for message type '<DestinationParkingType>"
  '((:UNKNOWN . 0)
    (:NORMAL_DESTINATION . 1)
    (:PARKING_SPACE . 2)
    (:PARKING_AOI . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DestinationParkingType)))
    "Constants for message type 'DestinationParkingType"
  '((:UNKNOWN . 0)
    (:NORMAL_DESTINATION . 1)
    (:PARKING_SPACE . 2)
    (:PARKING_AOI . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DestinationParkingType>) ostream)
  "Serializes a message object of type '<DestinationParkingType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DestinationParkingType>) istream)
  "Deserializes a message object of type '<DestinationParkingType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DestinationParkingType>)))
  "Returns string type for a message object of type '<DestinationParkingType>"
  "landmark_msgs/DestinationParkingType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DestinationParkingType)))
  "Returns string type for a message object of type 'DestinationParkingType"
  "landmark_msgs/DestinationParkingType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DestinationParkingType>)))
  "Returns md5sum for a message object of type '<DestinationParkingType>"
  "e577ff7395099affb02cbd64e7a6f0fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DestinationParkingType)))
  "Returns md5sum for a message object of type 'DestinationParkingType"
  "e577ff7395099affb02cbd64e7a6f0fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DestinationParkingType>)))
  "Returns full string definition for message of type '<DestinationParkingType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DestinationParkingType)))
  "Returns full string definition for message of type 'DestinationParkingType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DestinationParkingType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DestinationParkingType>))
  "Converts a ROS message object to a list"
  (cl:list 'DestinationParkingType
    (cl:cons ':value (value msg))
))
