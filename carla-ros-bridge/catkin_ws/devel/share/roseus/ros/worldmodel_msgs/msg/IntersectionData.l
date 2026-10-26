;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::IntersectionData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'IntersectionData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::INTERSECTIONDATA")
  (make-package "WORLDMODEL_MSGS::INTERSECTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude IntersectionData.msg.html


(defclass worldmodel_msgs::IntersectionData
  :super ros::object
  :slots (_direction _length _traffic_light_groups _left_waiting_area _distance_to_stop_line _lanes_out ))

(defmethod worldmodel_msgs::IntersectionData
  (:init
   (&key
    ((:direction __direction) (instance worldmodel_msgs::Direction :init))
    ((:length __length) 0.0)
    ((:traffic_light_groups __traffic_light_groups) ())
    ((:left_waiting_area __left_waiting_area) (instance worldmodel_msgs::LeftWaitingArea :init))
    ((:distance_to_stop_line __distance_to_stop_line) (instance worldmodel_msgs::StopLine :init))
    ((:lanes_out __lanes_out) ())
    )
   (send-super :init)
   (setq _direction __direction)
   (setq _length (float __length))
   (setq _traffic_light_groups __traffic_light_groups)
   (setq _left_waiting_area __left_waiting_area)
   (setq _distance_to_stop_line __distance_to_stop_line)
   (setq _lanes_out __lanes_out)
   self)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:traffic_light_groups
   (&rest __traffic_light_groups)
   (if (keywordp (car __traffic_light_groups))
       (send* _traffic_light_groups __traffic_light_groups)
     (progn
       (if __traffic_light_groups (setq _traffic_light_groups (car __traffic_light_groups)))
       _traffic_light_groups)))
  (:left_waiting_area
   (&rest __left_waiting_area)
   (if (keywordp (car __left_waiting_area))
       (send* _left_waiting_area __left_waiting_area)
     (progn
       (if __left_waiting_area (setq _left_waiting_area (car __left_waiting_area)))
       _left_waiting_area)))
  (:distance_to_stop_line
   (&rest __distance_to_stop_line)
   (if (keywordp (car __distance_to_stop_line))
       (send* _distance_to_stop_line __distance_to_stop_line)
     (progn
       (if __distance_to_stop_line (setq _distance_to_stop_line (car __distance_to_stop_line)))
       _distance_to_stop_line)))
  (:lanes_out
   (&rest __lanes_out)
   (if (keywordp (car __lanes_out))
       (send* _lanes_out __lanes_out)
     (progn
       (if __lanes_out (setq _lanes_out (car __lanes_out)))
       _lanes_out)))
  (:serialization-length
   ()
   (+
    ;; worldmodel_msgs/Direction _direction
    (send _direction :serialization-length)
    ;; float64 _length
    8
    ;; worldmodel_msgs/MapTrafficLightGroup[] _traffic_light_groups
    (apply #'+ (send-all _traffic_light_groups :serialization-length)) 4
    ;; worldmodel_msgs/LeftWaitingArea _left_waiting_area
    (send _left_waiting_area :serialization-length)
    ;; worldmodel_msgs/StopLine _distance_to_stop_line
    (send _distance_to_stop_line :serialization-length)
    ;; worldmodel_msgs/LaneData[] _lanes_out
    (apply #'+ (send-all _lanes_out :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; worldmodel_msgs/Direction _direction
       (send _direction :serialize s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; worldmodel_msgs/MapTrafficLightGroup[] _traffic_light_groups
     (write-long (length _traffic_light_groups) s)
     (dolist (elem _traffic_light_groups)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/LeftWaitingArea _left_waiting_area
       (send _left_waiting_area :serialize s)
     ;; worldmodel_msgs/StopLine _distance_to_stop_line
       (send _distance_to_stop_line :serialize s)
     ;; worldmodel_msgs/LaneData[] _lanes_out
     (write-long (length _lanes_out) s)
     (dolist (elem _lanes_out)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; worldmodel_msgs/Direction _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; worldmodel_msgs/MapTrafficLightGroup[] _traffic_light_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_groups (let (r) (dotimes (i n) (push (instance worldmodel_msgs::MapTrafficLightGroup :init) r)) r))
     (dolist (elem- _traffic_light_groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/LeftWaitingArea _left_waiting_area
     (send _left_waiting_area :deserialize buf ptr-) (incf ptr- (send _left_waiting_area :serialization-length))
   ;; worldmodel_msgs/StopLine _distance_to_stop_line
     (send _distance_to_stop_line :deserialize buf ptr-) (incf ptr- (send _distance_to_stop_line :serialization-length))
   ;; worldmodel_msgs/LaneData[] _lanes_out
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes_out (let (r) (dotimes (i n) (push (instance worldmodel_msgs::LaneData :init) r)) r))
     (dolist (elem- _lanes_out)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get worldmodel_msgs::IntersectionData :md5sum-) "291e7b30c09610719ec5d17d51d893c2")
(setf (get worldmodel_msgs::IntersectionData :datatype-) "worldmodel_msgs/IntersectionData")
(setf (get worldmodel_msgs::IntersectionData :definition-)
      "worldmodel_msgs/Direction direction
float64 length
worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups
worldmodel_msgs/LeftWaitingArea left_waiting_area
worldmodel_msgs/StopLine distance_to_stop_line
worldmodel_msgs/LaneData[] lanes_out

================================================================================
MSG: worldmodel_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 4
uint8 U_TURN_LEFT = 8
uint8 U_TURN_RIGHT = 16
uint8 OFF_ROUTE = 32
uint8 value

================================================================================
MSG: worldmodel_msgs/MapTrafficLightGroup
uint64 track_id
worldmodel_msgs/MapTrafficLight[] traffic_lights

================================================================================
MSG: worldmodel_msgs/MapTrafficLight
perception_interface_msgs/Point3d[] boundary
perception_interface_msgs/TrafficLightPatternEnum pattern
bool on_route

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/TrafficLightPatternEnum
uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
uint8 value

================================================================================
MSG: worldmodel_msgs/LeftWaitingArea
bool existence
float64 length
float64 distance

================================================================================
MSG: worldmodel_msgs/StopLine
float64 distance_to_stop_line
float64 distance_buffer

================================================================================
MSG: worldmodel_msgs/LaneData
int32 relative_id
int32 track_id
worldmodel_msgs/Direction lane_marks
worldmodel_msgs/LaneType lane_type
worldmodel_msgs/LaneBoundary left_lane_boundary
worldmodel_msgs/LaneBoundary right_lane_boundary
worldmodel_msgs/RoadEdge left_road_edge
worldmodel_msgs/RoadEdge right_road_edge
worldmodel_msgs/ReferenceLine reference_line
float64 entrance_width
worldmodel_msgs/RoadPriority road_priority
worldmodel_msgs/MergePoint merge_point
worldmodel_msgs/MergePoint y_point
int8 bias

================================================================================
MSG: worldmodel_msgs/LaneType
uint8 UNKNOWN = 0
uint8 NORMAL = 1
uint8 VIRTUAL = 2
uint8 PARKING = 3
uint8 ACCELERATE = 4
uint8 DECELERATE = 5
uint8 BUS = 6
uint8 EMERGENCY = 7
uint8 ACCELERATE_DECELERATE = 8
uint8 LEFT_TURN_WAITTING_AREA = 9
uint8 NON_MOTOR = 10
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundary
bool existence
worldmodel_msgs/LaneBoundarySegment[] segments
worldmodel_msgs/LaneBoundaryPolyline polyline
perception_interface_msgs/Point3f[] points
string reserved

================================================================================
MSG: worldmodel_msgs/LaneBoundarySegment
float64 length
worldmodel_msgs/LaneBoundaryType type

================================================================================
MSG: worldmodel_msgs/LaneBoundaryType
worldmodel_msgs/LaneBoundaryForm value
worldmodel_msgs/LaneBoundaryColor color
worldmodel_msgs/LaneBoundaryWidth width

================================================================================
MSG: worldmodel_msgs/LaneBoundaryForm
uint8 UNKNOWN = 0
uint8 SOLID = 1
uint8 DASH = 2
uint8 VIRTUAL = 3
uint8 PHYSICAL = 4
uint8 DOUBLE_SOLID = 5
uint8 DASH_SOLID = 6
uint8 SOLID_DASH = 7
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryColor
uint8 WHITE = 0
uint8 YELLOW = 1
uint8 OTHER = 2
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryWidth
uint8 THIN = 0
uint8 THICK = 1
uint8 UNKNOWN = 2
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneBoundaryPolyline
uint64 track_id
float64[] poly_coefficient
worldmodel_msgs/Interval available_interval

================================================================================
MSG: worldmodel_msgs/Interval
float64 begin
float64 end

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: worldmodel_msgs/RoadEdge
bool existence
perception_interface_msgs/Point3f[] points
uint8 type
string reserved

================================================================================
MSG: worldmodel_msgs/ReferenceLine
bool available
worldmodel_msgs/ReferenceLinePoint[] reference_line_points
worldmodel_msgs/ReferenceLineSegment[] reference_line_segments

================================================================================
MSG: worldmodel_msgs/ReferenceLinePoint
perception_interface_msgs/Point3d enu_point
float32 curvature
float32 distance_to_left_road_border
float32 distance_to_right_road_border
float32 distance_to_left_lane_border
float32 distance_to_right_lane_border
float32 distance_to_left_obstacle
float32 distance_to_right_obstacle
float32 lane_width
int32 max_velocity
uint64 track_id
bool is_experience_data
worldmodel_msgs/LaneBoundaryType left_road_border_type
worldmodel_msgs/LaneBoundaryType right_road_border_type
bool on_route
float64 longitudinal_slope
float64 horizontal_slope

================================================================================
MSG: worldmodel_msgs/ReferenceLineSegment
uint16 begin_index
uint16 end_index
worldmodel_msgs/LaneConnectDirection direction
worldmodel_msgs/LaneType lane_type
bool is_in_intersection
bool is_in_route

================================================================================
MSG: worldmodel_msgs/LaneConnectDirection
uint8 NORMAL = 0
uint8 SPLIT_TO_LEFT = 1
uint8 SPLIT_TO_RIGHT = 2
uint8 MERGE_FROM_LEFT = 3
uint8 MERGE_FROM_RIGHT = 4
uint8 value

================================================================================
MSG: worldmodel_msgs/RoadPriority
worldmodel_msgs/RoadPriorityType road_priority_type
float64 distance
float64 length

================================================================================
MSG: worldmodel_msgs/RoadPriorityType
uint16 UNKNOWN = 0
uint16 PRIORITY_ROAD = 1
uint16 PRIORITY_ROAD_END = 2
uint16 PRIORITY_AUXILIARY = 4
uint16 PRIORITY_NEXT_INTERSECTION = 8
uint16 STOP = 16
uint16 YIELD = 32
uint16 PRIORITY_OVER_ONGOING = 64
uint16 YIELD_TO_ONCOMING = 128
uint8 value

================================================================================
MSG: worldmodel_msgs/MergePoint
float64 distance
worldmodel_msgs/MergeType type

================================================================================
MSG: worldmodel_msgs/MergeType
uint8 UNKNOWN = 0
uint8 UNRELATED = 1
uint8 FROM_RIGHT = 2
uint8 FROM_LEFT = 3
uint8 FROM_BOTH = 4
uint8 LANE_END = 5
uint8 value

")



(provide :worldmodel_msgs/IntersectionData "291e7b30c09610719ec5d17d51d893c2")


