;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneSplittingMergingManeuver)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneSplittingMergingManeuver (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER")
  (make-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude LaneSplittingMergingManeuver.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(defconstant landmark_msgs::LaneSplittingMergingManeuver::*UNKNOWN* 0)
(intern "*HDMAP*" (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(shadow '*HDMAP* (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(defconstant landmark_msgs::LaneSplittingMergingManeuver::*HDMAP* 1)
(intern "*DDLD*" (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(shadow '*DDLD* (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(defconstant landmark_msgs::LaneSplittingMergingManeuver::*DDLD* 2)
(intern "*LANDTOPO*" (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(shadow '*LANDTOPO* (find-package "LANDMARK_MSGS::LANESPLITTINGMERGINGMANEUVER"))
(defconstant landmark_msgs::LaneSplittingMergingManeuver::*LANDTOPO* 3)

(defun landmark_msgs::LaneSplittingMergingManeuver-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneSplittingMergingManeuver::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneSplittingMergingManeuver::*HDMAP*)
        ((= const 2) 'landmark_msgs::LaneSplittingMergingManeuver::*DDLD*)
        ((= const 3) 'landmark_msgs::LaneSplittingMergingManeuver::*LANDTOPO*)
        (t nil)))

(defclass landmark_msgs::LaneSplittingMergingManeuver
  :super ros::object
  :slots (_maneuver_base _is_continue _is_none_continue _direction _linked_lane_ids _source ))

(defmethod landmark_msgs::LaneSplittingMergingManeuver
  (:init
   (&key
    ((:maneuver_base __maneuver_base) (instance landmark_msgs::ManeuverBase :init))
    ((:is_continue __is_continue) nil)
    ((:is_none_continue __is_none_continue) nil)
    ((:direction __direction) (instance landmark_msgs::Orientation :init))
    ((:linked_lane_ids __linked_lane_ids) ())
    ((:source __source) 0)
    )
   (send-super :init)
   (setq _maneuver_base __maneuver_base)
   (setq _is_continue __is_continue)
   (setq _is_none_continue __is_none_continue)
   (setq _direction __direction)
   (setq _linked_lane_ids __linked_lane_ids)
   (setq _source (round __source))
   self)
  (:maneuver_base
   (&rest __maneuver_base)
   (if (keywordp (car __maneuver_base))
       (send* _maneuver_base __maneuver_base)
     (progn
       (if __maneuver_base (setq _maneuver_base (car __maneuver_base)))
       _maneuver_base)))
  (:is_continue
   (&optional (__is_continue :null))
   (if (not (eq __is_continue :null)) (setq _is_continue __is_continue)) _is_continue)
  (:is_none_continue
   (&optional (__is_none_continue :null))
   (if (not (eq __is_none_continue :null)) (setq _is_none_continue __is_none_continue)) _is_none_continue)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:linked_lane_ids
   (&rest __linked_lane_ids)
   (if (keywordp (car __linked_lane_ids))
       (send* _linked_lane_ids __linked_lane_ids)
     (progn
       (if __linked_lane_ids (setq _linked_lane_ids (car __linked_lane_ids)))
       _linked_lane_ids)))
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/ManeuverBase _maneuver_base
    (send _maneuver_base :serialization-length)
    ;; bool _is_continue
    1
    ;; bool _is_none_continue
    1
    ;; landmark_msgs/Orientation _direction
    (send _direction :serialization-length)
    ;; landmark_msgs/TrackId[] _linked_lane_ids
    (apply #'+ (send-all _linked_lane_ids :serialization-length)) 4
    ;; uint8 _source
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/ManeuverBase _maneuver_base
       (send _maneuver_base :serialize s)
     ;; bool _is_continue
       (if _is_continue (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_none_continue
       (if _is_none_continue (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/Orientation _direction
       (send _direction :serialize s)
     ;; landmark_msgs/TrackId[] _linked_lane_ids
     (write-long (length _linked_lane_ids) s)
     (dolist (elem _linked_lane_ids)
       (send elem :serialize s)
       )
     ;; uint8 _source
       (write-byte _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/ManeuverBase _maneuver_base
     (send _maneuver_base :deserialize buf ptr-) (incf ptr- (send _maneuver_base :serialization-length))
   ;; bool _is_continue
     (setq _is_continue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_none_continue
     (setq _is_none_continue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/Orientation _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; landmark_msgs/TrackId[] _linked_lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _linked_lane_ids (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _linked_lane_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::LaneSplittingMergingManeuver :md5sum-) "f647f81ff6c2df1e6e7b1ea8becc7e0f")
(setf (get landmark_msgs::LaneSplittingMergingManeuver :datatype-) "landmark_msgs/LaneSplittingMergingManeuver")
(setf (get landmark_msgs::LaneSplittingMergingManeuver :definition-)
      "uint8 UNKNOWN = 0
uint8 HDMAP = 1
uint8 DDLD = 2
uint8 LANDTOPO = 3
landmark_msgs/ManeuverBase maneuver_base
bool is_continue
bool is_none_continue
landmark_msgs/Orientation direction
landmark_msgs/TrackId[] linked_lane_ids
uint8 source

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
MSG: landmark_msgs/Orientation
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 INTERSECT = 3
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



(provide :landmark_msgs/LaneSplittingMergingManeuver "f647f81ff6c2df1e6e7b1ea8becc7e0f")


