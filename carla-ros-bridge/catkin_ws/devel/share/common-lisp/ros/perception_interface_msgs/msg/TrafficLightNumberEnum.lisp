; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightNumberEnum.msg.html

(cl:defclass <TrafficLightNumberEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightNumberEnum (<TrafficLightNumberEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightNumberEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightNumberEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightNumberEnum> is deprecated: use perception_interface_msgs-msg:TrafficLightNumberEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightNumberEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightNumberEnum>)))
    "Constants for message type '<TrafficLightNumberEnum>"
  '((:TRAFFIC_LIGHT_NUMBER_ZERO . 0)
    (:TRAFFIC_LIGHT_NUMBER_ONE . 1)
    (:TRAFFIC_LIGHT_NUMBER_TWO . 2)
    (:TRAFFIC_LIGHT_NUMBER_THREE . 3)
    (:TRAFFIC_LIGHT_NUMBER_FOUR . 4)
    (:TRAFFIC_LIGHT_NUMBER_FIVE . 5)
    (:TRAFFIC_LIGHT_NUMBER_SIX . 6)
    (:TRAFFIC_LIGHT_NUMBER_SEVEN . 7)
    (:TRAFFIC_LIGHT_NUMBER_EIGHT . 8)
    (:TRAFFIC_LIGHT_NUMBER_NINE . 9)
    (:TRAFFIC_LIGHT_NUMBER_OTHER . 10)
    (:TRAFFIC_LIGHT_NUMBER_OFF . 11)
    (:TRAFFIC_LIGHT_NUMBER_UNKNOWN . 12)
    (:TRAFFIC_LIGHT_NUMBER_UNMARKED . 13)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE1 . 14)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE2 . 15)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE3 . 16)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE4 . 17))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightNumberEnum)))
    "Constants for message type 'TrafficLightNumberEnum"
  '((:TRAFFIC_LIGHT_NUMBER_ZERO . 0)
    (:TRAFFIC_LIGHT_NUMBER_ONE . 1)
    (:TRAFFIC_LIGHT_NUMBER_TWO . 2)
    (:TRAFFIC_LIGHT_NUMBER_THREE . 3)
    (:TRAFFIC_LIGHT_NUMBER_FOUR . 4)
    (:TRAFFIC_LIGHT_NUMBER_FIVE . 5)
    (:TRAFFIC_LIGHT_NUMBER_SIX . 6)
    (:TRAFFIC_LIGHT_NUMBER_SEVEN . 7)
    (:TRAFFIC_LIGHT_NUMBER_EIGHT . 8)
    (:TRAFFIC_LIGHT_NUMBER_NINE . 9)
    (:TRAFFIC_LIGHT_NUMBER_OTHER . 10)
    (:TRAFFIC_LIGHT_NUMBER_OFF . 11)
    (:TRAFFIC_LIGHT_NUMBER_UNKNOWN . 12)
    (:TRAFFIC_LIGHT_NUMBER_UNMARKED . 13)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE1 . 14)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE2 . 15)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE3 . 16)
    (:TRAFFIC_LIGHT_NUMBER_RESERVE4 . 17))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightNumberEnum>) ostream)
  "Serializes a message object of type '<TrafficLightNumberEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightNumberEnum>) istream)
  "Deserializes a message object of type '<TrafficLightNumberEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightNumberEnum>)))
  "Returns string type for a message object of type '<TrafficLightNumberEnum>"
  "perception_interface_msgs/TrafficLightNumberEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightNumberEnum)))
  "Returns string type for a message object of type 'TrafficLightNumberEnum"
  "perception_interface_msgs/TrafficLightNumberEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightNumberEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightNumberEnum>"
  "86893b246ede7e5bd2245707ffe70550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightNumberEnum)))
  "Returns md5sum for a message object of type 'TrafficLightNumberEnum"
  "86893b246ede7e5bd2245707ffe70550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightNumberEnum>)))
  "Returns full string definition for message of type '<TrafficLightNumberEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0~%uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1~%uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2~%uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3~%uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4~%uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5~%uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6~%uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7~%uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8~%uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9~%uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10~%uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11~%uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12~%uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightNumberEnum)))
  "Returns full string definition for message of type 'TrafficLightNumberEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0~%uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1~%uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2~%uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3~%uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4~%uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5~%uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6~%uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7~%uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8~%uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9~%uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10~%uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11~%uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12~%uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16~%uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightNumberEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightNumberEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightNumberEnum
    (cl:cons ':value (value msg))
))
