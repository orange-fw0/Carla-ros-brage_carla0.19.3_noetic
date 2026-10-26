;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANEDATA")
  (make-package "WORLDMODEL_MSGS::LANEDATA"))

(in-package "ROS")
;;//! \htmlinclude LaneData.msg.html


(defclass worldmodel_msgs::LaneData
  :super ros::object
  :slots (_relative_id _track_id _lane_marks _lane_type _left_lane_boundary _right_lane_boundary _left_road_edge _right_road_edge _reference_line _entrance_width _road_priority _merge_point _y_point _bias ))

(defmethod worldmodel_msgs::LaneData
  (:init
   (&key
    ((:relative_id __relative_id) 0)
    ((:track_id __track_id) 0)
    ((:lane_marks __lane_marks) (instance worldmodel_msgs::Direction :init))
    ((:lane_type __lane_type) (instance worldmodel_msgs::LaneType :init))
    ((:left_lane_boundary __left_lane_boundary) (instance worldmodel_msgs::LaneBoundary :init))
    ((:right_lane_boundary __right_lane_boundary) (instance worldmodel_msgs::LaneBoundary :init))
    ((:left_road_edge __left_road_edge) (instance worldmodel_msgs::RoadEdge :init))
    ((:right_road_edge __right_road_edge) (instance worldmodel_msgs::RoadEdge :init))
    ((:reference_line __reference_line) (instance worldmodel_msgs::ReferenceLine :init))
    ((:entrance_width __entrance_width) 0.0)
    ((:road_priority __road_priority) (instance worldmodel_msgs::RoadPriority :init))
    ((:merge_point __merge_point) (instance worldmodel_msgs::MergePoint :init))
    ((:y_point __y_point) (instance worldmodel_msgs::MergePoint :init))
    ((:bias __bias) 0)
    )
   (send-super :init)
   (setq _relative_id (round __relative_id))
   (setq _track_id (round __track_id))
   (setq _lane_marks __lane_marks)
   (setq _lane_type __lane_type)
   (setq _left_lane_boundary __left_lane_boundary)
   (setq _right_lane_boundary __right_lane_boundary)
   (setq _left_road_edge __left_road_edge)
   (setq _right_road_edge __right_road_edge)
   (setq _reference_line __reference_line)
   (setq _entrance_width (float __entrance_width))
   (setq _road_priority __road_priority)
   (setq _merge_point __merge_point)
   (setq _y_point __y_point)
   (setq _bias (round __bias))
   self)
  (:relative_id
   (&optional __relative_id)
   (if __relative_id (setq _relative_id __relative_id)) _relative_id)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:lane_marks
   (&rest __lane_marks)
   (if (keywordp (car __lane_marks))
       (send* _lane_marks __lane_marks)
     (progn
       (if __lane_marks (setq _lane_marks (car __lane_marks)))
       _lane_marks)))
  (:lane_type
   (&rest __lane_type)
   (if (keywordp (car __lane_type))
       (send* _lane_type __lane_type)
     (progn
       (if __lane_type (setq _lane_type (car __lane_type)))
       _lane_type)))
  (:left_lane_boundary
   (&rest __left_lane_boundary)
   (if (keywordp (car __left_lane_boundary))
       (send* _left_lane_boundary __left_lane_boundary)
     (progn
       (if __left_lane_boundary (setq _left_lane_boundary (car __left_lane_boundary)))
       _left_lane_boundary)))
  (:right_lane_boundary
   (&rest __right_lane_boundary)
   (if (keywordp (car __right_lane_boundary))
       (send* _right_lane_boundary __right_lane_boundary)
     (progn
       (if __right_lane_boundary (setq _right_lane_boundary (car __right_lane_boundary)))
       _right_lane_boundary)))
  (:left_road_edge
   (&rest __left_road_edge)
   (if (keywordp (car __left_road_edge))
       (send* _left_road_edge __left_road_edge)
     (progn
       (if __left_road_edge (setq _left_road_edge (car __left_road_edge)))
       _left_road_edge)))
  (:right_road_edge
   (&rest __right_road_edge)
   (if (keywordp (car __right_road_edge))
       (send* _right_road_edge __right_road_edge)
     (progn
       (if __right_road_edge (setq _right_road_edge (car __right_road_edge)))
       _right_road_edge)))
  (:reference_line
   (&rest __reference_line)
   (if (keywordp (car __reference_line))
       (send* _reference_line __reference_line)
     (progn
       (if __reference_line (setq _reference_line (car __reference_line)))
       _reference_line)))
  (:entrance_width
   (&optional __entrance_width)
   (if __entrance_width (setq _entrance_width __entrance_width)) _entrance_width)
  (:road_priority
   (&rest __road_priority)
   (if (keywordp (car __road_priority))
       (send* _road_priority __road_priority)
     (progn
       (if __road_priority (setq _road_priority (car __road_priority)))
       _road_priority)))
  (:merge_point
   (&rest __merge_point)
   (if (keywordp (car __merge_point))
       (send* _merge_point __merge_point)
     (progn
       (if __merge_point (setq _merge_point (car __merge_point)))
       _merge_point)))
  (:y_point
   (&rest __y_point)
   (if (keywordp (car __y_point))
       (send* _y_point __y_point)
     (progn
       (if __y_point (setq _y_point (car __y_point)))
       _y_point)))
  (:bias
   (&optional __bias)
   (if __bias (setq _bias __bias)) _bias)
  (:serialization-length
   ()
   (+
    ;; int32 _relative_id
    4
    ;; int32 _track_id
    4
    ;; worldmodel_msgs/Direction _lane_marks
    (send _lane_marks :serialization-length)
    ;; worldmodel_msgs/LaneType _lane_type
    (send _lane_type :serialization-length)
    ;; worldmodel_msgs/LaneBoundary _left_lane_boundary
    (send _left_lane_boundary :serialization-length)
    ;; worldmodel_msgs/LaneBoundary _right_lane_boundary
    (send _right_lane_boundary :serialization-length)
    ;; worldmodel_msgs/RoadEdge _left_road_edge
    (send _left_road_edge :serialization-length)
    ;; worldmodel_msgs/RoadEdge _right_road_edge
    (send _right_road_edge :serialization-length)
    ;; worldmodel_msgs/ReferenceLine _reference_line
    (send _reference_line :serialization-length)
    ;; float64 _entrance_width
    8
    ;; worldmodel_msgs/RoadPriority _road_priority
    (send _road_priority :serialization-length)
    ;; worldmodel_msgs/MergePoint _merge_point
    (send _merge_point :serialization-length)
    ;; worldmodel_msgs/MergePoint _y_point
    (send _y_point :serialization-length)
    ;; int8 _bias
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _relative_id
       (write-long _relative_id s)
     ;; int32 _track_id
       (write-long _track_id s)
     ;; worldmodel_msgs/Direction _lane_marks
       (send _lane_marks :serialize s)
     ;; worldmodel_msgs/LaneType _lane_type
       (send _lane_type :serialize s)
     ;; worldmodel_msgs/LaneBoundary _left_lane_boundary
       (send _left_lane_boundary :serialize s)
     ;; worldmodel_msgs/LaneBoundary _right_lane_boundary
       (send _right_lane_boundary :serialize s)
     ;; worldmodel_msgs/RoadEdge _left_road_edge
       (send _left_road_edge :serialize s)
     ;; worldmodel_msgs/RoadEdge _right_road_edge
       (send _right_road_edge :serialize s)
     ;; worldmodel_msgs/ReferenceLine _reference_line
       (send _reference_line :serialize s)
     ;; float64 _entrance_width
       (sys::poke _entrance_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; worldmodel_msgs/RoadPriority _road_priority
       (send _road_priority :serialize s)
     ;; worldmodel_msgs/MergePoint _merge_point
       (send _merge_point :serialize s)
     ;; worldmodel_msgs/MergePoint _y_point
       (send _y_point :serialize s)
     ;; int8 _bias
       (write-byte _bias s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _relative_id
     (setq _relative_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; worldmodel_msgs/Direction _lane_marks
     (send _lane_marks :deserialize buf ptr-) (incf ptr- (send _lane_marks :serialization-length))
   ;; worldmodel_msgs/LaneType _lane_type
     (send _lane_type :deserialize buf ptr-) (incf ptr- (send _lane_type :serialization-length))
   ;; worldmodel_msgs/LaneBoundary _left_lane_boundary
     (send _left_lane_boundary :deserialize buf ptr-) (incf ptr- (send _left_lane_boundary :serialization-length))
   ;; worldmodel_msgs/LaneBoundary _right_lane_boundary
     (send _right_lane_boundary :deserialize buf ptr-) (incf ptr- (send _right_lane_boundary :serialization-length))
   ;; worldmodel_msgs/RoadEdge _left_road_edge
     (send _left_road_edge :deserialize buf ptr-) (incf ptr- (send _left_road_edge :serialization-length))
   ;; worldmodel_msgs/RoadEdge _right_road_edge
     (send _right_road_edge :deserialize buf ptr-) (incf ptr- (send _right_road_edge :serialization-length))
   ;; worldmodel_msgs/ReferenceLine _reference_line
     (send _reference_line :deserialize buf ptr-) (incf ptr- (send _reference_line :serialization-length))
   ;; float64 _entrance_width
     (setq _entrance_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; worldmodel_msgs/RoadPriority _road_priority
     (send _road_priority :deserialize buf ptr-) (incf ptr- (send _road_priority :serialization-length))
   ;; worldmodel_msgs/MergePoint _merge_point
     (send _merge_point :deserialize buf ptr-) (incf ptr- (send _merge_point :serialization-length))
   ;; worldmodel_msgs/MergePoint _y_point
     (send _y_point :deserialize buf ptr-) (incf ptr- (send _y_point :serialization-length))
   ;; int8 _bias
     (setq _bias (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bias 127) (setq _bias (- _bias 256)))
   ;;
   self)
  )

(setf (get worldmodel_msgs::LaneData :md5sum-) "104597adfcc42ee08489c0cc8b1d58c5")
(setf (get worldmodel_msgs::LaneData :datatype-) "worldmodel_msgs/LaneData")
(setf (get worldmodel_msgs::LaneData :definition-)
      "int32 relative_id
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
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

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



(provide :worldmodel_msgs/LaneData "104597adfcc42ee08489c0cc8b1d58c5")


