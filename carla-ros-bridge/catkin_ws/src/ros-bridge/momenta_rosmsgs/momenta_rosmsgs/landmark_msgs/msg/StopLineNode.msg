uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 IS_VIRETUAL_VALID = 4
uint16 TYPE_VALID = 8
uint16 PASS_DIRECTION_VALID = 16
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
bool is_virtual
landmark_msgs/StopLineTypeEnum type
landmark_msgs/StopLinePassDirectionTypeEnum pass_direction
