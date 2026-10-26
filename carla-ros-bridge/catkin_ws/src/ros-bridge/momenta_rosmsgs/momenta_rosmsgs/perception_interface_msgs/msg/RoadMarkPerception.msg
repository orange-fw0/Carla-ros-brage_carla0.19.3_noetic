uint8 VISION_PERCEPTION_ROAD_MARK_RESULT = 1
uint8 VISION_PERCEPTION_ROAD_MARK_RESERVED_INFOS = 2
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint8 available
perception_interface_msgs/RoadMark[] road_marks
string[] reserved_infos
