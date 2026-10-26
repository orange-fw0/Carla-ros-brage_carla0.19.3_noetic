uint8 SUCCESS = 0
uint8 PENDING = 1
uint8 FAILED = 2
uint8 TIMEOUT = 3
uint8 INVALID_STATE = 4
std_msgs/Header header
system_manager_msgs/SsmState source_state
system_manager_msgs/SsmState target_state
uint8 code
string message
