; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude LaneSplittingMergingManeuver.msg.html

(cl:defclass <LaneSplittingMergingManeuver> (roslisp-msg-protocol:ros-message)
  ((maneuver_base
    :reader maneuver_base
    :initarg :maneuver_base
    :type lane_navi_info_msgs-msg:StaticManeuverBase
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:StaticManeuverBase))
   (is_continue
    :reader is_continue
    :initarg :is_continue
    :type cl:boolean
    :initform cl:nil)
   (is_none_continue
    :reader is_none_continue
    :initarg :is_none_continue
    :type cl:boolean
    :initform cl:nil)
   (direction
    :reader direction
    :initarg :direction
    :type landmark_msgs-msg:Orientation
    :initform (cl:make-instance 'landmark_msgs-msg:Orientation))
   (linked_lane_ids
    :reader linked_lane_ids
    :initarg :linked_lane_ids
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId))))
)

(cl:defclass LaneSplittingMergingManeuver (<LaneSplittingMergingManeuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneSplittingMergingManeuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneSplittingMergingManeuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<LaneSplittingMergingManeuver> is deprecated: use lane_navi_info_msgs-msg:LaneSplittingMergingManeuver instead.")))

(cl:ensure-generic-function 'maneuver_base-val :lambda-list '(m))
(cl:defmethod maneuver_base-val ((m <LaneSplittingMergingManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:maneuver_base-val is deprecated.  Use lane_navi_info_msgs-msg:maneuver_base instead.")
  (maneuver_base m))

(cl:ensure-generic-function 'is_continue-val :lambda-list '(m))
(cl:defmethod is_continue-val ((m <LaneSplittingMergingManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_continue-val is deprecated.  Use lane_navi_info_msgs-msg:is_continue instead.")
  (is_continue m))

(cl:ensure-generic-function 'is_none_continue-val :lambda-list '(m))
(cl:defmethod is_none_continue-val ((m <LaneSplittingMergingManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:is_none_continue-val is deprecated.  Use lane_navi_info_msgs-msg:is_none_continue instead.")
  (is_none_continue m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LaneSplittingMergingManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:direction-val is deprecated.  Use lane_navi_info_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'linked_lane_ids-val :lambda-list '(m))
(cl:defmethod linked_lane_ids-val ((m <LaneSplittingMergingManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:linked_lane_ids-val is deprecated.  Use lane_navi_info_msgs-msg:linked_lane_ids instead.")
  (linked_lane_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneSplittingMergingManeuver>) ostream)
  "Serializes a message object of type '<LaneSplittingMergingManeuver>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maneuver_base) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_continue) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_none_continue) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'linked_lane_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'linked_lane_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneSplittingMergingManeuver>) istream)
  "Deserializes a message object of type '<LaneSplittingMergingManeuver>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maneuver_base) istream)
    (cl:setf (cl:slot-value msg 'is_continue) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_none_continue) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'linked_lane_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'linked_lane_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneSplittingMergingManeuver>)))
  "Returns string type for a message object of type '<LaneSplittingMergingManeuver>"
  "lane_navi_info_msgs/LaneSplittingMergingManeuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneSplittingMergingManeuver)))
  "Returns string type for a message object of type 'LaneSplittingMergingManeuver"
  "lane_navi_info_msgs/LaneSplittingMergingManeuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneSplittingMergingManeuver>)))
  "Returns md5sum for a message object of type '<LaneSplittingMergingManeuver>"
  "5c08fa1b9d032d24240ae41f7be76736")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneSplittingMergingManeuver)))
  "Returns md5sum for a message object of type 'LaneSplittingMergingManeuver"
  "5c08fa1b9d032d24240ae41f7be76736")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneSplittingMergingManeuver>)))
  "Returns full string definition for message of type '<LaneSplittingMergingManeuver>"
  (cl:format cl:nil "lane_navi_info_msgs/StaticManeuverBase maneuver_base~%bool is_continue~%bool is_none_continue~%landmark_msgs/Orientation direction~%landmark_msgs/TrackId[] linked_lane_ids~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneSplittingMergingManeuver)))
  "Returns full string definition for message of type 'LaneSplittingMergingManeuver"
  (cl:format cl:nil "lane_navi_info_msgs/StaticManeuverBase maneuver_base~%bool is_continue~%bool is_none_continue~%landmark_msgs/Orientation direction~%landmark_msgs/TrackId[] linked_lane_ids~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneSplittingMergingManeuver>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maneuver_base))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'linked_lane_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneSplittingMergingManeuver>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneSplittingMergingManeuver
    (cl:cons ':maneuver_base (maneuver_base msg))
    (cl:cons ':is_continue (is_continue msg))
    (cl:cons ':is_none_continue (is_none_continue msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':linked_lane_ids (linked_lane_ids msg))
))
