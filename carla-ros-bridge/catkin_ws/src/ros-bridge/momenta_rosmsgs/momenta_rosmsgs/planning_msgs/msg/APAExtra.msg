uint8 PARKIN_INFO = 1
uint8 PARKOUT_INFO = 2
uint8 RPA_STRAIGHT_INFO = 4
uint8 SLOT_INFO = 8
uint8 TRAJ_INFO = 16
uint8 CONTROL_CMD = 32
uint8 DEBUG_INFO = 64
uint64 available
planning_msgs/ParkInInfo parkin_info
planning_msgs/ParkOutInfo parkout_info
planning_msgs/RpaStraightInfo rpa_straight_info
planning_msgs/ParkingSlotInfo slot_info
planning_msgs/APATrajectoryInfo traj_info
planning_msgs/APAControlCommand control_cmd
planning_msgs/APADebugInfo debug_info
string reserved
