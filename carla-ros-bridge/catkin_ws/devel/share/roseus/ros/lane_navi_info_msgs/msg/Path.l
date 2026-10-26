;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Path)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Path (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::PATH")
  (make-package "LANE_NAVI_INFO_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(intern "*ID_VALID*" (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(shadow '*ID_VALID* (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(defconstant lane_navi_info_msgs::Path::*ID_VALID* 1)
(intern "*ROADS_VALID*" (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(shadow '*ROADS_VALID* (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(defconstant lane_navi_info_msgs::Path::*ROADS_VALID* 2)
(intern "*LENGTH_VALID*" (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(shadow '*LENGTH_VALID* (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(defconstant lane_navi_info_msgs::Path::*LENGTH_VALID* 4)
(intern "*STATIC_MANEUVER_VALID*" (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(shadow '*STATIC_MANEUVER_VALID* (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(defconstant lane_navi_info_msgs::Path::*STATIC_MANEUVER_VALID* 8)
(intern "*DYNAMIC_MANEUVER_VALID*" (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(shadow '*DYNAMIC_MANEUVER_VALID* (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(defconstant lane_navi_info_msgs::Path::*DYNAMIC_MANEUVER_VALID* 16)
(intern "*TYPE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(shadow '*TYPE_VALID* (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(defconstant lane_navi_info_msgs::Path::*TYPE_VALID* 32)
(intern "*RANGE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(shadow '*RANGE_VALID* (find-package "LANE_NAVI_INFO_MSGS::PATH"))
(defconstant lane_navi_info_msgs::Path::*RANGE_VALID* 64)

(defun lane_navi_info_msgs::Path-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::Path::*ID_VALID*)
        ((= const 2) 'lane_navi_info_msgs::Path::*ROADS_VALID*)
        ((= const 4) 'lane_navi_info_msgs::Path::*LENGTH_VALID*)
        ((= const 8) 'lane_navi_info_msgs::Path::*STATIC_MANEUVER_VALID*)
        ((= const 16) 'lane_navi_info_msgs::Path::*DYNAMIC_MANEUVER_VALID*)
        ((= const 32) 'lane_navi_info_msgs::Path::*TYPE_VALID*)
        ((= const 64) 'lane_navi_info_msgs::Path::*RANGE_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::Path
  :super ros::object
  :slots (_available _id _road_ids _length _static_maneuvers _dynamic_maneuvers _type _range ))

(defmethod lane_navi_info_msgs::Path
  (:init
   (&key
    ((:available __available) 0)
    ((:id __id) 0)
    ((:road_ids __road_ids) ())
    ((:length __length) 0.0)
    ((:static_maneuvers __static_maneuvers) (instance lane_navi_info_msgs::StaticManeuvers :init))
    ((:dynamic_maneuvers __dynamic_maneuvers) (instance lane_navi_info_msgs::DynamicManeuvers :init))
    ((:type __type) (instance lane_navi_info_msgs::PathType :init))
    ((:range __range) (instance lane_navi_info_msgs::PathRange :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _id (round __id))
   (setq _road_ids __road_ids)
   (setq _length (float __length))
   (setq _static_maneuvers __static_maneuvers)
   (setq _dynamic_maneuvers __dynamic_maneuvers)
   (setq _type __type)
   (setq _range __range)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:road_ids
   (&rest __road_ids)
   (if (keywordp (car __road_ids))
       (send* _road_ids __road_ids)
     (progn
       (if __road_ids (setq _road_ids (car __road_ids)))
       _road_ids)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:static_maneuvers
   (&rest __static_maneuvers)
   (if (keywordp (car __static_maneuvers))
       (send* _static_maneuvers __static_maneuvers)
     (progn
       (if __static_maneuvers (setq _static_maneuvers (car __static_maneuvers)))
       _static_maneuvers)))
  (:dynamic_maneuvers
   (&rest __dynamic_maneuvers)
   (if (keywordp (car __dynamic_maneuvers))
       (send* _dynamic_maneuvers __dynamic_maneuvers)
     (progn
       (if __dynamic_maneuvers (setq _dynamic_maneuvers (car __dynamic_maneuvers)))
       _dynamic_maneuvers)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:range
   (&rest __range)
   (if (keywordp (car __range))
       (send* _range __range)
     (progn
       (if __range (setq _range (car __range)))
       _range)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; uint32 _id
    4
    ;; landmark_msgs/TrackId[] _road_ids
    (apply #'+ (send-all _road_ids :serialization-length)) 4
    ;; float32 _length
    4
    ;; lane_navi_info_msgs/StaticManeuvers _static_maneuvers
    (send _static_maneuvers :serialization-length)
    ;; lane_navi_info_msgs/DynamicManeuvers _dynamic_maneuvers
    (send _dynamic_maneuvers :serialization-length)
    ;; lane_navi_info_msgs/PathType _type
    (send _type :serialization-length)
    ;; lane_navi_info_msgs/PathRange _range
    (send _range :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; uint32 _id
       (write-long _id s)
     ;; landmark_msgs/TrackId[] _road_ids
     (write-long (length _road_ids) s)
     (dolist (elem _road_ids)
       (send elem :serialize s)
       )
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/StaticManeuvers _static_maneuvers
       (send _static_maneuvers :serialize s)
     ;; lane_navi_info_msgs/DynamicManeuvers _dynamic_maneuvers
       (send _dynamic_maneuvers :serialize s)
     ;; lane_navi_info_msgs/PathType _type
       (send _type :serialize s)
     ;; lane_navi_info_msgs/PathRange _range
       (send _range :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/TrackId[] _road_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_ids (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _road_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/StaticManeuvers _static_maneuvers
     (send _static_maneuvers :deserialize buf ptr-) (incf ptr- (send _static_maneuvers :serialization-length))
   ;; lane_navi_info_msgs/DynamicManeuvers _dynamic_maneuvers
     (send _dynamic_maneuvers :deserialize buf ptr-) (incf ptr- (send _dynamic_maneuvers :serialization-length))
   ;; lane_navi_info_msgs/PathType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; lane_navi_info_msgs/PathRange _range
     (send _range :deserialize buf ptr-) (incf ptr- (send _range :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Path :md5sum-) "e2ae3f1b24e622c9a0c365960e337e9f")
(setf (get lane_navi_info_msgs::Path :datatype-) "lane_navi_info_msgs/Path")
(setf (get lane_navi_info_msgs::Path :definition-)
      "uint8 ID_VALID = 1
uint8 ROADS_VALID = 2
uint8 LENGTH_VALID = 4
uint8 STATIC_MANEUVER_VALID = 8
uint8 DYNAMIC_MANEUVER_VALID = 16
uint8 TYPE_VALID = 32
uint8 RANGE_VALID = 64
uint8 available
uint32 id
landmark_msgs/TrackId[] road_ids
float32 length
lane_navi_info_msgs/StaticManeuvers static_maneuvers
lane_navi_info_msgs/DynamicManeuvers dynamic_maneuvers
lane_navi_info_msgs/PathType type
lane_navi_info_msgs/PathRange range

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/StaticManeuvers
bool valid
lane_navi_info_msgs/IntersectionManeuver[] intersection_maneuvers
lane_navi_info_msgs/RampManeuver[] ramp_maneuvers
lane_navi_info_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver
lane_navi_info_msgs/LaneSplittingMergingManeuver[] lane_splitting_merging_maneuver
lane_navi_info_msgs/DestinationManeuver[] destination_maneuver
lane_navi_info_msgs/CommonManeuver[] common_maneuver

================================================================================
MSG: lane_navi_info_msgs/IntersectionManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
lane_navi_info_msgs/IntersectionType type
bool is_traffic_light_exist
bool has_traffic_light_detail
landmark_msgs/Direction direction
landmark_msgs/TrafficLightGroup[] light_groups
landmark_msgs/TrackId linked_intersection
lane_navi_info_msgs/ExperienceTrajectory[] experience_trajectories

================================================================================
MSG: lane_navi_info_msgs/StaticManeuverBase
landmark_msgs/ManeuverType type
lane_navi_info_msgs/Cursor start_cursor
lane_navi_info_msgs/Cursor end_cursor

================================================================================
MSG: landmark_msgs/ManeuverType
uint16 UNKNOWN = 0
uint16 MANEUVER_INTERSECTION = 1
uint16 MANEUVER_LANE_MERGING = 2
uint16 MANEUVER_LANE_SPLITTING = 3
uint16 MANEUVER_ROAD_MERGING = 4
uint16 MANEUVER_ROAD_SPLITTING = 5
uint16 MANEUVER_RAMP = 6
uint16 DESTINATION = 7
uint16 PEDESTRIAN_CROSSING = 8
uint16 SCHOOL_ZONE = 9
uint16 RAILROAD_CROSSING = 10
uint16 DANGER_AHEAD = 11
uint16 NO_OVERTAKING = 12
uint16 SPEED_LIMIT = 13
uint16 SPEED_LIMIT_ENDS = 14
uint16 DETOUR_RIGHT = 15
uint16 DETOUR_BOTH_SIDES = 16
uint16 DETOUR_LEFT = 17
uint16 MERGE_RIGHT = 18
uint16 MERGE_LEFT = 19
uint16 TRAFFIC_LIGHT = 20
uint16 EMERGENCY_LANE = 21
uint16 NON_MOTORIZED_VEHICLE_LANE = 22
uint16 SECTIONAL_SPEED_MEASUREMENT = 23
uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24
uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25
uint16 TOLL = 26
uint16 CONDITIONAL_SPEED_LIMIT = 27
uint16 ADVISORY_SPEED_LIMIT = 28
uint16 ROAD_CONSTRUCTION = 29
uint16 TRAFFIC_CONTROL = 30
uint16 ROAD_CLOSED = 31
uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32
uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33
uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34
uint16 ROAD_END = 35
uint16 UNKNOWN_TRAFFIC_FLOW = 36
uint16 SMOOTH_TRAFFIC = 37
uint16 SLOW_MOVING = 38
uint16 CONGESTED = 39
uint16 SEVERELY_CONGESTED = 40
uint16 NO_TRAFFIC_FLOW = 41
uint16 VISIBILITY = 42
uint16 value

================================================================================
MSG: lane_navi_info_msgs/Cursor
landmark_msgs/TrackId road_id
float32 offset

================================================================================
MSG: lane_navi_info_msgs/IntersectionType
uint8 UNKNOWN = 0
uint8 HIGHWAY_SPLIT = 1
uint8 URBAN_NORMAL = 2
uint8 NORMAL_SPLIT_MERGE = 3
uint8 T_JUNCTION = 4
uint8 Y_JUNCTION = 5
uint8 ROUNDABOUT = 6
uint8 OVERPASS = 7
uint8 OTHERS = 255
uint8 value

================================================================================
MSG: landmark_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 LEFT_LEFT = 10
uint8 LEFT_LEFT_UT = 11
uint8 LEFT_RIGHT = 12
uint8 LEFT_RIGHT_UT = 13
uint8 LEFT_GO_STRAIGHT = 14
uint8 LEFT_UNKNOWN = 15
uint8 RIGHT_RIGHT = 20
uint8 RIGHT_RIGHT_UT = 21
uint8 RIGHT_LEFT = 22
uint8 RIGHT_LEFT_UT = 23
uint8 RIGHT_GO_STRAIGHT = 24
uint8 RIGHT_UNKNOWN = 25
uint8 LEFT_UT_LEFT_UT = 30
uint8 LEFT_UT_LEFT = 31
uint8 LEFT_UT_RIGHT = 32
uint8 LEFT_UT_RIGHT_UT = 33
uint8 LEFT_UT_GO_STRAIGHT = 34
uint8 LEFT_UT_UNKNOWN = 35
uint8 RIGHT_UT_RIGHT_UT = 40
uint8 RIGHT_UT_RIGHT = 41
uint8 RIGHT_UT_LEFT = 42
uint8 RIGHT_UT_LEFT_UT = 43
uint8 RIGHT_UT_GO_STRAIGHT = 44
uint8 RIGHT_UT_UNKNOWN = 45
uint8 GO_STRAIGHT_GO_STRAIGHT = 50
uint8 GO_STRAIGHT_LEFT = 51
uint8 GO_STRAIGHT_LEFT_UT = 52
uint8 GO_STRAIGHT_RIGHT = 53
uint8 GO_STRAIGHT_RIGHT_UT = 54
uint8 GO_STRAIGHT_UNKNOWN = 55
uint8 OTHER_LEFT = 61
uint8 OTHER_LEFT_UT = 62
uint8 OTHER_RIGHT = 63
uint8 OTHER_RIGHT_UT = 64
uint8 OTHER_GO_STRAIGHT = 65
uint8 OTHER_UNKNOWN = 66
uint8 UNKNOWN_LEFT = 91
uint8 UNKNOWN_LEFT_UT = 92
uint8 UNKNOWN_RIGHT = 93
uint8 UNKNOWN_RIGHT_UT = 94
uint8 UNKNOWN_GO_STRAIGHT = 95
uint8 UNKNOWN_UNKNOWN = 96
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightGroup
landmark_msgs/TrafficLight[] traffic_light_group

================================================================================
MSG: landmark_msgs/TrafficLight
landmark_msgs/TrafficLightType type
landmark_msgs/Direction[] direction

================================================================================
MSG: landmark_msgs/TrafficLightType
uint8 UNKNOWN = 0
uint8 DOT_TRAFFIC_LIGHT = 1
uint8 ARROW_TRAFFIC_LIGHT = 2
uint8 NUMBER_TRAFFIC_LIGHT = 3
uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
uint8 value

================================================================================
MSG: lane_navi_info_msgs/ExperienceTrajectory
lane_navi_info_msgs/Polyline polyline
landmark_msgs/TrackId[] related_lane_id
lane_navi_info_msgs/Lane_Cursor start_lane
lane_navi_info_msgs/Lane_Cursor end_lane

================================================================================
MSG: lane_navi_info_msgs/Polyline
lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

================================================================================
MSG: lane_navi_info_msgs/Lane_Cursor
landmark_msgs/TrackId lane_id
float32 offset

================================================================================
MSG: lane_navi_info_msgs/RampManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
landmark_msgs/DirectionInfo ramp_in_direction_info
landmark_msgs/DirectionInfo ramp_out_direction_info
float64 ramp_in_angle
float64 ramp_out_angle

================================================================================
MSG: landmark_msgs/DirectionInfo
int16 road_index
int16 road_sum

================================================================================
MSG: lane_navi_info_msgs/RoadSplittingMergingManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
landmark_msgs/DirectionInfo direction_info
float64[] angles

================================================================================
MSG: lane_navi_info_msgs/LaneSplittingMergingManeuver
lane_navi_info_msgs/StaticManeuverBase maneuver_base
bool is_continue
bool is_none_continue
landmark_msgs/Orientation direction
landmark_msgs/TrackId[] linked_lane_ids

================================================================================
MSG: landmark_msgs/Orientation
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
uint8 value

================================================================================
MSG: lane_navi_info_msgs/DestinationManeuver
uint8 MANEUVER_VALID = 1
uint8 available
lane_navi_info_msgs/StaticManeuverBase maneuver_base

================================================================================
MSG: lane_navi_info_msgs/CommonManeuver
uint8 MANEUVER_VALID = 1
uint8 VALUE_VALID = 2
uint8 available
lane_navi_info_msgs/StaticManeuverBase maneuver_base
float32 value
lane_navi_info_msgs/ConditionType condition

================================================================================
MSG: lane_navi_info_msgs/ConditionType
uint8 ALWAYS_VALID = 0
uint8 SIGN_IS_NOT_VALID_AT_ALL = 5
uint8 VALID_ONLY_IF_SNOW = 6
uint8 VALID_ONLY_IF_FOG = 7
uint8 VALID_ONLY_IF_RAIN = 8
uint8 VALID_ONLY_BY_DAY = 9
uint8 VALID_ONLY_BY_NIGHT = 10
uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11
uint8 type

================================================================================
MSG: lane_navi_info_msgs/DynamicManeuvers
bool valid
lane_navi_info_msgs/CommonManeuver[] common_maneuver

================================================================================
MSG: lane_navi_info_msgs/PathType
uint8 UNKNOWN = 0
uint8 NAVIGATION = 1
uint8 CRUISE = 2
uint8 value

================================================================================
MSG: lane_navi_info_msgs/PathRange
float64 start_offset
float64 end_offset

")



(provide :lane_navi_info_msgs/Path "e2ae3f1b24e622c9a0c365960e337e9f")


