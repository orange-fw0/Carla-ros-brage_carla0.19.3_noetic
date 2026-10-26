;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::DynamicManeuvers)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'DynamicManeuvers (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::DYNAMICMANEUVERS")
  (make-package "LANE_NAVI_INFO_MSGS::DYNAMICMANEUVERS"))

(in-package "ROS")
;;//! \htmlinclude DynamicManeuvers.msg.html


(defclass lane_navi_info_msgs::DynamicManeuvers
  :super ros::object
  :slots (_valid _common_maneuver ))

(defmethod lane_navi_info_msgs::DynamicManeuvers
  (:init
   (&key
    ((:valid __valid) nil)
    ((:common_maneuver __common_maneuver) ())
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _common_maneuver __common_maneuver)
   self)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
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
    ;; lane_navi_info_msgs/CommonManeuver[] _common_maneuver
    (apply #'+ (send-all _common_maneuver :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
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

(setf (get lane_navi_info_msgs::DynamicManeuvers :md5sum-) "614c4ea66016ec51484f5c5724c9f6d6")
(setf (get lane_navi_info_msgs::DynamicManeuvers :datatype-) "lane_navi_info_msgs/DynamicManeuvers")
(setf (get lane_navi_info_msgs::DynamicManeuvers :definition-)
      "bool valid
lane_navi_info_msgs/CommonManeuver[] common_maneuver

================================================================================
MSG: lane_navi_info_msgs/CommonManeuver
uint8 MANEUVER_VALID = 1
uint8 VALUE_VALID = 2
uint8 available
lane_navi_info_msgs/StaticManeuverBase maneuver_base
float32 value
lane_navi_info_msgs/ConditionType condition

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



(provide :lane_navi_info_msgs/DynamicManeuvers "614c4ea66016ec51484f5c5724c9f6d6")


