uint16 SCORE_VALID = 1
uint16 CENTER_VALID = 2
uint16 SEGMENT_START_VALID = 4
uint16 SEGMENT_END_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f center
perception_interface_msgs/Point3f segment_start
perception_interface_msgs/Point3f segment_end
