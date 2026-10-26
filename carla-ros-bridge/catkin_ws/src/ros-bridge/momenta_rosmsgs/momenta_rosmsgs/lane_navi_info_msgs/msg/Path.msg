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
