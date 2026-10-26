;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysMapProviderParkingRequest)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysMapProviderParkingRequest (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSMAPPROVIDERPARKINGREQUEST")
  (make-package "SYSTEM_MANAGER_MSGS::SYSMAPPROVIDERPARKINGREQUEST"))

(in-package "ROS")
;;//! \htmlinclude SysMapProviderParkingRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::SysMapProviderParkingRequest
  :super ros::object
  :slots (_header _cmd _request_info ))

(defmethod system_manager_msgs::SysMapProviderParkingRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cmd __cmd) (instance system_manager_msgs::SystemCmdTypeEnum :init))
    ((:request_info __request_info) (instance system_manager_msgs::SysMapProviderRequestInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cmd __cmd)
   (setq _request_info __request_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:request_info
   (&rest __request_info)
   (if (keywordp (car __request_info))
       (send* _request_info __request_info)
     (progn
       (if __request_info (setq _request_info (car __request_info)))
       _request_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; system_manager_msgs/SystemCmdTypeEnum _cmd
    (send _cmd :serialization-length)
    ;; system_manager_msgs/SysMapProviderRequestInfo _request_info
    (send _request_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; system_manager_msgs/SystemCmdTypeEnum _cmd
       (send _cmd :serialize s)
     ;; system_manager_msgs/SysMapProviderRequestInfo _request_info
       (send _request_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; system_manager_msgs/SystemCmdTypeEnum _cmd
     (send _cmd :deserialize buf ptr-) (incf ptr- (send _cmd :serialization-length))
   ;; system_manager_msgs/SysMapProviderRequestInfo _request_info
     (send _request_info :deserialize buf ptr-) (incf ptr- (send _request_info :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysMapProviderParkingRequest :md5sum-) "717f8de6b5dcafe4a3a6752964cf01f5")
(setf (get system_manager_msgs::SysMapProviderParkingRequest :datatype-) "system_manager_msgs/SysMapProviderParkingRequest")
(setf (get system_manager_msgs::SysMapProviderParkingRequest :definition-)
      "std_msgs/Header header
system_manager_msgs/SystemCmdTypeEnum cmd
system_manager_msgs/SysMapProviderRequestInfo request_info

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

================================================================================
MSG: system_manager_msgs/SysMapProviderRequestInfo
mla_localization_msgs/MLAPosGlobal position
uint32 radius_range
system_manager_msgs/ParkingLotTypeEnum type
uint32 parking_lot_id
uint32[] target_partition_id_list
system_manager_msgs/ParkingQueryModeEnum query_mode
uint64 time_threshold_for_deleting
uint32 amout_for_deleting
system_manager_msgs/MapContentToUpdate map_content

================================================================================
MSG: mla_localization_msgs/MLAPosGlobal
float64 latitude
float64 longitude
float64 altitude

================================================================================
MSG: system_manager_msgs/ParkingLotTypeEnum
uint8 PNP = 0
uint8 LPNP = 1
uint8 BOTH = 2
uint8 type

================================================================================
MSG: system_manager_msgs/ParkingQueryModeEnum
uint8 BY_RANGE = 0
uint8 BY_LAST_USAGE = 1
uint8 BY_LATEST_BUILD = 2
uint8 BY_SPECIFIC_ID = 3
uint8 mode

================================================================================
MSG: system_manager_msgs/MapContentToUpdate
string name
string address
string label
string parking_space_id
string parking_type
string reversed

")



(provide :system_manager_msgs/SysMapProviderParkingRequest "717f8de6b5dcafe4a3a6752964cf01f5")


