;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysModuleTaskInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysModuleTaskInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSMODULETASKINFO")
  (make-package "SYSTEM_MANAGER_MSGS::SYSMODULETASKINFO"))

(in-package "ROS")
;;//! \htmlinclude SysModuleTaskInfo.msg.html


(defclass system_manager_msgs::SysModuleTaskInfo
  :super ros::object
  :slots (_timestamp_us _latest_cmd _task _status _info_code _resvered1 _resvered2 ))

(defmethod system_manager_msgs::SysModuleTaskInfo
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:latest_cmd __latest_cmd) (instance system_manager_msgs::SystemCmdTypeEnum :init))
    ((:task __task) 0)
    ((:status __status) 0)
    ((:info_code __info_code) 0)
    ((:resvered1 __resvered1) 0)
    ((:resvered2 __resvered2) 0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _latest_cmd __latest_cmd)
   (setq _task (round __task))
   (setq _status (round __status))
   (setq _info_code (round __info_code))
   (setq _resvered1 (round __resvered1))
   (setq _resvered2 (round __resvered2))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:latest_cmd
   (&rest __latest_cmd)
   (if (keywordp (car __latest_cmd))
       (send* _latest_cmd __latest_cmd)
     (progn
       (if __latest_cmd (setq _latest_cmd (car __latest_cmd)))
       _latest_cmd)))
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:info_code
   (&optional __info_code)
   (if __info_code (setq _info_code __info_code)) _info_code)
  (:resvered1
   (&optional __resvered1)
   (if __resvered1 (setq _resvered1 __resvered1)) _resvered1)
  (:resvered2
   (&optional __resvered2)
   (if __resvered2 (setq _resvered2 __resvered2)) _resvered2)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; system_manager_msgs/SystemCmdTypeEnum _latest_cmd
    (send _latest_cmd :serialization-length)
    ;; uint32 _task
    4
    ;; uint32 _status
    4
    ;; uint32 _info_code
    4
    ;; uint32 _resvered1
    4
    ;; uint32 _resvered2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; system_manager_msgs/SystemCmdTypeEnum _latest_cmd
       (send _latest_cmd :serialize s)
     ;; uint32 _task
       (write-long _task s)
     ;; uint32 _status
       (write-long _status s)
     ;; uint32 _info_code
       (write-long _info_code s)
     ;; uint32 _resvered1
       (write-long _resvered1 s)
     ;; uint32 _resvered2
       (write-long _resvered2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; system_manager_msgs/SystemCmdTypeEnum _latest_cmd
     (send _latest_cmd :deserialize buf ptr-) (incf ptr- (send _latest_cmd :serialization-length))
   ;; uint32 _task
     (setq _task (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _info_code
     (setq _info_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _resvered1
     (setq _resvered1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _resvered2
     (setq _resvered2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_manager_msgs::SysModuleTaskInfo :md5sum-) "5c522d1bb01611ca6d6a41b452dc60bd")
(setf (get system_manager_msgs::SysModuleTaskInfo :datatype-) "system_manager_msgs/SysModuleTaskInfo")
(setf (get system_manager_msgs::SysModuleTaskInfo :definition-)
      "uint64 timestamp_us
system_manager_msgs/SystemCmdTypeEnum latest_cmd
uint32 task
uint32 status
uint32 info_code
uint32 resvered1
uint32 resvered2

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



(provide :system_manager_msgs/SysModuleTaskInfo "5c522d1bb01611ca6d6a41b452dc60bd")


