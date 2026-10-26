; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodePassOnEnum.msg.html

(cl:defclass <TrafficSignNodePassOnEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodePassOnEnum (<TrafficSignNodePassOnEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodePassOnEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodePassOnEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodePassOnEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodePassOnEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodePassOnEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodePassOnEnum>)))
    "Constants for message type '<TrafficSignNodePassOnEnum>"
  '((:TRAFFIC_SIGN_NODE_PASSON_LEFT . 0)
    (:TRAFFIC_SIGN_NODE_PASSON_RIGHT . 1)
    (:TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT . 2)
    (:TRAFFIC_SIGN_NODE_PASSON_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_PASSON_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_PASSON_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodePassOnEnum)))
    "Constants for message type 'TrafficSignNodePassOnEnum"
  '((:TRAFFIC_SIGN_NODE_PASSON_LEFT . 0)
    (:TRAFFIC_SIGN_NODE_PASSON_RIGHT . 1)
    (:TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT . 2)
    (:TRAFFIC_SIGN_NODE_PASSON_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_PASSON_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_PASSON_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodePassOnEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodePassOnEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodePassOnEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodePassOnEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodePassOnEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodePassOnEnum>"
  "landmark_msgs/TrafficSignNodePassOnEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodePassOnEnum)))
  "Returns string type for a message object of type 'TrafficSignNodePassOnEnum"
  "landmark_msgs/TrafficSignNodePassOnEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodePassOnEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodePassOnEnum>"
  "74f812117cbfa95b4d18bcc7e414ba93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodePassOnEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodePassOnEnum"
  "74f812117cbfa95b4d18bcc7e414ba93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodePassOnEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodePassOnEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodePassOnEnum)))
  "Returns full string definition for message of type 'TrafficSignNodePassOnEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodePassOnEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodePassOnEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodePassOnEnum
    (cl:cons ':value (value msg))
))
