uint16 POLYGON_POINTS_VALID = 1
uint16 TYPE_VALID = 2
uint16 IS_VIRTUAL_VALID = 4
uint16 SCORE_VALID = 8
uint16 available
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
landmark_msgs/AoiNodeTypeEnum type
bool is_virtual
float32 score
