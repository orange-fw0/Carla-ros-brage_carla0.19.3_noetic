uint32 RECT_AVAILABLE = 1
uint32 VECTOR_HEAD_AVAILABLE = 2
uint32 VECTOR_HEAD_WCS_AVAILABLE = 4
uint32 POSITION_HEAD_AVAILABLE = 8
uint32 POSITION_HEAD_WCS_AVAILABLE = 16
uint32 HEAD_AREA_AVAILABLE = 32
uint32 HEAD_NUM_AVAILABLE = 64
uint32 IS_HEAD_FAR_AVAILABLE = 128
uint32 HEAD_NUM_DEBOUNCE_AVAILABLE = 256
uint32 L2_HEAD_AREA_AVAILABLE = 512
uint32 L2_HEAD_NUM_AVAILABLE = 1024
uint32 L2_IS_HEAD_FAR_AVAILABLE = 2048
uint32 L2_HEAD_NUM_DEBOUNCE_AVAILABLE = 4096
uint32 L3_HEAD_AREA_AVAILABLE = 8192
uint32 L3_HEAD_NUM_AVAILABLE = 16384
uint32 L3_IS_HEAD_FAR_AVAILABLE = 32768
uint32 L3_HEAD_NUM_DEBOUNCE_AVAILABLE = 65536
uint32 available
float32 rect_score
dms_msgs/DMSRotateRect rect
dms_msgs/DMSPoint2f[] head_rect
dms_msgs/DMSVector3f vector_head
dms_msgs/DMSVector3f vector_head_wcs
dms_msgs/DMSPoint3f position_head
dms_msgs/DMSPoint3f position_head_wcs
float32[] head_rotation
float32 head_area
bool is_head_far
uint16 head_num
uint16 head_num_debounce
float32 l2_head_area
bool l2_is_head_far
uint16 l2_head_num
uint16 l2_head_num_debounce
float32 l3_head_area
bool l3_is_head_far
uint16 l3_head_num
uint16 l3_head_num_debounce
