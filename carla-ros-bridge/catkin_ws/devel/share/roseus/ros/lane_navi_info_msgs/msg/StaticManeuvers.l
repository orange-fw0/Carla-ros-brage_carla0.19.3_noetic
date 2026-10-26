;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::StaticManeuvers)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'StaticManeuvers (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::STATICMANEUVERS")
  (make-package "LANE_NAVI_INFO_MSGS::STATICMANEUVERS"))

(in-package "ROS")
;;//! \htmlinclude StaticManeuvers.msg.html


(defclass lane_navi_info_msgs::StaticManeuvers
  :super ros::object
  :slots (_valid _intersection_maneuvers _ramp_maneuvers _road_splitting_merging_maneuver _lane_splitting_merging_maneuver _destination_maneuver _common_maneuver ))

(defmethod lane_navi_info_msgs::StaticManeuvers
  (:init
   (&key
    ((:valid __valid) nil)
    ((:intersection_maneuvers __intersection_maneuvers) ())
    ((:ramp_maneuvers __ramp_maneuvers) ())
    ((:road_splitting_merging_maneuver __road_splitting_merging_maneuver) ())
    ((:lane_splitting_merging_maneuver __lane_splitting_merging_maneuver) ())
    ((:destination_maneuver __destination_maneuver) ())
    ((:common_maneuver __common_maneuver) ())
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _intersection_maneuvers __intersection_maneuvers)
   (setq _ramp_maneuvers __ramp_maneuvers)
   (setq _road_splitting_merging_maneuver __road_splitting_merging_maneuver)
   (setq _lane_splitting_merging_maneuver __lane_splitting_merging_maneuver)
   (setq _destination_maneuver __destination_maneuver)
   (setq _common_maneuver __common_maneuver)
   self)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:intersection_maneuvers
   (&rest __intersection_maneuvers)
   (if (keywordp (car __intersection_maneuvers))
       (send* _intersection_maneuvers __intersection_maneuvers)
     (progn
       (if __intersection_maneuvers (setq _intersection_maneuvers (car __intersection_maneuvers)))
       _intersection_maneuvers)))
  (:ramp_maneuvers
   (&rest __ramp_maneuvers)
   (if (keywordp (car __ramp_maneuvers))
       (send* _ramp_maneuvers __ramp_maneuvers)
     (progn
       (if __ramp_maneuvers (setq _ramp_maneuvers (car __ramp_maneuvers)))
       _ramp_maneuvers)))
  (:road_splitting_merging_maneuver
   (&rest __road_splitting_merging_maneuver)
   (if (keywordp (car __road_splitting_merging_maneuver))
       (send* _road_splitting_merging_maneuver __road_splitting_merging_maneuver)
     (progn
       (if __road_splitting_merging_maneuver (setq _road_splitting_merging_maneuver (car __road_splitting_merging_maneuver)))
       _road_splitting_merging_maneuver)))
  (:lane_splitting_merging_maneuver
   (&rest __lane_splitting_merging_maneuver)
   (if (keywordp (car __lane_splitting_merging_maneuver))
       (send* _lane_splitting_merging_maneuver __lane_splitting_merging_maneuver)
     (progn
       (if __lane_splitting_merging_maneuver (setq _lane_splitting_merging_maneuver (car __lane_splitting_merging_maneuver)))
       _lane_splitting_merging_maneuver)))
  (:destination_maneuver
   (&rest __destination_maneuver)
   (if (keywordp (car __destination_maneuver))
       (send* _destination_maneuver __destination_maneuver)
     (progn
       (if __destination_maneuver (setq _destination_maneuver (car __destination_maneuver)))
       _destination_maneuver)))
  (:common_maneuver
   (&rest __common_maneuver)
   (if (keywordp (car __common_maneuver))
       (send* _common_maneuver __common_maneuver)
     (progn
       (if __common_maneuver (setq _common_maneuver (car __common_maneuver)))
       _common_maneuver)))
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ;; lane_navi_info_msgs/IntersectionManeuver[] _intersection_maneuvers
    (apply #'+ (send-all _intersection_maneuvers :serialization-length)) 4
    ;; lane_navi_info_msgs/RampManeuver[] _ramp_maneuvers
    (apply #'+ (send-all _ramp_maneuvers :serialization-length)) 4
    ;; lane_navi_info_msgs/RoadSplittingMergingManeuver[] _road_splitting_merging_maneuver
    (apply #'+ (send-all _road_splitting_merging_maneuver :serialization-length)) 4
    ;; lane_navi_info_msgs/LaneSplittingMergingManeuver[] _lane_splitting_merging_maneuver
    (apply #'+ (send-all _lane_splitting_merging_maneuver :serialization-length)) 4
    ;; lane_navi_info_msgs/DestinationManeuver[] _destination_maneuver
    (apply #'+ (send-all _destination_maneuver :serialization-length)) 4
    ;; lane_navi_info_msgs/CommonManeuver[] _common_maneuver
    (apply #'+ (send-all _common_maneuver :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; lane_navi_info_msgs/IntersectionManeuver[] _intersection_maneuvers
     (write-long (length _intersection_maneuvers) s)
     (dolist (elem _intersection_maneuvers)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/RampManeuver[] _ramp_maneuvers
     (write-long (length _ramp_maneuvers) s)
     (dolist (elem _ramp_maneuvers)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/RoadSplittingMergingManeuver[] _road_splitting_merging_maneuver
     (write-long (length _road_splitting_merging_maneuver) s)
     (dolist (elem _road_splitting_merging_maneuver)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LaneSplittingMergingManeuver[] _lane_splitting_merging_maneuver
     (write-long (length _lane_splitting_merging_maneuver) s)
     (dolist (elem _lane_splitting_merging_maneuver)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/DestinationManeuver[] _destination_maneuver
     (write-long (length _destination_maneuver) s)
     (dolist (elem _destination_maneuver)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/CommonManeuver[] _common_maneuver
     (write-long (length _common_maneuver) s)
     (dolist (elem _common_maneuver)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; lane_navi_info_msgs/IntersectionManeuver[] _intersection_maneuvers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersection_maneuvers (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::IntersectionManeuver :init) r)) r))
     (dolist (elem- _intersection_maneuvers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/RampManeuver[] _ramp_maneuvers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ramp_maneuvers (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::RampManeuver :init) r)) r))
     (dolist (elem- _ramp_maneuvers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/RoadSplittingMergingManeuver[] _road_splitting_merging_maneuver
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_splitting_merging_maneuver (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::RoadSplittingMergingManeuver :init) r)) r))
     (dolist (elem- _road_splitting_merging_maneuver)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LaneSplittingMergingManeuver[] _lane_splitting_merging_maneuver
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_splitting_merging_maneuver (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LaneSplittingMergingManeuver :init) r)) r))
     (dolist (elem- _lane_splitting_merging_maneuver)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/DestinationManeuver[] _destination_maneuver
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destination_maneuver (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::DestinationManeuver :init) r)) r))
     (dolist (elem- _destination_maneuver)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/CommonManeuver[] _common_maneuver
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _common_maneuver (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::CommonManeuver :init) r)) r))
     (dolist (elem- _common_maneuver)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::StaticManeuvers :md5sum-) "44a486afcd8ffbc3218cf0eeed2fcba2")
(setf (get lane_navi_info_msgs::StaticManeuvers :datatype-) "lane_navi_info_msgs/StaticManeuvers")
(setf (get lane_navi_info_msgs::StaticManeuvers :definition-)
      "bool valid
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
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

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

")



(provide :lane_navi_info_msgs/StaticManeuvers "44a486afcd8ffbc3218cf0eeed2fcba2")


