; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude SignTypeEnum.msg.html

(cl:defclass <SignTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SignTypeEnum (<SignTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<SignTypeEnum> is deprecated: use tbt_msgs-msg:SignTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SignTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SignTypeEnum>)))
    "Constants for message type '<SignTypeEnum>"
  '((:FACILITYTYPENULL . 0)
    (:FACILITYTYPELEFTINTERFLOW . 1)
    (:FACILITYTYPERIGHTINTERFLOW . 2)
    (:FACILITYTYPESHARPTURN . 3)
    (:FACILITYTYPEREVERSETURN . 4)
    (:FACILITYTYPELINKINGTURN . 5)
    (:FACILITYTYPEACCIDENTAREA . 6)
    (:FACILITYTYPEFALLINGROCKS . 7)
    (:FACILITYTYPEFAILWAYCROSS . 8)
    (:FACILITYTYPESLIPPERY . 9)
    (:FACILITYTYPEMAXSPEEDLIMIT . 10)
    (:FACILITYTYPEMINSPEEDLIMIT . 11)
    (:FACILITYTYPEVILLAGE . 12)
    (:FACILITYTYPELEFTNARROW . 13)
    (:FACILITYTYPERIGHTNARROW . 14)
    (:FACILITYTYPEDOUBLENARROW . 15)
    (:FACILITYTYPECROSSWINDAREA . 16)
    (:FACILITYTYPESCHOOLZONE . 17)
    (:FACILITYTYPEOVERTAKEFORBID . 18)
    (:FACILITYTYPENARROWBRIDGE . 19)
    (:FACILITYTYPEDOUBLEDETOUR . 20)
    (:FACILITYTYPELEFTDETOUR . 21)
    (:FACILITYTYPERIGHTDETOUR . 22)
    (:FACILITYTYPELEFTDANGEROUS . 23)
    (:FACILITYTYPERIGHTDANGEROUS . 24)
    (:FACILITYTYPEUPPERSTEEP . 25)
    (:FACILITYTYPEDOWNSTEEP . 26)
    (:FACILITYTYPEWATERPAVEMENT . 27)
    (:FACILITYTYPEIRREGULARITYPAVEMENT . 28))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SignTypeEnum)))
    "Constants for message type 'SignTypeEnum"
  '((:FACILITYTYPENULL . 0)
    (:FACILITYTYPELEFTINTERFLOW . 1)
    (:FACILITYTYPERIGHTINTERFLOW . 2)
    (:FACILITYTYPESHARPTURN . 3)
    (:FACILITYTYPEREVERSETURN . 4)
    (:FACILITYTYPELINKINGTURN . 5)
    (:FACILITYTYPEACCIDENTAREA . 6)
    (:FACILITYTYPEFALLINGROCKS . 7)
    (:FACILITYTYPEFAILWAYCROSS . 8)
    (:FACILITYTYPESLIPPERY . 9)
    (:FACILITYTYPEMAXSPEEDLIMIT . 10)
    (:FACILITYTYPEMINSPEEDLIMIT . 11)
    (:FACILITYTYPEVILLAGE . 12)
    (:FACILITYTYPELEFTNARROW . 13)
    (:FACILITYTYPERIGHTNARROW . 14)
    (:FACILITYTYPEDOUBLENARROW . 15)
    (:FACILITYTYPECROSSWINDAREA . 16)
    (:FACILITYTYPESCHOOLZONE . 17)
    (:FACILITYTYPEOVERTAKEFORBID . 18)
    (:FACILITYTYPENARROWBRIDGE . 19)
    (:FACILITYTYPEDOUBLEDETOUR . 20)
    (:FACILITYTYPELEFTDETOUR . 21)
    (:FACILITYTYPERIGHTDETOUR . 22)
    (:FACILITYTYPELEFTDANGEROUS . 23)
    (:FACILITYTYPERIGHTDANGEROUS . 24)
    (:FACILITYTYPEUPPERSTEEP . 25)
    (:FACILITYTYPEDOWNSTEEP . 26)
    (:FACILITYTYPEWATERPAVEMENT . 27)
    (:FACILITYTYPEIRREGULARITYPAVEMENT . 28))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignTypeEnum>) ostream)
  "Serializes a message object of type '<SignTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignTypeEnum>) istream)
  "Deserializes a message object of type '<SignTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignTypeEnum>)))
  "Returns string type for a message object of type '<SignTypeEnum>"
  "tbt_msgs/SignTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignTypeEnum)))
  "Returns string type for a message object of type 'SignTypeEnum"
  "tbt_msgs/SignTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignTypeEnum>)))
  "Returns md5sum for a message object of type '<SignTypeEnum>"
  "ce9f7ec7ae1c22a2321b9761d7247759")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignTypeEnum)))
  "Returns md5sum for a message object of type 'SignTypeEnum"
  "ce9f7ec7ae1c22a2321b9761d7247759")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignTypeEnum>)))
  "Returns full string definition for message of type '<SignTypeEnum>"
  (cl:format cl:nil "uint8 FacilityTypeNULL = 0~%uint8 FacilityTypeLeftInterflow = 1~%uint8 FacilityTypeRightInterflow = 2~%uint8 FacilityTypeSharpTurn = 3~%uint8 FacilityTypeReverseTurn = 4~%uint8 FacilityTypeLinkingTurn = 5~%uint8 FacilityTypeAccidentArea = 6~%uint8 FacilityTypeFallingRocks = 7~%uint8 FacilityTypeFailwayCross = 8~%uint8 FacilityTypeSlippery = 9~%uint8 FacilityTypeMaxSpeedLimit = 10~%uint8 FacilityTypeMinSpeedLimit = 11~%uint8 FacilityTypeVillage = 12~%uint8 FacilityTypeLeftNarrow = 13~%uint8 FacilityTypeRightNarrow = 14~%uint8 FacilityTypeDoubleNarrow = 15~%uint8 FacilityTypeCrosswindArea = 16~%uint8 FacilityTypeSchoolZone = 17~%uint8 FacilityTypeOvertakeForbid = 18~%uint8 FacilityTypeNarrowBridge = 19~%uint8 FacilityTypeDoubleDetour = 20~%uint8 FacilityTypeLeftDetour = 21~%uint8 FacilityTypeRightDetour = 22~%uint8 FacilityTypeLeftDangerous = 23~%uint8 FacilityTypeRightDangerous = 24~%uint8 FacilityTypeUpperSteep = 25~%uint8 FacilityTypeDownSteep = 26~%uint8 FacilityTypeWaterPavement = 27~%uint8 FacilityTypeIrregularityPavement = 28~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignTypeEnum)))
  "Returns full string definition for message of type 'SignTypeEnum"
  (cl:format cl:nil "uint8 FacilityTypeNULL = 0~%uint8 FacilityTypeLeftInterflow = 1~%uint8 FacilityTypeRightInterflow = 2~%uint8 FacilityTypeSharpTurn = 3~%uint8 FacilityTypeReverseTurn = 4~%uint8 FacilityTypeLinkingTurn = 5~%uint8 FacilityTypeAccidentArea = 6~%uint8 FacilityTypeFallingRocks = 7~%uint8 FacilityTypeFailwayCross = 8~%uint8 FacilityTypeSlippery = 9~%uint8 FacilityTypeMaxSpeedLimit = 10~%uint8 FacilityTypeMinSpeedLimit = 11~%uint8 FacilityTypeVillage = 12~%uint8 FacilityTypeLeftNarrow = 13~%uint8 FacilityTypeRightNarrow = 14~%uint8 FacilityTypeDoubleNarrow = 15~%uint8 FacilityTypeCrosswindArea = 16~%uint8 FacilityTypeSchoolZone = 17~%uint8 FacilityTypeOvertakeForbid = 18~%uint8 FacilityTypeNarrowBridge = 19~%uint8 FacilityTypeDoubleDetour = 20~%uint8 FacilityTypeLeftDetour = 21~%uint8 FacilityTypeRightDetour = 22~%uint8 FacilityTypeLeftDangerous = 23~%uint8 FacilityTypeRightDangerous = 24~%uint8 FacilityTypeUpperSteep = 25~%uint8 FacilityTypeDownSteep = 26~%uint8 FacilityTypeWaterPavement = 27~%uint8 FacilityTypeIrregularityPavement = 28~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'SignTypeEnum
    (cl:cons ':value (value msg))
))
