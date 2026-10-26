; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeHeightLimitEnum.msg.html

(cl:defclass <TrafficSignNodeHeightLimitEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeHeightLimitEnum (<TrafficSignNodeHeightLimitEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeHeightLimitEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeHeightLimitEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeHeightLimitEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeHeightLimitEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeHeightLimitEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeHeightLimitEnum>)))
    "Constants for message type '<TrafficSignNodeHeightLimitEnum>"
  '((:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 . 0)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 . 1)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 . 2)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 . 3)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 . 4)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 . 5)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 . 6)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 . 7)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 . 8)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 . 9)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE . 10)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeHeightLimitEnum)))
    "Constants for message type 'TrafficSignNodeHeightLimitEnum"
  '((:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 . 0)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 . 1)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 . 2)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 . 3)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 . 4)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 . 5)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 . 6)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 . 7)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 . 8)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 . 9)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE . 10)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeHeightLimitEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeHeightLimitEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeHeightLimitEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeHeightLimitEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeHeightLimitEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeHeightLimitEnum>"
  "landmark_msgs/TrafficSignNodeHeightLimitEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeHeightLimitEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeHeightLimitEnum"
  "landmark_msgs/TrafficSignNodeHeightLimitEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeHeightLimitEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeHeightLimitEnum>"
  "c70d44238e615753de3c2440803129da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeHeightLimitEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeHeightLimitEnum"
  "c70d44238e615753de3c2440803129da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeHeightLimitEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeHeightLimitEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeHeightLimitEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeHeightLimitEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeHeightLimitEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeHeightLimitEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeHeightLimitEnum
    (cl:cons ':value (value msg))
))
