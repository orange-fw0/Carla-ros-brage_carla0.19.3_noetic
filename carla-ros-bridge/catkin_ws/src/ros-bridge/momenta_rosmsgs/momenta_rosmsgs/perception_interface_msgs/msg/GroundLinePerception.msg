uint8 VISION_PERCEPTION_GROUND_LINE_RESULT = 1
uint8 VISION_PERCEPTION_GROUND_LINE_RESERVED_INFOS = 2
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint64 available
perception_interface_msgs/GroundLine[] ground_lines
string[] reserved_infos
