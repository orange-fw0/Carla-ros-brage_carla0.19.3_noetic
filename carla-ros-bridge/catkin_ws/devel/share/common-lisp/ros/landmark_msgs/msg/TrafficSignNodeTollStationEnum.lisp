; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeTollStationEnum.msg.html

(cl:defclass <TrafficSignNodeTollStationEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeTollStationEnum (<TrafficSignNodeTollStationEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeTollStationEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeTollStationEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeTollStationEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeTollStationEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeTollStationEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeTollStationEnum>)))
    "Constants for message type '<TrafficSignNodeTollStationEnum>"
  '((:TRAFFIC_SIGN_NODE_TOLLSTATION_ETC . 0)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL . 1)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL . 2)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeTollStationEnum)))
    "Constants for message type 'TrafficSignNodeTollStationEnum"
  '((:TRAFFIC_SIGN_NODE_TOLLSTATION_ETC . 0)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL . 1)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL . 2)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeTollStationEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeTollStationEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeTollStationEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeTollStationEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeTollStationEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeTollStationEnum>"
  "landmark_msgs/TrafficSignNodeTollStationEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeTollStationEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeTollStationEnum"
  "landmark_msgs/TrafficSignNodeTollStationEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeTollStationEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeTollStationEnum>"
  "1117f5193a66aeae40d3516f214b635c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeTollStationEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeTollStationEnum"
  "1117f5193a66aeae40d3516f214b635c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeTollStationEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeTollStationEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeTollStationEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeTollStationEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeTollStationEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeTollStationEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeTollStationEnum
    (cl:cons ':value (value msg))
))
