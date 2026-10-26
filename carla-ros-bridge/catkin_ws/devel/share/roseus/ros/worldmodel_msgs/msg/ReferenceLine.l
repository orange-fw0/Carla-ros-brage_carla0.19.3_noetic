;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ReferenceLine)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ReferenceLine (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::REFERENCELINE")
  (make-package "WORLDMODEL_MSGS::REFERENCELINE"))

(in-package "ROS")
;;//! \htmlinclude ReferenceLine.msg.html


(defclass worldmodel_msgs::ReferenceLine
  :super ros::object
  :slots (_available _reference_line_points _reference_line_segments ))

(defmethod worldmodel_msgs::ReferenceLine
  (:init
   (&key
    ((:available __available) nil)
    ((:reference_line_points __reference_line_points) ())
    ((:reference_line_segments __reference_line_segments) ())
    )
   (send-super :init)
   (setq _available __available)
   (setq _reference_line_points __reference_line_points)
   (setq _reference_line_segments __reference_line_segments)
   self)
  (:available
   (&optional (__available :null))
   (if (not (eq __available :null)) (setq _available __available)) _available)
  (:reference_line_points
   (&rest __reference_line_points)
   (if (keywordp (car __reference_line_points))
       (send* _reference_line_points __reference_line_points)
     (progn
       (if __reference_line_points (setq _reference_line_points (car __reference_line_points)))
       _reference_line_points)))
  (:reference_line_segments
   (&rest __reference_line_segments)
   (if (keywordp (car __reference_line_segments))
       (send* _reference_line_segments __reference_line_segments)
     (progn
       (if __reference_line_segments (setq _reference_line_segments (car __reference_line_segments)))
       _reference_line_segments)))
  (:serialization-length
   ()
   (+
    ;; bool _available
    1
    ;; worldmodel_msgs/ReferenceLinePoint[] _reference_line_points
    (apply #'+ (send-all _reference_line_points :serialization-length)) 4
    ;; worldmodel_msgs/ReferenceLineSegment[] _reference_line_segments
    (apply #'+ (send-all _reference_line_segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; worldmodel_msgs/ReferenceLinePoint[] _reference_line_points
     (write-long (length _reference_line_points) s)
     (dolist (elem _reference_line_points)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/ReferenceLineSegment[] _reference_line_segments
     (write-long (length _reference_line_segments) s)
     (dolist (elem _reference_line_segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; worldmodel_msgs/ReferenceLinePoint[] _reference_line_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reference_line_points (let (r) (dotimes (i n) (push (instance worldmodel_msgs::ReferenceLinePoint :init) r)) r))
     (dolist (elem- _reference_line_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/ReferenceLineSegment[] _reference_line_segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reference_line_segments (let (r) (dotimes (i n) (push (instance worldmodel_msgs::ReferenceLineSegment :init) r)) r))
     (dolist (elem- _reference_line_segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ReferenceLine :md5sum-) "ec5d181b9af178835368c07dec38068e")
(setf (get worldmodel_msgs::ReferenceLine :datatype-) "worldmodel_msgs/ReferenceLine")
(setf (get worldmodel_msgs::ReferenceLine :definition-)
      "bool available
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

")



(provide :worldmodel_msgs/ReferenceLine "ec5d181b9af178835368c07dec38068e")


