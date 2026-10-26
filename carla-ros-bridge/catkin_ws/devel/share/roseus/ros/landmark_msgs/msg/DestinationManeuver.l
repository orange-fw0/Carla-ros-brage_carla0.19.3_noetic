;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::DestinationManeuver)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'DestinationManeuver (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DESTINATIONMANEUVER")
  (make-package "LANDMARK_MSGS::DESTINATIONMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude DestinationManeuver.msg.html


(defclass landmark_msgs::DestinationManeuver
  :super ros::object
  :slots (_maneuver_base _parking_info ))

(defmethod landmark_msgs::DestinationManeuver
  (:init
   (&key
    ((:maneuver_base __maneuver_base) (instance landmark_msgs::ManeuverBase :init))
    ((:parking_info __parking_info) (instance landmark_msgs::DestinationParkingInfo :init))
    )
   (send-super :init)
   (setq _maneuver_base __maneuver_base)
   (setq _parking_info __parking_info)
   self)
  (:maneuver_base
   (&rest __maneuver_base)
   (if (keywordp (car __maneuver_base))
       (send* _maneuver_base __maneuver_base)
     (progn
       (if __maneuver_base (setq _maneuver_base (car __maneuver_base)))
       _maneuver_base)))
  (:parking_info
   (&rest __parking_info)
   (if (keywordp (car __parking_info))
       (send* _parking_info __parking_info)
     (progn
       (if __parking_info (setq _parking_info (car __parking_info)))
       _parking_info)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/ManeuverBase _maneuver_base
    (send _maneuver_base :serialization-length)
    ;; landmark_msgs/DestinationParkingInfo _parking_info
    (send _parking_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/ManeuverBase _maneuver_base
       (send _maneuver_base :serialize s)
     ;; landmark_msgs/DestinationParkingInfo _parking_info
       (send _parking_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/ManeuverBase _maneuver_base
     (send _maneuver_base :deserialize buf ptr-) (incf ptr- (send _maneuver_base :serialization-length))
   ;; landmark_msgs/DestinationParkingInfo _parking_info
     (send _parking_info :deserialize buf ptr-) (incf ptr- (send _parking_info :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::DestinationManeuver :md5sum-) "f0fed9fc2429158a8364844f36a4899e")
(setf (get landmark_msgs::DestinationManeuver :datatype-) "landmark_msgs/DestinationManeuver")
(setf (get landmark_msgs::DestinationManeuver :definition-)
      "landmark_msgs/ManeuverBase maneuver_base
landmark_msgs/DestinationParkingInfo parking_info

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



(provide :landmark_msgs/DestinationManeuver "f0fed9fc2429158a8364844f36a4899e")


