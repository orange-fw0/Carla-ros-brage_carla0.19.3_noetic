; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeLanePositionArrowEnum.msg.html

(cl:defclass <TrafficSignNodeLanePositionArrowEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeLanePositionArrowEnum (<TrafficSignNodeLanePositionArrowEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeLanePositionArrowEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeLanePositionArrowEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeLanePositionArrowEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeLanePositionArrowEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeLanePositionArrowEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeLanePositionArrowEnum>)))
    "Constants for message type '<TrafficSignNodeLanePositionArrowEnum>"
  '((:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE . 2)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT . 4)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN . 5)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP . 6)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeLanePositionArrowEnum)))
    "Constants for message type 'TrafficSignNodeLanePositionArrowEnum"
  '((:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE . 2)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT . 4)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN . 5)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP . 6)
    (:TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeLanePositionArrowEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeLanePositionArrowEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeLanePositionArrowEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeLanePositionArrowEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeLanePositionArrowEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeLanePositionArrowEnum>"
  "landmark_msgs/TrafficSignNodeLanePositionArrowEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeLanePositionArrowEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeLanePositionArrowEnum"
  "landmark_msgs/TrafficSignNodeLanePositionArrowEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeLanePositionArrowEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeLanePositionArrowEnum>"
  "5554c3c99becd2732cbe9e255b4fd2eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeLanePositionArrowEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeLanePositionArrowEnum"
  "5554c3c99becd2732cbe9e255b4fd2eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeLanePositionArrowEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeLanePositionArrowEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeLanePositionArrowEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeLanePositionArrowEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeLanePositionArrowEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeLanePositionArrowEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeLanePositionArrowEnum
    (cl:cons ':value (value msg))
))
