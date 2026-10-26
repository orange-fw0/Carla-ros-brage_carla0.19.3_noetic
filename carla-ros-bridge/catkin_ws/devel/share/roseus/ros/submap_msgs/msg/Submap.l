;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::Submap)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'Submap (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::SUBMAP")
  (make-package "SUBMAP_MSGS::SUBMAP"))

(in-package "ROS")
;;//! \htmlinclude Submap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass submap_msgs::Submap
  :super ros::object
  :slots (_header _meta _auxiliary_info _parking_slot_map _roadmark_map _slope_map _obs_map _vectorized_map _time_dis_diff _reserved_info ))

(defmethod submap_msgs::Submap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance submap_msgs::SubmapMeta :init))
    ((:auxiliary_info __auxiliary_info) (instance submap_msgs::SubmapAuxiliaryInfo :init))
    ((:parking_slot_map __parking_slot_map) (instance submap_msgs::ParkingSlotMap :init))
    ((:roadmark_map __roadmark_map) (instance submap_msgs::RoadmarkMap :init))
    ((:slope_map __slope_map) (instance submap_msgs::SlopeMap :init))
    ((:obs_map __obs_map) (instance submap_msgs::StaticObstacleMap :init))
    ((:vectorized_map __vectorized_map) (instance submap_msgs::VectorizedMap :init))
    ((:time_dis_diff __time_dis_diff) (instance submap_msgs::TimeDisDiff :init))
    ((:reserved_info __reserved_info) (instance submap_msgs::SubmapReserved :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _auxiliary_info __auxiliary_info)
   (setq _parking_slot_map __parking_slot_map)
   (setq _roadmark_map __roadmark_map)
   (setq _slope_map __slope_map)
   (setq _obs_map __obs_map)
   (setq _vectorized_map __vectorized_map)
   (setq _time_dis_diff __time_dis_diff)
   (setq _reserved_info __reserved_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:auxiliary_info
   (&rest __auxiliary_info)
   (if (keywordp (car __auxiliary_info))
       (send* _auxiliary_info __auxiliary_info)
     (progn
       (if __auxiliary_info (setq _auxiliary_info (car __auxiliary_info)))
       _auxiliary_info)))
  (:parking_slot_map
   (&rest __parking_slot_map)
   (if (keywordp (car __parking_slot_map))
       (send* _parking_slot_map __parking_slot_map)
     (progn
       (if __parking_slot_map (setq _parking_slot_map (car __parking_slot_map)))
       _parking_slot_map)))
  (:roadmark_map
   (&rest __roadmark_map)
   (if (keywordp (car __roadmark_map))
       (send* _roadmark_map __roadmark_map)
     (progn
       (if __roadmark_map (setq _roadmark_map (car __roadmark_map)))
       _roadmark_map)))
  (:slope_map
   (&rest __slope_map)
   (if (keywordp (car __slope_map))
       (send* _slope_map __slope_map)
     (progn
       (if __slope_map (setq _slope_map (car __slope_map)))
       _slope_map)))
  (:obs_map
   (&rest __obs_map)
   (if (keywordp (car __obs_map))
       (send* _obs_map __obs_map)
     (progn
       (if __obs_map (setq _obs_map (car __obs_map)))
       _obs_map)))
  (:vectorized_map
   (&rest __vectorized_map)
   (if (keywordp (car __vectorized_map))
       (send* _vectorized_map __vectorized_map)
     (progn
       (if __vectorized_map (setq _vectorized_map (car __vectorized_map)))
       _vectorized_map)))
  (:time_dis_diff
   (&rest __time_dis_diff)
   (if (keywordp (car __time_dis_diff))
       (send* _time_dis_diff __time_dis_diff)
     (progn
       (if __time_dis_diff (setq _time_dis_diff (car __time_dis_diff)))
       _time_dis_diff)))
  (:reserved_info
   (&rest __reserved_info)
   (if (keywordp (car __reserved_info))
       (send* _reserved_info __reserved_info)
     (progn
       (if __reserved_info (setq _reserved_info (car __reserved_info)))
       _reserved_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; submap_msgs/SubmapMeta _meta
    (send _meta :serialization-length)
    ;; submap_msgs/SubmapAuxiliaryInfo _auxiliary_info
    (send _auxiliary_info :serialization-length)
    ;; submap_msgs/ParkingSlotMap _parking_slot_map
    (send _parking_slot_map :serialization-length)
    ;; submap_msgs/RoadmarkMap _roadmark_map
    (send _roadmark_map :serialization-length)
    ;; submap_msgs/SlopeMap _slope_map
    (send _slope_map :serialization-length)
    ;; submap_msgs/StaticObstacleMap _obs_map
    (send _obs_map :serialization-length)
    ;; submap_msgs/VectorizedMap _vectorized_map
    (send _vectorized_map :serialization-length)
    ;; submap_msgs/TimeDisDiff _time_dis_diff
    (send _time_dis_diff :serialization-length)
    ;; submap_msgs/SubmapReserved _reserved_info
    (send _reserved_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; submap_msgs/SubmapMeta _meta
       (send _meta :serialize s)
     ;; submap_msgs/SubmapAuxiliaryInfo _auxiliary_info
       (send _auxiliary_info :serialize s)
     ;; submap_msgs/ParkingSlotMap _parking_slot_map
       (send _parking_slot_map :serialize s)
     ;; submap_msgs/RoadmarkMap _roadmark_map
       (send _roadmark_map :serialize s)
     ;; submap_msgs/SlopeMap _slope_map
       (send _slope_map :serialize s)
     ;; submap_msgs/StaticObstacleMap _obs_map
       (send _obs_map :serialize s)
     ;; submap_msgs/VectorizedMap _vectorized_map
       (send _vectorized_map :serialize s)
     ;; submap_msgs/TimeDisDiff _time_dis_diff
       (send _time_dis_diff :serialize s)
     ;; submap_msgs/SubmapReserved _reserved_info
       (send _reserved_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; submap_msgs/SubmapMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; submap_msgs/SubmapAuxiliaryInfo _auxiliary_info
     (send _auxiliary_info :deserialize buf ptr-) (incf ptr- (send _auxiliary_info :serialization-length))
   ;; submap_msgs/ParkingSlotMap _parking_slot_map
     (send _parking_slot_map :deserialize buf ptr-) (incf ptr- (send _parking_slot_map :serialization-length))
   ;; submap_msgs/RoadmarkMap _roadmark_map
     (send _roadmark_map :deserialize buf ptr-) (incf ptr- (send _roadmark_map :serialization-length))
   ;; submap_msgs/SlopeMap _slope_map
     (send _slope_map :deserialize buf ptr-) (incf ptr- (send _slope_map :serialization-length))
   ;; submap_msgs/StaticObstacleMap _obs_map
     (send _obs_map :deserialize buf ptr-) (incf ptr- (send _obs_map :serialization-length))
   ;; submap_msgs/VectorizedMap _vectorized_map
     (send _vectorized_map :deserialize buf ptr-) (incf ptr- (send _vectorized_map :serialization-length))
   ;; submap_msgs/TimeDisDiff _time_dis_diff
     (send _time_dis_diff :deserialize buf ptr-) (incf ptr- (send _time_dis_diff :serialization-length))
   ;; submap_msgs/SubmapReserved _reserved_info
     (send _reserved_info :deserialize buf ptr-) (incf ptr- (send _reserved_info :serialization-length))
   ;;
   self)
  )

(setf (get submap_msgs::Submap :md5sum-) "8e70c67c22bf211a0195455ce5a6e693")
(setf (get submap_msgs::Submap :datatype-) "submap_msgs/Submap")
(setf (get submap_msgs::Submap :definition-)
      "std_msgs/Header header
submap_msgs/SubmapMeta meta
submap_msgs/SubmapAuxiliaryInfo auxiliary_info
submap_msgs/ParkingSlotMap parking_slot_map
submap_msgs/RoadmarkMap roadmark_map
submap_msgs/SlopeMap slope_map
submap_msgs/StaticObstacleMap obs_map
submap_msgs/VectorizedMap vectorized_map
submap_msgs/TimeDisDiff time_dis_diff
submap_msgs/SubmapReserved reserved_info

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
MSG: submap_msgs/SubmapMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: submap_msgs/SubmapAuxiliaryInfo
submap_msgs/SubmapTrajectory trajectory

================================================================================
MSG: submap_msgs/SubmapTrajectory
float64 distance
submap_msgs/Position[] positions

================================================================================
MSG: submap_msgs/Position
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 translation
float64 timestamp

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
MSG: submap_msgs/ParkingSlotMap
submap_msgs/ParkingSlot[] slots

================================================================================
MSG: submap_msgs/ParkingSlot
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local
float64 timestamp
uint32 id
float32 score
float32 slide_distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: submap_msgs/RoadmarkMap
submap_msgs/Roadmark roadmark_contours
submap_msgs/Roadmark roadmark_raw_points

================================================================================
MSG: submap_msgs/Roadmark
submap_msgs/RoadmarkLayer[] layers

================================================================================
MSG: submap_msgs/RoadmarkLayer
submap_msgs/RoadmarkType type
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local

================================================================================
MSG: submap_msgs/RoadmarkType
uint8 NORMAL = 0
uint8 ARROW = 1
uint8 SPEED_BUMP = 2
uint8 CROSS_WALK = 3
uint8 STOP_LINE = 4
uint8 value

================================================================================
MSG: submap_msgs/SlopeMap
submap_msgs/Slope[] slopes

================================================================================
MSG: submap_msgs/Slope
submap_msgs/Position enter
submap_msgs/Position exit
submap_msgs/Position detected_slope_pose
bool is_up
bool finished
float32 score
float32 slide_distance

================================================================================
MSG: submap_msgs/StaticObstacleMap
submap_msgs/GroundLine[] ground_lines
submap_msgs/Pillar[] pillars

================================================================================
MSG: submap_msgs/GroundLine
geometry_msgs/Point start
geometry_msgs/Point end
geometry_msgs/Point[] map_points
geometry_msgs/Point[] raw_points
uint32 id
submap_msgs/GroundLineType type
float32 score
float32 slide_distance

================================================================================
MSG: submap_msgs/GroundLineType
uint8 UNKNOWN = 0
uint8 WALL = 1
uint8 PILLAR = 2
uint8 FENCE = 3
uint8 STEP = 4
uint8 SPECIAL = 5
uint8 PARKING_GATE = 6
uint8 value

================================================================================
MSG: submap_msgs/Pillar
geometry_msgs/Point center
geometry_msgs/Point center_local
geometry_msgs/Point[] edge_points
geometry_msgs/Point[] edge_points_local
uint32 id
uint32 point_number
float32 score
float32 slide_distance

================================================================================
MSG: submap_msgs/VectorizedMap
submap_msgs/VectorElement[] vector_elements

================================================================================
MSG: submap_msgs/VectorElement
uint32 id
submap_msgs/VectorElementTypeEnum type
float32 score
float32 slide_distance
geometry_msgs/Point center
geometry_msgs/Point center_point
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local

================================================================================
MSG: submap_msgs/VectorElementTypeEnum
uint8 UNKNOWN = 0
uint8 GATE = 1
uint8 ARROW = 2
uint8 STOP_LINE = 3
uint8 DASH_LINE = 4
uint8 SPEED_BUMP = 5
uint8 ZWBRA_LINE = 6
uint8 DDLD_ROAD_BOUNDARY = 7
uint8 DDLD_LANE_BOUNDARY = 8
uint8 DDLD_STOP_LINE = 9
uint8 DDLD_CROSS_WALK = 10
uint8 DDLD_ROAD_MARK = 11
uint8 DDLD_TRAFFIC_SIGN = 12
uint8 DDLD_TRAFFIC_LIGHT = 13
uint8 value
float32 score

================================================================================
MSG: submap_msgs/TimeDisDiff
float64 dis_idff
float64 time_diff
float64 last_pose_timestamp

================================================================================
MSG: submap_msgs/SubmapReserved
uint8 SUBMAP_RESERVED_DATA = 1
uint8 available
uint64[] reserved_data

")



(provide :submap_msgs/Submap "8e70c67c22bf211a0195455ce5a6e693")


