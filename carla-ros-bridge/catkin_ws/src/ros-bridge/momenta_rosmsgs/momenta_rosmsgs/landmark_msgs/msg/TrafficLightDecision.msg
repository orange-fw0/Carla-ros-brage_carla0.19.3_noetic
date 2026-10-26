uint32 PATTERN_VALID = 1
uint32 STATUS_VALID = 2
uint32 DURATION_VALID = 4
uint32 REMAINING_VALID = 8
uint32 COUNT_NUMBER_VALID = 16
uint32 SCORE_VALID = 32
uint32 RESERVED_INFO_VALID = 64
uint32 POS_FEATURE_VALID = 128
uint32 PHYSICAL_NODE_LIST_VALID = 256
landmark_msgs/TrafficLightPatternEnum pattern
landmark_msgs/TrafficLightStatusEnum status
float32 duration
float32 remaining
uint8 count_number
float32 score
string reserved_info
landmark_msgs/TrafficLightPositionFeature pos_feature
landmark_msgs/TrackId[] physical_node_list
uint32 available
