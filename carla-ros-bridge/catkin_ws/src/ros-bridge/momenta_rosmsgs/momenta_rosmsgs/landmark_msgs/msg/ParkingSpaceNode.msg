uint16 ATTRIBUTE_VALID = 1
uint16 POLYGON_POINTS_VALID = 2
uint16 SCORE_VALID = 4
uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/ParkingSpaceAttributeEnum attribute
perception_interface_msgs/Point3f[] polygon_points
float32 score
