; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeSpeedLimitEnum.msg.html

(cl:defclass <TrafficSignNodeSpeedLimitEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeSpeedLimitEnum (<TrafficSignNodeSpeedLimitEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeSpeedLimitEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeSpeedLimitEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeSpeedLimitEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeSpeedLimitEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeSpeedLimitEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeSpeedLimitEnum>)))
    "Constants for message type '<TrafficSignNodeSpeedLimitEnum>"
  '((:TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 . 5)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 . 10)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 . 15)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 . 20)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 . 25)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 . 30)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 . 35)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 . 40)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 . 45)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 . 50)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 . 55)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 . 60)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 . 65)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 . 70)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 . 75)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 . 80)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 . 85)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 . 90)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 . 100)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 . 110)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 . 120)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 . 130)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 . 140)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeSpeedLimitEnum)))
    "Constants for message type 'TrafficSignNodeSpeedLimitEnum"
  '((:TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 . 5)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 . 10)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 . 15)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 . 20)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 . 25)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 . 30)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 . 35)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 . 40)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 . 45)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 . 50)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 . 55)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 . 60)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 . 65)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 . 70)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 . 75)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 . 80)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 . 85)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 . 90)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 . 100)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 . 110)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 . 120)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 . 130)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 . 140)
    (:TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeSpeedLimitEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeSpeedLimitEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeSpeedLimitEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeSpeedLimitEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeSpeedLimitEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeSpeedLimitEnum>"
  "landmark_msgs/TrafficSignNodeSpeedLimitEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeSpeedLimitEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeSpeedLimitEnum"
  "landmark_msgs/TrafficSignNodeSpeedLimitEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeSpeedLimitEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeSpeedLimitEnum>"
  "e225cdc6c16c12f674510cfcfc6ad796")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeSpeedLimitEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeSpeedLimitEnum"
  "e225cdc6c16c12f674510cfcfc6ad796")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeSpeedLimitEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeSpeedLimitEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeSpeedLimitEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeSpeedLimitEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeSpeedLimitEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeSpeedLimitEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeSpeedLimitEnum
    (cl:cons ':value (value msg))
))
