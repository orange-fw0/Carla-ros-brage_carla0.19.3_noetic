; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeParkingArrowEnum.msg.html

(cl:defclass <TrafficSignNodeParkingArrowEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeParkingArrowEnum (<TrafficSignNodeParkingArrowEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeParkingArrowEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeParkingArrowEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeParkingArrowEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeParkingArrowEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeParkingArrowEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeParkingArrowEnum>)))
    "Constants for message type '<TrafficSignNodeParkingArrowEnum>"
  '((:TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE . 2)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT . 4)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH . 5)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeParkingArrowEnum)))
    "Constants for message type 'TrafficSignNodeParkingArrowEnum"
  '((:TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE . 2)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT . 4)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH . 5)
    (:TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeParkingArrowEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeParkingArrowEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeParkingArrowEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeParkingArrowEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeParkingArrowEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeParkingArrowEnum>"
  "landmark_msgs/TrafficSignNodeParkingArrowEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeParkingArrowEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeParkingArrowEnum"
  "landmark_msgs/TrafficSignNodeParkingArrowEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeParkingArrowEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeParkingArrowEnum>"
  "db8b2eca84b8767e5cdf17998dad8cd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeParkingArrowEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeParkingArrowEnum"
  "db8b2eca84b8767e5cdf17998dad8cd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeParkingArrowEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeParkingArrowEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeParkingArrowEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeParkingArrowEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeParkingArrowEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeParkingArrowEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeParkingArrowEnum
    (cl:cons ':value (value msg))
))
