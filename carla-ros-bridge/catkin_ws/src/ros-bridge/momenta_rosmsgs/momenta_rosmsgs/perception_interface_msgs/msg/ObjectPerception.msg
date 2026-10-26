uint8 VISION_PERCEPTION_OBJECT_RESULT = 1
uint8 VISION_PERCEPTION_OBJECT_RESERVED = 2
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint64 available
perception_interface_msgs/Object[] objects
string[] reserved_infos
