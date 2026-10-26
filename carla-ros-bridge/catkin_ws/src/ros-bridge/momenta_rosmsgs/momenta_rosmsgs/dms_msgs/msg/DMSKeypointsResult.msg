uint8 KEYPOINTS_2D_AVAILABLE = 1
uint8 KEYPOINTS_3D_AVAILABLE = 2
uint8 KEYPOINTS_3D_WCS_AVAILABLE = 4
uint8 available
float32 keypoint_score
dms_msgs/DMSPoint2f[] keypoints
dms_msgs/DMSPoint2f[] keypoints_left_eye
dms_msgs/DMSPoint2f[] keypoints_right_eye
dms_msgs/DMSPoint2f[] keypoints_pupil
dms_msgs/DMSPoint3f[] keypoints3d
dms_msgs/DMSPoint3f[] keypoints3d_wcs
