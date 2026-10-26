uint16 POLYGON_POINTS_VALID = 1
uint16 TYPES_VALID = 2
uint16 IS_PROHIBITED_VALID = 4
uint16 SCORE_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
landmark_msgs/RoadMarkNodeTypeEnum[] types
bool is_prohibited
