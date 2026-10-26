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
