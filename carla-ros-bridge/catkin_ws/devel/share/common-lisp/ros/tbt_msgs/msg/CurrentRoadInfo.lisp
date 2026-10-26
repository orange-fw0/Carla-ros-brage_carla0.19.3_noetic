; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude CurrentRoadInfo.msg.html

(cl:defclass <CurrentRoadInfo> (roslisp-msg-protocol:ros-message)
  ((road_class
    :reader road_class
    :initarg :road_class
    :type tbt_msgs-msg:RoadClassEnum
    :initform (cl:make-instance 'tbt_msgs-msg:RoadClassEnum))
   (road_form
    :reader road_form
    :initarg :road_form
    :type tbt_msgs-msg:RoadFormEnum
    :initform (cl:make-instance 'tbt_msgs-msg:RoadFormEnum))
   (road_type
    :reader road_type
    :initarg :road_type
    :type tbt_msgs-msg:RoadTypeEnum
    :initform (cl:make-instance 'tbt_msgs-msg:RoadTypeEnum))
   (main_side_road_status
    :reader main_side_road_status
    :initarg :main_side_road_status
    :type tbt_msgs-msg:MainSideRoadStatusEnum
    :initform (cl:make-instance 'tbt_msgs-msg:MainSideRoadStatusEnum))
   (current_speed_limit
    :reader current_speed_limit
    :initarg :current_speed_limit
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CurrentRoadInfo (<CurrentRoadInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentRoadInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentRoadInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<CurrentRoadInfo> is deprecated: use tbt_msgs-msg:CurrentRoadInfo instead.")))

(cl:ensure-generic-function 'road_class-val :lambda-list '(m))
(cl:defmethod road_class-val ((m <CurrentRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:road_class-val is deprecated.  Use tbt_msgs-msg:road_class instead.")
  (road_class m))

(cl:ensure-generic-function 'road_form-val :lambda-list '(m))
(cl:defmethod road_form-val ((m <CurrentRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:road_form-val is deprecated.  Use tbt_msgs-msg:road_form instead.")
  (road_form m))

(cl:ensure-generic-function 'road_type-val :lambda-list '(m))
(cl:defmethod road_type-val ((m <CurrentRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:road_type-val is deprecated.  Use tbt_msgs-msg:road_type instead.")
  (road_type m))

(cl:ensure-generic-function 'main_side_road_status-val :lambda-list '(m))
(cl:defmethod main_side_road_status-val ((m <CurrentRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:main_side_road_status-val is deprecated.  Use tbt_msgs-msg:main_side_road_status instead.")
  (main_side_road_status m))

(cl:ensure-generic-function 'current_speed_limit-val :lambda-list '(m))
(cl:defmethod current_speed_limit-val ((m <CurrentRoadInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:current_speed_limit-val is deprecated.  Use tbt_msgs-msg:current_speed_limit instead.")
  (current_speed_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentRoadInfo>) ostream)
  "Serializes a message object of type '<CurrentRoadInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_class) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_form) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'main_side_road_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_speed_limit)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentRoadInfo>) istream)
  "Deserializes a message object of type '<CurrentRoadInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_class) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_form) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'main_side_road_status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_speed_limit)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentRoadInfo>)))
  "Returns string type for a message object of type '<CurrentRoadInfo>"
  "tbt_msgs/CurrentRoadInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentRoadInfo)))
  "Returns string type for a message object of type 'CurrentRoadInfo"
  "tbt_msgs/CurrentRoadInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentRoadInfo>)))
  "Returns md5sum for a message object of type '<CurrentRoadInfo>"
  "4ad1d17ea5ef6d3f4b08ffaa60cb67b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentRoadInfo)))
  "Returns md5sum for a message object of type 'CurrentRoadInfo"
  "4ad1d17ea5ef6d3f4b08ffaa60cb67b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentRoadInfo>)))
  "Returns full string definition for message of type '<CurrentRoadInfo>"
  (cl:format cl:nil "tbt_msgs/RoadClassEnum road_class~%tbt_msgs/RoadFormEnum road_form~%tbt_msgs/RoadTypeEnum road_type~%tbt_msgs/MainSideRoadStatusEnum main_side_road_status~%uint8 current_speed_limit~%~%================================================================================~%MSG: tbt_msgs/RoadClassEnum~%uint8 RoadClassFreeway = 0~%uint8 RoadClassNationalRoad = 1~%uint8 RoadClassProvinceRoad = 2~%uint8 RoadClassCountyRoad = 3~%uint8 RoadClassRuralRoad = 4~%uint8 RoadClassInCountyRoad = 5~%uint8 RoadClassCitySpeedway = 6~%uint8 RoadClassMainRoad = 7~%uint8 RoadClassSecondaryRoad = 8~%uint8 RoadClassCommonRoad = 9~%uint8 RoadClassNonNaviRoad = 10~%uint8 RoadClassNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadFormEnum~%uint8 FormwayDivisedLink = 1~%uint8 FormwayCrossLink = 2~%uint8 FormwayJCT = 3~%uint8 FormwayRoundCircle = 4~%uint8 FormwayServiceRoad = 5~%uint8 FormwaySlipRoad = 6~%uint8 FormwaySideRoad = 7~%uint8 FormwaySlipJCT = 8~%uint8 FormwayExitLink = 9~%uint8 FormwayEntranceLink = 10~%uint8 FormwayTurnRightLineA = 11~%uint8 FormwayTurnRightLineB = 12~%uint8 FormwayTurnLeftLineA = 13~%uint8 FormwayTurnLeftLineB = 14~%uint8 FormwayCommonLink = 15~%uint8 FormwayTurnLeftRightLine = 16~%uint8 FormwayServiceJCTRoad = 53~%uint8 FormwayServiceSlipRoad = 56~%uint8 FormwayServiceSlipJCTRoad = 58~%uint8 FormwayNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadTypeEnum~%uint8 LinkTypeCommon = 0~%uint8 LinkTypeFerry = 1~%uint8 LinkTypeTunnel = 2~%uint8 LinkTypeBridge = 3~%uint8 LinkTypeElevatedRd = 4~%uint8 LinkTypeNull = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/MainSideRoadStatusEnum~%uint8 Default = 0~%uint8 MainRoad = 1~%uint8 SideRoad = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentRoadInfo)))
  "Returns full string definition for message of type 'CurrentRoadInfo"
  (cl:format cl:nil "tbt_msgs/RoadClassEnum road_class~%tbt_msgs/RoadFormEnum road_form~%tbt_msgs/RoadTypeEnum road_type~%tbt_msgs/MainSideRoadStatusEnum main_side_road_status~%uint8 current_speed_limit~%~%================================================================================~%MSG: tbt_msgs/RoadClassEnum~%uint8 RoadClassFreeway = 0~%uint8 RoadClassNationalRoad = 1~%uint8 RoadClassProvinceRoad = 2~%uint8 RoadClassCountyRoad = 3~%uint8 RoadClassRuralRoad = 4~%uint8 RoadClassInCountyRoad = 5~%uint8 RoadClassCitySpeedway = 6~%uint8 RoadClassMainRoad = 7~%uint8 RoadClassSecondaryRoad = 8~%uint8 RoadClassCommonRoad = 9~%uint8 RoadClassNonNaviRoad = 10~%uint8 RoadClassNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadFormEnum~%uint8 FormwayDivisedLink = 1~%uint8 FormwayCrossLink = 2~%uint8 FormwayJCT = 3~%uint8 FormwayRoundCircle = 4~%uint8 FormwayServiceRoad = 5~%uint8 FormwaySlipRoad = 6~%uint8 FormwaySideRoad = 7~%uint8 FormwaySlipJCT = 8~%uint8 FormwayExitLink = 9~%uint8 FormwayEntranceLink = 10~%uint8 FormwayTurnRightLineA = 11~%uint8 FormwayTurnRightLineB = 12~%uint8 FormwayTurnLeftLineA = 13~%uint8 FormwayTurnLeftLineB = 14~%uint8 FormwayCommonLink = 15~%uint8 FormwayTurnLeftRightLine = 16~%uint8 FormwayServiceJCTRoad = 53~%uint8 FormwayServiceSlipRoad = 56~%uint8 FormwayServiceSlipJCTRoad = 58~%uint8 FormwayNULL = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/RoadTypeEnum~%uint8 LinkTypeCommon = 0~%uint8 LinkTypeFerry = 1~%uint8 LinkTypeTunnel = 2~%uint8 LinkTypeBridge = 3~%uint8 LinkTypeElevatedRd = 4~%uint8 LinkTypeNull = 255~%uint8 value~%~%================================================================================~%MSG: tbt_msgs/MainSideRoadStatusEnum~%uint8 Default = 0~%uint8 MainRoad = 1~%uint8 SideRoad = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentRoadInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_class))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_form))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'main_side_road_status))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentRoadInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentRoadInfo
    (cl:cons ':road_class (road_class msg))
    (cl:cons ':road_form (road_form msg))
    (cl:cons ':road_type (road_type msg))
    (cl:cons ':main_side_road_status (main_side_road_status msg))
    (cl:cons ':current_speed_limit (current_speed_limit msg))
))
