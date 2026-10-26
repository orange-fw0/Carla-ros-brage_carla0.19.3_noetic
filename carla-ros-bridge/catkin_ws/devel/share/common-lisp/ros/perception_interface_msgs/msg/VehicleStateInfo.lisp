; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleStateInfo.msg.html

(cl:defclass <VehicleStateInfo> (roslisp-msg-protocol:ros-message)
  ((brake_light_info
    :reader brake_light_info
    :initarg :brake_light_info
    :type perception_interface_msgs-msg:VehicleBrakeLightInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleBrakeLightInfo))
   (tail_light_info
    :reader tail_light_info
    :initarg :tail_light_info
    :type perception_interface_msgs-msg:VehicleTailLightInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleTailLightInfo))
   (blink_light_info
    :reader blink_light_info
    :initarg :blink_light_info
    :type perception_interface_msgs-msg:VehicleBlinkLightInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleBlinkLightInfo))
   (beam_light_info
    :reader beam_light_info
    :initarg :beam_light_info
    :type perception_interface_msgs-msg:VehicleBeamLightInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleBeamLightInfo))
   (door_state_info
    :reader door_state_info
    :initarg :door_state_info
    :type perception_interface_msgs-msg:VehicleDoorStateInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleDoorStateInfo))
   (ego_lane_relation_info
    :reader ego_lane_relation_info
    :initarg :ego_lane_relation_info
    :type perception_interface_msgs-msg:VehicleEgoLaneRelationInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleEgoLaneRelationInfo))
   (cutin_info
    :reader cutin_info
    :initarg :cutin_info
    :type perception_interface_msgs-msg:VehicleCutinStateInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:VehicleCutinStateInfo)))
)

