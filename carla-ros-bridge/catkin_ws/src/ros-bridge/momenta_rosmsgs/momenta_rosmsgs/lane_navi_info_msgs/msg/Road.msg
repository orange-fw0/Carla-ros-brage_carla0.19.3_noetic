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
