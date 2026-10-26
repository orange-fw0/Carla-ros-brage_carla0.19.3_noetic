uint32 CAMERA_SOURCE_VALID = 1
uint32 CAMERA_MODEL_VALID = 2
uint32 SCORE_VALID = 4
uint32 BOUNDING_BOX_2D_VALID = 8
uint32 ONOFF_VALID = 16
uint32 GROUP_TYPE_SCORES_VALID = 32
uint32 SHAPE_SCORES_VALID = 64
uint32 ONOFF_SCORES_VALID = 128
uint32 COUNT_NUMBER_VALID = 256
uint32 BBOX_TYPE_VALID = 512
uint32 PATTERN_VALID = 1024
uint32 STATUS_VALID = 2048
uint32 PATTERN_SCORES_VALID = 4096
uint32 STATUS_SCORES_VALID = 8192
uint32 LOCATION_BV_VALID = 16384
uint32 HEADING_THETA_BV_VALID = 32768
int32 track_id
landmark_msgs/CameraSourceEnum camera_source
landmark_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/Rect4f bounding_box_2d
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
float32[] group_type_scores
float32[] shape_scores
float32[] onoff_scores
uint8 count_number
landmark_msgs/TrafficLightBBoxTypeEnum bbox_type
landmark_msgs/TrafficLightPatternEnum[] pattern
landmark_msgs/TrafficLightStatusEnum[] status
float32[] pattern_scores
float32[] status_scores
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
string reserved_info
uint32 available
