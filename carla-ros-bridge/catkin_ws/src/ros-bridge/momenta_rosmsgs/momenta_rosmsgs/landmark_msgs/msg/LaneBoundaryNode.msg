uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 TYPE_VALID = 4
uint16 COLOR_VALID = 8
uint16 WIDTH_TYPE_VALID = 16
uint16 LINE_WIDTH_VALID = 32
uint16 LINE_POINTS_VALID = 64
uint16 IS_VIRTUAL_VALID = 128
uint16 DIRECTION_TYPE_VALID = 256
uint16 SOURCE_VALID = 512
uint16 SCENE_TYPE_VALID = 1024
uint16 SPECIAL_TYPE_VALID = 2048
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/LaneBoundaryTypeEnum type
landmark_msgs/LaneBoundaryColorEnum color
landmark_msgs/LaneBoundaryWidthTypeEnum width_type
float32 line_width
perception_interface_msgs/Point3f[] line_points
bool is_virtual
landmark_msgs/LaneBoundaryDirectionTypeEnum direction_type
landmark_msgs/BoundarySourceEnum source
landmark_msgs/LaneBoundarySceneTypeEnum scene_type
landmark_msgs/LaneBoundarySpecialTypeEnum special_type
