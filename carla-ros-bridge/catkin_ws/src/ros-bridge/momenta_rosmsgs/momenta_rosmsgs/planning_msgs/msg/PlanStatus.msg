uint8 ALGORITHM_STATUS = 1
uint8 WARNING_STATUS = 2
uint8 SOLVER_STATUS = 4
uint8 STEER_MODE = 8
uint8 available
planning_msgs/PlanAlgorithmStatus algorithm_status
planning_msgs/WarningStatus warning_status
planning_msgs/SolverStatus solver_status
planning_msgs/SteerModeEnum steer_mode
bool hdmap_valid
