;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::CameraCalibReport)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'CameraCalibReport (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::CAMERACALIBREPORT")
  (make-package "CALIB_INTERFACE_MSGS::CAMERACALIBREPORT"))

(in-package "ROS")
;;//! \htmlinclude CameraCalibReport.msg.html


(defclass calib_interface_msgs::CameraCalibReport
  :super ros::object
  :slots (_available _camera_calib_data _travel_distance _post_processing_progress _error_code ))

(defmethod calib_interface_msgs::CameraCalibReport
  (:init
   (&key
    ((:available __available) 0)
    ((:camera_calib_data __camera_calib_data) ())
    ((:travel_distance __travel_distance) 0.0)
    ((:post_processing_progress __post_processing_progress) 0.0)
    ((:error_code __error_code) (instance calib_interface_msgs::CamCalibDetailedErrorCodeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _camera_calib_data __camera_calib_data)
   (setq _travel_distance (float __travel_distance))
   (setq _post_processing_progress (float __post_processing_progress))
   (setq _error_code __error_code)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:camera_calib_data
   (&rest __camera_calib_data)
   (if (keywordp (car __camera_calib_data))
       (send* _camera_calib_data __camera_calib_data)
     (progn
       (if __camera_calib_data (setq _camera_calib_data (car __camera_calib_data)))
       _camera_calib_data)))
  (:travel_distance
   (&optional __travel_distance)
   (if __travel_distance (setq _travel_distance __travel_distance)) _travel_distance)
  (:post_processing_progress
   (&optional __post_processing_progress)
   (if __post_processing_progress (setq _post_processing_progress __post_processing_progress)) _post_processing_progress)
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
    ;; uint8 _available
    1
    ;; calib_interface_msgs/CameraCalibInfo[] _camera_calib_data
    (apply #'+ (send-all _camera_calib_data :serialization-length)) 4
    ;; float32 _travel_distance
    4
    ;; float32 _post_processing_progress
    4
    ;; calib_interface_msgs/CamCalibDetailedErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; calib_interface_msgs/CameraCalibInfo[] _camera_calib_data
     (write-long (length _camera_calib_data) s)
     (dolist (elem _camera_calib_data)
       (send elem :serialize s)
       )
     ;; float32 _travel_distance
       (sys::poke _travel_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _post_processing_progress
       (sys::poke _post_processing_progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; calib_interface_msgs/CamCalibDetailedErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; calib_interface_msgs/CameraCalibInfo[] _camera_calib_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_calib_data (let (r) (dotimes (i n) (push (instance calib_interface_msgs::CameraCalibInfo :init) r)) r))
     (dolist (elem- _camera_calib_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _travel_distance
     (setq _travel_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _post_processing_progress
     (setq _post_processing_progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; calib_interface_msgs/CamCalibDetailedErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;;
   self)
  )

(setf (get calib_interface_msgs::CameraCalibReport :md5sum-) "c0442fce8351f5e7dc154ff22c71ab0d")
(setf (get calib_interface_msgs::CameraCalibReport :datatype-) "calib_interface_msgs/CameraCalibReport")
(setf (get calib_interface_msgs::CameraCalibReport :definition-)
      "uint8 available
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

")



(provide :calib_interface_msgs/CameraCalibReport "c0442fce8351f5e7dc154ff22c71ab0d")


