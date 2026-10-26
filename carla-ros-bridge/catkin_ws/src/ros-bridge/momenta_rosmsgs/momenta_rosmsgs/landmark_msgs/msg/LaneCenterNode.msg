uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 LANE_TYPE_VALID = 4
uint16 DIRECTION_TYPE_VALID = 8
uint16 FLOW_TYPE_VALID = 16
uint16 LANE_ATTRIBUTE_VALID = 32
uint16 LINE_POINTS_VALID = 64
uint16 IS_VIRTUAL_VALID = 128
uint16 IN_INTERSECTION_VALID = 256
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
landmark_msgs/LaneCenterNodeDirectionTypeEnum[] direction_types
landmark_msgs/LaneCenterFlowTypeEnum flow_type
landmark_msgs/LaneCenterNodeLaneAttribute[] lane_attribute
perception_interface_msgs/Point3f[] line_points
bool is_virtual
bool in_intersection
