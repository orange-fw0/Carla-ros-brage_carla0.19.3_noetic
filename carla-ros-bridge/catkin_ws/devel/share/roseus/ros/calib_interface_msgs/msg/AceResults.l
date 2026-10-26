;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::AceResults)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'AceResults (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::ACERESULTS")
  (make-package "CALIB_INTERFACE_MSGS::ACERESULTS"))

(in-package "ROS")
;;//! \htmlinclude AceResults.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calib_interface_msgs::AceResults
  :super ros::object
  :slots (_header _camera_offcalib_report _camera_calib_report _imu_calib_report _lidar_offcalib_report _lidar_calib_report _error_code ))

(defmethod calib_interface_msgs::AceResults
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:camera_offcalib_report __camera_offcalib_report) (instance calib_interface_msgs::CameraOffcalibReport :init))
    ((:camera_calib_report __camera_calib_report) (instance calib_interface_msgs::CameraCalibReport :init))
    ((:imu_calib_report __imu_calib_report) (instance calib_interface_msgs::ImuCalibReport :init))
    ((:lidar_offcalib_report __lidar_offcalib_report) (instance calib_interface_msgs::LidarOffcalibReport :init))
    ((:lidar_calib_report __lidar_calib_report) (instance calib_interface_msgs::LidarCalibReport :init))
    ((:error_code __error_code) (instance calib_interface_msgs::AceTotalErrorCodeEnum :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _camera_offcalib_report __camera_offcalib_report)
   (setq _camera_calib_report __camera_calib_report)
   (setq _imu_calib_report __imu_calib_report)
   (setq _lidar_offcalib_report __lidar_offcalib_report)
   (setq _lidar_calib_report __lidar_calib_report)
   (setq _error_code __error_code)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:camera_offcalib_report
   (&rest __camera_offcalib_report)
   (if (keywordp (car __camera_offcalib_report))
       (send* _camera_offcalib_report __camera_offcalib_report)
     (progn
       (if __camera_offcalib_report (setq _camera_offcalib_report (car __camera_offcalib_report)))
       _camera_offcalib_report)))
  (:camera_calib_report
   (&rest __camera_calib_report)
   (if (keywordp (car __camera_calib_report))
       (send* _camera_calib_report __camera_calib_report)
     (progn
       (if __camera_calib_report (setq _camera_calib_report (car __camera_calib_report)))
       _camera_calib_report)))
  (:imu_calib_report
   (&rest __imu_calib_report)
   (if (keywordp (car __imu_calib_report))
       (send* _imu_calib_report __imu_calib_report)
     (progn
       (if __imu_calib_report (setq _imu_calib_report (car __imu_calib_report)))
       _imu_calib_report)))
  (:lidar_offcalib_report
   (&rest __lidar_offcalib_report)
   (if (keywordp (car __lidar_offcalib_report))
       (send* _lidar_offcalib_report __lidar_offcalib_report)
     (progn
       (if __lidar_offcalib_report (setq _lidar_offcalib_report (car __lidar_offcalib_report)))
       _lidar_offcalib_report)))
  (:lidar_calib_report
   (&rest __lidar_calib_report)
   (if (keywordp (car __lidar_calib_report))
       (send* _lidar_calib_report __lidar_calib_report)
     (progn
       (if __lidar_calib_report (setq _lidar_calib_report (car __lidar_calib_report)))
       _lidar_calib_report)))
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; calib_interface_msgs/CameraOffcalibReport _camera_offcalib_report
    (send _camera_offcalib_report :serialization-length)
    ;; calib_interface_msgs/CameraCalibReport _camera_calib_report
    (send _camera_calib_report :serialization-length)
    ;; calib_interface_msgs/ImuCalibReport _imu_calib_report
    (send _imu_calib_report :serialization-length)
    ;; calib_interface_msgs/LidarOffcalibReport _lidar_offcalib_report
    (send _lidar_offcalib_report :serialization-length)
    ;; calib_interface_msgs/LidarCalibReport _lidar_calib_report
    (send _lidar_calib_report :serialization-length)
    ;; calib_interface_msgs/AceTotalErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; calib_interface_msgs/CameraOffcalibReport _camera_offcalib_report
       (send _camera_offcalib_report :serialize s)
     ;; calib_interface_msgs/CameraCalibReport _camera_calib_report
       (send _camera_calib_report :serialize s)
     ;; calib_interface_msgs/ImuCalibReport _imu_calib_report
       (send _imu_calib_report :serialize s)
     ;; calib_interface_msgs/LidarOffcalibReport _lidar_offcalib_report
       (send _lidar_offcalib_report :serialize s)
     ;; calib_interface_msgs/LidarCalibReport _lidar_calib_report
       (send _lidar_calib_report :serialize s)
     ;; calib_interface_msgs/AceTotalErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; calib_interface_msgs/CameraOffcalibReport _camera_offcalib_report
     (send _camera_offcalib_report :deserialize buf ptr-) (incf ptr- (send _camera_offcalib_report :serialization-length))
   ;; calib_interface_msgs/CameraCalibReport _camera_calib_report
     (send _camera_calib_report :deserialize buf ptr-) (incf ptr- (send _camera_calib_report :serialization-length))
   ;; calib_interface_msgs/ImuCalibReport _imu_calib_report
     (send _imu_calib_report :deserialize buf ptr-) (incf ptr- (send _imu_calib_report :serialization-length))
   ;; calib_interface_msgs/LidarOffcalibReport _lidar_offcalib_report
     (send _lidar_offcalib_report :deserialize buf ptr-) (incf ptr- (send _lidar_offcalib_report :serialization-length))
   ;; calib_interface_msgs/LidarCalibReport _lidar_calib_report
     (send _lidar_calib_report :deserialize buf ptr-) (incf ptr- (send _lidar_calib_report :serialization-length))
   ;; calib_interface_msgs/AceTotalErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get calib_interface_msgs::AceResults :md5sum-) "6784adbf0cc5691f6c0afacca15c944a")
