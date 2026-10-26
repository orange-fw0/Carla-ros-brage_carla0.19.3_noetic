; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeStayOnEnum.msg.html

(cl:defclass <TrafficSignNodeStayOnEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeStayOnEnum (<TrafficSignNodeStayOnEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeStayOnEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeStayOnEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeStayOnEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeStayOnEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeStayOnEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeStayOnEnum>)))
    "Constants for message type '<TrafficSignNodeStayOnEnum>"
  '((:TRAFFIC_SIGN_NODE_STAYON_LEFT . 0)
    (:TRAFFIC_SIGN_NODE_STAYON_RIGHT . 1)
    (:TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT . 2)
    (:TRAFFIC_SIGN_NODE_STAYON_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_STAYON_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_STAYON_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeStayOnEnum)))
    "Constants for message type 'TrafficSignNodeStayOnEnum"
  '((:TRAFFIC_SIGN_NODE_STAYON_LEFT . 0)
    (:TRAFFIC_SIGN_NODE_STAYON_RIGHT . 1)
    (:TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT . 2)
    (:TRAFFIC_SIGN_NODE_STAYON_INVALID . 100)
    (:TRAFFIC_SIGN_NODE_STAYON_UNKNOWN . 101)
    (:TRAFFIC_SIGN_NODE_STAYON_OTHER . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeStayOnEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeStayOnEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeStayOnEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeStayOnEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeStayOnEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeStayOnEnum>"
  "landmark_msgs/TrafficSignNodeStayOnEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeStayOnEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeStayOnEnum"
  "landmark_msgs/TrafficSignNodeStayOnEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeStayOnEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeStayOnEnum>"
  "8cae315ffb7c3707a9d5ad8f0d98c2e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeStayOnEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeStayOnEnum"
  "8cae315ffb7c3707a9d5ad8f0d98c2e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeStayOnEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeStayOnEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeStayOnEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeStayOnEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeStayOnEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeStayOnEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeStayOnEnum
    (cl:cons ':value (value msg))
))
