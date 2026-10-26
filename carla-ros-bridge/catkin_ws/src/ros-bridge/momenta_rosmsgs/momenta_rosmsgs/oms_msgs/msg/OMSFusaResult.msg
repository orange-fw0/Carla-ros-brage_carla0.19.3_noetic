uint8 TOO_DARK_BRIGHT_AVAILABLE = 1
uint8 OCCLUSION_AVAILABLE = 2
uint8 GLASS_STATUS_AVAILABLE = 4
uint8 TEARING_AVAILABLE = 8
uint8 FREEZING_AVAILABLE = 16
uint8 FPS_ABNORMAL_AVAILABLE = 32
uint8 available
oms_msgs/OMSCameraOcclusionTypeEnum too_dark_bright_status
oms_msgs/OMSCameraOcclusionTypeEnum occlusion_status
oms_msgs/OMSGlassStatusTypeEnum glass_status
float32 occlusion_score
bool frame_tearing
bool frame_freezing
bool frame_fps_abnormal
