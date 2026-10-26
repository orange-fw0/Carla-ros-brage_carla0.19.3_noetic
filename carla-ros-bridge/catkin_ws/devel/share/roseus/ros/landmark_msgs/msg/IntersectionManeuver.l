;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::IntersectionManeuver)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'IntersectionManeuver (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::INTERSECTIONMANEUVER")
  (make-package "LANDMARK_MSGS::INTERSECTIONMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude IntersectionManeuver.msg.html


(defclass landmark_msgs::IntersectionManeuver
  :super ros::object
  :slots (_maneuver_base _is_traffic_light_exist _has_traffic_light_detail _direction _distance_to_turn_left_waiting_area _light_groups ))

(defmethod landmark_msgs::IntersectionManeuver
  (:init
   (&key
    ((:maneuver_base __maneuver_base) (instance landmark_msgs::ManeuverBase :init))
    ((:is_traffic_light_exist __is_traffic_light_exist) nil)
    ((:has_traffic_light_detail __has_traffic_light_detail) nil)
    ((:direction __direction) (instance landmark_msgs::Direction :init))
    ((:distance_to_turn_left_waiting_area __distance_to_turn_left_waiting_area) 0.0)
    ((:light_groups __light_groups) ())
    )
   (send-super :init)
   (setq _maneuver_base __maneuver_base)
   (setq _is_traffic_light_exist __is_traffic_light_exist)
   (setq _has_traffic_light_detail __has_traffic_light_detail)
   (setq _direction __direction)
   (setq _distance_to_turn_left_waiting_area (float __distance_to_turn_left_waiting_area))
   (setq _light_groups __light_groups)
   self)
  (:maneuver_base
   (&rest __maneuver_base)
   (if (keywordp (car __maneuver_base))
       (send* _maneuver_base __maneuver_base)
     (progn
       (if __maneuver_base (setq _maneuver_base (car __maneuver_base)))
       _maneuver_base)))
  (:is_traffic_light_exist
   (&optional (__is_traffic_light_exist :null))
   (if (not (eq __is_traffic_light_exist :null)) (setq _is_traffic_light_exist __is_traffic_light_exist)) _is_traffic_light_exist)
  (:has_traffic_light_detail
   (&optional (__has_traffic_light_detail :null))
   (if (not (eq __has_traffic_light_detail :null)) (setq _has_traffic_light_detail __has_traffic_light_detail)) _has_traffic_light_detail)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:distance_to_turn_left_waiting_area
   (&optional __distance_to_turn_left_waiting_area)
   (if __distance_to_turn_left_waiting_area (setq _distance_to_turn_left_waiting_area __distance_to_turn_left_waiting_area)) _distance_to_turn_left_waiting_area)
  (:light_groups
   (&rest __light_groups)
   (if (keywordp (car __light_groups))
       (send* _light_groups __light_groups)
     (progn
       (if __light_groups (setq _light_groups (car __light_groups)))
       _light_groups)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/ManeuverBase _maneuver_base
    (send _maneuver_base :serialization-length)
    ;; bool _is_traffic_light_exist
    1
    ;; bool _has_traffic_light_detail
    1
    ;; landmark_msgs/Direction _direction
    (send _direction :serialization-length)
    ;; float32 _distance_to_turn_left_waiting_area
    4
    ;; landmark_msgs/TrafficLightGroup[] _light_groups
    (apply #'+ (send-all _light_groups :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/ManeuverBase _maneuver_base
       (send _maneuver_base :serialize s)
     ;; bool _is_traffic_light_exist
       (if _is_traffic_light_exist (write-byte -1 s) (write-byte 0 s))
     ;; bool _has_traffic_light_detail
       (if _has_traffic_light_detail (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/Direction _direction
       (send _direction :serialize s)
     ;; float32 _distance_to_turn_left_waiting_area
       (sys::poke _distance_to_turn_left_waiting_area (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/TrafficLightGroup[] _light_groups
     (write-long (length _light_groups) s)
     (dolist (elem _light_groups)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/ManeuverBase _maneuver_base
     (send _maneuver_base :deserialize buf ptr-) (incf ptr- (send _maneuver_base :serialization-length))
   ;; bool _is_traffic_light_exist
     (setq _is_traffic_light_exist (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _has_traffic_light_detail
     (setq _has_traffic_light_detail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/Direction _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; float32 _distance_to_turn_left_waiting_area
     (setq _distance_to_turn_left_waiting_area (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/TrafficLightGroup[] _light_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _light_groups (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLightGroup :init) r)) r))
     (dolist (elem- _light_groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::IntersectionManeuver :md5sum-) "1bdc11f5c7467d6312a88ae26506d35e")
(setf (get landmark_msgs::IntersectionManeuver :datatype-) "landmark_msgs/IntersectionManeuver")
(setf (get landmark_msgs::IntersectionManeuver :definition-)
      "landmark_msgs/ManeuverBase maneuver_base
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

")



(provide :landmark_msgs/IntersectionManeuver "1bdc11f5c7467d6312a88ae26506d35e")