(setf (get calib_interface_msgs::AceResults :datatype-) "calib_interface_msgs/AceResults")
(setf (get calib_interface_msgs::AceResults :definition-)
      "std_msgs/Header header
calib_interface_msgs/CameraOffcalibReport camera_offcalib_report
calib_interface_msgs/CameraCalibReport camera_calib_report
calib_interface_msgs/ImuCalibReport imu_calib_report
calib_interface_msgs/LidarOffcalibReport lidar_offcalib_report
calib_interface_msgs/LidarCalibReport lidar_calib_report
calib_interface_msgs/AceTotalErrorCodeEnum error_code

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: calib_interface_msgs/CameraOffcalibReport
uint8 available
calib_interface_msgs/CameraOffcalibInfo[] camera_offcalib_data
float32 travel_distance
float32 post_processing_progress
calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/CameraOffcalibInfo
perception_interface_msgs/CameraSourceEnum camera_name
uint32 camera_id
perception_interface_msgs/CameraSourceEnum[] attach_camera_names
uint32[] attach_camera_ids
calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum error_code

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

================================================================================
MSG: calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 EGO_INIT_FAILED = 1
uint16 NEED_CHECKED_CAM_NUM_ZERO = 2
uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10
uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11
uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12
uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13
uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50
uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51
uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52
uint16 CAM_VALID_STATEBUFFER_FILL = 53
uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54
uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100
uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101
uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150
uint16 value

================================================================================
MSG: calib_interface_msgs/CameraCalibReport
uint8 available
calib_interface_msgs/CameraCalibInfo[] camera_calib_data
float32 travel_distance
float32 post_processing_progress
calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/CameraCalibInfo
perception_interface_msgs/CameraSourceEnum camera_name
float64[] r_s2b
float64[] r_s2b_diff
float64[] t_s2b
calib_interface_msgs/CameraModelEnum camera_model
float64 fx
float64 fy
float64 cx
float64 cy
calib_interface_msgs/RadTan radtan_type
calib_interface_msgs/Polyn polyn_type
calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code
float64[] t_s2b_diff

================================================================================
MSG: calib_interface_msgs/CameraModelEnum
uint8 CAMERA_MODEL_POLYN = 0
uint8 CAMERA_MODEL_RADTAN = 1
uint8 value

================================================================================
MSG: calib_interface_msgs/RadTan
float64 k1
float64 k2
float64 p1
float64 p2
float64 k3
float64 k4
float64 k5
float64 k6

================================================================================
MSG: calib_interface_msgs/Polyn
float64 kc1
float64 kc2
float64 kc3
float64 kc4

================================================================================
MSG: calib_interface_msgs/CamCalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 CALIB_READ_CONFIG_FAIL = 1
uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2
uint16 CALIB_INIT_GROUND_PATTERN_FAIL = 3
uint16 CALIB_INIT_SURROUND_PATTERN_FAIL = 4
uint16 CALIB_READ_INIT_FILE_FAIL = 5
uint16 CALIB_IMAGE_SIZE_WRONG = 6
uint16 CALIB_IMAGE_CHANNEL_WRONG = 7
uint16 CALIB_FISHEYE_DETECT_TAG_FAIL = 8
uint16 CALIB_NORMAL_DETECT_TAG_FAIL = 9
uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT = 10
uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT = 11
uint16 CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 12
uint16 CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 13
uint16 CALIB_OUTPUT_FILE_FAIL = 14
uint16 EGO_INIT_FAILED = 1000
uint16 EGO_POSE_UNACCESSABLE = 1001
uint16 EGO_VISUAL_DISABLED = 1002
uint16 CAM_NEED_CALIB_NULL = 1003
uint16 CAM_UPDATE_PARAM_FAILED = 1004
uint16 CAM_SAVE_PARAM_FAILED = 1005
uint16 CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS = 1006
uint16 IMU_EXTRINSIC_UNFIXED = 1007
uint16 IMU_BIAS_UNESTIMATED = 1008
uint16 IMU_BIAS_UNFIXED = 1009
uint16 COV_INCREASE_ABNORMALLY = 1010
uint16 COV_NOT_DECREASE = 1011
uint16 COV_UNACCESSABLE = 1012
uint16 UNSTATIC_LAUNCH = 1013
uint16 MIN_MILEAGE_UNREACHED = 1014
uint16 MAX_MILEAGE_UNCONVERGED = 1015
uint16 INSUFFICIENT_TURNS = 1016
uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1500
uint16 LARGE_DEVIATION_CALIB_AND_VALIDATOR = 1501
uint16 CAM_SET_INIT_PARAM_FAILED = 2000
uint16 CAM_LOWER_FREQUENCY = 2001
uint16 CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE = 2002
uint16 CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE = 2003
uint16 SPEED_TOO_SLOW = 2100
uint16 ANGLE_TOO_BIG = 2101
uint16 INNER_CAMERA_MATCH_TOO_FEW = 2102
uint16 INTER_CAMERA_MATCH_TOO_FEW = 2103
uint16 KEYPOINTS_TOO_FEW = 2104
uint16 INIT_MATCH_TOO_FEW = 2105
uint16 INIT_MAP_POINTS_TOO_FEW = 2106
uint16 SFM_SCALE_DRIFT = 2107
uint16 FAIL_TO_ADD_FRAME = 2108
uint16 CONSTRUCTION_TOO_FEW = 2109
uint16 FULL_BA_FAIL = 2110
uint16 RESULT_INCONSISTENT = 2111
uint16 WRONG_BUFFER_SIZE = 2112
uint16 ARRAY_OVERREACH = 2113
uint16 PATCHES_RESET = 2114
uint16 value

================================================================================
MSG: calib_interface_msgs/ImuCalibReport
uint8 available
calib_interface_msgs/ImuCalibInfo[] imu_calib_data
float32 travel_distance
float32 post_processing_progress
calib_interface_msgs/ImuCalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/ImuCalibInfo
string imu_name
uint32 imu_id
float64[] r_s2b
float64[] t_s2b
calib_interface_msgs/ImuCalibDetailedErrorCodeEnum imu_error_code
float64[] r_s2b_diff
float64[] t_s2b_diff

================================================================================
MSG: calib_interface_msgs/ImuCalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 IMU_CALIB_READ_CONFIG_FAIL = 1
uint16 IMU_CALIB_READ_CALIB_FILE_FAIL = 2
uint16 IMU_CALIB_READ_VEHICLE_PARAM_NO_EXIST = 3
uint16 IMU_CALIB_READ_NORMAL_PARAM_FAIL = 4
uint16 IMU_CALIB_CREATE_RESULT_FILE_FAIL = 5
uint16 IMU_CALIB_IMU_NEED_CALIB_NULL = 6
uint16 IMU_CALIB_EGO_SOLVER_CREATE_FAIL = 1000
uint16 IMU_CALIB_EGO_SOLVER_INIT_FAIL = 1001
uint16 IMU_CALIB_EGO_SOLVER_SET_SAVE_STATUS_LOG_FILES_FAIL = 1002
uint16 IMU_CALIB_EGO_SOLVER_SET_PUSH_DATA_CALLBACKS_FAIL = 1003
uint16 IMU_CALIB_EGO_SOLVER_START_PIPELINE_FAIL = 1004
uint16 IMU_CALIB_INPUT_IMU_DATA_GYRO_ERROR = 2000
uint16 IMU_CALIB_INPUT_IMU_DATA_ACC_ERROR = 2001
uint16 IMU_CALIB_INPUT_IMU_DATA_LOWER_FREQUENCY = 2002
uint16 IMU_CALIB_INPUT_IMU_DATA_DISORDER = 2003
uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_ERROR = 2004
uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_LOWER_FREQUENCY = 2005
uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_DISORDER = 2006
uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_ERROR = 2007
uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_LOWER_FREQUENCY = 2008
uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_DISORDER = 2009
uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_ERROR = 2010
uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_LOWER_FREQUENCY = 2011
uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_DISORDER = 2012
uint16 IMU_CALIB_INPUT_GNSS_DATA_ERROR = 2013
uint16 IMU_CALIB_INPUT_GNSS_DATA_LOWER_FREQUENCY = 2014
uint16 IMU_CALIB_INPUT_GNSS_DATA_DISORDER = 2015
uint16 IMU_CALIB_INPUT_EGO_SET_IMU_DATA_ERROR = 2016
uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_SPEED_DATA_ERROR = 2017
uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_PULSE_DATA_ERROR = 2018
uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_ANGLE_DATA_ERROR = 2019
uint16 IMU_CALIB_INPUT_EGO_SET_GNSS_DATA_ERROR = 2020
uint16 IMU_CALIB_INPUT_EGO_POSE_UNACCESSABLE = 3000
uint16 IMU_CALIB_INPUT_EGO_POSE_INVALID = 3001
uint16 IMU_CALIB_INPUT_EGO_POSE_TIMESTAMP_INVALID = 3002
uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_INVALID = 3003
uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_INVALID = 3004
uint16 IMU_CALIB_INPUT_EGO_POSE_GYRO_INVALID = 3005
uint16 IMU_CALIB_INPUT_EGO_POSE_VELOCITY_INVALID = 3006
uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_STD_INVALID = 3007
uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_STD_INVALID = 3008
uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_CONVERGENCE_FAIL = 3009
uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_EXTRINSICS_FAIL = 3010
uint16 IMU_CALIB_GNSS_SIGNAL_WEAK = 3011
uint16 IMU_CALIB_IMU_BIAS_UNESTIMATED = 3012
uint16 IMU_CALIB_COV_INCREASE_ABNORMALLY = 3013
uint16 IMU_CALIB_COV_NOT_DECREASE = 3014
uint16 IMU_CALIB_COV_UNACCESSABLE = 3015
uint16 IMU_CALIB_MIN_MILEAGE_UNREACHED = 3016
uint16 IMU_CALIB_MAX_MILEAGE_UNCONVERGED = 3017
uint16 IMU_CALIB_INSUFFICIENT_SMOOTH_TURNS = 4000
uint16 IMU_CALIB_INSUFFICIENT_STRIGHT_DRIVE = 4001
uint16 IMU_CALIB_DRIVE_ACCELERATION_DECELERATION_NOT_STRAIGHT = 4002
uint16 IMU_CALIB_DRIVE_TURN_NOT_SMOOTH = 4003
uint16 IMU_CALIB_UNSTATIC_LAUNCH = 4004
uint16 IMU_CALIB_NOT_BACK_TO_ORIGIN = 4005
uint16 IMU_CALIB_DRIVE_ROUTE_BUMPY = 4006
uint16 IMU_CALIB_DRIVE_ROUTE_INCLINED = 4007
uint16 IMU_CALIB_DRIVE_ROUTE_SLIPPERY = 4008
uint16 IMU_CALIB_NHC_CHECK_FAIL = 5000
uint16 IMU_CALIB_ELEVATION_CHECK_FAIL = 5001
uint16 IMU_CALIB_IMU_UPDATE_PARAM_FAILED = 5002
uint16 IMU_CALIB_IMU_SAVE_PARAM_FAILED = 5003
uint16 IMU_CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 5004
uint16 IMU_CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 5005
uint16 IMU_CALIB_LARGE_DEVIATION_IN_DESIGNED_ROTATION = 5006
uint16 IMU_CALIB_LARGE_DEVIATION_CALIB_AND_VALIDATOR = 5007
uint16 IMU_CALIB_PUB_RESULT_FAIL = 5008
uint16 IMU_CALIB_STOP_ERROR = 5009
uint16 IMU_LOSS_FRAME = 6001
uint16 IMU_LARGE_NOISE = 6002
uint16 IMU_LARGE_BIAS = 6003
uint16 IMU_READ_INIT_FILE_FAIL = 6004
uint16 IMU_OUTPUT_FILE_FAIL = 6005
uint16 IMU_ABNORMAL_ROTATION_WITH_INIT = 6006
uint16 value

================================================================================
MSG: calib_interface_msgs/LidarOffcalibReport
uint8 available
calib_interface_msgs/LidarOffcalibInfo[] lidar_offcalib_data
float32 travel_distance
float32 post_processing_progress
calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/LidarOffcalibInfo
string lidar_name
uint32 lidar_id
perception_interface_msgs/CameraSourceEnum[] attach_camera_names
uint32[] attach_camera_ids
calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 value

================================================================================
MSG: calib_interface_msgs/LidarCalibReport
uint8 available
calib_interface_msgs/LidarCalibInfo[] lidar_calib_data
float32 travel_distance
float32 post_processing_progress
calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code

================================================================================
MSG: calib_interface_msgs/LidarCalibInfo
string lidar_name
uint32 lidar_id
float64[] r_s2b
float64[] t_s2b
calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code
float64[] r_s2b_diff
float64[] t_s2b_diff

================================================================================
MSG: calib_interface_msgs/LidarCalibDetailedErrorCodeEnum
uint16 NORMAL = 0
uint16 CALIB_READ_CONFIG_FAIL = 1
uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2
uint16 LIDAR_NEED_CALIB_NULL = 3
uint16 EGO_POSE_LOSS_FRAME = 4
uint16 BAD_ENVIRONMENT_FOR_CALIB = 5
uint16 VEHICLE_SPEED_TOO_FAST = 6
uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7
uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8
uint16 CALIB_TIMEOUT = 9
uint16 CAM_RESOLUTION_MISMATCH = 51
uint16 CAM_VIEW_OCCLUSION = 52
uint16 IMAGE_INSUFFICIENT_EDGES = 53
uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54
uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55
uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56
uint16 INSUFFICIENT_TURNS = 57
uint16 SOLVER_POSE_REFINE_EXCEPTION = 58
uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59
uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60
uint16 INIT_CALIB_OUT_OF_ODD = 1001
uint16 LIDAR_LOWER_FREQUENCY = 1002
uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003
uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004
uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005
uint16 value

================================================================================
MSG: calib_interface_msgs/AceTotalErrorCodeEnum
uint8 ACE_OK = 0
uint8 CAMERA_CALIB_FAILED = 1
uint8 CAMERA_OFFCALIB_FAILED = 2
uint8 IMU_CALIB_FAILED = 3
uint8 LIDAR_CALIB_FAILED = 4
uint8 LIDAR_OFFCALIB_FAILED = 5
uint8 ACE_INIT_FAILED = 9
uint8 TRIGGER_SAVE_DATA = 10
uint8 ACE_OK_NO_ACTION = 11
uint8 ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS = 12
uint8 ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS = 13
uint8 ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE = 14
uint8 READ_CONFIG_FAILED = 20
uint8 READ_CALIBRATION_FAILED = 21
uint8 OUTPUT_FAILED = 22
uint8 IMU_ACC_ERROR = 23
uint8 IMU_ACC_LOSS_FRAME = 24
uint8 IMU_ACC_DISORDER = 25
uint8 IMU_GYRO_ERROR = 26
uint8 IMU_GYRO_LOSS_FRAME = 27
uint8 IMU_GYRO_DISORDER = 28
uint8 GNSS_DATA_ERROR = 29
uint8 GNSS_DATA_LOSS_FRAME = 30
uint8 GNSS_DATA_DISORDER = 31
uint8 IMAGE_DATA_ERROR = 32
uint8 IMAGE_DATA_LOSS_FRAME = 33
uint8 IMAGE_DATA_DISORDER = 34
uint8 VISTA_DATA_ERROR = 35
uint8 VISTA_DATA_LOSS_FRAME = 36
uint8 VISTA_DATA_DISORDER = 37
uint8 WHEEL_SPEED_ERROR = 38
uint8 WHEEL_SPEED_LOSS_FRAME = 39
uint8 WHEEL_SPEED_DISORDER = 40
uint8 WHEEL_ANGLE_ERROR = 41
uint8 WHEEL_ANGLE_LOSS_FRAME = 42
uint8 WHEEL_ANGLE_DISORDER = 43
uint8 LIDAR_DATA_ERROR = 44
uint8 LIDAR_DATA_LOSS_FRAME = 45
uint8 LIDAR_DATA_DISORDER = 46
uint8 WHEEL_PULSE_ERROR = 47
uint8 WHEEL_PULSE_LOSS_FRAME = 48
uint8 WHEEL_PULSE_DISORDER = 49
uint8 SUSPENSION_DATA_ERROR = 50
uint8 SUSPENSION_CHANGED = 51
uint8 EGOPOSE_DATA_ERROR = 52
uint8 EGOPOSE_DATA_LOSS_FRAME = 53
uint8 EGOPOSE_DATA_DISORDER = 54
uint8 FILE_ACCESS_FAILED = 55
uint8 value

")



(provide :calib_interface_msgs/AceResults "6784adbf0cc5691f6c0afacca15c944a")


