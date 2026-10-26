; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightObservedByEgoEnum.msg.html

(cl:defclass <TrafficLightObservedByEgoEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightObservedByEgoEnum (<TrafficLightObservedByEgoEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightObservedByEgoEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightObservedByEgoEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightObservedByEgoEnum> is deprecated: use landmark_msgs-msg:TrafficLightObservedByEgoEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightObservedByEgoEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightObservedByEgoEnum>)))
    "Constants for message type '<TrafficLightObservedByEgoEnum>"
  '((:TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN . 0)
    (:TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE . 1)
    (:TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightObservedByEgoEnum)))
    "Constants for message type 'TrafficLightObservedByEgoEnum"
  '((:TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN . 0)
    (:TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE . 1)
    (:TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightObservedByEgoEnum>) ostream)
  "Serializes a message object of type '<TrafficLightObservedByEgoEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightObservedByEgoEnum>) istream)
  "Deserializes a message object of type '<TrafficLightObservedByEgoEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightObservedByEgoEnum>)))
  "Returns string type for a message object of type '<TrafficLightObservedByEgoEnum>"
  "landmark_msgs/TrafficLightObservedByEgoEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightObservedByEgoEnum)))
  "Returns string type for a message object of type 'TrafficLightObservedByEgoEnum"
  "landmark_msgs/TrafficLightObservedByEgoEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightObservedByEgoEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightObservedByEgoEnum>"
  "d08b826631bb4abef4f4b488a293318e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightObservedByEgoEnum)))
  "Returns md5sum for a message object of type 'TrafficLightObservedByEgoEnum"
  "d08b826631bb4abef4f4b488a293318e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightObservedByEgoEnum>)))
  "Returns full string definition for message of type '<TrafficLightObservedByEgoEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightObservedByEgoEnum)))
  "Returns full string definition for message of type 'TrafficLightObservedByEgoEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightObservedByEgoEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightObservedByEgoEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightObservedByEgoEnum
    (cl:cons ':value (value msg))
))
