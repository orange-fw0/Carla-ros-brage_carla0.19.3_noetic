uint8 PARKING_SLOTS = 1
uint8 EGO_PARKING_SLOT_TRACK_ID = 2
uint8 EGO_PARKING_SLOT_MAP_ID = 4
uint8 SUGGESTED_PARKING_SLOT_TRACK_ID = 8
uint8 SUGGESTED_PARKING_SLOT_MAP_ID = 16
uint8 RESERVED_INFO = 32
std_msgs/Header header
worldmodel_msgs/FusionAPAMeta meta
uint8 available
worldmodel_msgs/ParkingSlotFusionAPAData[] parking_slots
int32 ego_parking_slot_track_id
int32 ego_parking_slot_map_id
int32 suggested_parking_slot_track_id
int32 suggested_parking_slot_map_id
string[] reserved_info
