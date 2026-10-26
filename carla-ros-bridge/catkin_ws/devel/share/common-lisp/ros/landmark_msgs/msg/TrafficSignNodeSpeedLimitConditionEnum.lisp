; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeSpeedLimitConditionEnum.msg.html

(cl:defclass <TrafficSignNodeSpeedLimitConditionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeSpeedLimitConditionEnum (<TrafficSignNodeSpeedLimitConditionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeSpeedLimitConditionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeSpeedLimitConditionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeSpeedLimitConditionEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeSpeedLimitConditionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeSpeedLimitConditionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeSpeedLimitConditionEnum>)))
    "Constants for message type '<TrafficSignNodeSpeedLimitConditionEnum>"
  '((:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER . 1)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW . 2)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD . 3)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP . 4)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT . 5)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE . 6)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL . 7)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT . 8)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT . 9)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT . 10)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL . 11)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR . 12)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeSpeedLimitConditionEnum)))
    "Constants for message type 'TrafficSignNodeSpeedLimitConditionEnum"
  '((:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER . 1)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW . 2)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD . 3)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP . 4)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT . 5)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE . 6)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL . 7)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT . 8)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT . 9)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT . 10)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL . 11)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR . 12)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeSpeedLimitConditionEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeSpeedLimitConditionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeSpeedLimitConditionEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeSpeedLimitConditionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeSpeedLimitConditionEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeSpeedLimitConditionEnum>"
  "landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeSpeedLimitConditionEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeSpeedLimitConditionEnum"
  "landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeSpeedLimitConditionEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeSpeedLimitConditionEnum>"
  "3794c8440aa1cd9e81acc811ab86343d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeSpeedLimitConditionEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeSpeedLimitConditionEnum"
  "3794c8440aa1cd9e81acc811ab86343d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeSpeedLimitConditionEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeSpeedLimitConditionEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeSpeedLimitConditionEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeSpeedLimitConditionEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeSpeedLimitConditionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeSpeedLimitConditionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeSpeedLimitConditionEnum
    (cl:cons ':value (value msg))
))
