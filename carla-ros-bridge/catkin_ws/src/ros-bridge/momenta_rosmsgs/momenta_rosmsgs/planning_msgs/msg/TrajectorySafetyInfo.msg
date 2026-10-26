uint8 NO_RISK = 1
uint8 RISK_STATIC_OBSTACLE_COLLISION = 2
uint8 RISK_STATIC_VRU_COLLISION = 3
uint8 RISK_STATIC_NON_VRU_COLLISION = 4
uint8 RISK_STATIC_UNKNOWN_OBJECT_COLLISION = 5
uint8 RISK_DYNAMIC_VRU_COLLISION = 6
uint8 RISK_DYNAMIC_NON_VRU_COLLISION = 7
uint8 RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION = 8
uint8 RISK_RB_COLLISION = 9
uint8 RISK_UNSAFE_CONTROL = 10
uint8 UNKNOWN = 21
uint8 IN_LANE = 22
uint8 FREE_SPACE = 23
uint8 ADJACENT_LANE = 24
uint8 CROSSING = 25
uint8 available
planning_msgs/PlanMeta meta
planning_msgs/Trajectory trajectory
float64[] safety_score
float64 ttc
planning_msgs/SafetyEvaluator[] safety_evaluators
uint8 risk_info
uint8 risk_extended_info
string reserved_info
