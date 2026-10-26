uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 TYPE_VALID = 4
uint16 POINTS_VALID = 8
uint16 IS_VIRTUAL_VALID = 16
uint16 HEIGHT_VALID = 32
uint16 PASS_DIRECTION_VALID = 64
uint16 SOURCE_VALID = 128
uint16 available
float32 score
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/RoadBoundaryTypeEnum type
perception_interface_msgs/Point3f[] line_points
bool is_virtual
float32 height
landmark_msgs/RoadBoundaryPassDirectionTypeEnum pass_direction
landmark_msgs/BoundarySourceEnum source
