; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightDirectionEnum.msg.html

(cl:defclass <TrafficLightDirectionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightDirectionEnum (<TrafficLightDirectionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightDirectionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightDirectionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightDirectionEnum> is deprecated: use landmark_msgs-msg:TrafficLightDirectionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightDirectionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightDirectionEnum>)))
    "Constants for message type '<TrafficLightDirectionEnum>"
  '((:UNKNOWN . 0)
    (:GO_STRAIGHT . 1)
    (:TURN_RIGHT . 2)
    (:TURN_LEFT . 3)
    (:U_TURN_LEFT . 4)
    (:U_TURN_RIGHT . 5)
    (:LEFT_CONFLUENCE . 6)
    (:RIGHT_CONFLUENCE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightDirectionEnum)))
    "Constants for message type 'TrafficLightDirectionEnum"
  '((:UNKNOWN . 0)
    (:GO_STRAIGHT . 1)
    (:TURN_RIGHT . 2)
    (:TURN_LEFT . 3)
    (:U_TURN_LEFT . 4)
    (:U_TURN_RIGHT . 5)
    (:LEFT_CONFLUENCE . 6)
    (:RIGHT_CONFLUENCE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightDirectionEnum>) ostream)
  "Serializes a message object of type '<TrafficLightDirectionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightDirectionEnum>) istream)
  "Deserializes a message object of type '<TrafficLightDirectionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightDirectionEnum>)))
  "Returns string type for a message object of type '<TrafficLightDirectionEnum>"
  "landmark_msgs/TrafficLightDirectionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightDirectionEnum)))
  "Returns string type for a message object of type 'TrafficLightDirectionEnum"
  "landmark_msgs/TrafficLightDirectionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightDirectionEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightDirectionEnum>"
  "8f5b964fa477006f09a4b8ce540c0f2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightDirectionEnum)))
  "Returns md5sum for a message object of type 'TrafficLightDirectionEnum"
  "8f5b964fa477006f09a4b8ce540c0f2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightDirectionEnum>)))
  "Returns full string definition for message of type '<TrafficLightDirectionEnum>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightDirectionEnum)))
  "Returns full string definition for message of type 'TrafficLightDirectionEnum"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightDirectionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightDirectionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightDirectionEnum
    (cl:cons ':value (value msg))
))
