; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude StaticManeuverBase.msg.html

(cl:defclass <StaticManeuverBase> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:ManeuverType
    :initform (cl:make-instance 'landmark_msgs-msg:ManeuverType))
   (start_cursor
    :reader start_cursor
    :initarg :start_cursor
    :type lane_navi_info_msgs-msg:Cursor
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Cursor))
   (end_cursor
    :reader end_cursor
    :initarg :end_cursor
    :type lane_navi_info_msgs-msg:Cursor
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Cursor)))
)

(cl:defclass StaticManeuverBase (<StaticManeuverBase>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticManeuverBase>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticManeuverBase)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<StaticManeuverBase> is deprecated: use lane_navi_info_msgs-msg:StaticManeuverBase instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <StaticManeuverBase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'start_cursor-val :lambda-list '(m))
(cl:defmethod start_cursor-val ((m <StaticManeuverBase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_cursor-val is deprecated.  Use lane_navi_info_msgs-msg:start_cursor instead.")
  (start_cursor m))

(cl:ensure-generic-function 'end_cursor-val :lambda-list '(m))
(cl:defmethod end_cursor-val ((m <StaticManeuverBase>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_cursor-val is deprecated.  Use lane_navi_info_msgs-msg:end_cursor instead.")
  (end_cursor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticManeuverBase>) ostream)
  "Serializes a message object of type '<StaticManeuverBase>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_cursor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_cursor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticManeuverBase>) istream)
  "Deserializes a message object of type '<StaticManeuverBase>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_cursor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_cursor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticManeuverBase>)))
  "Returns string type for a message object of type '<StaticManeuverBase>"
  "lane_navi_info_msgs/StaticManeuverBase")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticManeuverBase)))
  "Returns string type for a message object of type 'StaticManeuverBase"
  "lane_navi_info_msgs/StaticManeuverBase")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticManeuverBase>)))
  "Returns md5sum for a message object of type '<StaticManeuverBase>"
  "4a477684acc88b54fc1246964f695384")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticManeuverBase)))
  "Returns md5sum for a message object of type 'StaticManeuverBase"
  "4a477684acc88b54fc1246964f695384")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticManeuverBase>)))
  "Returns full string definition for message of type '<StaticManeuverBase>"
  (cl:format cl:nil "landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticManeuverBase)))
  "Returns full string definition for message of type 'StaticManeuverBase"
  (cl:format cl:nil "landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticManeuverBase>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_cursor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_cursor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticManeuverBase>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticManeuverBase
    (cl:cons ':type (type msg))
    (cl:cons ':start_cursor (start_cursor msg))
    (cl:cons ':end_cursor (end_cursor msg))
))
