; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LaneChangeTypeEnum.msg.html

(cl:defclass <LaneChangeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneChangeTypeEnum (<LaneChangeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneChangeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneChangeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LaneChangeTypeEnum> is deprecated: use system_manager_msgs-msg:LaneChangeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneChangeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneChangeTypeEnum>)))
    "Constants for message type '<LaneChangeTypeEnum>"
  '((:FORBIDDEN . 0)
    (:INTERACTIVE . 1)
    (:REMOVE_FORBIDDEN . 2)
    (:REMOVE_INTERACTIVE . 3)
    (:CONFIRM_MODE . 4)
    (:REMOVE_CONFIRM_MODE . 5)
    (:CONFIRM_APPROVED . 6)
    (:CONFIRM_REFUSED . 7)
    (:ENABLE_EVASIVE . 10)
    (:DISABLE_EVASIVE . 11)
    (:FORBIDDEN_INTERACTIVE . 12)
    (:REMOVE_FORBIDDEN_INTERACTIVE . 13)
    (:FORBIDDEN_AUTO . 14)
    (:REMOVE_FORBIDDEN_AUTO . 15)
    (:FORBIDDEN_NAVI . 16)
    (:REMOVE_FORBIDDEN_NAVI . 17)
    (:CONFIRM_TIMEOUT . 18)
    (:ENABLE_INITIALTIVE_AUTOMOUS . 20)
    (:ENABLE_RECOMMAND_AUTOMOUS . 21)
    (:DISABLE_AUTOMOUS . 22)
    (:ENABLE_PREFERED_LANE . 23)
    (:DISABLE_PREFERED_LANE . 24)
    (:LEFT_FIRST_LANE . 25)
    (:LEFT_SECOND_LANE . 26))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneChangeTypeEnum)))
    "Constants for message type 'LaneChangeTypeEnum"
  '((:FORBIDDEN . 0)
    (:INTERACTIVE . 1)
    (:REMOVE_FORBIDDEN . 2)
    (:REMOVE_INTERACTIVE . 3)
    (:CONFIRM_MODE . 4)
    (:REMOVE_CONFIRM_MODE . 5)
    (:CONFIRM_APPROVED . 6)
    (:CONFIRM_REFUSED . 7)
    (:ENABLE_EVASIVE . 10)
    (:DISABLE_EVASIVE . 11)
    (:FORBIDDEN_INTERACTIVE . 12)
    (:REMOVE_FORBIDDEN_INTERACTIVE . 13)
    (:FORBIDDEN_AUTO . 14)
    (:REMOVE_FORBIDDEN_AUTO . 15)
    (:FORBIDDEN_NAVI . 16)
    (:REMOVE_FORBIDDEN_NAVI . 17)
    (:CONFIRM_TIMEOUT . 18)
    (:ENABLE_INITIALTIVE_AUTOMOUS . 20)
    (:ENABLE_RECOMMAND_AUTOMOUS . 21)
    (:DISABLE_AUTOMOUS . 22)
    (:ENABLE_PREFERED_LANE . 23)
    (:DISABLE_PREFERED_LANE . 24)
    (:LEFT_FIRST_LANE . 25)
    (:LEFT_SECOND_LANE . 26))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneChangeTypeEnum>) ostream)
  "Serializes a message object of type '<LaneChangeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneChangeTypeEnum>) istream)
  "Deserializes a message object of type '<LaneChangeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneChangeTypeEnum>)))
  "Returns string type for a message object of type '<LaneChangeTypeEnum>"
  "system_manager_msgs/LaneChangeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneChangeTypeEnum)))
  "Returns string type for a message object of type 'LaneChangeTypeEnum"
  "system_manager_msgs/LaneChangeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneChangeTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneChangeTypeEnum>"
  "ebe324a955dd9606b912133a33701b7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneChangeTypeEnum)))
  "Returns md5sum for a message object of type 'LaneChangeTypeEnum"
  "ebe324a955dd9606b912133a33701b7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneChangeTypeEnum>)))
  "Returns full string definition for message of type '<LaneChangeTypeEnum>"
  (cl:format cl:nil "uint8 FORBIDDEN = 0~%uint8 INTERACTIVE = 1~%uint8 REMOVE_FORBIDDEN = 2~%uint8 REMOVE_INTERACTIVE = 3~%uint8 CONFIRM_MODE = 4~%uint8 REMOVE_CONFIRM_MODE = 5~%uint8 CONFIRM_APPROVED = 6~%uint8 CONFIRM_REFUSED = 7~%uint8 ENABLE_EVASIVE = 10~%uint8 DISABLE_EVASIVE = 11~%uint8 FORBIDDEN_INTERACTIVE = 12~%uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13~%uint8 FORBIDDEN_AUTO = 14~%uint8 REMOVE_FORBIDDEN_AUTO = 15~%uint8 FORBIDDEN_NAVI = 16~%uint8 REMOVE_FORBIDDEN_NAVI = 17~%uint8 CONFIRM_TIMEOUT = 18~%uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20~%uint8 ENABLE_RECOMMAND_AUTOMOUS = 21~%uint8 DISABLE_AUTOMOUS = 22~%uint8 ENABLE_PREFERED_LANE = 23~%uint8 DISABLE_PREFERED_LANE = 24~%uint8 LEFT_FIRST_LANE = 25~%uint8 LEFT_SECOND_LANE = 26~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneChangeTypeEnum)))
  "Returns full string definition for message of type 'LaneChangeTypeEnum"
  (cl:format cl:nil "uint8 FORBIDDEN = 0~%uint8 INTERACTIVE = 1~%uint8 REMOVE_FORBIDDEN = 2~%uint8 REMOVE_INTERACTIVE = 3~%uint8 CONFIRM_MODE = 4~%uint8 REMOVE_CONFIRM_MODE = 5~%uint8 CONFIRM_APPROVED = 6~%uint8 CONFIRM_REFUSED = 7~%uint8 ENABLE_EVASIVE = 10~%uint8 DISABLE_EVASIVE = 11~%uint8 FORBIDDEN_INTERACTIVE = 12~%uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13~%uint8 FORBIDDEN_AUTO = 14~%uint8 REMOVE_FORBIDDEN_AUTO = 15~%uint8 FORBIDDEN_NAVI = 16~%uint8 REMOVE_FORBIDDEN_NAVI = 17~%uint8 CONFIRM_TIMEOUT = 18~%uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20~%uint8 ENABLE_RECOMMAND_AUTOMOUS = 21~%uint8 DISABLE_AUTOMOUS = 22~%uint8 ENABLE_PREFERED_LANE = 23~%uint8 DISABLE_PREFERED_LANE = 24~%uint8 LEFT_FIRST_LANE = 25~%uint8 LEFT_SECOND_LANE = 26~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneChangeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneChangeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneChangeTypeEnum
    (cl:cons ':value (value msg))
))
