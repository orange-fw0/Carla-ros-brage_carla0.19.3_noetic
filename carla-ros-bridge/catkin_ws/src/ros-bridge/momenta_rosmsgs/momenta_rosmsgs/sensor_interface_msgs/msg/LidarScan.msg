uint8 LIDAR_TYPE_VELODYNE = 1
uint8 LIDAR_TYPE_ROBOSENSE = 2
std_msgs/Header header
uint8 available
string lidar_type
uint32 reserved
sensor_interface_msgs/VelodynePacket[] velodyne_packets
sensor_interface_msgs/RobosensePacket[] robosense_packets
string reserved_info
