;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::CommonManeuver)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'CommonManeuver (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::COMMONMANEUVER")
  (make-package "LANE_NAVI_INFO_MSGS::COMMONMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude CommonManeuver.msg.html


(intern "*MANEUVER_VALID*" (find-package "LANE_NAVI_INFO_MSGS::COMMONMANEUVER"))
(shadow '*MANEUVER_VALID* (find-package "LANE_NAVI_INFO_MSGS::COMMONMANEUVER"))
(defconstant lane_navi_info_msgs::CommonManeuver::*MANEUVER_VALID* 1)
(intern "*VALUE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::COMMONMANEUVER"))
(shadow '*VALUE_VALID* (find-package "LANE_NAVI_INFO_MSGS::COMMONMANEUVER"))
(defconstant lane_navi_info_msgs::CommonManeuver::*VALUE_VALID* 2)

(defun lane_navi_info_msgs::CommonManeuver-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::CommonManeuver::*MANEUVER_VALID*)
        ((= const 2) 'lane_navi_info_msgs::CommonManeuver::*VALUE_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::CommonManeuver
  :super ros::object
  :slots (_available _maneuver_base _value _condition ))

(defmethod lane_navi_info_msgs::CommonManeuver
  (:init
   (&key
    ((:available __available) 0)
    ((:maneuver_base __maneuver_base) (instance lane_navi_info_msgs::StaticManeuverBase :init))
    ((:value __value) 0.0)
    ((:condition __condition) (instance lane_navi_info_msgs::ConditionType :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _maneuver_base __maneuver_base)
   (setq _value (float __value))
   (setq _condition __condition)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:maneuver_base
   (&rest __maneuver_base)
   (if (keywordp (car __maneuver_base))
       (send* _maneuver_base __maneuver_base)
     (progn
       (if __maneuver_base (setq _maneuver_base (car __maneuver_base)))
       _maneuver_base)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:condition
   (&rest __condition)
   (if (keywordp (car __condition))
       (send* _condition __condition)
     (progn
       (if __condition (setq _condition (car __condition)))
       _condition)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; lane_navi_info_msgs/StaticManeuverBase _maneuver_base
    (send _maneuver_base :serialization-length)
    ;; float32 _value
    4
    ;; lane_navi_info_msgs/ConditionType _condition
    (send _condition :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; lane_navi_info_msgs/StaticManeuverBase _maneuver_base
       (send _maneuver_base :serialize s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/ConditionType _condition
       (send _condition :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; lane_navi_info_msgs/StaticManeuverBase _maneuver_base
     (send _maneuver_base :deserialize buf ptr-) (incf ptr- (send _maneuver_base :serialization-length))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/ConditionType _condition
     (send _condition :deserialize buf ptr-) (incf ptr- (send _condition :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::CommonManeuver :md5sum-) "fd9c0e28a1d997d0e06a8a08ab44ba23")
(setf (get lane_navi_info_msgs::CommonManeuver :datatype-) "lane_navi_info_msgs/CommonManeuver")
(setf (get lane_navi_info_msgs::CommonManeuver :definition-)
      "uint8 MANEUVER_VALID = 1
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



(provide :lane_navi_info_msgs/CommonManeuver "fd9c0e28a1d997d0e06a8a08ab44ba23")


