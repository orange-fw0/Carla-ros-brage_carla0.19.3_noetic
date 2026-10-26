; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadMarkNodeTypeEnum.msg.html

(cl:defclass <RoadMarkNodeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadMarkNodeTypeEnum (<RoadMarkNodeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadMarkNodeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadMarkNodeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadMarkNodeTypeEnum> is deprecated: use landmark_msgs-msg:RoadMarkNodeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadMarkNodeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadMarkNodeTypeEnum>)))
    "Constants for message type '<RoadMarkNodeTypeEnum>"
  '((:ROAD_MARK_TYPE_UNKNOWN . 0)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT . 1)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT . 2)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT . 3)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK . 4)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK . 5)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE . 6)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE . 7)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL . 8)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_TEXT . 9)
    (:ROAD_MARK_TYPE_NO_PARKING_ZONE . 10)
    (:ROAD_MARK_TYPE_LATERAL_DECELERATION . 11)
    (:ROAD_MARK_TYPE_CENTRAL_CIRCLE . 12)
    (:ROAD_MARK_TYPE_INDICATED_LINE . 13)
    (:ROAD_MARK_TYPE_SYMBOL . 14)
    (:ROAD_MARK_TYPE_TEXT . 15)
    (:ROAD_MARK_TYPE_GUIDE_ARROW . 16)
    (:ROAD_MARK_TYPE_PROHIBIT . 17)
    (:ROAD_MARK_TYPE_PROHIBIT_U_TURN . 18)
    (:ROAD_MARK_TYPE_YIELD_LINE . 21)
    (:ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING . 22)
    (:ROAD_MARK_TYPE_NON_MOTOR . 24)
    (:ROAD_MARK_TYPE_STOP . 25)
    (:ROAD_MARK_TYPE_PEDESTRIAN . 26)
    (:ROAD_MARK_TYPE_YIELD_MARKING . 27))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadMarkNodeTypeEnum)))
    "Constants for message type 'RoadMarkNodeTypeEnum"
  '((:ROAD_MARK_TYPE_UNKNOWN . 0)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT . 1)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT . 2)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT . 3)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK . 4)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK . 5)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE . 6)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE . 7)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL . 8)
    (:ROAD_MARK_TYPE_GUIDE_ARROW_TEXT . 9)
    (:ROAD_MARK_TYPE_NO_PARKING_ZONE . 10)
    (:ROAD_MARK_TYPE_LATERAL_DECELERATION . 11)
    (:ROAD_MARK_TYPE_CENTRAL_CIRCLE . 12)
    (:ROAD_MARK_TYPE_INDICATED_LINE . 13)
    (:ROAD_MARK_TYPE_SYMBOL . 14)
    (:ROAD_MARK_TYPE_TEXT . 15)
    (:ROAD_MARK_TYPE_GUIDE_ARROW . 16)
    (:ROAD_MARK_TYPE_PROHIBIT . 17)
    (:ROAD_MARK_TYPE_PROHIBIT_U_TURN . 18)
    (:ROAD_MARK_TYPE_YIELD_LINE . 21)
    (:ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING . 22)
    (:ROAD_MARK_TYPE_NON_MOTOR . 24)
    (:ROAD_MARK_TYPE_STOP . 25)
    (:ROAD_MARK_TYPE_PEDESTRIAN . 26)
    (:ROAD_MARK_TYPE_YIELD_MARKING . 27))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadMarkNodeTypeEnum>) ostream)
  "Serializes a message object of type '<RoadMarkNodeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadMarkNodeTypeEnum>) istream)
  "Deserializes a message object of type '<RoadMarkNodeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadMarkNodeTypeEnum>)))
  "Returns string type for a message object of type '<RoadMarkNodeTypeEnum>"
  "landmark_msgs/RoadMarkNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadMarkNodeTypeEnum)))
  "Returns string type for a message object of type 'RoadMarkNodeTypeEnum"
  "landmark_msgs/RoadMarkNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadMarkNodeTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadMarkNodeTypeEnum>"
  "69a51e779ef62314c0d675076c8ec192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadMarkNodeTypeEnum)))
  "Returns md5sum for a message object of type 'RoadMarkNodeTypeEnum"
  "69a51e779ef62314c0d675076c8ec192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadMarkNodeTypeEnum>)))
  "Returns full string definition for message of type '<RoadMarkNodeTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9~%uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10~%uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11~%uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12~%uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13~%uint8 ROAD_MARK_TYPE_SYMBOL = 14~%uint8 ROAD_MARK_TYPE_TEXT = 15~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16~%uint8 ROAD_MARK_TYPE_PROHIBIT = 17~%uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18~%uint8 ROAD_MARK_TYPE_YIELD_LINE = 21~%uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22~%uint8 ROAD_MARK_TYPE_NON_MOTOR = 24~%uint8 ROAD_MARK_TYPE_STOP = 25~%uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26~%uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadMarkNodeTypeEnum)))
  "Returns full string definition for message of type 'RoadMarkNodeTypeEnum"
  (cl:format cl:nil "uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9~%uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10~%uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11~%uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12~%uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13~%uint8 ROAD_MARK_TYPE_SYMBOL = 14~%uint8 ROAD_MARK_TYPE_TEXT = 15~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16~%uint8 ROAD_MARK_TYPE_PROHIBIT = 17~%uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18~%uint8 ROAD_MARK_TYPE_YIELD_LINE = 21~%uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22~%uint8 ROAD_MARK_TYPE_NON_MOTOR = 24~%uint8 ROAD_MARK_TYPE_STOP = 25~%uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26~%uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadMarkNodeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadMarkNodeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadMarkNodeTypeEnum
    (cl:cons ':value (value msg))
))
