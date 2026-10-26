; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeWaitingAreaDirectionEnum.msg.html

(cl:defclass <TrafficSignNodeWaitingAreaDirectionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeWaitingAreaDirectionEnum (<TrafficSignNodeWaitingAreaDirectionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeWaitingAreaDirectionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeWaitingAreaDirectionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeWaitingAreaDirectionEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeWaitingAreaDirectionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeWaitingAreaDirectionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeWaitingAreaDirectionEnum>)))
    "Constants for message type '<TrafficSignNodeWaitingAreaDirectionEnum>"
  '((:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE . 1)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT . 2)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeWaitingAreaDirectionEnum)))
    "Constants for message type 'TrafficSignNodeWaitingAreaDirectionEnum"
  '((:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE . 1)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT . 2)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT . 3)
    (:TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeWaitingAreaDirectionEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeWaitingAreaDirectionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeWaitingAreaDirectionEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeWaitingAreaDirectionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeWaitingAreaDirectionEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeWaitingAreaDirectionEnum>"
  "landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeWaitingAreaDirectionEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeWaitingAreaDirectionEnum"
  "landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeWaitingAreaDirectionEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeWaitingAreaDirectionEnum>"
  "431c3577e6afc7041faaec8c2f54bf01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeWaitingAreaDirectionEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeWaitingAreaDirectionEnum"
  "431c3577e6afc7041faaec8c2f54bf01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeWaitingAreaDirectionEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeWaitingAreaDirectionEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeWaitingAreaDirectionEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeWaitingAreaDirectionEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeWaitingAreaDirectionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeWaitingAreaDirectionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeWaitingAreaDirectionEnum
    (cl:cons ':value (value msg))
))
