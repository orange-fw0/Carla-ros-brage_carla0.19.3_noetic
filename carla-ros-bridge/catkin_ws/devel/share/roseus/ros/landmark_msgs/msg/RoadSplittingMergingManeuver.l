;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadSplittingMergingManeuver)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadSplittingMergingManeuver (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADSPLITTINGMERGINGMANEUVER")
  (make-package "LANDMARK_MSGS::ROADSPLITTINGMERGINGMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude RoadSplittingMergingManeuver.msg.html


(defclass landmark_msgs::RoadSplittingMergingManeuver
  :super ros::object
  :slots (_maneuver_base _direction_info _angles ))

(defmethod landmark_msgs::RoadSplittingMergingManeuver
  (:init
   (&key
    ((:maneuver_base __maneuver_base) (instance landmark_msgs::ManeuverBase :init))
    ((:direction_info __direction_info) (instance landmark_msgs::DirectionInfo :init))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _maneuver_base __maneuver_base)
   (setq _direction_info __direction_info)
   (setq _angles __angles)
   self)
  (:maneuver_base
   (&rest __maneuver_base)
   (if (keywordp (car __maneuver_base))
       (send* _maneuver_base __maneuver_base)
     (progn
       (if __maneuver_base (setq _maneuver_base (car __maneuver_base)))
       _maneuver_base)))
  (:direction_info
   (&rest __direction_info)
   (if (keywordp (car __direction_info))
       (send* _direction_info __direction_info)
     (progn
       (if __direction_info (setq _direction_info (car __direction_info)))
       _direction_info)))
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/ManeuverBase _maneuver_base
    (send _maneuver_base :serialization-length)
    ;; landmark_msgs/DirectionInfo _direction_info
    (send _direction_info :serialization-length)
    ;; float64[] _angles
    (* 8    (length _angles)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/ManeuverBase _maneuver_base
       (send _maneuver_base :serialize s)
     ;; landmark_msgs/DirectionInfo _direction_info
       (send _direction_info :serialize s)
     ;; float64[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/ManeuverBase _maneuver_base
     (send _maneuver_base :deserialize buf ptr-) (incf ptr- (send _maneuver_base :serialization-length))
   ;; landmark_msgs/DirectionInfo _direction_info
     (send _direction_info :deserialize buf ptr-) (incf ptr- (send _direction_info :serialization-length))
   ;; float64[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::RoadSplittingMergingManeuver :md5sum-) "c1cb08a005b08d3cf841d0cee8e48158")
(setf (get landmark_msgs::RoadSplittingMergingManeuver :datatype-) "landmark_msgs/RoadSplittingMergingManeuver")
(setf (get landmark_msgs::RoadSplittingMergingManeuver :definition-)
      "landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DirectionInfo direction_info
float64[] angles

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
MSG: landmark_msgs/DirectionInfo
int16 road_index
int16 road_sum

")



(provide :landmark_msgs/RoadSplittingMergingManeuver "c1cb08a005b08d3cf841d0cee8e48158")


