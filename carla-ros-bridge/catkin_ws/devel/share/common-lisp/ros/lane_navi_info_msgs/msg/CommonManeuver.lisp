; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude CommonManeuver.msg.html

(cl:defclass <CommonManeuver> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (maneuver_base
    :reader maneuver_base
    :initarg :maneuver_base
    :type lane_navi_info_msgs-msg:StaticManeuverBase
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:StaticManeuverBase))
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (condition
    :reader condition
    :initarg :condition
    :type lane_navi_info_msgs-msg:ConditionType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:ConditionType)))
)

(cl:defclass CommonManeuver (<CommonManeuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonManeuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonManeuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<CommonManeuver> is deprecated: use lane_navi_info_msgs-msg:CommonManeuver instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <CommonManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'maneuver_base-val :lambda-list '(m))
(cl:defmethod maneuver_base-val ((m <CommonManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:maneuver_base-val is deprecated.  Use lane_navi_info_msgs-msg:maneuver_base instead.")
  (maneuver_base m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <CommonManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'condition-val :lambda-list '(m))
(cl:defmethod condition-val ((m <CommonManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:condition-val is deprecated.  Use lane_navi_info_msgs-msg:condition instead.")
  (condition m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommonManeuver>)))
    "Constants for message type '<CommonManeuver>"
  '((:MANEUVER_VALID . 1)
    (:VALUE_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommonManeuver)))
    "Constants for message type 'CommonManeuver"
  '((:MANEUVER_VALID . 1)
    (:VALUE_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonManeuver>) ostream)
  "Serializes a message object of type '<CommonManeuver>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maneuver_base) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'condition) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonManeuver>) istream)
  "Deserializes a message object of type '<CommonManeuver>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maneuver_base) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'condition) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonManeuver>)))
  "Returns string type for a message object of type '<CommonManeuver>"
  "lane_navi_info_msgs/CommonManeuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonManeuver)))
  "Returns string type for a message object of type 'CommonManeuver"
  "lane_navi_info_msgs/CommonManeuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonManeuver>)))
  "Returns md5sum for a message object of type '<CommonManeuver>"
  "fd9c0e28a1d997d0e06a8a08ab44ba23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonManeuver)))
  "Returns md5sum for a message object of type 'CommonManeuver"
  "fd9c0e28a1d997d0e06a8a08ab44ba23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonManeuver>)))
  "Returns full string definition for message of type '<CommonManeuver>"
  (cl:format cl:nil "uint8 MANEUVER_VALID = 1~%uint8 VALUE_VALID = 2~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%float32 value~%lane_navi_info_msgs/ConditionType condition~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/ConditionType~%uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonManeuver)))
  "Returns full string definition for message of type 'CommonManeuver"
  (cl:format cl:nil "uint8 MANEUVER_VALID = 1~%uint8 VALUE_VALID = 2~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%float32 value~%lane_navi_info_msgs/ConditionType condition~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/ConditionType~%uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonManeuver>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maneuver_base))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'condition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonManeuver>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonManeuver
    (cl:cons ':available (available msg))
    (cl:cons ':maneuver_base (maneuver_base msg))
    (cl:cons ':value (value msg))
    (cl:cons ':condition (condition msg))
))
