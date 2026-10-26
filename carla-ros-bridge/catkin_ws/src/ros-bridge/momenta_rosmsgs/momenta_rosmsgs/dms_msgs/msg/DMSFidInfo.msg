uint8 FACEID_AVAILABLE = 1
uint8 LIVENESS_AVAILABLE = 2
uint8 AGE_AVAILABLE = 4
uint8 GENDER_AVAILABLE = 8
uint8 RESERVED = 16
uint8 RESERVED1 = 32
uint8 available
string feature
string usr_id
uint32 feature_size
uint8 fail_liveness
float32 liveness_score
int32 age
dms_msgs/DMSGenderTypeEnum gender_type
dms_msgs/DMSFrameResult frame_data
float32 feature_confidence
float32 reserved
float32 reserved1
