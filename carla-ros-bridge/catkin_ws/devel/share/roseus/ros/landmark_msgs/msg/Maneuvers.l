;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::Maneuvers)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'Maneuvers (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::MANEUVERS")
  (make-package "LANDMARK_MSGS::MANEUVERS"))

(in-package "ROS")
;;//! \htmlinclude Maneuvers.msg.html


(defclass landmark_msgs::Maneuvers
  :super ros::object
  :slots (_intersection_maneuvers _ramp_maneuvers _road_splitting_merging_maneuver _destination_maneuver ))

(defmethod landmark_msgs::Maneuvers
  (:init
   (&key
    ((:intersection_maneuvers __intersection_maneuvers) ())
    ((:ramp_maneuvers __ramp_maneuvers) ())
    ((:road_splitting_merging_maneuver __road_splitting_merging_maneuver) ())
    ((:destination_maneuver __destination_maneuver) ())
    )
   (send-super :init)
   (setq _intersection_maneuvers __intersection_maneuvers)
   (setq _ramp_maneuvers __ramp_maneuvers)
   (setq _road_splitting_merging_maneuver __road_splitting_merging_maneuver)
   (setq _destination_maneuver __destination_maneuver)
   self)
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
  (:destination_maneuver
   (&rest __destination_maneuver)
   (if (keywordp (car __destination_maneuver))
       (send* _destination_maneuver __destination_maneuver)
     (progn
       (if __destination_maneuver (setq _destination_maneuver (car __destination_maneuver)))
       _destination_maneuver)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/IntersectionManeuver[] _intersection_maneuvers
    (apply #'+ (send-all _intersection_maneuvers :serialization-length)) 4
    ;; landmark_msgs/RampManeuver[] _ramp_maneuvers
    (apply #'+ (send-all _ramp_maneuvers :serialization-length)) 4
    ;; landmark_msgs/RoadSplittingMergingManeuver[] _road_splitting_merging_maneuver
    (apply #'+ (send-all _road_splitting_merging_maneuver :serialization-length)) 4
    ;; landmark_msgs/DestinationManeuver[] _destination_maneuver
    (apply #'+ (send-all _destination_maneuver :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/IntersectionManeuver[] _intersection_maneuvers
     (write-long (length _intersection_maneuvers) s)
     (dolist (elem _intersection_maneuvers)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RampManeuver[] _ramp_maneuvers
     (write-long (length _ramp_maneuvers) s)
     (dolist (elem _ramp_maneuvers)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadSplittingMergingManeuver[] _road_splitting_merging_maneuver
     (write-long (length _road_splitting_merging_maneuver) s)
     (dolist (elem _road_splitting_merging_maneuver)
       (send elem :serialize s)
       )
     ;; landmark_msgs/DestinationManeuver[] _destination_maneuver
     (write-long (length _destination_maneuver) s)
     (dolist (elem _destination_maneuver)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/IntersectionManeuver[] _intersection_maneuvers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersection_maneuvers (let (r) (dotimes (i n) (push (instance landmark_msgs::IntersectionManeuver :init) r)) r))
     (dolist (elem- _intersection_maneuvers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RampManeuver[] _ramp_maneuvers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ramp_maneuvers (let (r) (dotimes (i n) (push (instance landmark_msgs::RampManeuver :init) r)) r))
     (dolist (elem- _ramp_maneuvers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadSplittingMergingManeuver[] _road_splitting_merging_maneuver
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_splitting_merging_maneuver (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadSplittingMergingManeuver :init) r)) r))
     (dolist (elem- _road_splitting_merging_maneuver)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/DestinationManeuver[] _destination_maneuver
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destination_maneuver (let (r) (dotimes (i n) (push (instance landmark_msgs::DestinationManeuver :init) r)) r))
     (dolist (elem- _destination_maneuver)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::Maneuvers :md5sum-) "6c962fde63023db8d976235574c11135")
(setf (get landmark_msgs::Maneuvers :datatype-) "landmark_msgs/Maneuvers")
(setf (get landmark_msgs::Maneuvers :definition-)
      "landmark_msgs/IntersectionManeuver[] intersection_maneuvers
landmark_msgs/RampManeuver[] ramp_maneuvers
landmark_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver
landmark_msgs/DestinationManeuver[] destination_maneuver

================================================================================
MSG: landmark_msgs/IntersectionManeuver
landmark_msgs/ManeuverBase maneuver_base
bool is_traffic_light_exist
bool has_traffic_light_detail
landmark_msgs/Direction direction
float32 distance_to_turn_left_waiting_area
landmark_msgs/TrafficLightGroup[] light_groups

================================================================================
MSG: landmark_msgs/ManeuverBase
landmark_msgs/ManeuverType type
float32 start_offset
float32 end_offset

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
MSG: landmark_msgs/RampManeuver
landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DirectionInfo ramp_in_direction_info
landmark_msgs/DirectionInfo ramp_out_direction_info
float64 ramp_in_angle
float64 ramp_out_angle

================================================================================
MSG: landmark_msgs/DirectionInfo
int16 road_index
int16 road_sum

================================================================================
MSG: landmark_msgs/RoadSplittingMergingManeuver
landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DirectionInfo direction_info
float64[] angles

================================================================================
MSG: landmark_msgs/DestinationManeuver
landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DestinationParkingInfo parking_info

================================================================================
MSG: landmark_msgs/DestinationParkingInfo
uint8 PARKING_TYPE_VALID = 1
uint8 ID_VALID = 2
uint8 available
landmark_msgs/DestinationParkingType parking_type
landmark_msgs/TrackId id

================================================================================
MSG: landmark_msgs/DestinationParkingType
uint8 UNKNOWN = 0
uint8 NORMAL_DESTINATION = 1
uint8 PARKING_SPACE = 2
uint8 PARKING_AOI = 3
uint8 value

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :landmark_msgs/Maneuvers "6c962fde63023db8d976235574c11135")


