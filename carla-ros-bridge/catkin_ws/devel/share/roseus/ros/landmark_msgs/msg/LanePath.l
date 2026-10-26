;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LanePath)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LanePath (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEPATH")
  (make-package "LANDMARK_MSGS::LANEPATH"))

(in-package "ROS")
;;//! \htmlinclude LanePath.msg.html


(defclass landmark_msgs::LanePath
  :super ros::object
  :slots (_lane_in_lane_path _onroute_distance _lane_maneuvers _direction _end_type _left_no_lane_change_zones _right_no_lane_change_zones _navi_onroutedis_info _reserved_info ))

(defmethod landmark_msgs::LanePath
  (:init
   (&key
    ((:lane_in_lane_path __lane_in_lane_path) ())
    ((:onroute_distance __onroute_distance) 0.0)
    ((:lane_maneuvers __lane_maneuvers) ())
    ((:direction __direction) (instance landmark_msgs::LanePathDirection :init))
    ((:end_type __end_type) (instance landmark_msgs::LanePathEndType :init))
    ((:left_no_lane_change_zones __left_no_lane_change_zones) ())
    ((:right_no_lane_change_zones __right_no_lane_change_zones) ())
    ((:navi_onroutedis_info __navi_onroutedis_info) (instance landmark_msgs::NaviOnrouteDisInfo :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _lane_in_lane_path __lane_in_lane_path)
   (setq _onroute_distance (float __onroute_distance))
   (setq _lane_maneuvers __lane_maneuvers)
   (setq _direction __direction)
   (setq _end_type __end_type)
   (setq _left_no_lane_change_zones __left_no_lane_change_zones)
   (setq _right_no_lane_change_zones __right_no_lane_change_zones)
   (setq _navi_onroutedis_info __navi_onroutedis_info)
   (setq _reserved_info (string __reserved_info))
   self)
  (:lane_in_lane_path
   (&rest __lane_in_lane_path)
   (if (keywordp (car __lane_in_lane_path))
       (send* _lane_in_lane_path __lane_in_lane_path)
     (progn
       (if __lane_in_lane_path (setq _lane_in_lane_path (car __lane_in_lane_path)))
       _lane_in_lane_path)))
  (:onroute_distance
   (&optional __onroute_distance)
   (if __onroute_distance (setq _onroute_distance __onroute_distance)) _onroute_distance)
  (:lane_maneuvers
   (&rest __lane_maneuvers)
   (if (keywordp (car __lane_maneuvers))
       (send* _lane_maneuvers __lane_maneuvers)
     (progn
       (if __lane_maneuvers (setq _lane_maneuvers (car __lane_maneuvers)))
       _lane_maneuvers)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:end_type
   (&rest __end_type)
   (if (keywordp (car __end_type))
       (send* _end_type __end_type)
     (progn
       (if __end_type (setq _end_type (car __end_type)))
       _end_type)))
  (:left_no_lane_change_zones
   (&rest __left_no_lane_change_zones)
   (if (keywordp (car __left_no_lane_change_zones))
       (send* _left_no_lane_change_zones __left_no_lane_change_zones)
     (progn
       (if __left_no_lane_change_zones (setq _left_no_lane_change_zones (car __left_no_lane_change_zones)))
       _left_no_lane_change_zones)))
  (:right_no_lane_change_zones
   (&rest __right_no_lane_change_zones)
   (if (keywordp (car __right_no_lane_change_zones))
       (send* _right_no_lane_change_zones __right_no_lane_change_zones)
     (progn
       (if __right_no_lane_change_zones (setq _right_no_lane_change_zones (car __right_no_lane_change_zones)))
       _right_no_lane_change_zones)))
  (:navi_onroutedis_info
   (&rest __navi_onroutedis_info)
   (if (keywordp (car __navi_onroutedis_info))
       (send* _navi_onroutedis_info __navi_onroutedis_info)
     (progn
       (if __navi_onroutedis_info (setq _navi_onroutedis_info (car __navi_onroutedis_info)))
       _navi_onroutedis_info)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/LaneIdWithOnRouteInfo[] _lane_in_lane_path
    (apply #'+ (send-all _lane_in_lane_path :serialization-length)) 4
    ;; float32 _onroute_distance
    4
    ;; landmark_msgs/LaneSplittingMergingManeuver[] _lane_maneuvers
    (apply #'+ (send-all _lane_maneuvers :serialization-length)) 4
    ;; landmark_msgs/LanePathDirection _direction
    (send _direction :serialization-length)
    ;; landmark_msgs/LanePathEndType _end_type
    (send _end_type :serialization-length)
    ;; landmark_msgs/NoLaneChangeZone[] _left_no_lane_change_zones
    (apply #'+ (send-all _left_no_lane_change_zones :serialization-length)) 4
    ;; landmark_msgs/NoLaneChangeZone[] _right_no_lane_change_zones
    (apply #'+ (send-all _right_no_lane_change_zones :serialization-length)) 4
    ;; landmark_msgs/NaviOnrouteDisInfo _navi_onroutedis_info
    (send _navi_onroutedis_info :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/LaneIdWithOnRouteInfo[] _lane_in_lane_path
     (write-long (length _lane_in_lane_path) s)
     (dolist (elem _lane_in_lane_path)
       (send elem :serialize s)
       )
     ;; float32 _onroute_distance
       (sys::poke _onroute_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/LaneSplittingMergingManeuver[] _lane_maneuvers
     (write-long (length _lane_maneuvers) s)
     (dolist (elem _lane_maneuvers)
       (send elem :serialize s)
       )
     ;; landmark_msgs/LanePathDirection _direction
       (send _direction :serialize s)
     ;; landmark_msgs/LanePathEndType _end_type
       (send _end_type :serialize s)
     ;; landmark_msgs/NoLaneChangeZone[] _left_no_lane_change_zones
     (write-long (length _left_no_lane_change_zones) s)
     (dolist (elem _left_no_lane_change_zones)
       (send elem :serialize s)
       )
     ;; landmark_msgs/NoLaneChangeZone[] _right_no_lane_change_zones
     (write-long (length _right_no_lane_change_zones) s)
     (dolist (elem _right_no_lane_change_zones)
       (send elem :serialize s)
       )
     ;; landmark_msgs/NaviOnrouteDisInfo _navi_onroutedis_info
       (send _navi_onroutedis_info :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/LaneIdWithOnRouteInfo[] _lane_in_lane_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_in_lane_path (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneIdWithOnRouteInfo :init) r)) r))
     (dolist (elem- _lane_in_lane_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _onroute_distance
     (setq _onroute_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/LaneSplittingMergingManeuver[] _lane_maneuvers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_maneuvers (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneSplittingMergingManeuver :init) r)) r))
     (dolist (elem- _lane_maneuvers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/LanePathDirection _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; landmark_msgs/LanePathEndType _end_type
     (send _end_type :deserialize buf ptr-) (incf ptr- (send _end_type :serialization-length))
   ;; landmark_msgs/NoLaneChangeZone[] _left_no_lane_change_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_no_lane_change_zones (let (r) (dotimes (i n) (push (instance landmark_msgs::NoLaneChangeZone :init) r)) r))
     (dolist (elem- _left_no_lane_change_zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/NoLaneChangeZone[] _right_no_lane_change_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_no_lane_change_zones (let (r) (dotimes (i n) (push (instance landmark_msgs::NoLaneChangeZone :init) r)) r))
     (dolist (elem- _right_no_lane_change_zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/NaviOnrouteDisInfo _navi_onroutedis_info
     (send _navi_onroutedis_info :deserialize buf ptr-) (incf ptr- (send _navi_onroutedis_info :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::LanePath :md5sum-) "c42c5475f20c6b555856a14cdd0814be")
(setf (get landmark_msgs::LanePath :datatype-) "landmark_msgs/LanePath")
(setf (get landmark_msgs::LanePath :definition-)
      "landmark_msgs/LaneIdWithOnRouteInfo[] lane_in_lane_path
float32 onroute_distance
landmark_msgs/LaneSplittingMergingManeuver[] lane_maneuvers
landmark_msgs/LanePathDirection direction
landmark_msgs/LanePathEndType end_type
landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones
landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones
landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info
string reserved_info

================================================================================
MSG: landmark_msgs/LaneIdWithOnRouteInfo
uint8 UNKNOWN = 0
uint8 ON_ROUTE = 1
uint8 OFF_ROUTE = 2
landmark_msgs/TrackId lane_id
uint8 on_route_info

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/LaneSplittingMergingManeuver
uint8 UNKNOWN = 0
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
MSG: landmark_msgs/LanePathDirection
uint8 UNKNOWN = 0
uint8 CONTINUE = 1
uint8 LEFT = 2
uint8 RIGHT = 3
uint8 value

================================================================================
MSG: landmark_msgs/LanePathEndType
uint8 UNKNOWN = 0
uint8 OFF_ROUTE_END = 1
uint8 SEARCH_RANGE_END = 2
uint8 DEST_END = 3
uint8 value

================================================================================
MSG: landmark_msgs/NoLaneChangeZone
uint8 UNKNOWN = 1
uint8 SOLID_LINE = 2
uint8 BUS_LANE = 3
uint8 OTHERS = 99
uint8 type
float32 start_offset
float32 end_offset

================================================================================
MSG: landmark_msgs/NaviOnrouteDisInfo
bool available
float32 dist_to_onroute
int16[] on_route_dis_clses
int16 cls_num
string reserved_info

")



(provide :landmark_msgs/LanePath "c42c5475f20c6b555856a14cdd0814be")


