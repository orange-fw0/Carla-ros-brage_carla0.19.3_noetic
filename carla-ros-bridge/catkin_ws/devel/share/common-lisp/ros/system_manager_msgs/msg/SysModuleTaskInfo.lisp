; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysModuleTaskInfo.msg.html

(cl:defclass <SysModuleTaskInfo> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (latest_cmd
    :reader latest_cmd
    :initarg :latest_cmd
    :type system_manager_msgs-msg:SystemCmdTypeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:SystemCmdTypeEnum))
   (task
    :reader task
    :initarg :task
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (info_code
    :reader info_code
    :initarg :info_code
    :type cl:integer
    :initform 0)
   (resvered1
    :reader resvered1
    :initarg :resvered1
    :type cl:integer
    :initform 0)
   (resvered2
    :reader resvered2
    :initarg :resvered2
    :type cl:integer
    :initform 0))
)

(cl:defclass SysModuleTaskInfo (<SysModuleTaskInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysModuleTaskInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysModuleTaskInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysModuleTaskInfo> is deprecated: use system_manager_msgs-msg:SysModuleTaskInfo instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <SysModuleTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:timestamp_us-val is deprecated.  Use system_manager_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'latest_cmd-val :lambda-list '(m))
(cl:defmethod latest_cmd-val ((m <SysModuleTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:latest_cmd-val is deprecated.  Use system_manager_msgs-msg:latest_cmd instead.")
  (latest_cmd m))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <SysModuleTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:task-val is deprecated.  Use system_manager_msgs-msg:task instead.")
  (task m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SysModuleTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:status-val is deprecated.  Use system_manager_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'info_code-val :lambda-list '(m))
(cl:defmethod info_code-val ((m <SysModuleTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:info_code-val is deprecated.  Use system_manager_msgs-msg:info_code instead.")
  (info_code m))

(cl:ensure-generic-function 'resvered1-val :lambda-list '(m))
(cl:defmethod resvered1-val ((m <SysModuleTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:resvered1-val is deprecated.  Use system_manager_msgs-msg:resvered1 instead.")
  (resvered1 m))

(cl:ensure-generic-function 'resvered2-val :lambda-list '(m))
(cl:defmethod resvered2-val ((m <SysModuleTaskInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:resvered2-val is deprecated.  Use system_manager_msgs-msg:resvered2 instead.")
  (resvered2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysModuleTaskInfo>) ostream)
  "Serializes a message object of type '<SysModuleTaskInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'latest_cmd) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'info_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'info_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'info_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'info_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resvered1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'resvered1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'resvered1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'resvered1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resvered2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'resvered2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'resvered2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'resvered2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysModuleTaskInfo>) istream)
  "Deserializes a message object of type '<SysModuleTaskInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'latest_cmd) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'info_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'info_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'info_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'info_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resvered1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'resvered1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'resvered1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'resvered1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'resvered2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'resvered2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'resvered2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'resvered2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysModuleTaskInfo>)))
  "Returns string type for a message object of type '<SysModuleTaskInfo>"
  "system_manager_msgs/SysModuleTaskInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysModuleTaskInfo)))
  "Returns string type for a message object of type 'SysModuleTaskInfo"
  "system_manager_msgs/SysModuleTaskInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysModuleTaskInfo>)))
  "Returns md5sum for a message object of type '<SysModuleTaskInfo>"
  "5c522d1bb01611ca6d6a41b452dc60bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysModuleTaskInfo)))
  "Returns md5sum for a message object of type 'SysModuleTaskInfo"
  "5c522d1bb01611ca6d6a41b452dc60bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysModuleTaskInfo>)))
  "Returns full string definition for message of type '<SysModuleTaskInfo>"
  (cl:format cl:nil "uint64 timestamp_us~%system_manager_msgs/SystemCmdTypeEnum latest_cmd~%uint32 task~%uint32 status~%uint32 info_code~%uint32 resvered1~%uint32 resvered2~%~%================================================================================~%MSG: system_manager_msgs/SystemCmdTypeEnum~%uint32 PLAC_CAMERA_START = 65537~%uint32 PLAC_CAMERA_CANCEL = 65538~%uint32 PLAC_CAMERA_STOP = 65539~%uint32 PLAC_FISHEYE_CAMERA_START = 65540~%uint32 PLAC_FISHEYE_CAMERA_CANCEL = 65541~%uint32 PLAC_FISHEYE_CAMERA_STOP = 65542~%uint32 PLAC_NON_FISHEYE_CAMERA_START = 65543~%uint32 PLAC_NON_FISHEYE_CAMERA_CANCEL = 65544~%uint32 PLAC_NON_FISHEYE_CAMERA_STOP = 65545~%uint32 PLAC_IMU_START = 65546~%uint32 PLAC_IMU_CANCEL = 65547~%uint32 PLAC_IMU_STOP = 65548~%uint32 PLAC_LIDAR_START = 65549~%uint32 PLAC_LIDAR_CANCEL = 65550~%uint32 PLAC_LIDAR_STOP = 65551~%uint32 PLAC_RADAR_START = 65552~%uint32 PLAC_RADAR_CANCEL = 65553~%uint32 PLAC_RADAR_STOP = 65554~%uint32 ACE_CAMERA_DETECT_START = 131073~%uint32 ACE_CAMERA_DETECT_CANCEL = 131074~%uint32 ACE_CAMERA_DETECT_STOP = 131075~%uint32 ACE_CAMERA_CALIBRATION_START = 131076~%uint32 ACE_CAMERA_CALIBRATION_CANCEL = 131077~%uint32 ACE_CAMERA_CALIBRATION_STOP = 131078~%uint32 ACE_LIDAR_DETECT_START = 131079~%uint32 ACE_LIDAR_DETECT_CANCEL = 131080~%uint32 ACE_LIDAR_DETECT_STOP = 131081~%uint32 ACE_LIDAR_CALIBRATION_START = 131082~%uint32 ACE_LIDAR_CALIBRATION_CANCEL = 131083~%uint32 ACE_LIDAR_CALIBRATION_STOP = 131084~%uint32 ACE_IMU_CALIBRATION_START = 131085~%uint32 ACE_IMU_CALIBRATION_CANCEL = 131086~%uint32 ACE_IMU_CALIBRATION_STOP = 131087~%uint32 ACE_C2B_CALIBRATION_START = 131088~%uint32 ACE_C2B_CALIBRATION_CANCEL = 131089~%uint32 ACE_C2B_CALIBRATION_STOP = 131090~%uint32 ACE_CAMERA_ONLINE_CALIBRATION_START = 135169~%uint32 ACE_CAMERA_ONLINE_CALIBRATION_CANCEL = 135170~%uint32 ACE_CAMERA_ONLINE_CALIBRATION_STOP = 135171~%uint32 ACE_UPDATE_CALIB_RESULT = 135172~%uint32 CAMERA_PLAC_IMAGE_GENERATE_START = 196609~%uint32 CAMERA_PLAC_IMAGE_GENERATE_CANCEL = 196610~%uint32 CAMERA_PLAC_IMAGE_GENERATE_STOP = 196611~%uint32 CAMERA_SERVICE_360_CHECK = 196612~%uint32 CAMERA_SERVICE_360_REQUEST = 196613~%uint32 CAMERA_SERVICE_360_STOP_REQUEST = 196614~%uint32 CAMERA_SERVICE_DVR_CHECK = 196615~%uint32 CAMERA_SERVICE_DVR_REQUEST = 196616~%uint32 CAMERA_SERVICE_DVR_STOP_REQUEST = 196617~%uint32 CAMERA_SERVICE_UPDATE_INTRINSIC = 196618~%uint32 CAMERA_SERVICE_SHUTDOWN = 196619~%uint32 CAMERA_SERVICE_ENTER_SENTRY_MODE = 196620~%uint32 CAMERA_SERVICE_EXIT_SENTRY_MODE = 196621~%uint32 VEHICLE_SERVICE_HIGHWAY_FUNCTION_MODE = 262145~%uint32 VEHICLE_SERVICE_PARKING_FUNCTION_MODE = 262146~%uint32 PERCEPTION_VISION_APA_START = 327681~%uint32 PERCEPTION_VISION_APA_STOP = 327682~%uint32 PERCEPTION_VISION_SVP_START = 327683~%uint32 PERCEPTION_VISION_SVP_STOP = 327684~%uint32 PERCEPTION_VISION_LVP_START = 327685~%uint32 PERCEPTION_VISION_LVP_STOP = 327686~%uint32 FUSION_PARKING_APA_START = 393217~%uint32 FUSION_PARKING_APA_STOP = 393218~%uint32 FUSION_PARKING_SVP_START = 393219~%uint32 FUSION_PARKING_SVP_STOP = 393220~%uint32 FUSION_PARKING_LVP_START = 393221~%uint32 FUSION_PARKING_LVP_STOP = 393222~%uint32 MAP_MANAGER_HIGHWAY_SET_NAVI_PATH = 458753~%uint32 MAP_PROVIDER_QUERY_PARKING_LOT = 458754~%uint32 MAP_PROVIDER_DOWNLOAD_PARKING_LOT = 458755~%uint32 MAP_PROVIDER_LOAD_PARKING_LOT = 458756~%uint32 MAP_PROVIDER_DELETE_PARKING_LOT = 458757~%uint32 MAP_RROVIDER_SET_PARKING_LOT = 458758~%uint32 MAP_PROVIDER_DELETE_ALL = 458759~%uint32 MAP_PROVIDER_QUERY_PARKING_LOT_ONLINE = 458760~%uint32 WORLDMODEL_PARKING_APA_START = 524289~%uint32 WORLDMODEL_PARKING_APA_STOP = 524290~%uint32 WORLDMODEL_PARKING_SVP_START = 524291~%uint32 WORLDMODEL_PARKING_SVP_STOP = 524292~%uint32 WORLDMODEL_PARKING_LVP_START = 524293~%uint32 WORLDMODEL_PARKING_LVP_STOP = 524294~%uint32 WORLDMODEL_HIGHWAY_FUNCTION_MODE = 524295~%uint32 PLANNING_CHANGE_MODE = 655361~%uint32 PLANNING_RANDOM_PARKIN = 655362~%uint32 PLANNING_DESIGNATE_PARKIN = 655363~%uint32 PLANNING_PARKOUT = 655364~%uint32 PLANNING_STOP = 655365~%uint32 PLANNING_EXIT = 655366~%uint32 PLANNING_HIGHWAY_FUNCTION_MODE = 655367~%uint32 PLANNING_HIGHWAY_NAVI_SETTINGS = 655368~%uint32 PLANNING_HIGHWAY_DRIVING_STYLE = 655369~%uint32 PLANNING_HIGHWAY_LANE_CHANGE = 655370~%uint32 PLANNING_HIGHWAY_START_STOP = 655371~%uint32 PLANNING_PAUSE = 655372~%uint32 PLANNING_CONTINUE = 655373~%uint32 PLANNING_RADS_FUNCTION_MODE = 655374~%uint32 PLANNING_PARKOUT_STANDBY = 655375~%uint32 PLANNING_PULL_OVER = 655376~%uint32 PLANNING_EMERGENCY_STOP = 655377~%uint32 PLANNING_EMERGENCY_PAUSE = 655378~%uint32 PLANNING_FORWARD = 655379~%uint32 PLANNING_BACKWARD = 655380~%uint32 PLANNING_RPA_STANDBY = 655381~%uint32 PLANNING_PARK_GLOBAL_TRAJECTORY = 655382~%uint32 PLANNING_PAUSE_GEAR_P = 655383~%uint32 PLANNING_NEARBY_PAUSE = 655384~%uint32 PLANNING_ERASE_SIDE_POINT = 655385~%uint32 PLANNING_SWITCH_SETTING = 655386~%uint32 PLANNING_TOR_NORMAL = 655387~%uint32 PLANNING_TOR_SLOWDOWN = 655388~%uint32 PLANNING_MRM_SLOW_STOP = 655389~%uint32 PLANNING_MRM_FAST_STOP = 655390~%uint32 PLANNING_MRM_BLIND_STOP = 655391~%uint32 PLANNING_PULL_EPB = 655392~%uint32 CONTROLLER_FUNCTION_MODE = 720897~%uint32 CONTROLLER_ENTER_STRAIGHT = 720898~%uint32 CONTROLLER_EXIT_STRAIGHT = 720899~%uint32 CONTROLLER_ERASE_SIDE_POINT = 720900~%uint32 CONTROLLER_LAT_ONLY = 720901~%uint32 CONTROLLER_LONG_ONLY = 720902~%uint32 EGOPOSE_MANAGER_FUNCTION_MODE = 786433~%uint32 PREDICTION_FUNCTION_MODE = 851969~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysModuleTaskInfo)))
  "Returns full string definition for message of type 'SysModuleTaskInfo"
  (cl:format cl:nil "uint64 timestamp_us~%system_manager_msgs/SystemCmdTypeEnum latest_cmd~%uint32 task~%uint32 status~%uint32 info_code~%uint32 resvered1~%uint32 resvered2~%~%================================================================================~%MSG: system_manager_msgs/SystemCmdTypeEnum~%uint32 PLAC_CAMERA_START = 65537~%uint32 PLAC_CAMERA_CANCEL = 65538~%uint32 PLAC_CAMERA_STOP = 65539~%uint32 PLAC_FISHEYE_CAMERA_START = 65540~%uint32 PLAC_FISHEYE_CAMERA_CANCEL = 65541~%uint32 PLAC_FISHEYE_CAMERA_STOP = 65542~%uint32 PLAC_NON_FISHEYE_CAMERA_START = 65543~%uint32 PLAC_NON_FISHEYE_CAMERA_CANCEL = 65544~%uint32 PLAC_NON_FISHEYE_CAMERA_STOP = 65545~%uint32 PLAC_IMU_START = 65546~%uint32 PLAC_IMU_CANCEL = 65547~%uint32 PLAC_IMU_STOP = 65548~%uint32 PLAC_LIDAR_START = 65549~%uint32 PLAC_LIDAR_CANCEL = 65550~%uint32 PLAC_LIDAR_STOP = 65551~%uint32 PLAC_RADAR_START = 65552~%uint32 PLAC_RADAR_CANCEL = 65553~%uint32 PLAC_RADAR_STOP = 65554~%uint32 ACE_CAMERA_DETECT_START = 131073~%uint32 ACE_CAMERA_DETECT_CANCEL = 131074~%uint32 ACE_CAMERA_DETECT_STOP = 131075~%uint32 ACE_CAMERA_CALIBRATION_START = 131076~%uint32 ACE_CAMERA_CALIBRATION_CANCEL = 131077~%uint32 ACE_CAMERA_CALIBRATION_STOP = 131078~%uint32 ACE_LIDAR_DETECT_START = 131079~%uint32 ACE_LIDAR_DETECT_CANCEL = 131080~%uint32 ACE_LIDAR_DETECT_STOP = 131081~%uint32 ACE_LIDAR_CALIBRATION_START = 131082~%uint32 ACE_LIDAR_CALIBRATION_CANCEL = 131083~%uint32 ACE_LIDAR_CALIBRATION_STOP = 131084~%uint32 ACE_IMU_CALIBRATION_START = 131085~%uint32 ACE_IMU_CALIBRATION_CANCEL = 131086~%uint32 ACE_IMU_CALIBRATION_STOP = 131087~%uint32 ACE_C2B_CALIBRATION_START = 131088~%uint32 ACE_C2B_CALIBRATION_CANCEL = 131089~%uint32 ACE_C2B_CALIBRATION_STOP = 131090~%uint32 ACE_CAMERA_ONLINE_CALIBRATION_START = 135169~%uint32 ACE_CAMERA_ONLINE_CALIBRATION_CANCEL = 135170~%uint32 ACE_CAMERA_ONLINE_CALIBRATION_STOP = 135171~%uint32 ACE_UPDATE_CALIB_RESULT = 135172~%uint32 CAMERA_PLAC_IMAGE_GENERATE_START = 196609~%uint32 CAMERA_PLAC_IMAGE_GENERATE_CANCEL = 196610~%uint32 CAMERA_PLAC_IMAGE_GENERATE_STOP = 196611~%uint32 CAMERA_SERVICE_360_CHECK = 196612~%uint32 CAMERA_SERVICE_360_REQUEST = 196613~%uint32 CAMERA_SERVICE_360_STOP_REQUEST = 196614~%uint32 CAMERA_SERVICE_DVR_CHECK = 196615~%uint32 CAMERA_SERVICE_DVR_REQUEST = 196616~%uint32 CAMERA_SERVICE_DVR_STOP_REQUEST = 196617~%uint32 CAMERA_SERVICE_UPDATE_INTRINSIC = 196618~%uint32 CAMERA_SERVICE_SHUTDOWN = 196619~%uint32 CAMERA_SERVICE_ENTER_SENTRY_MODE = 196620~%uint32 CAMERA_SERVICE_EXIT_SENTRY_MODE = 196621~%uint32 VEHICLE_SERVICE_HIGHWAY_FUNCTION_MODE = 262145~%uint32 VEHICLE_SERVICE_PARKING_FUNCTION_MODE = 262146~%uint32 PERCEPTION_VISION_APA_START = 327681~%uint32 PERCEPTION_VISION_APA_STOP = 327682~%uint32 PERCEPTION_VISION_SVP_START = 327683~%uint32 PERCEPTION_VISION_SVP_STOP = 327684~%uint32 PERCEPTION_VISION_LVP_START = 327685~%uint32 PERCEPTION_VISION_LVP_STOP = 327686~%uint32 FUSION_PARKING_APA_START = 393217~%uint32 FUSION_PARKING_APA_STOP = 393218~%uint32 FUSION_PARKING_SVP_START = 393219~%uint32 FUSION_PARKING_SVP_STOP = 393220~%uint32 FUSION_PARKING_LVP_START = 393221~%uint32 FUSION_PARKING_LVP_STOP = 393222~%uint32 MAP_MANAGER_HIGHWAY_SET_NAVI_PATH = 458753~%uint32 MAP_PROVIDER_QUERY_PARKING_LOT = 458754~%uint32 MAP_PROVIDER_DOWNLOAD_PARKING_LOT = 458755~%uint32 MAP_PROVIDER_LOAD_PARKING_LOT = 458756~%uint32 MAP_PROVIDER_DELETE_PARKING_LOT = 458757~%uint32 MAP_RROVIDER_SET_PARKING_LOT = 458758~%uint32 MAP_PROVIDER_DELETE_ALL = 458759~%uint32 MAP_PROVIDER_QUERY_PARKING_LOT_ONLINE = 458760~%uint32 WORLDMODEL_PARKING_APA_START = 524289~%uint32 WORLDMODEL_PARKING_APA_STOP = 524290~%uint32 WORLDMODEL_PARKING_SVP_START = 524291~%uint32 WORLDMODEL_PARKING_SVP_STOP = 524292~%uint32 WORLDMODEL_PARKING_LVP_START = 524293~%uint32 WORLDMODEL_PARKING_LVP_STOP = 524294~%uint32 WORLDMODEL_HIGHWAY_FUNCTION_MODE = 524295~%uint32 PLANNING_CHANGE_MODE = 655361~%uint32 PLANNING_RANDOM_PARKIN = 655362~%uint32 PLANNING_DESIGNATE_PARKIN = 655363~%uint32 PLANNING_PARKOUT = 655364~%uint32 PLANNING_STOP = 655365~%uint32 PLANNING_EXIT = 655366~%uint32 PLANNING_HIGHWAY_FUNCTION_MODE = 655367~%uint32 PLANNING_HIGHWAY_NAVI_SETTINGS = 655368~%uint32 PLANNING_HIGHWAY_DRIVING_STYLE = 655369~%uint32 PLANNING_HIGHWAY_LANE_CHANGE = 655370~%uint32 PLANNING_HIGHWAY_START_STOP = 655371~%uint32 PLANNING_PAUSE = 655372~%uint32 PLANNING_CONTINUE = 655373~%uint32 PLANNING_RADS_FUNCTION_MODE = 655374~%uint32 PLANNING_PARKOUT_STANDBY = 655375~%uint32 PLANNING_PULL_OVER = 655376~%uint32 PLANNING_EMERGENCY_STOP = 655377~%uint32 PLANNING_EMERGENCY_PAUSE = 655378~%uint32 PLANNING_FORWARD = 655379~%uint32 PLANNING_BACKWARD = 655380~%uint32 PLANNING_RPA_STANDBY = 655381~%uint32 PLANNING_PARK_GLOBAL_TRAJECTORY = 655382~%uint32 PLANNING_PAUSE_GEAR_P = 655383~%uint32 PLANNING_NEARBY_PAUSE = 655384~%uint32 PLANNING_ERASE_SIDE_POINT = 655385~%uint32 PLANNING_SWITCH_SETTING = 655386~%uint32 PLANNING_TOR_NORMAL = 655387~%uint32 PLANNING_TOR_SLOWDOWN = 655388~%uint32 PLANNING_MRM_SLOW_STOP = 655389~%uint32 PLANNING_MRM_FAST_STOP = 655390~%uint32 PLANNING_MRM_BLIND_STOP = 655391~%uint32 PLANNING_PULL_EPB = 655392~%uint32 CONTROLLER_FUNCTION_MODE = 720897~%uint32 CONTROLLER_ENTER_STRAIGHT = 720898~%uint32 CONTROLLER_EXIT_STRAIGHT = 720899~%uint32 CONTROLLER_ERASE_SIDE_POINT = 720900~%uint32 CONTROLLER_LAT_ONLY = 720901~%uint32 CONTROLLER_LONG_ONLY = 720902~%uint32 EGOPOSE_MANAGER_FUNCTION_MODE = 786433~%uint32 PREDICTION_FUNCTION_MODE = 851969~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysModuleTaskInfo>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'latest_cmd))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysModuleTaskInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysModuleTaskInfo
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':latest_cmd (latest_cmd msg))
    (cl:cons ':task (task msg))
    (cl:cons ':status (status msg))
    (cl:cons ':info_code (info_code msg))
    (cl:cons ':resvered1 (resvered1 msg))
    (cl:cons ':resvered2 (resvered2 msg))
))
