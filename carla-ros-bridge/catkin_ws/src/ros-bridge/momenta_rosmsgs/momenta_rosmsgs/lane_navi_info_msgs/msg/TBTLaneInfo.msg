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
