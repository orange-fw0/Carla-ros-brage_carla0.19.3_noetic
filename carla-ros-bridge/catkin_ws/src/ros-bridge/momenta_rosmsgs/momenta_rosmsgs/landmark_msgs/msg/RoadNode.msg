uint16 SCORE_VALID = 1
uint16 DIRECTION_VALID = 2
uint16 ROAD_CLASS_VALID = 4
uint16 FORMWAY_VALID = 8
uint16 CENTER_LINE_VALID = 16
uint16 START_LATERAL_LINE_VALID = 32
uint16 END_LATERAL_LINE_VALID = 64
uint16 IS_VIRETUAL_VALID = 128
uint16 IN_INTERSECTION_VALID = 256
uint16 available
float32 score
landmark_msgs/TrackId track_id
landmark_msgs/RoadDirectionTypeEnum road_direction
landmark_msgs/RoadNodeRoadClassEnum road_class
landmark_msgs/RoadNodeFormwayEnum[] formway
perception_interface_msgs/Point3f[] center_line
perception_interface_msgs/Point3f[] start_lateral_line
perception_interface_msgs/Point3f[] end_lateral_line
bool is_virtual
bool in_intersection
