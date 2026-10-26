; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TBTMainAction.msg.html

(cl:defclass <TBTMainAction> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TBTMainAction (<TBTMainAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TBTMainAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TBTMainAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TBTMainAction> is deprecated: use lane_navi_info_msgs-msg:TBTMainAction instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TBTMainAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TBTMainAction>)))
    "Constants for message type '<TBTMainAction>"
  '((:MAINACTIONNULL . 0)
    (:MAINACTIONTURNLEFT . 1)
    (:MAINACTIONTURNRIGHT . 2)
    (:MAINACTIONSLIGHTLEFT . 3)
    (:MAINACTIONSLIGHTRIGHT . 4)
    (:MAINACTIONTURNHARDLEFT . 5)
    (:MAINACTIONTURNHARDRIGHT . 6)
    (:MAINACTIONUTURN . 7)
    (:MAINACTIONCONTINUE . 8)
    (:MAINACTIONMERGELEFT . 9)
    (:MAINACTIONMERGERIGHT . 10)
    (:MAINACTIONENTRYRING . 11)
    (:MAINACTIONLEAVERING . 12)
    (:MAINACTIONSLOW . 13)
    (:MAINACTIONPLUGCONTINUE . 14)
    (:MAINACTIONENTERBUILDING . 65)
    (:MAINACTIONLEAVEBUILDING . 66)
    (:MAINACTIONBYELEVATOR . 67)
    (:MAINACTIONBYSTAIR . 68)
    (:MAINACTIONBYESCALATOR . 69)
    (:MAINACTIONCOUNT . 70))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TBTMainAction)))
    "Constants for message type 'TBTMainAction"
  '((:MAINACTIONNULL . 0)
    (:MAINACTIONTURNLEFT . 1)
    (:MAINACTIONTURNRIGHT . 2)
    (:MAINACTIONSLIGHTLEFT . 3)
    (:MAINACTIONSLIGHTRIGHT . 4)
    (:MAINACTIONTURNHARDLEFT . 5)
    (:MAINACTIONTURNHARDRIGHT . 6)
    (:MAINACTIONUTURN . 7)
    (:MAINACTIONCONTINUE . 8)
    (:MAINACTIONMERGELEFT . 9)
    (:MAINACTIONMERGERIGHT . 10)
    (:MAINACTIONENTRYRING . 11)
    (:MAINACTIONLEAVERING . 12)
    (:MAINACTIONSLOW . 13)
    (:MAINACTIONPLUGCONTINUE . 14)
    (:MAINACTIONENTERBUILDING . 65)
    (:MAINACTIONLEAVEBUILDING . 66)
    (:MAINACTIONBYELEVATOR . 67)
    (:MAINACTIONBYSTAIR . 68)
    (:MAINACTIONBYESCALATOR . 69)
    (:MAINACTIONCOUNT . 70))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TBTMainAction>) ostream)
  "Serializes a message object of type '<TBTMainAction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TBTMainAction>) istream)
  "Deserializes a message object of type '<TBTMainAction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TBTMainAction>)))
  "Returns string type for a message object of type '<TBTMainAction>"
  "lane_navi_info_msgs/TBTMainAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TBTMainAction)))
  "Returns string type for a message object of type 'TBTMainAction"
  "lane_navi_info_msgs/TBTMainAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TBTMainAction>)))
  "Returns md5sum for a message object of type '<TBTMainAction>"
  "131551752205e5e351b7ddb2d49fa66a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TBTMainAction)))
  "Returns md5sum for a message object of type 'TBTMainAction"
  "131551752205e5e351b7ddb2d49fa66a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TBTMainAction>)))
  "Returns full string definition for message of type '<TBTMainAction>"
  (cl:format cl:nil "uint16 MainActionNULL = 0~%uint16 MainActionTurnLeft = 1~%uint16 MainActionTurnRight = 2~%uint16 MainActionSlightLeft = 3~%uint16 MainActionSlightRight = 4~%uint16 MainActionTurnHardLeft = 5~%uint16 MainActionTurnHardRight = 6~%uint16 MainActionUTurn = 7~%uint16 MainActionContinue = 8~%uint16 MainActionMergeLeft = 9~%uint16 MainActionMergeRight = 10~%uint16 MainActionEntryRing = 11~%uint16 MainActionLeaveRing = 12~%uint16 MainActionSlow = 13~%uint16 MainActionPlugContinue = 14~%uint16 MainActionEnterBuilding = 65~%uint16 MainActionLeaveBuilding = 66~%uint16 MainActionByElevator = 67~%uint16 MainActionByStair = 68~%uint16 MainActionByEscalator = 69~%uint16 MainActionCount = 70~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TBTMainAction)))
  "Returns full string definition for message of type 'TBTMainAction"
  (cl:format cl:nil "uint16 MainActionNULL = 0~%uint16 MainActionTurnLeft = 1~%uint16 MainActionTurnRight = 2~%uint16 MainActionSlightLeft = 3~%uint16 MainActionSlightRight = 4~%uint16 MainActionTurnHardLeft = 5~%uint16 MainActionTurnHardRight = 6~%uint16 MainActionUTurn = 7~%uint16 MainActionContinue = 8~%uint16 MainActionMergeLeft = 9~%uint16 MainActionMergeRight = 10~%uint16 MainActionEntryRing = 11~%uint16 MainActionLeaveRing = 12~%uint16 MainActionSlow = 13~%uint16 MainActionPlugContinue = 14~%uint16 MainActionEnterBuilding = 65~%uint16 MainActionLeaveBuilding = 66~%uint16 MainActionByElevator = 67~%uint16 MainActionByStair = 68~%uint16 MainActionByEscalator = 69~%uint16 MainActionCount = 70~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TBTMainAction>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TBTMainAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TBTMainAction
    (cl:cons ':value (value msg))
))
