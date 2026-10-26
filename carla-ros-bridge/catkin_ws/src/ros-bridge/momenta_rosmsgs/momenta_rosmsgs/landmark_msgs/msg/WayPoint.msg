uint16 SCORE_VALID = 1
uint16 POSITION_VALID = 2
uint16 HEADING_ANGLE_VALID = 4
uint16 OFFSET_VALID = 8
uint16 SPEED_MEAN_VALID = 16
uint16 SPEED_STD_VALID = 32
uint16 TURN_DIRECTION_VALID = 64
uint16 ON_ROUTE_VALID = 128
uint16 available
float32 score
perception_interface_msgs/Point3f position
float32 heading_angle
float32 offset
float32 speed_mean
float32 speed_std
landmark_msgs/Direction turn_direction
bool on_route
string reserved_info
