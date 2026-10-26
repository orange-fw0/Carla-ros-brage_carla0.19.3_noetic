; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightStatusEnum.msg.html

(cl:defclass <TrafficLightStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightStatusEnum (<TrafficLightStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightStatusEnum> is deprecated: use landmark_msgs-msg:TrafficLightStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightStatusEnum>)))
    "Constants for message type '<TrafficLightStatusEnum>"
  '((:TRAFFIC_LIGHT_STATUS_RED . 0)
    (:TRAFFIC_LIGHT_STATUS_YELLOW . 1)
    (:TRAFFIC_LIGHT_STATUS_GREEN . 2)
    (:TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING . 3)
    (:TRAFFIC_LIGHT_STATUS_GREEN_BLINKING . 4)
    (:TRAFFIC_LIGHT_STATUS_OFF . 5)
    (:TRAFFIC_LIGHT_STATUS_OTHER . 6)
    (:TRAFFIC_LIGHT_STATUS_UNKNOWN . 7)
    (:TRAFFIC_LIGHT_STATUS_RED_BLINKING . 8)
    (:TRAFFIC_LIGHT_STATUS_UNMARKED . 9)
    (:TRAFFIC_LIGHT_STATUS_RESERVE1 . 10)
    (:TRAFFIC_LIGHT_STATUS_RESERVE2 . 11)
    (:TRAFFIC_LIGHT_STATUS_RESERVE3 . 12)
    (:TRAFFIC_LIGHT_STATUS_ON . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightStatusEnum)))
    "Constants for message type 'TrafficLightStatusEnum"
  '((:TRAFFIC_LIGHT_STATUS_RED . 0)
    (:TRAFFIC_LIGHT_STATUS_YELLOW . 1)
    (:TRAFFIC_LIGHT_STATUS_GREEN . 2)
    (:TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING . 3)
    (:TRAFFIC_LIGHT_STATUS_GREEN_BLINKING . 4)
    (:TRAFFIC_LIGHT_STATUS_OFF . 5)
    (:TRAFFIC_LIGHT_STATUS_OTHER . 6)
    (:TRAFFIC_LIGHT_STATUS_UNKNOWN . 7)
    (:TRAFFIC_LIGHT_STATUS_RED_BLINKING . 8)
    (:TRAFFIC_LIGHT_STATUS_UNMARKED . 9)
    (:TRAFFIC_LIGHT_STATUS_RESERVE1 . 10)
    (:TRAFFIC_LIGHT_STATUS_RESERVE2 . 11)
    (:TRAFFIC_LIGHT_STATUS_RESERVE3 . 12)
    (:TRAFFIC_LIGHT_STATUS_ON . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightStatusEnum>) ostream)
  "Serializes a message object of type '<TrafficLightStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightStatusEnum>) istream)
  "Deserializes a message object of type '<TrafficLightStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightStatusEnum>)))
  "Returns string type for a message object of type '<TrafficLightStatusEnum>"
  "landmark_msgs/TrafficLightStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightStatusEnum)))
  "Returns string type for a message object of type 'TrafficLightStatusEnum"
  "landmark_msgs/TrafficLightStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightStatusEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightStatusEnum>"
  "4492a4fb566e5043ee6cd18d6b24e706")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightStatusEnum)))
  "Returns md5sum for a message object of type 'TrafficLightStatusEnum"
  "4492a4fb566e5043ee6cd18d6b24e706")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightStatusEnum>)))
  "Returns full string definition for message of type '<TrafficLightStatusEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightStatusEnum)))
  "Returns full string definition for message of type 'TrafficLightStatusEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightStatusEnum
    (cl:cons ':value (value msg))
))
