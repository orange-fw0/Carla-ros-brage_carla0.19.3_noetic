;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::StaticManeuverBase)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'StaticManeuverBase (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::STATICMANEUVERBASE")
  (make-package "LANE_NAVI_INFO_MSGS::STATICMANEUVERBASE"))

(in-package "ROS")
;;//! \htmlinclude StaticManeuverBase.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::StaticManeuverBase
  :super ros::object
  :slots (_type _start_cursor _end_cursor ))

(defmethod lane_navi_info_msgs::StaticManeuverBase
  (:init
   (&key
    ((:type __type) (instance landmark_msgs::ManeuverType :init))
    ((:start_cursor __start_cursor) (instance lane_navi_info_msgs::Cursor :init))
    ((:end_cursor __end_cursor) (instance lane_navi_info_msgs::Cursor :init))
    )
   (send-super :init)
   (setq _type __type)
   (setq _start_cursor __start_cursor)
   (setq _end_cursor __end_cursor)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:start_cursor
   (&rest __start_cursor)
   (if (keywordp (car __start_cursor))
       (send* _start_cursor __start_cursor)
     (progn
       (if __start_cursor (setq _start_cursor (car __start_cursor)))
       _start_cursor)))
  (:end_cursor
   (&rest __end_cursor)
   (if (keywordp (car __end_cursor))
       (send* _end_cursor __end_cursor)
     (progn
       (if __end_cursor (setq _end_cursor (car __end_cursor)))
       _end_cursor)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/ManeuverType _type
    (send _type :serialization-length)
    ;; lane_navi_info_msgs/Cursor _start_cursor
    (send _start_cursor :serialization-length)
    ;; lane_navi_info_msgs/Cursor _end_cursor
    (send _end_cursor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/ManeuverType _type
       (send _type :serialize s)
     ;; lane_navi_info_msgs/Cursor _start_cursor
       (send _start_cursor :serialize s)
     ;; lane_navi_info_msgs/Cursor _end_cursor
       (send _end_cursor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/ManeuverType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; lane_navi_info_msgs/Cursor _start_cursor
     (send _start_cursor :deserialize buf ptr-) (incf ptr- (send _start_cursor :serialization-length))
   ;; lane_navi_info_msgs/Cursor _end_cursor
     (send _end_cursor :deserialize buf ptr-) (incf ptr- (send _end_cursor :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::StaticManeuverBase :md5sum-) "4a477684acc88b54fc1246964f695384")
(setf (get lane_navi_info_msgs::StaticManeuverBase :datatype-) "lane_navi_info_msgs/StaticManeuverBase")
(setf (get lane_navi_info_msgs::StaticManeuverBase :definition-)
      "landmark_msgs/ManeuverType type
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

")



(provide :lane_navi_info_msgs/StaticManeuverBase "4a477684acc88b54fc1246964f695384")


