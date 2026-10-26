;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ProcessedMapData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ProcessedMapData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA")
  (make-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))

(in-package "ROS")
;;//! \htmlinclude ProcessedMapData.msg.html


(intern "*TARGET_POTISION*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*TARGET_POTISION* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*TARGET_POTISION* 1)
(intern "*SELF_POSITION*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*SELF_POSITION* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*SELF_POSITION* 2)
(intern "*WAYPOINT_POSITION*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*WAYPOINT_POSITION* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*WAYPOINT_POSITION* 4)
(intern "*LANE*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*LANE* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*LANE* 8)
(intern "*MAP_POI_INFO*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*MAP_POI_INFO* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*MAP_POI_INFO* 16)
(intern "*INTERSECTION*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*INTERSECTION* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*INTERSECTION* 32)
(intern "*LANE_MERGING_SPLITTING_POINT*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*LANE_MERGING_SPLITTING_POINT* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*LANE_MERGING_SPLITTING_POINT* 64)
(intern "*LANE_STRATEGY*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*LANE_STRATEGY* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*LANE_STRATEGY* 128)
(intern "*EXTRA_INFO*" (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(shadow '*EXTRA_INFO* (find-package "WORLDMODEL_MSGS::PROCESSEDMAPDATA"))
(defconstant worldmodel_msgs::ProcessedMapData::*EXTRA_INFO* 256)

(defun worldmodel_msgs::ProcessedMapData-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::ProcessedMapData::*TARGET_POTISION*)
        ((= const 2) 'worldmodel_msgs::ProcessedMapData::*SELF_POSITION*)
        ((= const 4) 'worldmodel_msgs::ProcessedMapData::*WAYPOINT_POSITION*)
        ((= const 8) 'worldmodel_msgs::ProcessedMapData::*LANE*)
        ((= const 16) 'worldmodel_msgs::ProcessedMapData::*MAP_POI_INFO*)
        ((= const 32) 'worldmodel_msgs::ProcessedMapData::*INTERSECTION*)
        ((= const 64) 'worldmodel_msgs::ProcessedMapData::*LANE_MERGING_SPLITTING_POINT*)
        ((= const 128) 'worldmodel_msgs::ProcessedMapData::*LANE_STRATEGY*)
        ((= const 256) 'worldmodel_msgs::ProcessedMapData::*EXTRA_INFO*)
        (t nil)))

(defclass worldmodel_msgs::ProcessedMapData
  :super ros::object
  :slots (_available _target_position _self_position _way_point_position _lanes _map_poi_info _intersections _lane_merging_splitting_points _lane_strategy _extra_info ))

(defmethod worldmodel_msgs::ProcessedMapData
  (:init
   (&key
    ((:available __available) 0)
    ((:target_position __target_position) (instance worldmodel_msgs::TargetPosition :init))
    ((:self_position __self_position) (instance worldmodel_msgs::SelfPositionData :init))
    ((:way_point_position __way_point_position) (instance worldmodel_msgs::WayPointData :init))
    ((:lanes __lanes) ())
    ((:map_poi_info __map_poi_info) ())
    ((:intersections __intersections) ())
    ((:lane_merging_splitting_points __lane_merging_splitting_points) ())
    ((:lane_strategy __lane_strategy) (instance worldmodel_msgs::LaneStrategyData :init))
    ((:extra_info __extra_info) (instance worldmodel_msgs::ExtraInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _target_position __target_position)
   (setq _self_position __self_position)
   (setq _way_point_position __way_point_position)
   (setq _lanes __lanes)
   (setq _map_poi_info __map_poi_info)
   (setq _intersections __intersections)
   (setq _lane_merging_splitting_points __lane_merging_splitting_points)
   (setq _lane_strategy __lane_strategy)
   (setq _extra_info __extra_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:target_position
   (&rest __target_position)
   (if (keywordp (car __target_position))
       (send* _target_position __target_position)
     (progn
       (if __target_position (setq _target_position (car __target_position)))
       _target_position)))
  (:self_position
   (&rest __self_position)
   (if (keywordp (car __self_position))
       (send* _self_position __self_position)
     (progn
       (if __self_position (setq _self_position (car __self_position)))
       _self_position)))
  (:way_point_position
   (&rest __way_point_position)
   (if (keywordp (car __way_point_position))
       (send* _way_point_position __way_point_position)
     (progn
       (if __way_point_position (setq _way_point_position (car __way_point_position)))
       _way_point_position)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:map_poi_info
   (&rest __map_poi_info)
   (if (keywordp (car __map_poi_info))
       (send* _map_poi_info __map_poi_info)
     (progn
       (if __map_poi_info (setq _map_poi_info (car __map_poi_info)))
       _map_poi_info)))
  (:intersections
   (&rest __intersections)
   (if (keywordp (car __intersections))
       (send* _intersections __intersections)
     (progn
       (if __intersections (setq _intersections (car __intersections)))
       _intersections)))
  (:lane_merging_splitting_points
   (&rest __lane_merging_splitting_points)
   (if (keywordp (car __lane_merging_splitting_points))
       (send* _lane_merging_splitting_points __lane_merging_splitting_points)
     (progn
       (if __lane_merging_splitting_points (setq _lane_merging_splitting_points (car __lane_merging_splitting_points)))
       _lane_merging_splitting_points)))
  (:lane_strategy
   (&rest __lane_strategy)
   (if (keywordp (car __lane_strategy))
       (send* _lane_strategy __lane_strategy)
     (progn
       (if __lane_strategy (setq _lane_strategy (car __lane_strategy)))
       _lane_strategy)))
  (:extra_info
   (&rest __extra_info)
   (if (keywordp (car __extra_info))
       (send* _extra_info __extra_info)
     (progn
       (if __extra_info (setq _extra_info (car __extra_info)))
       _extra_info)))
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; worldmodel_msgs/TargetPosition _target_position
    (send _target_position :serialization-length)
    ;; worldmodel_msgs/SelfPositionData _self_position
    (send _self_position :serialization-length)
    ;; worldmodel_msgs/WayPointData _way_point_position
    (send _way_point_position :serialization-length)
    ;; worldmodel_msgs/LaneData[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ;; worldmodel_msgs/MapPOIInfoData[] _map_poi_info
    (apply #'+ (send-all _map_poi_info :serialization-length)) 4
    ;; worldmodel_msgs/IntersectionData[] _intersections
    (apply #'+ (send-all _intersections :serialization-length)) 4
    ;; worldmodel_msgs/LaneMergingSplittingPointData[] _lane_merging_splitting_points
    (apply #'+ (send-all _lane_merging_splitting_points :serialization-length)) 4
    ;; worldmodel_msgs/LaneStrategyData _lane_strategy
    (send _lane_strategy :serialization-length)
    ;; worldmodel_msgs/ExtraInfo _extra_info
    (send _extra_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; worldmodel_msgs/TargetPosition _target_position
       (send _target_position :serialize s)
     ;; worldmodel_msgs/SelfPositionData _self_position
       (send _self_position :serialize s)
     ;; worldmodel_msgs/WayPointData _way_point_position
       (send _way_point_position :serialize s)
     ;; worldmodel_msgs/LaneData[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/MapPOIInfoData[] _map_poi_info
     (write-long (length _map_poi_info) s)
     (dolist (elem _map_poi_info)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/IntersectionData[] _intersections
     (write-long (length _intersections) s)
     (dolist (elem _intersections)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/LaneMergingSplittingPointData[] _lane_merging_splitting_points
     (write-long (length _lane_merging_splitting_points) s)
     (dolist (elem _lane_merging_splitting_points)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/LaneStrategyData _lane_strategy
       (send _lane_strategy :serialize s)
     ;; worldmodel_msgs/ExtraInfo _extra_info
       (send _extra_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; worldmodel_msgs/TargetPosition _target_position
     (send _target_position :deserialize buf ptr-) (incf ptr- (send _target_position :serialization-length))
   ;; worldmodel_msgs/SelfPositionData _self_position
     (send _self_position :deserialize buf ptr-) (incf ptr- (send _self_position :serialization-length))
   ;; worldmodel_msgs/WayPointData _way_point_position
     (send _way_point_position :deserialize buf ptr-) (incf ptr- (send _way_point_position :serialization-length))
   ;; worldmodel_msgs/LaneData[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LaneData :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/MapPOIInfoData[] _map_poi_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_poi_info (let (r) (dotimes (i n) (push (instance worldmodel_msgs::MapPOIInfoData :init) r)) r))
     (dolist (elem- _map_poi_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/IntersectionData[] _intersections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersections (let (r) (dotimes (i n) (push (instance worldmodel_msgs::IntersectionData :init) r)) r))
     (dolist (elem- _intersections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/LaneMergingSplittingPointData[] _lane_merging_splitting_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_merging_splitting_points (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LaneMergingSplittingPointData :init) r)) r))
     (dolist (elem- _lane_merging_splitting_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/LaneStrategyData _lane_strategy
     (send _lane_strategy :deserialize buf ptr-) (incf ptr- (send _lane_strategy :serialization-length))
   ;; worldmodel_msgs/ExtraInfo _extra_info
     (send _extra_info :deserialize buf ptr-) (incf ptr- (send _extra_info :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ProcessedMapData :md5sum-) "b526aa746d7da49fb0fef6e7e17a6d7c")
(setf (get worldmodel_msgs::ProcessedMapData :datatype-) "worldmodel_msgs/ProcessedMapData")
(setf (get worldmodel_msgs::ProcessedMapData :definition-)
      "uint16 TARGET_POTISION = 1
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



(provide :worldmodel_msgs/ProcessedMapData "b526aa746d7da49fb0fef6e7e17a6d7c")


