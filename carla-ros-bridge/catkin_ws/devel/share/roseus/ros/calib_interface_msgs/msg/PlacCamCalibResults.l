;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::PlacCamCalibResults)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'PlacCamCalibResults (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::PLACCAMCALIBRESULTS")
  (make-package "CALIB_INTERFACE_MSGS::PLACCAMCALIBRESULTS"))

(in-package "ROS")
;;//! \htmlinclude PlacCamCalibResults.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calib_interface_msgs::PlacCamCalibResults
  :super ros::object
  :slots (_header _calib_info ))

(defmethod calib_interface_msgs::PlacCamCalibResults
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:calib_info __calib_info) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _calib_info __calib_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:calib_info
   (&rest __calib_info)
   (if (keywordp (car __calib_info))
       (send* _calib_info __calib_info)
     (progn
       (if __calib_info (setq _calib_info (car __calib_info)))
       _calib_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; calib_interface_msgs/CameraCalibInfo[] _calib_info
    (apply #'+ (send-all _calib_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; calib_interface_msgs/CameraCalibInfo[] _calib_info
     (write-long (length _calib_info) s)
     (dolist (elem _calib_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; calib_interface_msgs/CameraCalibInfo[] _calib_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _calib_info (let (r) (dotimes (i n) (push (instance calib_interface_msgs::CameraCalibInfo :init) r)) r))
     (dolist (elem- _calib_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get calib_interface_msgs::PlacCamCalibResults :md5sum-) "e2c44d0468effc260eb50d65fd294114")
(setf (get calib_interface_msgs::PlacCamCalibResults :datatype-) "calib_interface_msgs/PlacCamCalibResults")
(setf (get calib_interface_msgs::PlacCamCalibResults :definition-)
      "std_msgs/Header header
calib_interface_msgs/CameraCalibInfo[] calib_info

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



(provide :calib_interface_msgs/PlacCamCalibResults "e2c44d0468effc260eb50d65fd294114")


