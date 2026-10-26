; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeEtcDistributionDirectionEnum.msg.html

(cl:defclass <TrafficSignNodeEtcDistributionDirectionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeEtcDistributionDirectionEnum (<TrafficSignNodeEtcDistributionDirectionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeEtcDistributionDirectionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeEtcDistributionDirectionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeEtcDistributionDirectionEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeEtcDistributionDirectionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeEtcDistributionDirectionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeEtcDistributionDirectionEnum>)))
    "Constants for message type '<TrafficSignNodeEtcDistributionDirectionEnum>"
  '((:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE . 1)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT . 2)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeEtcDistributionDirectionEnum)))
    "Constants for message type 'TrafficSignNodeEtcDistributionDirectionEnum"
  '((:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE . 1)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT . 2)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeEtcDistributionDirectionEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeEtcDistributionDirectionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeEtcDistributionDirectionEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeEtcDistributionDirectionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeEtcDistributionDirectionEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeEtcDistributionDirectionEnum>"
  "landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeEtcDistributionDirectionEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeEtcDistributionDirectionEnum"
  "landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeEtcDistributionDirectionEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeEtcDistributionDirectionEnum>"
  "93e6647c5db4ea45526e3f0ee17ff86a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeEtcDistributionDirectionEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeEtcDistributionDirectionEnum"
  "93e6647c5db4ea45526e3f0ee17ff86a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeEtcDistributionDirectionEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeEtcDistributionDirectionEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeEtcDistributionDirectionEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeEtcDistributionDirectionEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeEtcDistributionDirectionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeEtcDistributionDirectionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeEtcDistributionDirectionEnum
    (cl:cons ':value (value msg))
))
