; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterNodeDirectionTypeEnum.msg.html

(cl:defclass <LaneCenterNodeDirectionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneCenterNodeDirectionTypeEnum (<LaneCenterNodeDirectionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterNodeDirectionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterNodeDirectionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterNodeDirectionTypeEnum> is deprecated: use landmark_msgs-msg:LaneCenterNodeDirectionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneCenterNodeDirectionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneCenterNodeDirectionTypeEnum>)))
    "Constants for message type '<LaneCenterNodeDirectionTypeEnum>"
  '((:LANE_TYPE_GUIDE_DIRECTION_UNKNOWN . 0)
    (:LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT . 1)
    (:LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT . 2)
    (:LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT . 3)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE . 6)
    (:LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE . 7)
    (:LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT . 8)
    (:LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT . 9)
    (:LANE_TYPE_GUIDE_DIRECTION_TEXT . 21)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT . 22)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT . 23)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN . 24)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN . 25)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW . 26)
    (:LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW . 27)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN . 28)
    (:LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN . 29)
    (:LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN . 30)
    (:LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN . 31)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT . 32)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT . 33))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneCenterNodeDirectionTypeEnum)))
    "Constants for message type 'LaneCenterNodeDirectionTypeEnum"
  '((:LANE_TYPE_GUIDE_DIRECTION_UNKNOWN . 0)
    (:LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT . 1)
    (:LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT . 2)
    (:LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT . 3)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE . 6)
    (:LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE . 7)
    (:LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT . 8)
    (:LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT . 9)
    (:LANE_TYPE_GUIDE_DIRECTION_TEXT . 21)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT . 22)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT . 23)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN . 24)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN . 25)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW . 26)
    (:LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW . 27)
    (:LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN . 28)
    (:LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN . 29)
    (:LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN . 30)
    (:LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN . 31)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT . 32)
    (:LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT . 33))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterNodeDirectionTypeEnum>) ostream)
  "Serializes a message object of type '<LaneCenterNodeDirectionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterNodeDirectionTypeEnum>) istream)
  "Deserializes a message object of type '<LaneCenterNodeDirectionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterNodeDirectionTypeEnum>)))
  "Returns string type for a message object of type '<LaneCenterNodeDirectionTypeEnum>"
  "landmark_msgs/LaneCenterNodeDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterNodeDirectionTypeEnum)))
  "Returns string type for a message object of type 'LaneCenterNodeDirectionTypeEnum"
  "landmark_msgs/LaneCenterNodeDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterNodeDirectionTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneCenterNodeDirectionTypeEnum>"
  "d37c557f67f5c4046eb1cd94e348c42d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterNodeDirectionTypeEnum)))
  "Returns md5sum for a message object of type 'LaneCenterNodeDirectionTypeEnum"
  "d37c557f67f5c4046eb1cd94e348c42d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterNodeDirectionTypeEnum>)))
  "Returns full string definition for message of type '<LaneCenterNodeDirectionTypeEnum>"
  (cl:format cl:nil "uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterNodeDirectionTypeEnum)))
  "Returns full string definition for message of type 'LaneCenterNodeDirectionTypeEnum"
  (cl:format cl:nil "uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterNodeDirectionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterNodeDirectionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterNodeDirectionTypeEnum
    (cl:cons ':value (value msg))
))
