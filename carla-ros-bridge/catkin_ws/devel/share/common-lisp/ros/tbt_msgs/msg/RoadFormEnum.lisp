; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude RoadFormEnum.msg.html

(cl:defclass <RoadFormEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadFormEnum (<RoadFormEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadFormEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadFormEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<RoadFormEnum> is deprecated: use tbt_msgs-msg:RoadFormEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadFormEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadFormEnum>)))
    "Constants for message type '<RoadFormEnum>"
  '((:FORMWAYDIVISEDLINK . 1)
    (:FORMWAYCROSSLINK . 2)
    (:FORMWAYJCT . 3)
    (:FORMWAYROUNDCIRCLE . 4)
    (:FORMWAYSERVICEROAD . 5)
    (:FORMWAYSLIPROAD . 6)
    (:FORMWAYSIDEROAD . 7)
    (:FORMWAYSLIPJCT . 8)
    (:FORMWAYEXITLINK . 9)
    (:FORMWAYENTRANCELINK . 10)
    (:FORMWAYTURNRIGHTLINEA . 11)
    (:FORMWAYTURNRIGHTLINEB . 12)
    (:FORMWAYTURNLEFTLINEA . 13)
    (:FORMWAYTURNLEFTLINEB . 14)
    (:FORMWAYCOMMONLINK . 15)
    (:FORMWAYTURNLEFTRIGHTLINE . 16)
    (:FORMWAYSERVICEJCTROAD . 53)
    (:FORMWAYSERVICESLIPROAD . 56)
    (:FORMWAYSERVICESLIPJCTROAD . 58)
    (:FORMWAYNULL . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadFormEnum)))
    "Constants for message type 'RoadFormEnum"
  '((:FORMWAYDIVISEDLINK . 1)
    (:FORMWAYCROSSLINK . 2)
    (:FORMWAYJCT . 3)
    (:FORMWAYROUNDCIRCLE . 4)
    (:FORMWAYSERVICEROAD . 5)
    (:FORMWAYSLIPROAD . 6)
    (:FORMWAYSIDEROAD . 7)
    (:FORMWAYSLIPJCT . 8)
    (:FORMWAYEXITLINK . 9)
    (:FORMWAYENTRANCELINK . 10)
    (:FORMWAYTURNRIGHTLINEA . 11)
    (:FORMWAYTURNRIGHTLINEB . 12)
    (:FORMWAYTURNLEFTLINEA . 13)
    (:FORMWAYTURNLEFTLINEB . 14)
    (:FORMWAYCOMMONLINK . 15)
    (:FORMWAYTURNLEFTRIGHTLINE . 16)
    (:FORMWAYSERVICEJCTROAD . 53)
    (:FORMWAYSERVICESLIPROAD . 56)
    (:FORMWAYSERVICESLIPJCTROAD . 58)
    (:FORMWAYNULL . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadFormEnum>) ostream)
  "Serializes a message object of type '<RoadFormEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadFormEnum>) istream)
  "Deserializes a message object of type '<RoadFormEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadFormEnum>)))
  "Returns string type for a message object of type '<RoadFormEnum>"
  "tbt_msgs/RoadFormEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadFormEnum)))
  "Returns string type for a message object of type 'RoadFormEnum"
  "tbt_msgs/RoadFormEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadFormEnum>)))
  "Returns md5sum for a message object of type '<RoadFormEnum>"
  "20007d61d8d9173318afdf0d9bf7206f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadFormEnum)))
  "Returns md5sum for a message object of type 'RoadFormEnum"
  "20007d61d8d9173318afdf0d9bf7206f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadFormEnum>)))
  "Returns full string definition for message of type '<RoadFormEnum>"
  (cl:format cl:nil "uint8 FormwayDivisedLink = 1~%uint8 FormwayCrossLink = 2~%uint8 FormwayJCT = 3~%uint8 FormwayRoundCircle = 4~%uint8 FormwayServiceRoad = 5~%uint8 FormwaySlipRoad = 6~%uint8 FormwaySideRoad = 7~%uint8 FormwaySlipJCT = 8~%uint8 FormwayExitLink = 9~%uint8 FormwayEntranceLink = 10~%uint8 FormwayTurnRightLineA = 11~%uint8 FormwayTurnRightLineB = 12~%uint8 FormwayTurnLeftLineA = 13~%uint8 FormwayTurnLeftLineB = 14~%uint8 FormwayCommonLink = 15~%uint8 FormwayTurnLeftRightLine = 16~%uint8 FormwayServiceJCTRoad = 53~%uint8 FormwayServiceSlipRoad = 56~%uint8 FormwayServiceSlipJCTRoad = 58~%uint8 FormwayNULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadFormEnum)))
  "Returns full string definition for message of type 'RoadFormEnum"
  (cl:format cl:nil "uint8 FormwayDivisedLink = 1~%uint8 FormwayCrossLink = 2~%uint8 FormwayJCT = 3~%uint8 FormwayRoundCircle = 4~%uint8 FormwayServiceRoad = 5~%uint8 FormwaySlipRoad = 6~%uint8 FormwaySideRoad = 7~%uint8 FormwaySlipJCT = 8~%uint8 FormwayExitLink = 9~%uint8 FormwayEntranceLink = 10~%uint8 FormwayTurnRightLineA = 11~%uint8 FormwayTurnRightLineB = 12~%uint8 FormwayTurnLeftLineA = 13~%uint8 FormwayTurnLeftLineB = 14~%uint8 FormwayCommonLink = 15~%uint8 FormwayTurnLeftRightLine = 16~%uint8 FormwayServiceJCTRoad = 53~%uint8 FormwayServiceSlipRoad = 56~%uint8 FormwayServiceSlipJCTRoad = 58~%uint8 FormwayNULL = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadFormEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadFormEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadFormEnum
    (cl:cons ':value (value msg))
))
