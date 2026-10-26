uint8 HEADPOSE_AVAILABLE = 1
uint8 HEADPOSE_WCS_AVAILABLE = 2
uint8 HEAD_MOVEMENT_AVAILABLE = 4
uint8 L2_HEAD_MOVEMENT_AVAILABLE = 8
uint8 L3_HEAD_MOVEMENT_AVAILABLE = 16
uint8 available
float32 headpose_score
dms_msgs/DMSOrientation3f headpose
dms_msgs/DMSOrientation3f headpose_wcs
bool is_head_movement
bool l2_is_head_movement
bool l3_is_head_movement
