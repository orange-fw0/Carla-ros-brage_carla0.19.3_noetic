uint16 SCORE_VALID = 1
uint16 CENTER_LINE_VALID = 2
uint16 WIDTH_VALID = 4
uint16 IS_VIRETUAL_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] center_line_points
float32 width
bool is_virtual
