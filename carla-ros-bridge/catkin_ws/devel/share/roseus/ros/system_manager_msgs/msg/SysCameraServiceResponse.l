;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysCameraServiceResponse)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysCameraServiceResponse (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSCAMERASERVICERESPONSE")
  (make-package "SYSTEM_MANAGER_MSGS::SYSCAMERASERVICERESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SysCameraServiceResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::SysCameraServiceResponse
  :super ros::object
  :slots (_header _request_seq _success _request_cmd _payload ))

(defmethod system_manager_msgs::SysCameraServiceResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request_seq __request_seq) 0)
    ((:success __success) nil)
    ((:request_cmd __request_cmd) (instance system_manager_msgs::SystemCmdTypeEnum :init))
    ((:payload __payload) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _request_seq (round __request_seq))
   (setq _success __success)
   (setq _request_cmd __request_cmd)
   (setq _payload (string __payload))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request_seq
   (&optional __request_seq)
   (if __request_seq (setq _request_seq __request_seq)) _request_seq)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:request_cmd
   (&rest __request_cmd)
   (if (keywordp (car __request_cmd))
       (send* _request_cmd __request_cmd)
     (progn
       (if __request_cmd (setq _request_cmd (car __request_cmd)))
       _request_cmd)))
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _request_seq
    4
    ;; bool _success
    1
    ;; system_manager_msgs/SystemCmdTypeEnum _request_cmd
    (send _request_cmd :serialization-length)
    ;; string _payload
    4 (length _payload)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _request_seq
       (write-long _request_seq s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; system_manager_msgs/SystemCmdTypeEnum _request_cmd
       (send _request_cmd :serialize s)
     ;; string _payload
       (write-long (length _payload) s) (princ _payload s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _request_seq
     (setq _request_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; system_manager_msgs/SystemCmdTypeEnum _request_cmd
     (send _request_cmd :deserialize buf ptr-) (incf ptr- (send _request_cmd :serialization-length))
   ;; string _payload
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _payload (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysCameraServiceResponse :md5sum-) "b13b6ad8a2038d80e20ed5eefa6dbee0")
(setf (get system_manager_msgs::SysCameraServiceResponse :datatype-) "system_manager_msgs/SysCameraServiceResponse")
(setf (get system_manager_msgs::SysCameraServiceResponse :definition-)
      "std_msgs/Header header
uint32 request_seq
bool success
system_manager_msgs/SystemCmdTypeEnum request_cmd
string payload

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
MSG: system_manager_msgs/SystemCmdTypeEnum
uint32 PLAC_CAMERA_START = 65537
uint32 PLAC_CAMERA_CANCEL = 65538
uint32 PLAC_CAMERA_STOP = 65539
uint32 PLAC_FISHEYE_CAMERA_START = 65540
uint32 PLAC_FISHEYE_CAMERA_CANCEL = 65541
uint32 PLAC_FISHEYE_CAMERA_STOP = 65542
uint32 PLAC_NON_FISHEYE_CAMERA_START = 65543
uint32 PLAC_NON_FISHEYE_CAMERA_CANCEL = 65544
uint32 PLAC_NON_FISHEYE_CAMERA_STOP = 65545
uint32 PLAC_IMU_START = 65546
uint32 PLAC_IMU_CANCEL = 65547
uint32 PLAC_IMU_STOP = 65548
uint32 PLAC_LIDAR_START = 65549
uint32 PLAC_LIDAR_CANCEL = 65550
uint32 PLAC_LIDAR_STOP = 65551
uint32 PLAC_RADAR_START = 65552
uint32 PLAC_RADAR_CANCEL = 65553
uint32 PLAC_RADAR_STOP = 65554
uint32 ACE_CAMERA_DETECT_START = 131073
uint32 ACE_CAMERA_DETECT_CANCEL = 131074
uint32 ACE_CAMERA_DETECT_STOP = 131075
uint32 ACE_CAMERA_CALIBRATION_START = 131076
uint32 ACE_CAMERA_CALIBRATION_CANCEL = 131077
uint32 ACE_CAMERA_CALIBRATION_STOP = 131078
uint32 ACE_LIDAR_DETECT_START = 131079
uint32 ACE_LIDAR_DETECT_CANCEL = 131080
uint32 ACE_LIDAR_DETECT_STOP = 131081
uint32 ACE_LIDAR_CALIBRATION_START = 131082
uint32 ACE_LIDAR_CALIBRATION_CANCEL = 131083
uint32 ACE_LIDAR_CALIBRATION_STOP = 131084
uint32 ACE_IMU_CALIBRATION_START = 131085
uint32 ACE_IMU_CALIBRATION_CANCEL = 131086
uint32 ACE_IMU_CALIBRATION_STOP = 131087
uint32 ACE_C2B_CALIBRATION_START = 131088
uint32 ACE_C2B_CALIBRATION_CANCEL = 131089
uint32 ACE_C2B_CALIBRATION_STOP = 131090
uint32 ACE_CAMERA_ONLINE_CALIBRATION_START = 135169
uint32 ACE_CAMERA_ONLINE_CALIBRATION_CANCEL = 135170
uint32 ACE_CAMERA_ONLINE_CALIBRATION_STOP = 135171
uint32 ACE_UPDATE_CALIB_RESULT = 135172
uint32 CAMERA_PLAC_IMAGE_GENERATE_START = 196609
uint32 CAMERA_PLAC_IMAGE_GENERATE_CANCEL = 196610
uint32 CAMERA_PLAC_IMAGE_GENERATE_STOP = 196611
uint32 CAMERA_SERVICE_360_CHECK = 196612
uint32 CAMERA_SERVICE_360_REQUEST = 196613
uint32 CAMERA_SERVICE_360_STOP_REQUEST = 196614
uint32 CAMERA_SERVICE_DVR_CHECK = 196615
uint32 CAMERA_SERVICE_DVR_REQUEST = 196616
uint32 CAMERA_SERVICE_DVR_STOP_REQUEST = 196617
uint32 CAMERA_SERVICE_UPDATE_INTRINSIC = 196618
uint32 CAMERA_SERVICE_SHUTDOWN = 196619
uint32 CAMERA_SERVICE_ENTER_SENTRY_MODE = 196620
uint32 CAMERA_SERVICE_EXIT_SENTRY_MODE = 196621
uint32 VEHICLE_SERVICE_HIGHWAY_FUNCTION_MODE = 262145
uint32 VEHICLE_SERVICE_PARKING_FUNCTION_MODE = 262146
uint32 PERCEPTION_VISION_APA_START = 327681
uint32 PERCEPTION_VISION_APA_STOP = 327682
uint32 PERCEPTION_VISION_SVP_START = 327683
uint32 PERCEPTION_VISION_SVP_STOP = 327684
uint32 PERCEPTION_VISION_LVP_START = 327685
uint32 PERCEPTION_VISION_LVP_STOP = 327686
uint32 FUSION_PARKING_APA_START = 393217
uint32 FUSION_PARKING_APA_STOP = 393218
uint32 FUSION_PARKING_SVP_START = 393219
uint32 FUSION_PARKING_SVP_STOP = 393220
uint32 FUSION_PARKING_LVP_START = 393221
uint32 FUSION_PARKING_LVP_STOP = 393222
uint32 MAP_MANAGER_HIGHWAY_SET_NAVI_PATH = 458753
uint32 MAP_PROVIDER_QUERY_PARKING_LOT = 458754
uint32 MAP_PROVIDER_DOWNLOAD_PARKING_LOT = 458755
uint32 MAP_PROVIDER_LOAD_PARKING_LOT = 458756
uint32 MAP_PROVIDER_DELETE_PARKING_LOT = 458757
uint32 MAP_RROVIDER_SET_PARKING_LOT = 458758
uint32 MAP_PROVIDER_DELETE_ALL = 458759
uint32 MAP_PROVIDER_QUERY_PARKING_LOT_ONLINE = 458760
uint32 WORLDMODEL_PARKING_APA_START = 524289
uint32 WORLDMODEL_PARKING_APA_STOP = 524290
uint32 WORLDMODEL_PARKING_SVP_START = 524291
uint32 WORLDMODEL_PARKING_SVP_STOP = 524292
uint32 WORLDMODEL_PARKING_LVP_START = 524293
uint32 WORLDMODEL_PARKING_LVP_STOP = 524294
uint32 WORLDMODEL_HIGHWAY_FUNCTION_MODE = 524295
uint32 PLANNING_CHANGE_MODE = 655361
uint32 PLANNING_RANDOM_PARKIN = 655362
uint32 PLANNING_DESIGNATE_PARKIN = 655363
uint32 PLANNING_PARKOUT = 655364
uint32 PLANNING_STOP = 655365
uint32 PLANNING_EXIT = 655366
uint32 PLANNING_HIGHWAY_FUNCTION_MODE = 655367
uint32 PLANNING_HIGHWAY_NAVI_SETTINGS = 655368
uint32 PLANNING_HIGHWAY_DRIVING_STYLE = 655369
uint32 PLANNING_HIGHWAY_LANE_CHANGE = 655370
uint32 PLANNING_HIGHWAY_START_STOP = 655371
uint32 PLANNING_PAUSE = 655372
uint32 PLANNING_CONTINUE = 655373
uint32 PLANNING_RADS_FUNCTION_MODE = 655374
uint32 PLANNING_PARKOUT_STANDBY = 655375
uint32 PLANNING_PULL_OVER = 655376
uint32 PLANNING_EMERGENCY_STOP = 655377
uint32 PLANNING_EMERGENCY_PAUSE = 655378
uint32 PLANNING_FORWARD = 655379
uint32 PLANNING_BACKWARD = 655380
uint32 PLANNING_RPA_STANDBY = 655381
uint32 PLANNING_PARK_GLOBAL_TRAJECTORY = 655382
uint32 PLANNING_PAUSE_GEAR_P = 655383
uint32 PLANNING_NEARBY_PAUSE = 655384
uint32 PLANNING_ERASE_SIDE_POINT = 655385
uint32 PLANNING_SWITCH_SETTING = 655386
uint32 PLANNING_TOR_NORMAL = 655387
uint32 PLANNING_TOR_SLOWDOWN = 655388
uint32 PLANNING_MRM_SLOW_STOP = 655389
uint32 PLANNING_MRM_FAST_STOP = 655390
uint32 PLANNING_MRM_BLIND_STOP = 655391
uint32 PLANNING_PULL_EPB = 655392
uint32 CONTROLLER_FUNCTION_MODE = 720897
uint32 CONTROLLER_ENTER_STRAIGHT = 720898
uint32 CONTROLLER_EXIT_STRAIGHT = 720899
uint32 CONTROLLER_ERASE_SIDE_POINT = 720900
uint32 CONTROLLER_LAT_ONLY = 720901
uint32 CONTROLLER_LONG_ONLY = 720902
uint32 EGOPOSE_MANAGER_FUNCTION_MODE = 786433
uint32 PREDICTION_FUNCTION_MODE = 851969
uint32 value

")



(provide :system_manager_msgs/SysCameraServiceResponse "b13b6ad8a2038d80e20ed5eefa6dbee0")


