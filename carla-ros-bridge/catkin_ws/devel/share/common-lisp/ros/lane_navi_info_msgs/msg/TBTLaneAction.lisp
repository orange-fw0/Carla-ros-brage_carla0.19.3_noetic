; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TBTLaneAction.msg.html

(cl:defclass <TBTLaneAction> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TBTLaneAction (<TBTLaneAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TBTLaneAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TBTLaneAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TBTLaneAction> is deprecated: use lane_navi_info_msgs-msg:TBTLaneAction instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TBTLaneAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TBTLaneAction>)))
    "Constants for message type '<TBTLaneAction>"
  '((:LANE_ACTION_AHEAD . 0)
    (:LANE_ACTION_LEFT . 1)
    (:LANE_ACTION_AHEAD_LEFT . 2)
    (:LANE_ACTION_RIGHT . 3)
    (:LANE_ACTION_AHEAD_RIGHT . 4)
    (:LANE_ACTION_LU_TURN . 5)
    (:LANE_ACTION_LEFT_RIGHT . 6)
    (:LANE_ACTION_AHEAD_LEFT_RIGHT . 7)
    (:LANE_ACTION_RU_TURN . 8)
    (:LANE_ACTION_AHEAD_LU_TURN . 9)
    (:LANE_ACTION_AHEAD_RU_TURN . 10)
    (:LANE_ACTION_LEFT_LU_TURN . 11)
    (:LANE_ACTION_RIGHT_RU_TURN . 12)
    (:LANE_ACTION_LEFT_IN_AHEAD . 13)
    (:LANE_ACTION_LEFT_LU_TURN_EX . 14)
    (:LANE_ACTION_RESERVED . 15)
    (:LANE_ACTION_AHEAD_LEFT_LU_TURN . 16)
    (:LANE_ACTION_RIGHT_LU_TURN . 17)
    (:LANE_ACTION_LEFT_RIGHT_LU_TURN . 18)
    (:LANE_ACTION_AHEAD_RIGHT_LU_TURN . 19)
    (:LANE_ACTION_LEFT_RU_TURN . 20)
    (:LANE_ACTION_BUS . 21)
    (:LANE_ACTION_EMPTY . 22)
    (:LANE_ACTION_VARIABLE . 23)
    (:LANE_ACTION_DEDICATED . 24)
    (:LANE_ACTION_TIDAL . 25)
    (:LANE_ACTION_NULL . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TBTLaneAction)))
    "Constants for message type 'TBTLaneAction"
  '((:LANE_ACTION_AHEAD . 0)
    (:LANE_ACTION_LEFT . 1)
    (:LANE_ACTION_AHEAD_LEFT . 2)
    (:LANE_ACTION_RIGHT . 3)
    (:LANE_ACTION_AHEAD_RIGHT . 4)
    (:LANE_ACTION_LU_TURN . 5)
    (:LANE_ACTION_LEFT_RIGHT . 6)
    (:LANE_ACTION_AHEAD_LEFT_RIGHT . 7)
    (:LANE_ACTION_RU_TURN . 8)
    (:LANE_ACTION_AHEAD_LU_TURN . 9)
    (:LANE_ACTION_AHEAD_RU_TURN . 10)
    (:LANE_ACTION_LEFT_LU_TURN . 11)
    (:LANE_ACTION_RIGHT_RU_TURN . 12)
    (:LANE_ACTION_LEFT_IN_AHEAD . 13)
    (:LANE_ACTION_LEFT_LU_TURN_EX . 14)
    (:LANE_ACTION_RESERVED . 15)
    (:LANE_ACTION_AHEAD_LEFT_LU_TURN . 16)
    (:LANE_ACTION_RIGHT_LU_TURN . 17)
    (:LANE_ACTION_LEFT_RIGHT_LU_TURN . 18)
    (:LANE_ACTION_AHEAD_RIGHT_LU_TURN . 19)
    (:LANE_ACTION_LEFT_RU_TURN . 20)
    (:LANE_ACTION_BUS . 21)
    (:LANE_ACTION_EMPTY . 22)
    (:LANE_ACTION_VARIABLE . 23)
    (:LANE_ACTION_DEDICATED . 24)
    (:LANE_ACTION_TIDAL . 25)
    (:LANE_ACTION_NULL . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TBTLaneAction>) ostream)
  "Serializes a message object of type '<TBTLaneAction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TBTLaneAction>) istream)
  "Deserializes a message object of type '<TBTLaneAction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TBTLaneAction>)))
  "Returns string type for a message object of type '<TBTLaneAction>"
  "lane_navi_info_msgs/TBTLaneAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TBTLaneAction)))
  "Returns string type for a message object of type 'TBTLaneAction"
  "lane_navi_info_msgs/TBTLaneAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TBTLaneAction>)))
  "Returns md5sum for a message object of type '<TBTLaneAction>"
  "d0ba199bb593aae807032ea729d94228")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TBTLaneAction)))
  "Returns md5sum for a message object of type 'TBTLaneAction"
  "d0ba199bb593aae807032ea729d94228")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TBTLaneAction>)))
  "Returns full string definition for message of type '<TBTLaneAction>"
  (cl:format cl:nil "uint8 LANE_ACTION_AHEAD = 0~%uint8 LANE_ACTION_LEFT = 1~%uint8 LANE_ACTION_AHEAD_LEFT = 2~%uint8 LANE_ACTION_RIGHT = 3~%uint8 LANE_ACTION_AHEAD_RIGHT = 4~%uint8 LANE_ACTION_LU_TURN = 5~%uint8 LANE_ACTION_LEFT_RIGHT = 6~%uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7~%uint8 LANE_ACTION_RU_TURN = 8~%uint8 LANE_ACTION_AHEAD_LU_TURN = 9~%uint8 LANE_ACTION_AHEAD_RU_TURN = 10~%uint8 LANE_ACTION_LEFT_LU_TURN = 11~%uint8 LANE_ACTION_RIGHT_RU_TURN = 12~%uint8 LANE_ACTION_LEFT_IN_AHEAD = 13~%uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14~%uint8 LANE_ACTION_RESERVED = 15~%uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16~%uint8 LANE_ACTION_RIGHT_LU_TURN = 17~%uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18~%uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19~%uint8 LANE_ACTION_LEFT_RU_TURN = 20~%uint8 LANE_ACTION_BUS = 21~%uint8 LANE_ACTION_EMPTY = 22~%uint8 LANE_ACTION_VARIABLE = 23~%uint8 LANE_ACTION_DEDICATED = 24~%uint8 LANE_ACTION_TIDAL = 25~%uint8 LANE_ACTION_NULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TBTLaneAction)))
  "Returns full string definition for message of type 'TBTLaneAction"
  (cl:format cl:nil "uint8 LANE_ACTION_AHEAD = 0~%uint8 LANE_ACTION_LEFT = 1~%uint8 LANE_ACTION_AHEAD_LEFT = 2~%uint8 LANE_ACTION_RIGHT = 3~%uint8 LANE_ACTION_AHEAD_RIGHT = 4~%uint8 LANE_ACTION_LU_TURN = 5~%uint8 LANE_ACTION_LEFT_RIGHT = 6~%uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7~%uint8 LANE_ACTION_RU_TURN = 8~%uint8 LANE_ACTION_AHEAD_LU_TURN = 9~%uint8 LANE_ACTION_AHEAD_RU_TURN = 10~%uint8 LANE_ACTION_LEFT_LU_TURN = 11~%uint8 LANE_ACTION_RIGHT_RU_TURN = 12~%uint8 LANE_ACTION_LEFT_IN_AHEAD = 13~%uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14~%uint8 LANE_ACTION_RESERVED = 15~%uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16~%uint8 LANE_ACTION_RIGHT_LU_TURN = 17~%uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18~%uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19~%uint8 LANE_ACTION_LEFT_RU_TURN = 20~%uint8 LANE_ACTION_BUS = 21~%uint8 LANE_ACTION_EMPTY = 22~%uint8 LANE_ACTION_VARIABLE = 23~%uint8 LANE_ACTION_DEDICATED = 24~%uint8 LANE_ACTION_TIDAL = 25~%uint8 LANE_ACTION_NULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TBTLaneAction>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TBTLaneAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TBTLaneAction
    (cl:cons ':value (value msg))
))
