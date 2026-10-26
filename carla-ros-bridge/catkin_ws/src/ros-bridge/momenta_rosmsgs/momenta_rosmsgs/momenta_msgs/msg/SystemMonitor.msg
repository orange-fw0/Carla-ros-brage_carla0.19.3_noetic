uint8 SYSTEM_STATUS_NORMAL_TYPE = 0
uint8 SYSTEM_STATUS_WARNING_TYPE = 1
uint8 SYSTEM_STATUS_ERROR_TYPE = 2
std_msgs/Header header
uint8 system_status
string[] warning_nodes_list
string[] error_nodes_list
