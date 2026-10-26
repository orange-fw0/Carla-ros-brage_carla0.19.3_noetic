uint16 ABNORMAL_ACTION_TYPE_AVAILABLE = 1
uint16 L2_ABNORMAL_ACTION_TYPE_AVAILABLE = 2
uint16 L3_ABNORMAL_ACTION_TYPE_AVAILABLE = 4
uint16 ACTIONS_AVAILABLE = 8
uint16 L2_ACTIONS_AVAILABLE = 16
uint16 L3_ACTIONS_AVAILABLE = 32
uint16 RESERVED = 64
uint16 available
dms_msgs/DMSAbnormalActionTypeEnum abnormal_action_type
dms_msgs/L2DMSAbnormalActionTypeEnum l2_abnormal_action_type
dms_msgs/L3DMSAbnormalActionTypeEnum l3_abnormal_action_type
dms_msgs/DMSActionResult[] actions
dms_msgs/DMSActionResult[] l2_actions
dms_msgs/DMSActionResult[] l3_actions
string reserved
