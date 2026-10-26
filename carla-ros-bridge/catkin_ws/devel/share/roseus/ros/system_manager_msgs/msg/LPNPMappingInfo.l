;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LPNPMappingInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LPNPMappingInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGINFO")
  (make-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGINFO"))

(in-package "ROS")
;;//! \htmlinclude LPNPMappingInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::LPNPMappingInfo
  :super ros::object
  :slots (_header _summary _path_verify_rate _status _failure_case _parking_space_building_way _learning_distance _total_distance _speed_bump_num _slope_num _parking_slot_num _current_map_id _floor_id _in_parking_space _live_map _increment_offset ))

(defmethod system_manager_msgs::LPNPMappingInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:summary __summary) "")
    ((:path_verify_rate __path_verify_rate) 0)
    ((:status __status) (instance system_manager_msgs::LPNPMappingStatusEnum :init))
    ((:failure_case __failure_case) (instance system_manager_msgs::LPNPMappingFailureCase :init))
    ((:parking_space_building_way __parking_space_building_way) (instance system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum :init))
    ((:learning_distance __learning_distance) 0.0)
    ((:total_distance __total_distance) 0.0)
    ((:speed_bump_num __speed_bump_num) 0)
    ((:slope_num __slope_num) 0)
    ((:parking_slot_num __parking_slot_num) 0)
    ((:current_map_id __current_map_id) 0)
    ((:floor_id __floor_id) 0.0)
    ((:in_parking_space __in_parking_space) nil)
    ((:live_map __live_map) ())
    ((:increment_offset __increment_offset) (instance system_manager_msgs::LPNPMapIncrementOffset :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _summary (string __summary))
   (setq _path_verify_rate (round __path_verify_rate))
   (setq _status __status)
   (setq _failure_case __failure_case)
   (setq _parking_space_building_way __parking_space_building_way)
   (setq _learning_distance (float __learning_distance))
   (setq _total_distance (float __total_distance))
   (setq _speed_bump_num (round __speed_bump_num))
   (setq _slope_num (round __slope_num))
   (setq _parking_slot_num (round __parking_slot_num))
   (setq _current_map_id (round __current_map_id))
   (setq _floor_id (float __floor_id))
   (setq _in_parking_space __in_parking_space)
   (setq _live_map __live_map)
   (setq _increment_offset __increment_offset)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:summary
   (&optional __summary)
   (if __summary (setq _summary __summary)) _summary)
  (:path_verify_rate
   (&optional __path_verify_rate)
   (if __path_verify_rate (setq _path_verify_rate __path_verify_rate)) _path_verify_rate)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:failure_case
   (&rest __failure_case)
   (if (keywordp (car __failure_case))
       (send* _failure_case __failure_case)
     (progn
       (if __failure_case (setq _failure_case (car __failure_case)))
       _failure_case)))
  (:parking_space_building_way
   (&rest __parking_space_building_way)
   (if (keywordp (car __parking_space_building_way))
       (send* _parking_space_building_way __parking_space_building_way)
     (progn
       (if __parking_space_building_way (setq _parking_space_building_way (car __parking_space_building_way)))
       _parking_space_building_way)))
  (:learning_distance
   (&optional __learning_distance)
   (if __learning_distance (setq _learning_distance __learning_distance)) _learning_distance)
  (:total_distance
   (&optional __total_distance)
   (if __total_distance (setq _total_distance __total_distance)) _total_distance)
  (:speed_bump_num
   (&optional __speed_bump_num)
   (if __speed_bump_num (setq _speed_bump_num __speed_bump_num)) _speed_bump_num)
  (:slope_num
   (&optional __slope_num)
   (if __slope_num (setq _slope_num __slope_num)) _slope_num)
  (:parking_slot_num
   (&optional __parking_slot_num)
   (if __parking_slot_num (setq _parking_slot_num __parking_slot_num)) _parking_slot_num)
  (:current_map_id
   (&optional __current_map_id)
   (if __current_map_id (setq _current_map_id __current_map_id)) _current_map_id)
  (:floor_id
   (&optional __floor_id)
   (if __floor_id (setq _floor_id __floor_id)) _floor_id)
  (:in_parking_space
   (&optional (__in_parking_space :null))
   (if (not (eq __in_parking_space :null)) (setq _in_parking_space __in_parking_space)) _in_parking_space)
  (:live_map
   (&rest __live_map)
   (if (keywordp (car __live_map))
       (send* _live_map __live_map)
     (progn
       (if __live_map (setq _live_map (car __live_map)))
       _live_map)))
  (:increment_offset
   (&rest __increment_offset)
   (if (keywordp (car __increment_offset))
       (send* _increment_offset __increment_offset)
     (progn
       (if __increment_offset (setq _increment_offset (car __increment_offset)))
       _increment_offset)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _summary
    4 (length _summary)
    ;; uint8 _path_verify_rate
    1
    ;; system_manager_msgs/LPNPMappingStatusEnum _status
    (send _status :serialization-length)
    ;; system_manager_msgs/LPNPMappingFailureCase _failure_case
    (send _failure_case :serialization-length)
    ;; system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum _parking_space_building_way
    (send _parking_space_building_way :serialization-length)
    ;; float32 _learning_distance
    4
    ;; float32 _total_distance
    4
    ;; uint32 _speed_bump_num
    4
    ;; uint32 _slope_num
    4
    ;; uint32 _parking_slot_num
    4
    ;; uint32 _current_map_id
    4
    ;; float64 _floor_id
    8
    ;; bool _in_parking_space
    1
    ;; system_manager_msgs/LiveLPNPMap[] _live_map
    (apply #'+ (send-all _live_map :serialization-length)) 4
    ;; system_manager_msgs/LPNPMapIncrementOffset _increment_offset
    (send _increment_offset :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _summary
       (write-long (length _summary) s) (princ _summary s)
     ;; uint8 _path_verify_rate
       (write-byte _path_verify_rate s)
     ;; system_manager_msgs/LPNPMappingStatusEnum _status
       (send _status :serialize s)
     ;; system_manager_msgs/LPNPMappingFailureCase _failure_case
       (send _failure_case :serialize s)
     ;; system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum _parking_space_building_way
       (send _parking_space_building_way :serialize s)
     ;; float32 _learning_distance
       (sys::poke _learning_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _total_distance
       (sys::poke _total_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _speed_bump_num
       (write-long _speed_bump_num s)
     ;; uint32 _slope_num
       (write-long _slope_num s)
     ;; uint32 _parking_slot_num
       (write-long _parking_slot_num s)
     ;; uint32 _current_map_id
       (write-long _current_map_id s)
     ;; float64 _floor_id
       (sys::poke _floor_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _in_parking_space
       (if _in_parking_space (write-byte -1 s) (write-byte 0 s))
     ;; system_manager_msgs/LiveLPNPMap[] _live_map
     (write-long (length _live_map) s)
     (dolist (elem _live_map)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/LPNPMapIncrementOffset _increment_offset
       (send _increment_offset :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _summary
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _summary (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _path_verify_rate
     (setq _path_verify_rate (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; system_manager_msgs/LPNPMappingStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; system_manager_msgs/LPNPMappingFailureCase _failure_case
     (send _failure_case :deserialize buf ptr-) (incf ptr- (send _failure_case :serialization-length))
   ;; system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum _parking_space_building_way
     (send _parking_space_building_way :deserialize buf ptr-) (incf ptr- (send _parking_space_building_way :serialization-length))
   ;; float32 _learning_distance
     (setq _learning_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _total_distance
     (setq _total_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _speed_bump_num
     (setq _speed_bump_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _slope_num
     (setq _slope_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _parking_slot_num
     (setq _parking_slot_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _current_map_id
     (setq _current_map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _floor_id
     (setq _floor_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _in_parking_space
     (setq _in_parking_space (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; system_manager_msgs/LiveLPNPMap[] _live_map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _live_map (let (r) (dotimes (i n) (push (instance system_manager_msgs::LiveLPNPMap :init) r)) r))
     (dolist (elem- _live_map)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/LPNPMapIncrementOffset _increment_offset
     (send _increment_offset :deserialize buf ptr-) (incf ptr- (send _increment_offset :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::LPNPMappingInfo :md5sum-) "3d7cd29b15e32952abc2a80060bc25d1")
(setf (get system_manager_msgs::LPNPMappingInfo :datatype-) "system_manager_msgs/LPNPMappingInfo")
(setf (get system_manager_msgs::LPNPMappingInfo :definition-)
      "std_msgs/Header header
string summary
uint8 path_verify_rate
system_manager_msgs/LPNPMappingStatusEnum status
system_manager_msgs/LPNPMappingFailureCase failure_case
system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum parking_space_building_way
float32 learning_distance
float32 total_distance
uint32 speed_bump_num
uint32 slope_num
uint32 parking_slot_num
uint32 current_map_id
float64 floor_id
bool in_parking_space
system_manager_msgs/LiveLPNPMap[] live_map
system_manager_msgs/LPNPMapIncrementOffset increment_offset

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
MSG: system_manager_msgs/LPNPMappingStatusEnum
uint8 SUCCESS = 0
uint8 MAPPING = 1
uint8 SAVING_MAP = 2
uint8 FAILURE = 3
uint8 MAPPING_IN = 4
uint8 MAPPING_OUT = 5
uint8 WAITING_TO_SAVE = 6
uint8 value

================================================================================
MSG: system_manager_msgs/LPNPMappingFailureCase
uint8 FAILURE_UNDEFINED_CASE = 0
uint8 FAILUER_BACK_UP_AT_THE_BEGINNING = 1
uint8 FAILURE_TOO_SHORT_TRAVERL_DISTANCE = 2
uint8 FAILURE_TOO_LONG_BACK_UP_DISTANCE = 3
uint8 FAILURE_STEEP_SLOP = 4
uint8 FAILURE_HEAD_IN_PARKING = 5
uint8 FAILURE_NOT_PARKED_IN_PARKING_SLOT = 6
uint8 FAILURE_ROUTE_REPEAT = 7
uint8 FAILURE_LACK_ELEMENT = 8
uint8 FAILURE_SILENT_MAPPING_TOO_LONG = 9
uint8 FAILURE_USER_MAPPING_TOO_LONG = 10
uint8 FAILURE_USER_MAPPING_TIME_TOO_LONG = 11
uint8 FAILURE_TRAJ_SEG_LENGTH_TOO_LONG = 12
uint8 FAILURE_VERIFY_MAP_TIME_TOO_LONG = 13
uint8 FAILURE_BAD_REFERENCE_POINT = 14
uint8 FAILURE_DB_WRITE_ERROR = 15
uint8 FAILURE_SILENTMAPPING_LACK_SLOPE = 16
uint8 FAILURE_TRAJECTORY_SMOOTH_ERROR = 17
uint8 FAILURE_ROAD_POINT_LESS = 18
uint8 FAILURE_TRAJECTORY_TURN_AROUND = 19
uint8 FAILURE_ABORT_MAPPING = 20
uint8 FAILURE_MODULE_PAUSE = 21
uint8 FAILURE_NOT_SAVE_FOR_TOO_LONG = 22
uint8 FAILURE_SPAMAP_ALLOC = 100
uint8 FAILURE_SPAMAP_NON_CREATED = 101
uint8 FAILURE_SPAMAP_NULL_PARAM = 102
uint8 FAILURE_SPAMAP_NOT_SUPPORTED = 103
uint8 FAILURE_SPAMAP_UNSUPPROT_CMD = 104
uint8 FAILURE_SPAMAP_CAMEAR_NUM = 105
uint8 FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL = 106
uint8 FAILURE_SPAMAP_STITCH_IMG_IS_NULL = 107
uint8 FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL = 108
uint8 FAILURE_SPAMAP_REJECTED = 109
uint8 FAILURE_SPAMAP_NO_MAP_INFO_FOUND = 110
uint8 FAILURE_SPAMAP_INTERNAL = 111
uint8 FAILURE_SPAMAP_UNKNOWN = 112
uint8 FAILURE_SPAMAP_CHANGED = 113
uint8 FAILURE_SPAMAP_LOAD_CAMERA_PARAMS = 114
uint8 FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG = 115
uint8 FAILURE_SPAMAP_INVALID_CONFIG = 116
uint8 FAILURE_SPAMAP_INIT_EGO = 117
uint8 FAILURE_SPAMAP_EGO_LOST = 118
uint8 FAILURE_SPAMAP_CREATE_SPAMAPPER = 119
uint8 FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER = 120
uint8 FAILURE_SPAMAP_INVALID_POI_TYPE = 121
uint8 FAILURE_SPAMAP_INVALID_SPA_HANDLE = 122
uint8 FAILURE_SPAMAP_SAVE_MAP = 123
uint8 FAILURE_SPAMAP_INVALID_MAP = 124
uint8 FAILURE_SPAMAP_UNVERIFIED = 125
uint8 FAILURE_SPAMAP_VERIFY_FAILED = 126
uint8 FAILURE_SPAMAP_LOAD_PARAM = 127
uint8 FAILURE_SPAMAP_INVALID_CAMERA = 128
uint8 FAILURE_SPAMAP_INVERSE_STAMP_WHEEL = 129
uint8 FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER = 130
uint8 FAILURE_SPAMAP_UNSUPPORTED_TASK = 131
uint8 FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE = 132
uint8 FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE = 133
uint8 value

================================================================================
MSG: system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum
uint8 UNKNOWN = 0
uint8 PERCEIVED_BELOW = 1
uint8 USER_SELECTED = 2
uint8 NO_TARGET_SLOT = 3
uint8 VIRTUAL = 4
uint8 value

================================================================================
MSG: system_manager_msgs/LiveLPNPMap
system_manager_msgs/ParkingSpaceInfo[] psd_map
system_manager_msgs/PointsPosition[] speed_bumps
system_manager_msgs/PointsPosition[] pillars
system_manager_msgs/PointsPosition[] walls
system_manager_msgs/PointsPosition[] intersections
system_manager_msgs/PointsPosition[] parking_gates
system_manager_msgs/LiveLPNPMapRoadPoint[] trajectory_points
uint32 road_id
system_manager_msgs/RoadTypeEnum road_type
geometry_msgs/TransformStamped transform

================================================================================
MSG: system_manager_msgs/ParkingSpaceInfo
uint64 id
uint8 code
system_manager_msgs/ParkingSpaceStatusEnum status
system_manager_msgs/ParkingSpaceTypeEnum type
mla_localization_msgs/MLAPosLocal[] corners

================================================================================
MSG: system_manager_msgs/ParkingSpaceStatusEnum
uint8 NO_INFORMATION = 0
uint8 PARKING_SPACE_VACANT = 1
uint8 PARKING_SPACE_OCCUPIED = 2
uint8 PARKING_SPACE_HIGHLIGHT = 3
uint8 value

================================================================================
MSG: system_manager_msgs/ParkingSpaceTypeEnum
uint8 UNKNOWN = 0
uint8 PARKING_SPACE_WITH_CHARGING = 1
uint8 value

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

================================================================================
MSG: system_manager_msgs/PointsPosition
mla_localization_msgs/MLAPosLocal[] points

================================================================================
MSG: system_manager_msgs/LiveLPNPMapRoadPoint
float64 x
float64 y
float64 z
float64 width

================================================================================
MSG: system_manager_msgs/RoadTypeEnum
uint8 UNKNOWN = 0
uint8 LEVEL = 1
uint8 DOWNHILL = 2
uint8 UPHILL = 3
uint8 GROUND_PARKING = 4
uint8 PUBLIC_ROAD = 5
uint8 value

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: system_manager_msgs/LPNPMapIncrementOffset
int32 parking_slot
int32 speed_bump
int32 trajectory_point

")



(provide :system_manager_msgs/LPNPMappingInfo "3d7cd29b15e32952abc2a80060bc25d1")


