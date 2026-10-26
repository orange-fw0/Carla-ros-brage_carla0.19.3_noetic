uint8 ROADS_VALID = 1
uint8 ROADS_ENTER_VALID = 2
uint8 ROADS_EXIT = 4
uint8 available
landmark_msgs/TrackId intersection_id
landmark_msgs/TrackId[] intersection_roads
lane_navi_info_msgs/LinkedRoad[] roads_enter
lane_navi_info_msgs/LinkedRoad[] roads_exit
lane_navi_info_msgs/IntersectionType type
