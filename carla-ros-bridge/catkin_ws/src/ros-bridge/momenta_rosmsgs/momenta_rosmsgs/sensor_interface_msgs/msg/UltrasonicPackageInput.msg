uint8 ULTROSONIC_PACKAGEDATA = 0
uint8 COMMON_USS_OBSTACLE_DATA = 1
std_msgs/Header header
int32 proc_mode
sensor_interface_msgs/UltrasonicResultMeta meta
sensor_interface_msgs/UltrasonicPackage[] uss_package
uint8 available
sensor_interface_msgs/UltrasonicCommonEchoInfo[] uss_echo_info
