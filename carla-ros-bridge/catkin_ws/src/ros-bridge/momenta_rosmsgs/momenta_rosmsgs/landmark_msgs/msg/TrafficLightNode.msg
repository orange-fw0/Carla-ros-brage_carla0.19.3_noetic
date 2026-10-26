uint32 TYPE_VALID = 1
uint32 PATTERN_VALID = 2
uint32 STATUS_VALID = 4
uint32 PATTERN_SCORE_VALID = 8
uint32 STATUS_SCORE_VALID = 16
uint32 DURATION_VALID = 32
uint32 REMAINING_VALID = 64
uint32 COUNT_NUMBER_VALID = 128
uint32 SHAPE_3D_VALID = 256
uint32 SHAPE_VALID = 512
uint32 DIRECTIONS_VALID = 1024
uint32 LOCATION_VALID = 2048
uint32 TRAFFIC_LIGHT_DECISION_VALID = 4096
uint32 IN_INTERSECTION_VALID = 8192
uint32 SCORE_VALID = 16384
uint32 HEADING_THETA_BV_VALID = 32768
uint32 DIGITS_VALID = 65536
uint32 DIGIT_SCORES_VALID = 131072
uint32 GROUP_SHAPE_TYPE_VALID = 262144
uint32 GROUP_SHAPE_SCORE_VALID = 524288
uint32 GROUP_PROPERTY_VALID = 1048576
uint32 TRACK_ID_2D_VALID = 2097152
uint32 OBSERVED_BY_EGO_VALID = 4194304
uint32 OBSERVED_BY_CURRENT_ROAD_VALID = 8388608
uint32 OBSERVED_BY_CURRENT_LANE_VALID = 16777216
uint32 available
landmark_msgs/TrackId track_id
landmark_msgs/TrafficLightTypeEnum type
landmark_msgs/TrafficLightPatternEnum[] pattern
landmark_msgs/TrafficLightStatusEnum[] status
float32[] pattern_score
float32[] status_score
float32 duration
float32 remaining
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f[] shape
landmark_msgs/TrafficLightDirectionEnum[] directions
perception_interface_msgs/Point3f location
landmark_msgs/TrafficLightDecision[] traffic_light_decision
bool in_intersection
float32 score
float32 heading_theta_bv
uint8[] digits
float32[] digit_scores
landmark_msgs/TrafficLightGroupShapeEnum group_shape_type
float32 group_shape_score
landmark_msgs/TrafficLightGroupPropertyEnum group_property
int32[] track_id_2d
landmark_msgs/TrafficLightObservedByEgoEnum observed_by_ego
landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_road
landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_lane
string reserved_info
