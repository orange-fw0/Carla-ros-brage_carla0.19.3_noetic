; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNodeDirectionEnum.msg.html

(cl:defclass <TrafficSignNodeDirectionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignNodeDirectionEnum (<TrafficSignNodeDirectionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNodeDirectionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNodeDirectionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNodeDirectionEnum> is deprecated: use landmark_msgs-msg:TrafficSignNodeDirectionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignNodeDirectionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNodeDirectionEnum>)))
    "Constants for message type '<TrafficSignNodeDirectionEnum>"
  '((:TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_DIRECTION_FRONT . 1)
    (:TRAFFIC_SIGN_NODE_DIRECTION_BACK . 3)
    (:TRAFFIC_SIGN_NODE_DIRECTION_LEFT . 4)
    (:TRAFFIC_SIGN_NODE_DIRECTION_RIGHT . 5)
    (:TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT . 6)
    (:TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT . 7)
    (:TRAFFIC_SIGN_NODE_DIRECTION_X . 8)
    (:TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNodeDirectionEnum)))
    "Constants for message type 'TrafficSignNodeDirectionEnum"
  '((:TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_NODE_DIRECTION_FRONT . 1)
    (:TRAFFIC_SIGN_NODE_DIRECTION_BACK . 3)
    (:TRAFFIC_SIGN_NODE_DIRECTION_LEFT . 4)
    (:TRAFFIC_SIGN_NODE_DIRECTION_RIGHT . 5)
    (:TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT . 6)
    (:TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT . 7)
    (:TRAFFIC_SIGN_NODE_DIRECTION_X . 8)
    (:TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNodeDirectionEnum>) ostream)
  "Serializes a message object of type '<TrafficSignNodeDirectionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNodeDirectionEnum>) istream)
  "Deserializes a message object of type '<TrafficSignNodeDirectionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNodeDirectionEnum>)))
  "Returns string type for a message object of type '<TrafficSignNodeDirectionEnum>"
  "landmark_msgs/TrafficSignNodeDirectionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNodeDirectionEnum)))
  "Returns string type for a message object of type 'TrafficSignNodeDirectionEnum"
  "landmark_msgs/TrafficSignNodeDirectionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNodeDirectionEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignNodeDirectionEnum>"
  "a534a7c9e1ee7b5730c62c6cf5a7e150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNodeDirectionEnum)))
  "Returns md5sum for a message object of type 'TrafficSignNodeDirectionEnum"
  "a534a7c9e1ee7b5730c62c6cf5a7e150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNodeDirectionEnum>)))
  "Returns full string definition for message of type '<TrafficSignNodeDirectionEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNodeDirectionEnum)))
  "Returns full string definition for message of type 'TrafficSignNodeDirectionEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNodeDirectionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNodeDirectionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNodeDirectionEnum
    (cl:cons ':value (value msg))
))
