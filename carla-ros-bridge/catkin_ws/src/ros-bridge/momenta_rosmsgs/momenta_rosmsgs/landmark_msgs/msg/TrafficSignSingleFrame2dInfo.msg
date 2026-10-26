uint32 CAMERA_SOURCE_VALID = 1
uint32 CAMERA_MODEL_VALID = 2
uint32 SCORE_VALID = 4
uint32 BOUNDING_BOX_2D_VALID = 8
uint32 SIGN_TYPE_SCORE_VALID = 16
uint32 ATTR_NAMES_VALID = 32
uint32 ATTR_SCORES_VALID = 64
int32 track_id
landmark_msgs/CameraSourceEnum camera_source
landmark_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/Rect4f bounding_box_2d
float32 sign_type_score
string[] attr_names
float32[] attr_scores
string reserved_info
uint32 available
