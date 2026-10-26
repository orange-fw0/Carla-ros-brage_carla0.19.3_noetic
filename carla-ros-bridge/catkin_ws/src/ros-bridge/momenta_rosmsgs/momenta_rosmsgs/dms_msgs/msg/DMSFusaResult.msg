uint16 TOO_DARK_BRIGHT_AVAILABLE = 1
uint16 OCCLUSION_AVAILABLE = 4
uint16 GLASS_STATUS_AVAILABLE = 8
uint16 TEARING_AVAILABLE = 16
uint16 FREEZING_AVAILABLE = 32
uint16 FPS_ABNORMAL_AVAILABLE = 64
uint16 MEMORY_FAULT_AVAILABLE = 128
uint16 SDK_STATUS_AVAILABLE = 256
uint16 RESERVED = 512
uint16 RESERVED1 = 1024
uint16 STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE = 2048
uint16 available
dms_msgs/DMSCameraDiagnoseTypeEnum too_dark_bright_status
dms_msgs/DMSCameraOcclusionTypeEnum occlusion_status
dms_msgs/DMSGlassStatusTypeEnum glass_status
float32 occlusion_score
bool frame_tearing
bool frame_freezing
bool frame_fps_abnormal
bool memory_fault
dms_msgs/DMSSDKStatus sdk_status
float32 too_bright_score
float32 too_dark_score
dms_msgs/DMSSteeringWheelOcclusionTypeEnum steering_wheel_occlusion_status
float32 reserved
float32 reserved1
int32 bright_count
int32 dark_count
int32 valid_pixel_count
float32 time_stamp_diff
float32 camera_occ_rate
