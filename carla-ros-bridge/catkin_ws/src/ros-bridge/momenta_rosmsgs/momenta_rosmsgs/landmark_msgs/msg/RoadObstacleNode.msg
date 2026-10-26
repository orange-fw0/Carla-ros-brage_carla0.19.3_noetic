uint16 TYPE_VALID = 1
uint16 PILLAR_CENTER_VALID = 2
uint16 POINTS_VALID = 4
uint16 SCORE_VALID = 8
uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/RoadObstacleTypeEnum type
perception_interface_msgs/Point3f pillar_center
perception_interface_msgs/Point3f[] points
float32 score
