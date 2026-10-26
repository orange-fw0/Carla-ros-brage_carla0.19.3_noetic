uint16 SCORE_VALID = 1
uint16 TYPE_VALID = 2
uint16 LANDMARK_ID_VALID = 4
uint16 GOAL_POINT_VALID = 8
uint16 TURN_DIRECTION_VALID = 16
uint16 ONROUTE_DISTANCE_VALID = 32
uint16 available
float32 score
landmark_msgs/TrackId id
landmark_msgs/RefPathGoalTypeEnum type
landmark_msgs/TrackId landmark_id
landmark_msgs/WayPoint goal_point
landmark_msgs/Direction turn_direction
float32 onroute_distance
landmark_msgs/NaviInfoSource navi_info_source
string reserved_info
