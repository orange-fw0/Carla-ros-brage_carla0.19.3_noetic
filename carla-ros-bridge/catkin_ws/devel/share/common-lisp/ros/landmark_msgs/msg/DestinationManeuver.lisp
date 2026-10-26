; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude DestinationManeuver.msg.html

(cl:defclass <DestinationManeuver> (roslisp-msg-protocol:ros-message)
  ((maneuver_base
    :reader maneuver_base
    :initarg :maneuver_base
    :type landmark_msgs-msg:ManeuverBase
    :initform (cl:make-instance 'landmark_msgs-msg:ManeuverBase))
   (parking_info
    :reader parking_info
    :initarg :parking_info
    :type landmark_msgs-msg:DestinationParkingInfo
    :initform (cl:make-instance 'landmark_msgs-msg:DestinationParkingInfo)))
)

(cl:defclass DestinationManeuver (<DestinationManeuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DestinationManeuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DestinationManeuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<DestinationManeuver> is deprecated: use landmark_msgs-msg:DestinationManeuver instead.")))

(cl:ensure-generic-function 'maneuver_base-val :lambda-list '(m))
(cl:defmethod maneuver_base-val ((m <DestinationManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:maneuver_base-val is deprecated.  Use landmark_msgs-msg:maneuver_base instead.")
  (maneuver_base m))

(cl:ensure-generic-function 'parking_info-val :lambda-list '(m))
(cl:defmethod parking_info-val ((m <DestinationManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:parking_info-val is deprecated.  Use landmark_msgs-msg:parking_info instead.")
  (parking_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DestinationManeuver>) ostream)
  "Serializes a message object of type '<DestinationManeuver>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maneuver_base) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DestinationManeuver>) istream)
  "Deserializes a message object of type '<DestinationManeuver>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maneuver_base) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DestinationManeuver>)))
  "Returns string type for a message object of type '<DestinationManeuver>"
  "landmark_msgs/DestinationManeuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DestinationManeuver)))
  "Returns string type for a message object of type 'DestinationManeuver"
  "landmark_msgs/DestinationManeuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DestinationManeuver>)))
  "Returns md5sum for a message object of type '<DestinationManeuver>"
  "f0fed9fc2429158a8364844f36a4899e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DestinationManeuver)))
  "Returns md5sum for a message object of type 'DestinationManeuver"
  "f0fed9fc2429158a8364844f36a4899e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DestinationManeuver>)))
  "Returns full string definition for message of type '<DestinationManeuver>"
  (cl:format cl:nil "landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DestinationParkingInfo parking_info~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingInfo~%uint8 PARKING_TYPE_VALID = 1~%uint8 ID_VALID = 2~%uint8 available~%landmark_msgs/DestinationParkingType parking_type~%landmark_msgs/TrackId id~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingType~%uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DestinationManeuver)))
  "Returns full string definition for message of type 'DestinationManeuver"
  (cl:format cl:nil "landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DestinationParkingInfo parking_info~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingInfo~%uint8 PARKING_TYPE_VALID = 1~%uint8 ID_VALID = 2~%uint8 available~%landmark_msgs/DestinationParkingType parking_type~%landmark_msgs/TrackId id~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingType~%uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DestinationManeuver>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maneuver_base))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DestinationManeuver>))
  "Converts a ROS message object to a list"
  (cl:list 'DestinationManeuver
    (cl:cons ':maneuver_base (maneuver_base msg))
    (cl:cons ':parking_info (parking_info msg))
))
