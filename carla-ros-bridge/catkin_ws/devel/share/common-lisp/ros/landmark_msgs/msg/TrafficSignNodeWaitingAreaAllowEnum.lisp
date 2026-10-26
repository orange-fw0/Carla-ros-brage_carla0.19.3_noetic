; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeWaitingAreaAllowEnum.msg.html

(cl:defclass <TrafficSignNodeWaitingAreaAllowEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeWaitingAreaAllowEnum (<TrafficSignNodeWaitingAreaAllowEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeWaitingAreaAllowEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeWaitingAreaAllowEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeWaitingAreaAllowEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeWaitingAreaAllowEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeWaitingAreaAllowEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeWaitingAreaAllowEnum>)))
    "Constants for message type '<TrafficSignNodeWaitingAreaAllowEnum>"
  '((:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES . 2)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeWaitingAreaAllowEnum)))
    "Constants for message type 'TrafficSignNodeWaitingAreaAllowEnum"
  '((:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID . 0)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN . 1)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES . 2)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeWaitingAreaAllowEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeWaitingAreaAllowEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeWaitingAreaAllowEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeWaitingAreaAllowEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeWaitingAreaAllowEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeWaitingAreaAllowEnum>"
  "landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeWaitingAreaAllowEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeWaitingAreaAllowEnum"
  "landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeWaitingAreaAllowEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeWaitingAreaAllowEnum>"
  "fbe6d87a898613232e50685646523269")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeWaitingAreaAllowEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeWaitingAreaAllowEnum"
  "fbe6d87a898613232e50685646523269")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeWaitingAreaAllowEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeWaitingAreaAllowEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeWaitingAreaAllowEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeWaitingAreaAllowEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeWaitingAreaAllowEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeWaitingAreaAllowEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeWaitingAreaAllowEnum
    (cl:cons ':value (value msg))
))
