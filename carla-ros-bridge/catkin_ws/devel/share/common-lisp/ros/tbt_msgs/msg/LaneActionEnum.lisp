; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude LaneActionEnum.msg.html

(cl:defclass <LaneActionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneActionEnum (<LaneActionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneActionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneActionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<LaneActionEnum> is deprecated: use tbt_msgs-msg:LaneActionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneActionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneActionEnum>)))
    "Constants for message type '<LaneActionEnum>"
  '((:LANEACTIONAHEAD . 0)
    (:LANEACTIONLEFT . 1)
    (:LANEACTIONAHEADLEFT . 2)
    (:LANEACTIONRIGHT . 3)
    (:LANEACTIONAHEADRIGHT . 4)
    (:LANEACTIONLUTURN . 5)
    (:LANEACTIONLEFTRIGH . 6)
    (:LANEACTIONAHEADLEFTRIGHT . 7)
    (:LANEACTIONRUTURN . 8)
    (:LANEACTIONAHEADLUTURN . 9)
    (:LANEACTIONAHEADRUTURN . 10)
    (:LANEACTIONLEFTLUTURN . 11)
    (:LANEACTIONRIGHTRUTURN . 12)
    (:LANEACTIONLEFTINAHEAD . 13)
    (:LANEACTIONLEFTLUTURNLEX . 14)
    (:LANEACTIONRESERVED . 15)
    (:LANEACTIONAHEADLEFTLUTURN . 16)
    (:LANEACTIONRIGHTLUTURN . 17)
    (:LANEACTIONLEFTRIGHTLUTURN . 18)
    (:LANEACTIONAHEADRIGHTLUTURN . 19)
    (:LANEACTIONLEFTRUTURN . 20)
    (:LANEACTIONBUS . 21)
    (:LANEACTIONEMPTY . 22)
    (:LANEACTIONVARIABLE . 23)
    (:LANEACTIONNULL . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneActionEnum)))
    "Constants for message type 'LaneActionEnum"
  '((:LANEACTIONAHEAD . 0)
    (:LANEACTIONLEFT . 1)
    (:LANEACTIONAHEADLEFT . 2)
    (:LANEACTIONRIGHT . 3)
    (:LANEACTIONAHEADRIGHT . 4)
    (:LANEACTIONLUTURN . 5)
    (:LANEACTIONLEFTRIGH . 6)
    (:LANEACTIONAHEADLEFTRIGHT . 7)
    (:LANEACTIONRUTURN . 8)
    (:LANEACTIONAHEADLUTURN . 9)
    (:LANEACTIONAHEADRUTURN . 10)
    (:LANEACTIONLEFTLUTURN . 11)
    (:LANEACTIONRIGHTRUTURN . 12)
    (:LANEACTIONLEFTINAHEAD . 13)
    (:LANEACTIONLEFTLUTURNLEX . 14)
    (:LANEACTIONRESERVED . 15)
    (:LANEACTIONAHEADLEFTLUTURN . 16)
    (:LANEACTIONRIGHTLUTURN . 17)
    (:LANEACTIONLEFTRIGHTLUTURN . 18)
    (:LANEACTIONAHEADRIGHTLUTURN . 19)
    (:LANEACTIONLEFTRUTURN . 20)
    (:LANEACTIONBUS . 21)
    (:LANEACTIONEMPTY . 22)
    (:LANEACTIONVARIABLE . 23)
    (:LANEACTIONNULL . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneActionEnum>) ostream)
  "Serializes a message object of type '<LaneActionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneActionEnum>) istream)
  "Deserializes a message object of type '<LaneActionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneActionEnum>)))
  "Returns string type for a message object of type '<LaneActionEnum>"
  "tbt_msgs/LaneActionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneActionEnum)))
  "Returns string type for a message object of type 'LaneActionEnum"
  "tbt_msgs/LaneActionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneActionEnum>)))
  "Returns md5sum for a message object of type '<LaneActionEnum>"
  "382832d4819bfde2d55fca448b8bea7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneActionEnum)))
  "Returns md5sum for a message object of type 'LaneActionEnum"
  "382832d4819bfde2d55fca448b8bea7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneActionEnum>)))
  "Returns full string definition for message of type '<LaneActionEnum>"
  (cl:format cl:nil "uint8 LaneActionAhead = 0~%uint8 LaneActionLeft = 1~%uint8 LaneActionAheadLeft = 2~%uint8 LaneActionRight = 3~%uint8 LaneActionAheadRight = 4~%uint8 LaneActionLUTurn = 5~%uint8 LaneActionLeftRigh = 6~%uint8 LaneActionAheadLeftRight = 7~%uint8 LaneActionRUTurn = 8~%uint8 LaneActionAheadLUTurn = 9~%uint8 LaneActionAheadRUTurn = 10~%uint8 LaneActionLeftLUTurn = 11~%uint8 LaneActionRightRUTurn = 12~%uint8 LaneActionLeftInAhead = 13~%uint8 LaneActionLeftLUTurnLEx = 14~%uint8 LaneActionReserved = 15~%uint8 LaneActionAheadLeftLUTurn = 16~%uint8 LaneActionRightLUTurn = 17~%uint8 LaneActionLeftRightLUTurn = 18~%uint8 LaneActionAheadRightLUTurn = 19~%uint8 LaneActionLeftRUTurn = 20~%uint8 LaneActionBus = 21~%uint8 LaneActionEmpty = 22~%uint8 LaneActionVariable = 23~%uint8 LaneActionNULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneActionEnum)))
  "Returns full string definition for message of type 'LaneActionEnum"
  (cl:format cl:nil "uint8 LaneActionAhead = 0~%uint8 LaneActionLeft = 1~%uint8 LaneActionAheadLeft = 2~%uint8 LaneActionRight = 3~%uint8 LaneActionAheadRight = 4~%uint8 LaneActionLUTurn = 5~%uint8 LaneActionLeftRigh = 6~%uint8 LaneActionAheadLeftRight = 7~%uint8 LaneActionRUTurn = 8~%uint8 LaneActionAheadLUTurn = 9~%uint8 LaneActionAheadRUTurn = 10~%uint8 LaneActionLeftLUTurn = 11~%uint8 LaneActionRightRUTurn = 12~%uint8 LaneActionLeftInAhead = 13~%uint8 LaneActionLeftLUTurnLEx = 14~%uint8 LaneActionReserved = 15~%uint8 LaneActionAheadLeftLUTurn = 16~%uint8 LaneActionRightLUTurn = 17~%uint8 LaneActionLeftRightLUTurn = 18~%uint8 LaneActionAheadRightLUTurn = 19~%uint8 LaneActionLeftRUTurn = 20~%uint8 LaneActionBus = 21~%uint8 LaneActionEmpty = 22~%uint8 LaneActionVariable = 23~%uint8 LaneActionNULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneActionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneActionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneActionEnum
    (cl:cons ':value (value msg))
))
