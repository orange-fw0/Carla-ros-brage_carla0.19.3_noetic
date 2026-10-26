;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::ExtendTBT)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'ExtendTBT (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::EXTENDTBT")
  (make-package "LANE_NAVI_INFO_MSGS::EXTENDTBT"))

(in-package "ROS")
;;//! \htmlinclude ExtendTBT.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lane_navi_info_msgs::ExtendTBT
  :super ros::object
  :slots (_header _path _static_maneuvers _sd_paths _roads _lane_groups _intersections _meta _tbt_info _reserved ))

(defmethod lane_navi_info_msgs::ExtendTBT
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path __path) (instance lane_navi_info_msgs::Path :init))
    ((:static_maneuvers __static_maneuvers) (instance lane_navi_info_msgs::StaticManeuvers :init))
    ((:sd_paths __sd_paths) ())
    ((:roads __roads) ())
    ((:lane_groups __lane_groups) ())
    ((:intersections __intersections) ())
    ((:meta __meta) (instance lane_navi_info_msgs::Meta :init))
    ((:tbt_info __tbt_info) (instance lane_navi_info_msgs::TBTInfo :init))
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _path __path)
   (setq _static_maneuvers __static_maneuvers)
   (setq _sd_paths __sd_paths)
   (setq _roads __roads)
   (setq _lane_groups __lane_groups)
   (setq _intersections __intersections)
   (setq _meta __meta)
   (setq _tbt_info __tbt_info)
   (setq _reserved (string __reserved))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:static_maneuvers
   (&rest __static_maneuvers)
   (if (keywordp (car __static_maneuvers))
       (send* _static_maneuvers __static_maneuvers)
     (progn
       (if __static_maneuvers (setq _static_maneuvers (car __static_maneuvers)))
       _static_maneuvers)))
  (:sd_paths
   (&rest __sd_paths)
   (if (keywordp (car __sd_paths))
       (send* _sd_paths __sd_paths)
     (progn
       (if __sd_paths (setq _sd_paths (car __sd_paths)))
       _sd_paths)))
  (:roads
   (&rest __roads)
   (if (keywordp (car __roads))
       (send* _roads __roads)
     (progn
       (if __roads (setq _roads (car __roads)))
       _roads)))
  (:lane_groups
   (&rest __lane_groups)
   (if (keywordp (car __lane_groups))
       (send* _lane_groups __lane_groups)
     (progn
       (if __lane_groups (setq _lane_groups (car __lane_groups)))
       _lane_groups)))
  (:intersections
   (&rest __intersections)
   (if (keywordp (car __intersections))
       (send* _intersections __intersections)
     (progn
       (if __intersections (setq _intersections (car __intersections)))
       _intersections)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:tbt_info
   (&rest __tbt_info)
   (if (keywordp (car __tbt_info))
       (send* _tbt_info __tbt_info)
     (progn
       (if __tbt_info (setq _tbt_info (car __tbt_info)))
       _tbt_info)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; lane_navi_info_msgs/Path _path
    (send _path :serialization-length)
    ;; lane_navi_info_msgs/StaticManeuvers _static_maneuvers
    (send _static_maneuvers :serialization-length)
    ;; lane_navi_info_msgs/Path[] _sd_paths
    (apply #'+ (send-all _sd_paths :serialization-length)) 4
    ;; lane_navi_info_msgs/Road[] _roads
    (apply #'+ (send-all _roads :serialization-length)) 4
    ;; lane_navi_info_msgs/LaneGroup[] _lane_groups
    (apply #'+ (send-all _lane_groups :serialization-length)) 4
    ;; lane_navi_info_msgs/Intersection[] _intersections
    (apply #'+ (send-all _intersections :serialization-length)) 4
    ;; lane_navi_info_msgs/Meta _meta
    (send _meta :serialization-length)
    ;; lane_navi_info_msgs/TBTInfo _tbt_info
    (send _tbt_info :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; lane_navi_info_msgs/Path _path
       (send _path :serialize s)
     ;; lane_navi_info_msgs/StaticManeuvers _static_maneuvers
       (send _static_maneuvers :serialize s)
     ;; lane_navi_info_msgs/Path[] _sd_paths
     (write-long (length _sd_paths) s)
     (dolist (elem _sd_paths)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Road[] _roads
     (write-long (length _roads) s)
     (dolist (elem _roads)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LaneGroup[] _lane_groups
     (write-long (length _lane_groups) s)
     (dolist (elem _lane_groups)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Intersection[] _intersections
     (write-long (length _intersections) s)
     (dolist (elem _intersections)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Meta _meta
       (send _meta :serialize s)
     ;; lane_navi_info_msgs/TBTInfo _tbt_info
       (send _tbt_info :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; lane_navi_info_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; lane_navi_info_msgs/StaticManeuvers _static_maneuvers
     (send _static_maneuvers :deserialize buf ptr-) (incf ptr- (send _static_maneuvers :serialization-length))
   ;; lane_navi_info_msgs/Path[] _sd_paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sd_paths (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Path :init) r)) r))
     (dolist (elem- _sd_paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Road[] _roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roads (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Road :init) r)) r))
     (dolist (elem- _roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LaneGroup[] _lane_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_groups (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LaneGroup :init) r)) r))
     (dolist (elem- _lane_groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Intersection[] _intersections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersections (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Intersection :init) r)) r))
     (dolist (elem- _intersections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Meta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; lane_navi_info_msgs/TBTInfo _tbt_info
     (send _tbt_info :deserialize buf ptr-) (incf ptr- (send _tbt_info :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::ExtendTBT :md5sum-) "6b1ce9bddb2998260664df41ce4f68f1")
(setf (get lane_navi_info_msgs::ExtendTBT :datatype-) "lane_navi_info_msgs/ExtendTBT")
(setf (get lane_navi_info_msgs::ExtendTBT :definition-)
      "std_msgs/Header header
lane_navi_info_msgs/Path path
lane_navi_info_msgs/StaticManeuvers static_maneuvers
lane_navi_info_msgs/Path[] sd_paths
lane_navi_info_msgs/Road[] roads
lane_navi_info_msgs/LaneGroup[] lane_groups
lane_navi_info_msgs/Intersection[] intersections
lane_navi_info_msgs/Meta meta
lane_navi_info_msgs/TBTInfo tbt_info
string reserved

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: lane_navi_info_msgs/Path
uint8 ID_VALID = 1
uint8 ROADS_VALID = 2
uint8 LENGTH_VALID = 4
uint8 STATIC_MANEUVER_VALID = 8
uint8 DYNAMIC_MANEUVER_VALID = 16
uint8 TYPE_VALID = 32
uint8 RANGE_VALID = 64
uint8 available
uint32 id
landmark_msgs/TrackId[] road_ids
float32 length
lane_navi_info_msgs/StaticManeuvers static_maneuvers
lane_navi_info_msgs/DynamicManeuvers dynamic_maneuvers
lane_navi_info_msgs/PathType type
lane_navi_info_msgs/PathRange range

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/StaticManeuvers
bool valid
lane_navi_info_msgs/IntersectionManeuver[] intersection_maneuvers
lane_navi_info_msgs/RampManeuver[] ramp_maneuvers
lane_navi_info_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver
lane_navi_info_msgs/LaneSplittingMergingManeuver[] lane_splitting_merging_maneuver
lane_navi_info_msgs/DestinationManeuver[] destination_maneuver
lane_navi_info_msgs/CommonManeuver[] common_maneuver

================================================================================
MSG: lane_navi_info_msgs/IntersectionManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
lane_navi_info_msgs/IntersectionType type
bool is_traffic_light_exist
bool has_traffic_light_detail
landmark_msgs/Direction direction
landmark_msgs/TrafficLightGroup[] light_groups
landmark_msgs/TrackId linked_intersection
lane_navi_info_msgs/ExperienceTrajectory[] experience_trajectories

================================================================================
MSG: lane_navi_info_msgs/StaticManeuverBase
landmark_msgs/ManeuverType type
lane_navi_info_msgs/Cursor start_cursor
lane_navi_info_msgs/Cursor end_cursor

================================================================================
MSG: landmark_msgs/ManeuverType
uint16 UNKNOWN = 0
uint16 MANEUVER_INTERSECTION = 1
uint16 MANEUVER_LANE_MERGING = 2
uint16 MANEUVER_LANE_SPLITTING = 3
uint16 MANEUVER_ROAD_MERGING = 4
uint16 MANEUVER_ROAD_SPLITTING = 5
uint16 MANEUVER_RAMP = 6
uint16 DESTINATION = 7
uint16 PEDESTRIAN_CROSSING = 8
uint16 SCHOOL_ZONE = 9
uint16 RAILROAD_CROSSING = 10
uint16 DANGER_AHEAD = 11
uint16 NO_OVERTAKING = 12
uint16 SPEED_LIMIT = 13
uint16 SPEED_LIMIT_ENDS = 14
uint16 DETOUR_RIGHT = 15
uint16 DETOUR_BOTH_SIDES = 16
uint16 DETOUR_LEFT = 17
uint16 MERGE_RIGHT = 18
uint16 MERGE_LEFT = 19
uint16 TRAFFIC_LIGHT = 20
uint16 EMERGENCY_LANE = 21
uint16 NON_MOTORIZED_VEHICLE_LANE = 22
uint16 SECTIONAL_SPEED_MEASUREMENT = 23
uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24
uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25
uint16 TOLL = 26
uint16 CONDITIONAL_SPEED_LIMIT = 27
uint16 ADVISORY_SPEED_LIMIT = 28
uint16 ROAD_CONSTRUCTION = 29
uint16 TRAFFIC_CONTROL = 30
uint16 ROAD_CLOSED = 31
uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32
uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33
uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34
uint16 ROAD_END = 35
uint16 UNKNOWN_TRAFFIC_FLOW = 36
uint16 SMOOTH_TRAFFIC = 37
uint16 SLOW_MOVING = 38
uint16 CONGESTED = 39
uint16 SEVERELY_CONGESTED = 40
uint16 NO_TRAFFIC_FLOW = 41
uint16 VISIBILITY = 42
uint16 value

================================================================================
MSG: lane_navi_info_msgs/Cursor
landmark_msgs/TrackId road_id
float32 offset

================================================================================
MSG: lane_navi_info_msgs/IntersectionType
uint8 UNKNOWN = 0
uint8 HIGHWAY_SPLIT = 1
uint8 URBAN_NORMAL = 2
uint8 NORMAL_SPLIT_MERGE = 3
uint8 T_JUNCTION = 4
uint8 Y_JUNCTION = 5
uint8 ROUNDABOUT = 6
uint8 OVERPASS = 7
uint8 OTHERS = 255
uint8 value

================================================================================
MSG: landmark_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 LEFT_LEFT = 10
uint8 LEFT_LEFT_UT = 11
uint8 LEFT_RIGHT = 12
uint8 LEFT_RIGHT_UT = 13
uint8 LEFT_GO_STRAIGHT = 14
uint8 LEFT_UNKNOWN = 15
uint8 RIGHT_RIGHT = 20
uint8 RIGHT_RIGHT_UT = 21
uint8 RIGHT_LEFT = 22
uint8 RIGHT_LEFT_UT = 23
uint8 RIGHT_GO_STRAIGHT = 24
uint8 RIGHT_UNKNOWN = 25
uint8 LEFT_UT_LEFT_UT = 30
uint8 LEFT_UT_LEFT = 31
uint8 LEFT_UT_RIGHT = 32
uint8 LEFT_UT_RIGHT_UT = 33
uint8 LEFT_UT_GO_STRAIGHT = 34
uint8 LEFT_UT_UNKNOWN = 35
uint8 RIGHT_UT_RIGHT_UT = 40
uint8 RIGHT_UT_RIGHT = 41
uint8 RIGHT_UT_LEFT = 42
uint8 RIGHT_UT_LEFT_UT = 43
uint8 RIGHT_UT_GO_STRAIGHT = 44
uint8 RIGHT_UT_UNKNOWN = 45
uint8 GO_STRAIGHT_GO_STRAIGHT = 50
uint8 GO_STRAIGHT_LEFT = 51
uint8 GO_STRAIGHT_LEFT_UT = 52
uint8 GO_STRAIGHT_RIGHT = 53
uint8 GO_STRAIGHT_RIGHT_UT = 54
uint8 GO_STRAIGHT_UNKNOWN = 55
uint8 OTHER_LEFT = 61
uint8 OTHER_LEFT_UT = 62
uint8 OTHER_RIGHT = 63
uint8 OTHER_RIGHT_UT = 64
uint8 OTHER_GO_STRAIGHT = 65
uint8 OTHER_UNKNOWN = 66
uint8 UNKNOWN_LEFT = 91
uint8 UNKNOWN_LEFT_UT = 92
uint8 UNKNOWN_RIGHT = 93
uint8 UNKNOWN_RIGHT_UT = 94
uint8 UNKNOWN_GO_STRAIGHT = 95
uint8 UNKNOWN_UNKNOWN = 96
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightGroup
landmark_msgs/TrafficLight[] traffic_light_group

================================================================================
MSG: landmark_msgs/TrafficLight
landmark_msgs/TrafficLightType type
landmark_msgs/Direction[] direction

================================================================================
MSG: landmark_msgs/TrafficLightType
uint8 UNKNOWN = 0
uint8 DOT_TRAFFIC_LIGHT = 1
uint8 ARROW_TRAFFIC_LIGHT = 2
uint8 NUMBER_TRAFFIC_LIGHT = 3
uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
uint8 value

================================================================================
MSG: lane_navi_info_msgs/ExperienceTrajectory
lane_navi_info_msgs/Polyline polyline
landmark_msgs/TrackId[] related_lane_id
lane_navi_info_msgs/Lane_Cursor start_lane
lane_navi_info_msgs/Lane_Cursor end_lane

================================================================================
MSG: lane_navi_info_msgs/Polyline
lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

================================================================================
MSG: lane_navi_info_msgs/Lane_Cursor
landmark_msgs/TrackId lane_id
float32 offset

================================================================================
MSG: lane_navi_info_msgs/RampManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
landmark_msgs/DirectionInfo ramp_in_direction_info
landmark_msgs/DirectionInfo ramp_out_direction_info
float64 ramp_in_angle
float64 ramp_out_angle

================================================================================
MSG: landmark_msgs/DirectionInfo
int16 road_index
int16 road_sum

================================================================================
MSG: lane_navi_info_msgs/RoadSplittingMergingManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
landmark_msgs/DirectionInfo direction_info
float64[] angles

================================================================================
MSG: lane_navi_info_msgs/LaneSplittingMergingManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
bool is_continue
bool is_none_continue
landmark_msgs/Orientation direction
landmark_msgs/TrackId[] linked_lane_ids

================================================================================
MSG: landmark_msgs/Orientation
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
uint8 value

================================================================================
MSG: lane_navi_info_msgs/DestinationManeuver
uint8 MANEUVER_VALID = 1
uint8 available
lane_navi_info_msgs/StaticManeuverBase maneuver_base

================================================================================
MSG: lane_navi_info_msgs/CommonManeuver
uint8 MANEUVER_VALID = 1
uint8 VALUE_VALID = 2
uint8 available
lane_navi_info_msgs/StaticManeuverBase maneuver_base
float32 value
lane_navi_info_msgs/ConditionType condition

================================================================================
MSG: lane_navi_info_msgs/ConditionType
uint8 ALWAYS_VALID = 0
uint8 SIGN_IS_NOT_VALID_AT_ALL = 5
uint8 VALID_ONLY_IF_SNOW = 6
uint8 VALID_ONLY_IF_FOG = 7
uint8 VALID_ONLY_IF_RAIN = 8
uint8 VALID_ONLY_BY_DAY = 9
uint8 VALID_ONLY_BY_NIGHT = 10
uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11
uint8 type

================================================================================
MSG: lane_navi_info_msgs/DynamicManeuvers
bool valid
lane_navi_info_msgs/CommonManeuver[] common_maneuver

================================================================================
MSG: lane_navi_info_msgs/PathType
uint8 UNKNOWN = 0
uint8 NAVIGATION = 1
uint8 CRUISE = 2
uint8 value

================================================================================
MSG: lane_navi_info_msgs/PathRange
float64 start_offset
float64 end_offset

================================================================================
MSG: lane_navi_info_msgs/Road
uint32 ATTRIBUTE_VALID = 1
uint32 ROAD_CLASS_VALID = 2
uint32 FORMWAY_VALID = 4
uint32 ROAD_DIRECTION_VALID = 8
uint32 MULTI_DIGITIZED_ROADS_VALID = 16
uint32 LANE_GROUP_VALID = 32
uint32 LINKED_INTERSECTION_VALID = 64
uint32 TOPO_VALID = 128
uint32 LANE_NUM_OF_DRIVING_DIR_VALID = 256
uint32 LANE_NUM_OF_OPPOSITE_DIR_VALID = 512
uint32 SD_ROAD_INFO_VALID = 1024
uint32 available
landmark_msgs/TrackId road_id
float32 length
lane_navi_info_msgs/RoadAttribute attribute
lane_navi_info_msgs/Polyline polyline
lane_navi_info_msgs/RoadBoundaryInfo[] rb_left
lane_navi_info_msgs/RoadBoundaryInfo[] rb_right
landmark_msgs/RoadNodeRoadClassEnum road_class
landmark_msgs/RoadNodeFormwayEnum[] formways
landmark_msgs/RoadDirectionTypeEnum road_direction
lane_navi_info_msgs/MultiDigitizedRoad[] left_multi_digitized_road_ids
lane_navi_info_msgs/MultiDigitizedRoad[] right_multi_digitized_road_ids
lane_navi_info_msgs/LaneGroupsOnRoad[] lane_groups
landmark_msgs/TrackId linked_intersection_id
landmark_msgs/TrackId[] prev_roads
landmark_msgs/TrackId[] next_roads
uint8 lane_num_of_driving_dir
uint8 lane_num_of_opposite_dir
lane_navi_info_msgs/SDRoadInfo sd_road_info
bool is_on_route

================================================================================
MSG: lane_navi_info_msgs/RoadAttribute
lane_navi_info_msgs/SpeedLimit[] speed_limits
lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits
lane_navi_info_msgs/Curvature[] curvatures
lane_navi_info_msgs/Slope[] slopes
landmark_msgs/SpecialSituation[] special_situation

================================================================================
MSG: lane_navi_info_msgs/SpeedLimit
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/InterpolationType
uint8 UNKNOWN = 0
uint8 STEP = 1
uint8 LINEAR = 2
uint8 GENERAL = 3
uint8 OHTERS = 255
uint8 type
float32[] addition_values
float32[] params

================================================================================
MSG: lane_navi_info_msgs/ExperienceSpeedLimit
float32 value
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/Curvature
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/Slope
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: landmark_msgs/SpecialSituation
uint32 UNKNOWN = 0
uint32 TUNNEL_BEGIN = 1
uint32 TUNNEL_END = 2
uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
uint32 value

================================================================================
MSG: lane_navi_info_msgs/RoadBoundaryInfo
landmark_msgs/RoadBoundaryTypeEnum type
float32 start_offset
float32 end_offset
lane_navi_info_msgs/Polyline polyline

================================================================================
MSG: landmark_msgs/RoadBoundaryTypeEnum
uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_TYPE_NONE = 1
uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
uint8 ROAD_BOUNDARY_TYPE_CONE = 5
uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
uint8 ROAD_BOUNDARY_TYPE_CURB = 15
uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
uint8 ROAD_BOUNDARY_TYPE_WALL = 17
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
uint8 value

================================================================================
MSG: landmark_msgs/RoadNodeRoadClassEnum
uint8 ROAD_CLASS_UNKNOWN = 0
uint8 HIGHWAY = 1
uint8 URBAN = 2
uint8 CITY_EXPRESSWAY = 3
uint8 STATE_ROAD = 4
uint8 PROVINCIAL_ROAD = 5
uint8 MAIN_ROAD = 6
uint8 SECONDARY_ROAD = 7
uint8 NORMAL_ROAD = 8
uint8 COUNTY_ROAD = 9
uint8 COUNTRY_ROAD = 10
uint8 INTERNAL_ROAD = 11
uint8 OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/RoadNodeFormwayEnum
uint8 FORMWAY_UNKNOWN = 0
uint8 SINGLE_CARRIAGE_WAY = 1
uint8 IC = 2
uint8 JCT = 3
uint8 SERVICE = 4
uint8 TUNNEL = 5
uint8 TOLL = 6
uint8 SLIP_ROAD = 7
uint8 SIDEROAD = 8
uint8 ROUNDABOUT = 9
uint8 RAMP_ENTRY = 10
uint8 RAMP_EXIT = 11
uint8 SAPA = 12
uint8 PARKING_RAMP = 13
uint8 PARKING_ROAD = 14
uint8 U_TURN = 15
uint8 TURN_RIGHT = 16
uint8 TURN_LEFT = 17
uint8 TURN_LEFT_RIGHT = 18
uint8 CROSS_LINK = 19
uint8 SERVICE_AND_SLIP_ROAD = 20
uint8 SERVICE_AND_JCT = 21
uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
uint8 MULTIPLE_CARRIAGE_WAY = 23
uint8 CHECK_POINT = 24
uint8 WALK_ROAD = 25
uint8 PARALLED_ROAD = 26
uint8 OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/RoadDirectionTypeEnum
uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_DIRECTION_TYPE_NONE = 1
uint8 ROAD_DIRECTION_TYPE_A_B = 2
uint8 ROAD_DIRECTION_TYPE_B_A = 3
uint8 ROAD_DIRECTION_TYPE_BOTH = 4
uint8 value

================================================================================
MSG: lane_navi_info_msgs/MultiDigitizedRoad
landmark_msgs/TrackId muliti_digitized_road_id
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/LaneGroupsOnRoad
landmark_msgs/TrackId lane_group_id
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/SDRoadInfo
uint16 f_angle
uint16 t_angle
bool has_toll
bool has_traffic_light
uint16 history_average_speed
lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list
lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list
lane_navi_info_msgs/SDFacility[] facility_list
lane_navi_info_msgs/SDCameraInfo[] camera_list
lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list
lane_navi_info_msgs/SDPointCurvature[] point_curvature_list
lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list
lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list
lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list
lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list
lane_navi_info_msgs/SDCheckPoint[] check_point_list
lane_navi_info_msgs/SDOwnership ownership
uint16 region_code

================================================================================
MSG: lane_navi_info_msgs/SDFacility
float32 offset
lane_navi_info_msgs/SDFacilityType facility_type
lane_navi_info_msgs/SDSpeedLimitType speed_limit_type
uint16 speed_limit_value
lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
lane_navi_info_msgs/WeatherRule weather_limit

================================================================================
MSG: lane_navi_info_msgs/SDFacilityType
uint8 FACILITY_LEFT_INTER_FLOW = 1
uint8 FACILITY_RIGHT_INTER_FLOW = 2
uint8 FACILITY_REVERSE_TURN = 4
uint8 FACILITY_LINKING_TURN = 5
uint8 FACILITY_ACCIDENT_AREA = 6
uint8 FACILITY_RAILWAY_CROSS = 8
uint8 FACILITY_SLIPPERY = 9
uint8 FACILITY_MAX_SPEED_LIMIT = 10
uint8 FACILITY_MIN_SPEED_LIMIT = 11
uint8 FACILITY_VILLAGE = 12
uint8 FACILITY_LEFT_NARROW = 13
uint8 FACILITY_RIGHT_NARROW = 14
uint8 FACILITY_DOUBLE_NARROW = 15
uint8 FACILITY_CROSS_WIND_AREA = 16
uint8 FACILITY_SCHOOL = 17
uint8 FACILITY_NOPASSING = 18
uint8 FACILITY_NARROW_BRIDGE = 19
uint8 FACILITY_AROUND_THE_LINE = 20
uint8 FACILITY_LEFT_BYPASS = 21
uint8 FACILITY_RIGHT_BYPASS = 22
uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23
uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24
uint8 FACILITY_ONSTEEPLOPE = 25
uint8 FACILITY_UNDERSTEEPLOPE = 26
uint8 FACILITY_OVER_WATER_ROAD = 27
uint8 FACILITY_UNEVEN_ROAD = 28
uint8 FACILITY_STROLL = 29
uint8 FACILITY_ATTENTION_TO_DANGER = 30
uint8 FACILITY_CROSSWALK = 31
uint8 FACILITY_RIVER_BANK_LEFT = 33
uint8 FACILITY_RIVER_BANK_RIGHT = 34
uint8 FACILITY_CHILDREN = 35
uint8 FACILITY_CYCLISTS = 36
uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37
uint8 FACILITY_GIVE_WAY = 38
uint8 FACILITY_STOP = 39
uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40
uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41
uint8 FACILITY_HUMPBACK_BRIDGE = 42
uint8 FACILITY_END_OF_SPEED_LIMIT = 43
uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44
uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50
uint8 FACILITY_RAILWAY_WITH_GATES = 51
uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52
uint8 FACILITY_VARIABLE_SPEED = 53
uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54
uint8 FACILITY_PEDESTRIANS = 56
uint8 FACILITY_UNKNOWN = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDSpeedLimitType
uint8 SPEED_LIMIT_TYPE_DEFAULT = 0
uint8 SPEED_LIMIT_TYPE_RAMP = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRegulationRange
lane_navi_info_msgs/TimeRegulation start_time
lane_navi_info_msgs/TimeRegulation end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeRegulation
lane_navi_info_msgs/TimeOfDay day
uint8 week
lane_navi_info_msgs/DayOfYear year

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

================================================================================
MSG: lane_navi_info_msgs/WeatherRule
lane_navi_info_msgs/WeatherRuleType[] weather_rule_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/WeatherRuleType
uint8 WEATHERTYPE_INVALID = 0
uint8 WEATHERTYPE_SUNSHINE = 1
uint8 WEATHERTYPE_RAINSNOW = 2
uint8 WEATHERTYPE_ICE = 3
uint8 WEATHERTYPE_FOG = 4
uint8 WEATHERTYPE_WIND = 5
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDCameraInfo
float32 offset
lane_navi_info_msgs/ECameraType ecamera_type
uint32 speed_limit_value

================================================================================
MSG: lane_navi_info_msgs/ECameraType
uint8 ECAMERA_SPEED = 0
uint8 ECAMERA_MONITOR = 1
uint8 ECAMERA_TRAFIC_LIGHT = 2
uint8 ECAMERA_RULE = 3
uint8 ECAMERA_BUS = 4
uint8 ECAMERA_EMERGENCY = 5
uint8 ECAMERA_NON_MOTORIZED = 6
uint8 ECAMERA_RANGE = 7
uint8 ECAMERA_INTER_SPEED_START = 8
uint8 ECAMERA_INTER_SPEED_END = 9
uint8 ECAMERA_UNKNOWN = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDArrowMarking
uint8 ARROWMARKING_STRAIGHT = 0
uint8 ARROWMARKING_LEFT = 1
uint8 ARROWMARKING_STRAIGHT_LEFT = 2
uint8 ARROWMARKING_RIGHT = 3
uint8 ARROWMARKING_STRAIGHT_RIGHT = 4
uint8 ARROWMARKING_LEFT_UTURN = 5
uint8 ARROWMARKING_LEFT_RIGHT = 6
uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7
uint8 ARROWMARKING_RIGHT_UTURN = 8
uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9
uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10
uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11
uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12
uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16
uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17
uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18
uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19
uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20
uint8 ARROWMARKING_UNKNOWN = 255
uint8 value

================================================================================
MSG: lane_navi_info_msgs/SDPointCurvature
float32 offset
float32 value

================================================================================
MSG: lane_navi_info_msgs/SDLongSolidLine
landmark_msgs/TrackId[] effect_road_ids
uint32[] valid_lanes

================================================================================
MSG: lane_navi_info_msgs/SDBusLaneInfo
uint32 offset
uint8[] on_lanes
lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/WorkHolidayType
uint8 WORKHOLIDAYTYPE_NONE = 0
uint8 WORKHOLIDAYTYPE_VALID = 1
uint8 WORKHOLIDAYTYPE_INVALID = 2
uint8 WORKHOLIDAYTYPE_WEEKEND = 3
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDBackLaneInfo
int32 number
lane_navi_info_msgs/SDLaneDirectType lane_type
lane_navi_info_msgs/SDLaneArrow[] arrows

================================================================================
MSG: lane_navi_info_msgs/SDLaneDirectType
uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
uint8 SD_LANE_DIRECT_TYPE_BUS = 1
uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDLaneArrow
lane_navi_info_msgs/SDArrowType[] arrow_types
lane_navi_info_msgs/TimeRegulationRange[] time
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

================================================================================
MSG: lane_navi_info_msgs/SDArrowType
uint8 SD_ARROW_TYPE_LEFTUTURN = 0
uint8 SD_ARROW_TYPE_TURNLEFT = 1
uint8 SD_ARROW_TYPE_STRAIGHT = 2
uint8 SD_ARROW_TYPE_TURNRIGHT = 3
uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
uint8 SD_ARROW_TYPE_INVALID = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDFrontLaneInfo
landmark_msgs/TrackId to_road_id
lane_navi_info_msgs/SDFrontLane[] lanes

================================================================================
MSG: lane_navi_info_msgs/SDFrontLane
int32 number
lane_navi_info_msgs/SDLaneDirectType lane_type
lane_navi_info_msgs/SDLaneArrow[] arrows

================================================================================
MSG: lane_navi_info_msgs/SDCheckPoint
float32 offset

================================================================================
MSG: lane_navi_info_msgs/SDOwnership
uint8 OWNERSHIP_PUBLIC = 0
uint8 OWNERSHIP_INNER = 1
uint8 OWNERSHIP_PRIVATE = 2
uint8 OWNERSHIP_UNKNOWN = 255
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LaneGroup
uint8 LANE_VALID = 1
uint8 available
landmark_msgs/TrackId lane_group_id
float32 length
uint8 lane_number
lane_navi_info_msgs/Lane[] lanes

================================================================================
MSG: lane_navi_info_msgs/Lane
uint8 LANE_TOPO_VALID = 1
uint8 ON_ROUTE_OFFSET_VALID = 2
uint8 LANE_TYPE_VALID = 4
uint8 LANE_ATTRIBUTE_VALID = 8
uint8 LANE_LEFT_BOUNDARY_VALID = 16
uint8 LANE_RIGHT_BOUNDARY_VALID = 32
uint8 LANE_WIDTH_VALID = 64
uint8 available
landmark_msgs/TrackId lane_id
landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
lane_navi_info_msgs/LaneAttribute[] lane_attrs
lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] prev_lane_ids
lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] next_lane_ids
float32 on_route_offset
float32 width
lane_navi_info_msgs/LaneBoundaryInfo[] lb_left
lane_navi_info_msgs/LaneBoundaryInfo[] lb_right
landmark_msgs/TrackId[] related_road_id
landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones
landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones
lane_navi_info_msgs/Polyline polyline
lane_navi_info_msgs/LaneLimitInfo[] lane_limit_info_list

================================================================================
MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum
uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_NORMAL = 1
uint8 LANE_TYPE_EMERGENCY = 5
uint8 LANE_TYPE_BUS = 6
uint8 LANE_TYPE_PASSING = 7
uint8 LANE_TYPE_HOV = 8
uint8 LANE_TYPE_ACCELERATE = 9
uint8 LANE_TYPE_UTURN = 10
uint8 LANE_TYPE_DECELERATE = 11
uint8 LANE_TYPE_SHOULDER = 12
uint8 LANE_TYPE_INTERSECTION = 14
uint8 LANE_TYPE_NON_MOTOR = 15
uint8 LANE_TYPE_MIXED_MOTOR = 16
uint8 LANE_TYPE_SIDE_WALK = 17
uint8 LANE_TYPE_MOTORCYCLE = 18
uint8 LANE_TYPE_TOLL_ETC = 19
uint8 LANE_TYPE_TOLL = 20
uint8 LANE_TYPE_CHECKPOINT = 21
uint8 LANE_TYPE_RAMP = 22
uint8 LANE_TYPE_BARRIER = 23
uint8 LANE_TYPE_CHANNELIZATION = 24
uint8 LANE_TYPE_EMERGENCE_STOP = 25
uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
uint8 LANE_TYPE_STEEP_GRADE = 27
uint8 LANE_TYPE_DIREC_VARIABLE = 28
uint8 LANE_TYPE_CUSTOMS_SUP = 29
uint8 LANE_TYPE_EMERGENCE_RAMP = 30
uint8 LANE_TYPE_PARKING = 31
uint8 LANE_TYPE_TIDAL = 32
uint8 LANE_TYPE_TEMPORARY = 33
uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
uint8 LANE_TYPE_LEFT_ACC = 36
uint8 LANE_TYPE_RIGHT_ACC = 37
uint8 LANE_TYPE_LEFT_DEC = 38
uint8 LANE_TYPE_RIGHT_DEC = 39
uint8 LANE_TYPE_SERVICE_RAMP = 40
uint8 LANE_TYPE_CURB = 41
uint8 LANE_TYPE_RAILWAY = 42
uint8 LANE_TYPE_BUS_STOP = 43
uint8 LANE_TYPE_ROUNDABOUT = 44
uint8 LANE_TYPE_INVALID = 45
uint8 LANE_TYPE_WIDE = 46
uint8 LANE_TYPE_VIRTUAL = 47
uint8 LANE_TYPE_OTHERS = 63
uint8 LANE_TYPE_ACC_DEC = 70
uint8 LANE_TYPE_WAITING_AREA = 71
uint8 LANE_TYPE_TOLL_MANUAL = 72
uint8 LANE_TYPE_INCOMPLETE = 73
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LaneAttribute
uint8 LANE_DIRECTION_VALID = 1
uint8 START_OFFSET_VALID = 2
uint8 END_OFFSET_VALID = 4
uint8 available
landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction
float32 start_offset
float32 end_offset

================================================================================
MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo
landmark_msgs/TrackId lane_id
lane_navi_info_msgs/SplitMergeInfo split_merge_info

================================================================================
MSG: lane_navi_info_msgs/SplitMergeInfo
uint8 NONE = 0
uint8 SPLIT = 1
uint8 MERGE = 2
uint8 CONTINUE = 3
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LaneBoundaryInfo
landmark_msgs/LaneBoundaryTypeEnum type
float32 start_offset
float32 end_offset
lane_navi_info_msgs/Polyline polyline

================================================================================
MSG: landmark_msgs/LaneBoundaryTypeEnum
uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_TYPE_DASHED = 1
uint8 LANE_BOUNDARY_TYPE_SOLID = 2
uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/NoLaneChangeZone
uint8 UNKNOWN = 1
uint8 SOLID_LINE = 2
uint8 BUS_LANE = 3
uint8 OTHERS = 99
uint8 type
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/LaneLimitInfo
lane_navi_info_msgs/DayOfYear[] day_of_year_list
lane_navi_info_msgs/DaysOfWeek[] day_of_week_list
lane_navi_info_msgs/TimeRangeOfDay[] time_range_list
lane_navi_info_msgs/Holiday[] holiday_list
lane_navi_info_msgs/VehicleType[] vehicle_type_list

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeek
lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeekType
uint8 DAYSOFWEEKTYPE_INVALID = 0
uint8 DAYSOFWEEKTYPE_SUNDAY = 1
uint8 DAYSOFWEEKTYPE_MONDAY = 2
uint8 DAYSOFWEEKTYPE_TUESDAY = 3
uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4
uint8 DAYSOFWEEKTYPE_THURSDAY = 5
uint8 DAYSOFWEEKTYPE_FRIDAY = 6
uint8 DAYSOFWEEKTYPE_SATURDAY = 7
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRangeOfDay
lane_navi_info_msgs/TimeOfDay start_time
lane_navi_info_msgs/TimeOfDay end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/Holiday
lane_navi_info_msgs/HolidayType holiday_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/VehicleType
uint8 RESTRICTION_VEHICLE_ALL = 0
uint8 RESTRICTION_VEHICLE_MOTOR = 1
uint8 RESTRICTION_VEHICLE_CAR = 2
uint8 RESTRICTION_VEHICLE_BUS = 3
uint8 RESTRICTION_VEHICLE_HOV = 4
uint8 RESTRICTION_VEHICLE_UNKNOWN = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/Intersection
uint8 ROADS_VALID = 1
uint8 ROADS_ENTER_VALID = 2
uint8 ROADS_EXIT = 4
uint8 available
landmark_msgs/TrackId intersection_id
landmark_msgs/TrackId[] intersection_roads
lane_navi_info_msgs/LinkedRoad[] roads_enter
lane_navi_info_msgs/LinkedRoad[] roads_exit
lane_navi_info_msgs/IntersectionType type

================================================================================
MSG: lane_navi_info_msgs/LinkedRoad
landmark_msgs/TrackId[] linked_roads
landmark_msgs/TrafficLightGroup linked_traffic_light_group

================================================================================
MSG: lane_navi_info_msgs/Meta
string source
string version
string reserved_data
lane_navi_info_msgs/MapType map_type
lane_navi_info_msgs/AdministrativeInfo administrative_info
lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule

================================================================================
MSG: lane_navi_info_msgs/MapType
uint8 SD_PRO = 0
uint8 SD_MAP = 1
uint8 value

================================================================================
MSG: lane_navi_info_msgs/AdministrativeInfo
uint16 UNKNOWN = 0
uint16 BELGIEN = 56
uint16 BULGARIEN = 100
uint16 DAENEMARK = 208
uint16 DEUTSCHLAND = 276
uint16 ESTLAND = 233
uint16 FINNLAND = 246
uint16 FRANKREICH = 250
uint16 GRIECHENLAND = 300
uint16 GROSSBRITANNIEN = 826
uint16 IRLAND = 372
uint16 ISLAND = 352
uint16 ISRAEL = 376
uint16 ITALIEN = 380
uint16 KROATIEN = 191
uint16 LETTLAND = 428
uint16 LITAUEN = 440
uint16 LUXEMBURG = 442
uint16 MALTA = 470
uint16 NIEDERLANDE = 528
uint16 NORWEGEN = 578
uint16 OESTERREICH = 40
uint16 POLEN = 616
uint16 PORTUGAL = 620
uint16 RUMAENIEN = 642
uint16 SCHWEDEN = 752
uint16 SCHWEIZ = 756
uint16 SLOWAKISCHE_REPUBLIK = 703
uint16 SLOWENIEN = 705
uint16 SPANIEN = 724
uint16 TSCHECHISCHE_REPUBLIK = 203
uint16 UNGARN = 348
uint16 ZYPERN_EU_GEBIET = 196
uint16 HONGKONG = 344
uint16 MACAO = 446
uint16 SINGAPUR = 702
uint16 FRANZ_POLYNES = 258
uint16 REP_NORDMAZEDONIEN = 807
uint16 SERBIEN = 688
uint16 TUERKEI = 792
uint16 UKRAINE = 804
uint16 WESTJORDANLAND = 275
uint16 ZYPERN_NORD = 10001
uint16 CHINA = 156
uint16 JAPAN = 392
uint16 USA = 840
uint16 OTHERS = 9999
uint16 value

================================================================================
MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 value

================================================================================
MSG: lane_navi_info_msgs/TBTInfo
lane_navi_info_msgs/TBTGuideInfo[] guide_info_list
lane_navi_info_msgs/TBTLaneInfo[] lane_info_list
lane_navi_info_msgs/TBTTrafficLight[] traffic_light_list
lane_navi_info_msgs/TBTLongSolidLine[] long_solid_line_list
string reserved

================================================================================
MSG: lane_navi_info_msgs/TBTGuideInfo
uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 MAIN_ACTION_VALID = 4
uint8 ASSIST_ACTION_VALID = 8
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position
lane_navi_info_msgs/TBTMainAction main_action
lane_navi_info_msgs/TBTAssistAction assist_action

================================================================================
MSG: lane_navi_info_msgs/TBTMainAction
uint16 MainActionNULL = 0
uint16 MainActionTurnLeft = 1
uint16 MainActionTurnRight = 2
uint16 MainActionSlightLeft = 3
uint16 MainActionSlightRight = 4
uint16 MainActionTurnHardLeft = 5
uint16 MainActionTurnHardRight = 6
uint16 MainActionUTurn = 7
uint16 MainActionContinue = 8
uint16 MainActionMergeLeft = 9
uint16 MainActionMergeRight = 10
uint16 MainActionEntryRing = 11
uint16 MainActionLeaveRing = 12
uint16 MainActionSlow = 13
uint16 MainActionPlugContinue = 14
uint16 MainActionEnterBuilding = 65
uint16 MainActionLeaveBuilding = 66
uint16 MainActionByElevator = 67
uint16 MainActionByStair = 68
uint16 MainActionByEscalator = 69
uint16 MainActionCount = 70
uint16 value

================================================================================
MSG: lane_navi_info_msgs/TBTAssistAction
uint16 ASSI_ACTION_NULL = 0
uint16 ASSI_ACTION_ENTRY_MAIN = 1
uint16 ASSI_ACTION_ENTRY_SIDE_ROAD = 2
uint16 ASSI_ACTION_ENTRY_FREEWAY = 3
uint16 ASSI_ACTION_ENTRY_SLIP = 4
uint16 ASSI_ACTION_ENTRY_TUNNEL = 5
uint16 ASSI_ACTION_ENTRY_CENTER_BRANCH = 6
uint16 ASSI_ACTION_ENTRY_RIGHT_BRANCH = 7
uint16 ASSI_ACTION_ENTRY_LEFT_BRANCH = 8
uint16 ASSI_ACTION_ENTRY_RIGHT_ROAD = 9
uint16 ASSI_ACTION_ENTRY_LEFT_ROAD = 10
uint16 ASSI_ACTION_ENTRY_MERGE_CENTER = 11
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT = 12
uint16 ASSI_ACTION_ENTRY_MERGE_LEFT = 13
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild = 14
uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_Sild = 15
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN = 16
uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN = 17
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT = 18
uint16 ASSI_ACTION_ENTRY_FERRY = 19
uint16 ASSI_ACTION_LEFT_FERRY = 20
uint16 ASSI_ACTION_ALONG_ROAD = 23
uint16 ASSI_ACTION_ALONG_SILD = 24
uint16 ASSI_ACTION_ALONG_MAIN = 25
uint16 ASSI_ACTION_ARRIVE_EXIT = 32
uint16 ASSI_ACTION_ARRIVE_SERVICE_AREA = 33
uint16 ASSI_ACTION_ARRIVE_TOLL_GATE = 34
uint16 ASSI_ACTION_ARRIVE_WAY = 35
uint16 ASSI_ACTION_ARRIVE_DESTINATION = 36
uint16 ASSI_ACTION_ARRIVE_CHARGING_STATION = 37
uint16 ASSI_ACTION_ENTRY_RING_LEFT_ = 48
uint16 ASSI_ACTION_ENTRY_RING_RIGHT = 49
uint16 ASSI_ACTION_ENTRY_RING_CONTINUE = 50
uint16 ASSI_ACTION_ENTRY_RING_UTURN = 51
uint16 ASSI_ACTION_SMALL_RING_NOT_COUNT = 52
uint16 ASSI_ACTION_RIGHT_BRANCH_1 = 64
uint16 ASSI_ACTION_RIGHT_BRANCH_2 = 65
uint16 ASSI_ACTION_RIGHT_BRANCH_3 = 66
uint16 ASSI_ACTION_RIGHT_BRANCH_4 = 67
uint16 ASSI_ACTION_RIGHT_BRANCH_5 = 68
uint16 ASSI_ACTION_LEFT_BRANCH_1 = 69
uint16 ASSI_ACTION_LEFT_BRANCH_2 = 70
uint16 ASSI_ACTION_LEFT_BRANCH_3 = 71
uint16 ASSI_ACTION_LEFT_BRANCH_4 = 72
uint16 ASSI_ACTION_LEFT_BRANCH_5 = 73
uint16 ASSI_ACTION_ENTER_ULINE = 80
uint16 ASSI_ACTION_PASS_CROSSWalk = 90
uint16 ASSI_ACTION_PASS_OVERPASS = 91
uint16 ASSI_ACTION_PASS_UNDERGROUND = 92
uint16 ASSI_ACTION_PASS_SQUARE = 93
uint16 ASSI_ACTION_PASS_PARK = 94
uint16 ASSI_ACTION_PASS_STAIRCASE = 95
uint16 ASSI_ACTION_PASS_LIFT = 96
uint16 ASSI_ACTION_PASS_CABLEWAY = 97
uint16 ASSI_ACTION_PASS_SKY_CHANNEL = 98
uint16 ASSI_ACTION_PASS_CHANNEL = 99
uint16 ASSI_ACTION_PASS_WALKROAD = 100
uint16 ASSI_ACTION_PASS_BOAT_LINE = 101
uint16 ASSI_ACTION_PASS_SIGHT_SEEING_LINE = 102
uint16 ASSI_ACTION_PASS_SKIDWAY = 103
uint16 ASSI_ACTION_PASS_LADDER = 105
uint16 ASSI_ACTION_PASS_SLOPE = 106
uint16 ASSI_ACTION_PASS_BRIDGE = 107
uint16 ASSI_ACTION_PASS_FERRY = 108
uint16 ASSI_ACTION_PASS_SUBWAY = 109
uint16 ASSI_ACTION_SOON_ENTER_Building = 112
uint16 ASSI_ACTION_SOON_LEAVE_Building = 113
uint16 ASSI_ACTION_ENTER_ROUNDABOUT = 114
uint16 ASSI_ACTION_LEAVE_ROUNDABOUT = 115
uint16 ASSI_ACTION_ENTER_PATH = 116
uint16 ASSI_ACTION_ENTER_INNER = 117
uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_TWO = 118
uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_THREE = 119
uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO = 120
uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE = 121
uint16 ASSI_ACTION_ENTER_GAS_STATION = 122
uint16 ASSI_ACTION_ENTER_HOUSING_ESTATE = 123
uint16 ASSI_ACTION_ENTER_PARK_ROAD = 124
uint16 ASSI_ACTION_ENTER_OVERHEAD = 125
uint16 ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD = 126
uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD = 127
uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD = 128
uint16 ASSI_ACTION_ALONG_STRAIGHT = 129
uint16 ASSI_ACTION_DOWN_OVERHEAD = 130
uint16 ASSI_ACTION_ENTER_LEFT_OVERHEAD = 131
uint16 ASSI_ACTION_ENTER_RIGHT_OVERHEAD = 132
uint16 ASSI_ACTION_UP_TO_BRIDGE = 133
uint16 ASSI_ACTION_ENTER_PARKING = 134
uint16 ASSI_ACTION_ENTER_OVERPASS = 135
uint16 ASSI_ACTION_ENTER_BRIDGE = 136
uint16 ASSI_ACTION_ENTER_UNDERPASS = 137
uint16 value

================================================================================
MSG: lane_navi_info_msgs/TBTLaneInfo
uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 LANE_GUIDANCE_LIST_VALID = 4
uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8
uint8 HIGHLIGHT_LANE_LIST_VALID = 16
uint8 RECOMMEND_LANE_LIST_VALID = 32
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position
lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list
lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list
uint8[] highlight_lane_list
uint8[] recommend_lane_list

================================================================================
MSG: lane_navi_info_msgs/TBTLaneAction
uint8 LANE_ACTION_AHEAD = 0
uint8 LANE_ACTION_LEFT = 1
uint8 LANE_ACTION_AHEAD_LEFT = 2
uint8 LANE_ACTION_RIGHT = 3
uint8 LANE_ACTION_AHEAD_RIGHT = 4
uint8 LANE_ACTION_LU_TURN = 5
uint8 LANE_ACTION_LEFT_RIGHT = 6
uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7
uint8 LANE_ACTION_RU_TURN = 8
uint8 LANE_ACTION_AHEAD_LU_TURN = 9
uint8 LANE_ACTION_AHEAD_RU_TURN = 10
uint8 LANE_ACTION_LEFT_LU_TURN = 11
uint8 LANE_ACTION_RIGHT_RU_TURN = 12
uint8 LANE_ACTION_LEFT_IN_AHEAD = 13
uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14
uint8 LANE_ACTION_RESERVED = 15
uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16
uint8 LANE_ACTION_RIGHT_LU_TURN = 17
uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18
uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19
uint8 LANE_ACTION_LEFT_RU_TURN = 20
uint8 LANE_ACTION_BUS = 21
uint8 LANE_ACTION_EMPTY = 22
uint8 LANE_ACTION_VARIABLE = 23
uint8 LANE_ACTION_DEDICATED = 24
uint8 LANE_ACTION_TIDAL = 25
uint8 LANE_ACTION_NULL = 255
uint8 value

================================================================================
MSG: lane_navi_info_msgs/TBTTrafficLight
uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position

================================================================================
MSG: lane_navi_info_msgs/TBTLongSolidLine
uint8 START_OFFSET_VALID = 1
uint8 END_OFFSET_VALID = 2
uint8 LENGTH_VALID = 4
uint8 LANE_INDEX_VALID = 8
uint8 available
float32 start_offset
float32 end_offset
float32 length
uint8 lane_index

")



(provide :lane_navi_info_msgs/ExtendTBT "6b1ce9bddb2998260664df41ce4f68f1")


