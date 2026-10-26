;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::CameraCalibInfo)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'CameraCalibInfo (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::CAMERACALIBINFO")
  (make-package "CALIB_INTERFACE_MSGS::CAMERACALIBINFO"))

(in-package "ROS")
;;//! \htmlinclude CameraCalibInfo.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass calib_interface_msgs::CameraCalibInfo
  :super ros::object
  :slots (_camera_name _r_s2b _r_s2b_diff _t_s2b _camera_model _fx _fy _cx _cy _radtan_type _polyn_type _error_code _t_s2b_diff ))

(defmethod calib_interface_msgs::CameraCalibInfo
  (:init
   (&key
    ((:camera_name __camera_name) (instance perception_interface_msgs::CameraSourceEnum :init))
    ((:r_s2b __r_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r_s2b_diff __r_s2b_diff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:t_s2b __t_s2b) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:camera_model __camera_model) (instance calib_interface_msgs::CameraModelEnum :init))
    ((:fx __fx) 0.0)
    ((:fy __fy) 0.0)
    ((:cx __cx) 0.0)
    ((:cy __cy) 0.0)
    ((:radtan_type __radtan_type) (instance calib_interface_msgs::RadTan :init))
    ((:polyn_type __polyn_type) (instance calib_interface_msgs::Polyn :init))
    ((:error_code __error_code) (instance calib_interface_msgs::CamCalibDetailedErrorCodeEnum :init))
    ((:t_s2b_diff __t_s2b_diff) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _camera_name __camera_name)
   (setq _r_s2b __r_s2b)
   (setq _r_s2b_diff __r_s2b_diff)
   (setq _t_s2b __t_s2b)
   (setq _camera_model __camera_model)
   (setq _fx (float __fx))
   (setq _fy (float __fy))
   (setq _cx (float __cx))
   (setq _cy (float __cy))
   (setq _radtan_type __radtan_type)
   (setq _polyn_type __polyn_type)
   (setq _error_code __error_code)
   (setq _t_s2b_diff __t_s2b_diff)
   self)
  (:camera_name
   (&rest __camera_name)
   (if (keywordp (car __camera_name))
       (send* _camera_name __camera_name)
     (progn
       (if __camera_name (setq _camera_name (car __camera_name)))
       _camera_name)))
  (:r_s2b
   (&optional __r_s2b)
   (if __r_s2b (setq _r_s2b __r_s2b)) _r_s2b)
  (:r_s2b_diff
   (&optional __r_s2b_diff)
   (if __r_s2b_diff (setq _r_s2b_diff __r_s2b_diff)) _r_s2b_diff)
  (:t_s2b
   (&optional __t_s2b)
   (if __t_s2b (setq _t_s2b __t_s2b)) _t_s2b)
  (:camera_model
   (&rest __camera_model)
   (if (keywordp (car __camera_model))
       (send* _camera_model __camera_model)
     (progn
       (if __camera_model (setq _camera_model (car __camera_model)))
       _camera_model)))
  (:fx
   (&optional __fx)
   (if __fx (setq _fx __fx)) _fx)
  (:fy
   (&optional __fy)
   (if __fy (setq _fy __fy)) _fy)
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:radtan_type
   (&rest __radtan_type)
   (if (keywordp (car __radtan_type))
       (send* _radtan_type __radtan_type)
     (progn
       (if __radtan_type (setq _radtan_type (car __radtan_type)))
       _radtan_type)))
  (:polyn_type
   (&rest __polyn_type)
   (if (keywordp (car __polyn_type))
       (send* _polyn_type __polyn_type)
     (progn
       (if __polyn_type (setq _polyn_type (car __polyn_type)))
       _polyn_type)))
  (:error_code
   (&rest __error_code)
   (if (keywordp (car __error_code))
       (send* _error_code __error_code)
     (progn
       (if __error_code (setq _error_code (car __error_code)))
       _error_code)))
  (:t_s2b_diff
   (&optional __t_s2b_diff)
   (if __t_s2b_diff (setq _t_s2b_diff __t_s2b_diff)) _t_s2b_diff)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/CameraSourceEnum _camera_name
    (send _camera_name :serialization-length)
    ;; float64[] _r_s2b
    (* 8    (length _r_s2b)) 4
    ;; float64[] _r_s2b_diff
    (* 8    (length _r_s2b_diff)) 4
    ;; float64[] _t_s2b
    (* 8    (length _t_s2b)) 4
    ;; calib_interface_msgs/CameraModelEnum _camera_model
    (send _camera_model :serialization-length)
    ;; float64 _fx
    8
    ;; float64 _fy
    8
    ;; float64 _cx
    8
    ;; float64 _cy
    8
    ;; calib_interface_msgs/RadTan _radtan_type
    (send _radtan_type :serialization-length)
    ;; calib_interface_msgs/Polyn _polyn_type
    (send _polyn_type :serialization-length)
    ;; calib_interface_msgs/CamCalibDetailedErrorCodeEnum _error_code
    (send _error_code :serialization-length)
    ;; float64[] _t_s2b_diff
    (* 8    (length _t_s2b_diff)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/CameraSourceEnum _camera_name
       (send _camera_name :serialize s)
     ;; float64[] _r_s2b
     (write-long (length _r_s2b) s)
     (dotimes (i (length _r_s2b))
       (sys::poke (elt _r_s2b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _r_s2b_diff
     (write-long (length _r_s2b_diff) s)
     (dotimes (i (length _r_s2b_diff))
       (sys::poke (elt _r_s2b_diff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _t_s2b
     (write-long (length _t_s2b) s)
     (dotimes (i (length _t_s2b))
       (sys::poke (elt _t_s2b i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; calib_interface_msgs/CameraModelEnum _camera_model
       (send _camera_model :serialize s)
     ;; float64 _fx
       (sys::poke _fx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fy
       (sys::poke _fy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cx
       (sys::poke _cx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cy
       (sys::poke _cy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; calib_interface_msgs/RadTan _radtan_type
       (send _radtan_type :serialize s)
     ;; calib_interface_msgs/Polyn _polyn_type
       (send _polyn_type :serialize s)
     ;; calib_interface_msgs/CamCalibDetailedErrorCodeEnum _error_code
       (send _error_code :serialize s)
     ;; float64[] _t_s2b_diff
     (write-long (length _t_s2b_diff) s)
     (dotimes (i (length _t_s2b_diff))
       (sys::poke (elt _t_s2b_diff i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/CameraSourceEnum _camera_name
     (send _camera_name :deserialize buf ptr-) (incf ptr- (send _camera_name :serialization-length))
   ;; float64[] _r_s2b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_s2b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_s2b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _r_s2b_diff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r_s2b_diff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r_s2b_diff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _t_s2b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _t_s2b (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _t_s2b i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; calib_interface_msgs/CameraModelEnum _camera_model
     (send _camera_model :deserialize buf ptr-) (incf ptr- (send _camera_model :serialization-length))
   ;; float64 _fx
     (setq _fx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fy
     (setq _fy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cx
     (setq _cx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cy
     (setq _cy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; calib_interface_msgs/RadTan _radtan_type
     (send _radtan_type :deserialize buf ptr-) (incf ptr- (send _radtan_type :serialization-length))
   ;; calib_interface_msgs/Polyn _polyn_type
     (send _polyn_type :deserialize buf ptr-) (incf ptr- (send _polyn_type :serialization-length))
   ;; calib_interface_msgs/CamCalibDetailedErrorCodeEnum _error_code
     (send _error_code :deserialize buf ptr-) (incf ptr- (send _error_code :serialization-length))
   ;; float64[] _t_s2b_diff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _t_s2b_diff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _t_s2b_diff i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get calib_interface_msgs::CameraCalibInfo :md5sum-) "5c387890dd30237e25c306fad81a03be")
(setf (get calib_interface_msgs::CameraCalibInfo :datatype-) "calib_interface_msgs/CameraCalibInfo")
(setf (get calib_interface_msgs::CameraCalibInfo :definition-)
      "perception_interface_msgs/CameraSourceEnum camera_name
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



(provide :calib_interface_msgs/CameraCalibInfo "5c387890dd30237e25c306fad81a03be")


