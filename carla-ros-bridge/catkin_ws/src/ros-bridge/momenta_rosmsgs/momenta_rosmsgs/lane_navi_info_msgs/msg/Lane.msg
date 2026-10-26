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
