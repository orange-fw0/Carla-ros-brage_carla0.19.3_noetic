;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ProcessedMap)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ProcessedMap (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PROCESSEDMAP")
  (make-package "WORLDMODEL_MSGS::PROCESSEDMAP"))

(in-package "ROS")
;;//! \htmlinclude ProcessedMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass worldmodel_msgs::ProcessedMap
  :super ros::object
  :slots (_header _meta _processed_map_data ))

(defmethod worldmodel_msgs::ProcessedMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance worldmodel_msgs::ProcessedMapMeta :init))
    ((:processed_map_data __processed_map_data) (instance worldmodel_msgs::ProcessedMapData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _processed_map_data __processed_map_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:processed_map_data
   (&rest __processed_map_data)
   (if (keywordp (car __processed_map_data))
       (send* _processed_map_data __processed_map_data)
     (progn
       (if __processed_map_data (setq _processed_map_data (car __processed_map_data)))
       _processed_map_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; worldmodel_msgs/ProcessedMapMeta _meta
    (send _meta :serialization-length)
    ;; worldmodel_msgs/ProcessedMapData _processed_map_data
    (send _processed_map_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; worldmodel_msgs/ProcessedMapMeta _meta
       (send _meta :serialize s)
     ;; worldmodel_msgs/ProcessedMapData _processed_map_data
       (send _processed_map_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; worldmodel_msgs/ProcessedMapMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; worldmodel_msgs/ProcessedMapData _processed_map_data
     (send _processed_map_data :deserialize buf ptr-) (incf ptr- (send _processed_map_data :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ProcessedMap :md5sum-) "3fce187027b5f4ca56b1fb2dab56705a")
(setf (get worldmodel_msgs::ProcessedMap :datatype-) "worldmodel_msgs/ProcessedMap")
(setf (get worldmodel_msgs::ProcessedMap :definition-)
      "std_msgs/Header header
worldmodel_msgs/ProcessedMapMeta meta
worldmodel_msgs/ProcessedMapData processed_map_data

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
MSG: worldmodel_msgs/ProcessedMapMeta
uint64 egopose_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us

================================================================================
MSG: worldmodel_msgs/ProcessedMapData
uint16 TARGET_POTISION = 1
uint16 SELF_POSITION = 2
uint16 WAYPOINT_POSITION = 4
uint16 LANE = 8
uint16 MAP_POI_INFO = 16
uint16 INTERSECTION = 32
uint16 LANE_MERGING_SPLITTING_POINT = 64
uint16 LANE_STRATEGY = 128
uint16 EXTRA_INFO = 256
uint16 available
worldmodel_msgs/TargetPosition target_position
worldmodel_msgs/SelfPositionData self_position
worldmodel_msgs/WayPointData way_point_position
worldmodel_msgs/LaneData[] lanes
worldmodel_msgs/MapPOIInfoData[] map_poi_info
worldmodel_msgs/IntersectionData[] intersections
worldmodel_msgs/LaneMergingSplittingPointData[] lane_merging_splitting_points
worldmodel_msgs/LaneStrategyData lane_strategy
worldmodel_msgs/ExtraInfo extra_info

================================================================================
MSG: worldmodel_msgs/TargetPosition
uint8 PARKING_TARGET_POSITION = 1
uint8 available
worldmodel_msgs/ParkingTargetPosition parking_target_position

================================================================================
MSG: worldmodel_msgs/ParkingTargetPosition
uint64 TARGET_MAP_POI = 1
uint64 TRAVERSED_PARKING_LOTS = 2
uint64 PARKING_OUT_POSITION = 4
uint64 available
worldmodel_msgs/TargetMapPOI target_map_poi
worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots
worldmodel_msgs/ParkingOutPosition parking_out_position

================================================================================
MSG: worldmodel_msgs/TargetMapPOI
uint16 id
worldmodel_msgs/MapPOIType type
perception_interface_msgs/Polygon3f position
float64 distance

================================================================================
MSG: worldmodel_msgs/MapPOIType
uint8 UNKNOWN = 0
uint8 PARKING_LOT = 1
uint8 HUMAN_ACCESS = 2
uint8 DESTINATION = 3
uint8 PARKING = 4
uint8 BARRIER_GAP = 5
uint8 FACILITY_ENTRANCE = 6
uint8 FACILITY_EXIT = 7
uint8 FACILITY_EXIT_AND_ENTRANCE = 8
uint8 BUS_STOP = 9
uint8 GARAGE_ENTRANCE = 10
uint8 GARAGE_EXIT = 11
uint8 SPEED_BUMP = 12
uint8 CROSS_WALK = 13
uint8 DASHED_SEGMENT = 14
uint8 CENTRAL_CIRCLE = 15
uint8 NO_PARKING_ZONE = 16
uint8 ROAD_MERGE = 17
uint8 ROAD_SPLIT = 18
uint8 TUNNEL = 19
uint8 TOLL_STATION = 20
uint8 value

================================================================================
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: worldmodel_msgs/TraversedParkingLot
uint16 parking_lot_id
perception_interface_msgs/Polygon3f parking_lot_position
perception_interface_msgs/Point3f parking_lot_center
perception_interface_msgs/Point3f parking_lot_entrance_center
float64 available_inner_width
float64 available_outter_width
uint16 next_parking_lot_id
uint16 previous_parking_lot_id
float64 left_extended_distance
float64 right_extended_distance
float64 score

================================================================================
MSG: worldmodel_msgs/ParkingOutPosition
uint16 source_parking_lot_id
perception_interface_msgs/Polygon3f source_parking_lot_position
perception_interface_msgs/Point3f target_position
float64 target_heading_yaw

================================================================================
MSG: worldmodel_msgs/SelfPositionData
bool in_map_area
bool in_intersection
bool on_ramp
int32 current_parking_slot_id

================================================================================
MSG: worldmodel_msgs/WayPointData
worldmodel_msgs/WayPointType way_point_type
float64 longtitude
float64 latitude
float64 altitude

================================================================================
MSG: worldmodel_msgs/WayPointType
uint8 NORMAL_WAYPOINT = 1
uint8 INTERSECTION_WAYPOINT = 2
uint8 RAMP_WAYPOINT = 4
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneData
int32 relative_id
int32 track_id
worldmodel_msgs/Direction lane_marks
worldmodel_msgs/LaneType lane_type
worldmodel_msgs/LaneBoundary left_lane_boundary
worldmodel_msgs/LaneBoundary right_lane_boundary
worldmodel_msgs/RoadEdge left_road_edge
worldmodel_msgs/RoadEdge right_road_edge
worldmodel_msgs/ReferenceLine reference_line
float64 entrance_width
worldmodel_msgs/RoadPriority road_priority
worldmodel_msgs/MergePoint merge_point
worldmodel_msgs/MergePoint y_point
int8 bias

================================================================================
MSG: worldmodel_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 4
uint8 U_TURN_LEFT = 8
uint8 U_TURN_RIGHT = 16
uint8 OFF_ROUTE = 32
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneType
uint8 UNKNOWN = 0
uint8 NORMAL = 1
uint8 VIRTUAL = 2
uint8 PARKING = 3
uint8 ACCELERATE = 4
uint8 DECELERATE = 5
uint8 BUS = 6
uint8 EMERGENCY = 7
uint8 ACCELERATE_DECELERATE = 8
uint8 LEFT_TURN_WAITTING_AREA = 9
uint8 NON_MOTOR = 10
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundary
bool existence
worldmodel_msgs/LaneBoundarySegment[] segments
worldmodel_msgs/LaneBoundaryPolyline polyline
perception_interface_msgs/Point3f[] points
string reserved

================================================================================
MSG: worldmodel_msgs/LaneBoundarySegment
float64 length
worldmodel_msgs/LaneBoundaryType type

================================================================================
MSG: worldmodel_msgs/LaneBoundaryType
worldmodel_msgs/LaneBoundaryForm value
worldmodel_msgs/LaneBoundaryColor color
worldmodel_msgs/LaneBoundaryWidth width

================================================================================
MSG: worldmodel_msgs/LaneBoundaryForm
uint8 UNKNOWN = 0
uint8 SOLID = 1
uint8 DASH = 2
uint8 VIRTUAL = 3
uint8 PHYSICAL = 4
uint8 DOUBLE_SOLID = 5
uint8 DASH_SOLID = 6
uint8 SOLID_DASH = 7
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryColor
uint8 WHITE = 0
uint8 YELLOW = 1
uint8 OTHER = 2
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryWidth
uint8 THIN = 0
uint8 THICK = 1
uint8 UNKNOWN = 2
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryPolyline
uint64 track_id
float64[] poly_coefficient
worldmodel_msgs/Interval available_interval

================================================================================
MSG: worldmodel_msgs/Interval
float64 begin
float64 end

================================================================================
MSG: worldmodel_msgs/RoadEdge
bool existence
perception_interface_msgs/Point3f[] points
uint8 type
string reserved

================================================================================
MSG: worldmodel_msgs/ReferenceLine
bool available
worldmodel_msgs/ReferenceLinePoint[] reference_line_points
worldmodel_msgs/ReferenceLineSegment[] reference_line_segments

================================================================================
MSG: worldmodel_msgs/ReferenceLinePoint
perception_interface_msgs/Point3d enu_point
float32 curvature
float32 distance_to_left_road_border
float32 distance_to_right_road_border
float32 distance_to_left_lane_border
float32 distance_to_right_lane_border
float32 distance_to_left_obstacle
float32 distance_to_right_obstacle
float32 lane_width
int32 max_velocity
uint64 track_id
bool is_experience_data
worldmodel_msgs/LaneBoundaryType left_road_border_type
worldmodel_msgs/LaneBoundaryType right_road_border_type
bool on_route
float64 longitudinal_slope
float64 horizontal_slope

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: worldmodel_msgs/ReferenceLineSegment
uint16 begin_index
uint16 end_index
worldmodel_msgs/LaneConnectDirection direction
worldmodel_msgs/LaneType lane_type
bool is_in_intersection
bool is_in_route

================================================================================
MSG: worldmodel_msgs/LaneConnectDirection
uint8 NORMAL = 0
uint8 SPLIT_TO_LEFT = 1
uint8 SPLIT_TO_RIGHT = 2
uint8 MERGE_FROM_LEFT = 3
uint8 MERGE_FROM_RIGHT = 4
uint8 value

================================================================================
MSG: worldmodel_msgs/RoadPriority
worldmodel_msgs/RoadPriorityType road_priority_type
float64 distance
float64 length

================================================================================
MSG: worldmodel_msgs/RoadPriorityType
uint16 UNKNOWN = 0
uint16 PRIORITY_ROAD = 1
uint16 PRIORITY_ROAD_END = 2
uint16 PRIORITY_AUXILIARY = 4
uint16 PRIORITY_NEXT_INTERSECTION = 8
uint16 STOP = 16
uint16 YIELD = 32
uint16 PRIORITY_OVER_ONGOING = 64
uint16 YIELD_TO_ONCOMING = 128
uint8 value

================================================================================
MSG: worldmodel_msgs/MergePoint
float64 distance
worldmodel_msgs/MergeType type

================================================================================
MSG: worldmodel_msgs/MergeType
uint8 UNKNOWN = 0
uint8 UNRELATED = 1
uint8 FROM_RIGHT = 2
uint8 FROM_LEFT = 3
uint8 FROM_BOTH = 4
uint8 LANE_END = 5
uint8 value

================================================================================
MSG: worldmodel_msgs/MapPOIInfoData
float64 distance
float64 length
worldmodel_msgs/MapPOIType type
perception_interface_msgs/Point3f[] key_points_enu

================================================================================
MSG: worldmodel_msgs/IntersectionData
worldmodel_msgs/Direction direction
float64 length
worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups
worldmodel_msgs/LeftWaitingArea left_waiting_area
worldmodel_msgs/StopLine distance_to_stop_line
worldmodel_msgs/LaneData[] lanes_out

================================================================================
MSG: worldmodel_msgs/MapTrafficLightGroup
uint64 track_id
worldmodel_msgs/MapTrafficLight[] traffic_lights

================================================================================
MSG: worldmodel_msgs/MapTrafficLight
perception_interface_msgs/Point3d[] boundary
perception_interface_msgs/TrafficLightPatternEnum pattern
bool on_route

================================================================================
MSG: perception_interface_msgs/TrafficLightPatternEnum
uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
uint8 value

================================================================================
MSG: worldmodel_msgs/LeftWaitingArea
bool existence
float64 length
float64 distance

================================================================================
MSG: worldmodel_msgs/StopLine
float64 distance_to_stop_line
float64 distance_buffer

================================================================================
MSG: worldmodel_msgs/LaneMergingSplittingPointData
float64 distance
bool is_split
bool is_continue
worldmodel_msgs/Orientation orientation
float64 length

================================================================================
MSG: worldmodel_msgs/Orientation
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
uint8 IGNORED = 4
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneStrategyData
worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane
worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane
worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane
worldmodel_msgs/Interval[] current_lane_change_available_interval
worldmodel_msgs/Interval[] left_lane_change_available_interval
worldmodel_msgs/Interval[] right_lane_change_available_interval

================================================================================
MSG: worldmodel_msgs/LaneChangeState
uint8 FOLLOW = 0
uint8 TURN_LEFT = 1
uint8 TURN_RIGHT = 2
uint8 value

================================================================================
MSG: worldmodel_msgs/ExtraInfo
uint8 RAMP_MANEUVER = 1
uint8 SCENE_TYPE = 2
uint8 RESERVED_INFO = 4
uint8 available
worldmodel_msgs/RampManeuver ramp_maneuver
string scene_type
string reserved_info

================================================================================
MSG: worldmodel_msgs/RampManeuver
float32 dis_to_ramp
float32 length

")



(provide :worldmodel_msgs/ProcessedMap "3fce187027b5f4ca56b1fb2dab56705a")


