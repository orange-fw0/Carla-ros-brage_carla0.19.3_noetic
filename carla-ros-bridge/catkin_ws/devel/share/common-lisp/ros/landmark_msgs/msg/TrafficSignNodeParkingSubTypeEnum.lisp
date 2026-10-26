; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeParkingSubTypeEnum.msg.html

(cl:defclass <TrafficSignNodeParkingSubTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeParkingSubTypeEnum (<TrafficSignNodeParkingSubTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeParkingSubTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeParkingSubTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeParkingSubTypeEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeParkingSubTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeParkingSubTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeParkingSubTypeEnum>)))
    "Constants for message type '<TrafficSignNodeParkingSubTypeEnum>"
  '((:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI . 2)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS . 3)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS . 4)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED . 5)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL . 6)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE . 7)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeParkingSubTypeEnum)))
    "Constants for message type 'TrafficSignNodeParkingSubTypeEnum"
  '((:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI . 2)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS . 3)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS . 4)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED . 5)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL . 6)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE . 7)
    (:TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeParkingSubTypeEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeParkingSubTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeParkingSubTypeEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeParkingSubTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeParkingSubTypeEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeParkingSubTypeEnum>"
  "landmark_msgs/TrafficSignNodeParkingSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeParkingSubTypeEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeParkingSubTypeEnum"
  "landmark_msgs/TrafficSignNodeParkingSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeParkingSubTypeEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeParkingSubTypeEnum>"
  "e26d49858709c0d277e042ca328873e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeParkingSubTypeEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeParkingSubTypeEnum"
  "e26d49858709c0d277e042ca328873e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeParkingSubTypeEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeParkingSubTypeEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeParkingSubTypeEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeParkingSubTypeEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeParkingSubTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeParkingSubTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeParkingSubTypeEnum
    (cl:cons ':value (value msg))
))
