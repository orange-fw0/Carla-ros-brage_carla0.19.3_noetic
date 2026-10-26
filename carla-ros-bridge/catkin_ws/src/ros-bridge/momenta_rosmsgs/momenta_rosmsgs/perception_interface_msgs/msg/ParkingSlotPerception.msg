uint8 VISION_PERCEPTION_PARKING_SLOT_RESULT = 1
uint8 VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS = 2
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint64 available
perception_interface_msgs/ParkingSlot[] parking_slots
string[] reserved_infos
