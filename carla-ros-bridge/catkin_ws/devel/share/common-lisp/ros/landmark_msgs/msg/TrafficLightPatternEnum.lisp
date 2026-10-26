; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightPatternEnum.msg.html

(cl:defclass <TrafficLightPatternEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightPatternEnum (<TrafficLightPatternEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightPatternEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightPatternEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightPatternEnum> is deprecated: use landmark_msgs-msg:TrafficLightPatternEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightPatternEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightPatternEnum>)))
    "Constants for message type '<TrafficLightPatternEnum>"
  '((:TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE . 0)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_ARROW . 1)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW . 2)
    (:TRAFFIC_LIGHT_PATTERN_UP_ARROW . 3)
    (:TRAFFIC_LIGHT_PATTERN_DOWN_ARROW . 4)
    (:TRAFFIC_LIGHT_PATTERN_PEDESTRIAN . 5)
    (:TRAFFIC_LIGHT_PATTERN_NON_MOTOR . 6)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_UTURN . 7)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN . 8)
    (:TRAFFIC_LIGHT_PATTERN_NUMBER . 9)
    (:TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR . 10)
    (:TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT . 11)
    (:TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT . 12)
    (:TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW . 13)
    (:TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW . 14)
    (:TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW . 15)
    (:TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW . 16)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW . 17)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW . 18)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW . 19)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW . 20)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW . 21)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW . 22)
    (:TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT . 23)
    (:TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT . 24)
    (:TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT . 25)
    (:TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS . 26)
    (:TRAFFIC_LIGHT_PATTERN_OTHER . 50)
    (:TRAFFIC_LIGHT_PATTERN_UNKNOWN . 51)
    (:TRAFFIC_LIGHT_PATTERN_OFF . 52)
    (:TRAFFIC_LIGHT_PATTERN_UNMARKED . 53)
    (:TRAFFIC_LIGHT_PATTERN_RESERVE1 . 80)
    (:TRAFFIC_LIGHT_PATTERN_RESERVE2 . 81)
    (:TRAFFIC_LIGHT_PATTERN_RESERVE3 . 82))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightPatternEnum)))
    "Constants for message type 'TrafficLightPatternEnum"
  '((:TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE . 0)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_ARROW . 1)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW . 2)
    (:TRAFFIC_LIGHT_PATTERN_UP_ARROW . 3)
    (:TRAFFIC_LIGHT_PATTERN_DOWN_ARROW . 4)
    (:TRAFFIC_LIGHT_PATTERN_PEDESTRIAN . 5)
    (:TRAFFIC_LIGHT_PATTERN_NON_MOTOR . 6)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_UTURN . 7)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN . 8)
    (:TRAFFIC_LIGHT_PATTERN_NUMBER . 9)
    (:TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR . 10)
    (:TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT . 11)
    (:TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT . 12)
    (:TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW . 13)
    (:TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW . 14)
    (:TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW . 15)
    (:TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW . 16)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW . 17)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW . 18)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW . 19)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW . 20)
    (:TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW . 21)
    (:TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW . 22)
    (:TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT . 23)
    (:TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT . 24)
    (:TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT . 25)
    (:TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS . 26)
    (:TRAFFIC_LIGHT_PATTERN_OTHER . 50)
    (:TRAFFIC_LIGHT_PATTERN_UNKNOWN . 51)
    (:TRAFFIC_LIGHT_PATTERN_OFF . 52)
    (:TRAFFIC_LIGHT_PATTERN_UNMARKED . 53)
    (:TRAFFIC_LIGHT_PATTERN_RESERVE1 . 80)
    (:TRAFFIC_LIGHT_PATTERN_RESERVE2 . 81)
    (:TRAFFIC_LIGHT_PATTERN_RESERVE3 . 82))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightPatternEnum>) ostream)
  "Serializes a message object of type '<TrafficLightPatternEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightPatternEnum>) istream)
  "Deserializes a message object of type '<TrafficLightPatternEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightPatternEnum>)))
  "Returns string type for a message object of type '<TrafficLightPatternEnum>"
  "landmark_msgs/TrafficLightPatternEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightPatternEnum)))
  "Returns string type for a message object of type 'TrafficLightPatternEnum"
  "landmark_msgs/TrafficLightPatternEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightPatternEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightPatternEnum>"
  "1f71b0a865dadbe6462f015d1850a896")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightPatternEnum)))
  "Returns md5sum for a message object of type 'TrafficLightPatternEnum"
  "1f71b0a865dadbe6462f015d1850a896")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightPatternEnum>)))
  "Returns full string definition for message of type '<TrafficLightPatternEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightPatternEnum)))
  "Returns full string definition for message of type 'TrafficLightPatternEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightPatternEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightPatternEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightPatternEnum
    (cl:cons ':value (value msg))
))