(cl:defclass VehicleStateInfo (<VehicleStateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleStateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleStateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleStateInfo> is deprecated: use perception_interface_msgs-msg:VehicleStateInfo instead.")))

(cl:ensure-generic-function 'brake_light_info-val :lambda-list '(m))
(cl:defmethod brake_light_info-val ((m <VehicleStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:brake_light_info-val is deprecated.  Use perception_interface_msgs-msg:brake_light_info instead.")
  (brake_light_info m))

(cl:ensure-generic-function 'tail_light_info-val :lambda-list '(m))
(cl:defmethod tail_light_info-val ((m <VehicleStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:tail_light_info-val is deprecated.  Use perception_interface_msgs-msg:tail_light_info instead.")
  (tail_light_info m))

(cl:ensure-generic-function 'blink_light_info-val :lambda-list '(m))
(cl:defmethod blink_light_info-val ((m <VehicleStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:blink_light_info-val is deprecated.  Use perception_interface_msgs-msg:blink_light_info instead.")
  (blink_light_info m))

(cl:ensure-generic-function 'beam_light_info-val :lambda-list '(m))
(cl:defmethod beam_light_info-val ((m <VehicleStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:beam_light_info-val is deprecated.  Use perception_interface_msgs-msg:beam_light_info instead.")
  (beam_light_info m))

(cl:ensure-generic-function 'door_state_info-val :lambda-list '(m))
(cl:defmethod door_state_info-val ((m <VehicleStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:door_state_info-val is deprecated.  Use perception_interface_msgs-msg:door_state_info instead.")
  (door_state_info m))

(cl:ensure-generic-function 'ego_lane_relation_info-val :lambda-list '(m))
(cl:defmethod ego_lane_relation_info-val ((m <VehicleStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ego_lane_relation_info-val is deprecated.  Use perception_interface_msgs-msg:ego_lane_relation_info instead.")
  (ego_lane_relation_info m))

(cl:ensure-generic-function 'cutin_info-val :lambda-list '(m))
(cl:defmethod cutin_info-val ((m <VehicleStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:cutin_info-val is deprecated.  Use perception_interface_msgs-msg:cutin_info instead.")
  (cutin_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleStateInfo>) ostream)
  "Serializes a message object of type '<VehicleStateInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_light_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tail_light_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'blink_light_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'beam_light_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door_state_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ego_lane_relation_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cutin_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleStateInfo>) istream)
  "Deserializes a message object of type '<VehicleStateInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_light_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tail_light_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'blink_light_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'beam_light_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door_state_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ego_lane_relation_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cutin_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleStateInfo>)))
  "Returns string type for a message object of type '<VehicleStateInfo>"
  "perception_interface_msgs/VehicleStateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleStateInfo)))
  "Returns string type for a message object of type 'VehicleStateInfo"
  "perception_interface_msgs/VehicleStateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleStateInfo>)))
  "Returns md5sum for a message object of type '<VehicleStateInfo>"
  "85ebd6c8f833ac9da1a9c871dec878c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleStateInfo)))
  "Returns md5sum for a message object of type 'VehicleStateInfo"
  "85ebd6c8f833ac9da1a9c871dec878c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleStateInfo>)))
  "Returns full string definition for message of type '<VehicleStateInfo>"
  (cl:format cl:nil "perception_interface_msgs/VehicleBrakeLightInfo brake_light_info~%perception_interface_msgs/VehicleTailLightInfo tail_light_info~%perception_interface_msgs/VehicleBlinkLightInfo blink_light_info~%perception_interface_msgs/VehicleBeamLightInfo beam_light_info~%perception_interface_msgs/VehicleDoorStateInfo door_state_info~%perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info~%perception_interface_msgs/VehicleCutinStateInfo cutin_info~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightInfo~%float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightInfo~%float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightInfo~%float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightInfo~%float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateInfo~%float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo~%float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateInfo~%float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleStateInfo)))
  "Returns full string definition for message of type 'VehicleStateInfo"
  (cl:format cl:nil "perception_interface_msgs/VehicleBrakeLightInfo brake_light_info~%perception_interface_msgs/VehicleTailLightInfo tail_light_info~%perception_interface_msgs/VehicleBlinkLightInfo blink_light_info~%perception_interface_msgs/VehicleBeamLightInfo beam_light_info~%perception_interface_msgs/VehicleDoorStateInfo door_state_info~%perception_interface_msgs/VehicleEgoLaneRelationInfo ego_lane_relation_info~%perception_interface_msgs/VehicleCutinStateInfo cutin_info~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightInfo~%float32 brake_light_on_score~%perception_interface_msgs/VehicleBrakeLightEnum brake_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBrakeLightEnum~%uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightInfo~%float32 tail_light_score~%float32 tail_light_unkown_score~%float32 tail_light_off_score~%float32 tail_light_on_score~%float32 tail_light_high_on_score~%perception_interface_msgs/VehicleTailLightEnum tail_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleTailLightEnum~%uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightInfo~%float32 blink_light_left_score~%float32 blink_light_right_score~%float32 blink_light_both_score~%perception_interface_msgs/VehicleBlinkLightEnum blink_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBlinkLightEnum~%uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightInfo~%float32 beam_light_on_score~%perception_interface_msgs/VehicleBeamLightEnum beam_light_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleBeamLightEnum~%uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateInfo~%float32 door_state_on_score~%perception_interface_msgs/VehicleDoorStateEnum door_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleDoorStateEnum~%uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationInfo~%float32 ego_lane_overlap_score~%float32 ego_lane_no_overlap_score~%perception_interface_msgs/VehicleEgoLaneRelationEnum ego_lane_relation~%~%================================================================================~%MSG: perception_interface_msgs/VehicleEgoLaneRelationEnum~%uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateInfo~%float32 cutin_state_on_score~%perception_interface_msgs/VehicleCutinStateEnum cutin_state~%~%================================================================================~%MSG: perception_interface_msgs/VehicleCutinStateEnum~%uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleStateInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_light_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tail_light_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'blink_light_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'beam_light_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door_state_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ego_lane_relation_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cutin_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleStateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleStateInfo
    (cl:cons ':brake_light_info (brake_light_info msg))
    (cl:cons ':tail_light_info (tail_light_info msg))
    (cl:cons ':blink_light_info (blink_light_info msg))
    (cl:cons ':beam_light_info (beam_light_info msg))
    (cl:cons ':door_state_info (door_state_info msg))
    (cl:cons ':ego_lane_relation_info (ego_lane_relation_info msg))
    (cl:cons ':cutin_info (cutin_info msg))
))
