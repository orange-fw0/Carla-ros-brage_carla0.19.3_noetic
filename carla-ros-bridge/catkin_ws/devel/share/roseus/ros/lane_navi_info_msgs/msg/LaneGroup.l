;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::LaneGroup)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'LaneGroup (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::LANEGROUP")
  (make-package "LANE_NAVI_INFO_MSGS::LANEGROUP"))

(in-package "ROS")
;;//! \htmlinclude LaneGroup.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(intern "*LANE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::LANEGROUP"))
(shadow '*LANE_VALID* (find-package "LANE_NAVI_INFO_MSGS::LANEGROUP"))
(defconstant lane_navi_info_msgs::LaneGroup::*LANE_VALID* 1)

(defun lane_navi_info_msgs::LaneGroup-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::LaneGroup::*LANE_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::LaneGroup
  :super ros::object
  :slots (_available _lane_group_id _length _lane_number _lanes ))

(defmethod lane_navi_info_msgs::LaneGroup
  (:init
   (&key
    ((:available __available) 0)
    ((:lane_group_id __lane_group_id) (instance landmark_msgs::TrackId :init))
    ((:length __length) 0.0)
    ((:lane_number __lane_number) 0)
    ((:lanes __lanes) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _lane_group_id __lane_group_id)
   (setq _length (float __length))
   (setq _lane_number (round __lane_number))
   (setq _lanes __lanes)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:lane_group_id
   (&rest __lane_group_id)
   (if (keywordp (car __lane_group_id))
       (send* _lane_group_id __lane_group_id)
     (progn
       (if __lane_group_id (setq _lane_group_id (car __lane_group_id)))
       _lane_group_id)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:lane_number
   (&optional __lane_number)
   (if __lane_number (setq _lane_number __lane_number)) _lane_number)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/TrackId _lane_group_id
    (send _lane_group_id :serialization-length)
    ;; float32 _length
    4
    ;; uint8 _lane_number
    1
    ;; lane_navi_info_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/TrackId _lane_group_id
       (send _lane_group_id :serialize s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _lane_number
       (write-byte _lane_number s)
     ;; lane_navi_info_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/TrackId _lane_group_id
     (send _lane_group_id :deserialize buf ptr-) (incf ptr- (send _lane_group_id :serialization-length))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _lane_number
     (setq _lane_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; lane_navi_info_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::LaneGroup :md5sum-) "a603daf4352012a2b3e37e2db2e19e37")
(setf (get lane_navi_info_msgs::LaneGroup :datatype-) "lane_navi_info_msgs/LaneGroup")
(setf (get lane_navi_info_msgs::LaneGroup :definition-)
      "uint8 LANE_VALID = 1
uint8 available
landmark_msgs/TrackId lane_group_id
float32 length
uint8 lane_number
lane_navi_info_msgs/Lane[] lanes

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/Lane
uint8 LANE_TOPO_VALID = 1
uint8 ON_ROUTE_OFFSET_VALID = 2
uint8 LANE_TYPE_VALID = 4
uint8 LANE_ATTRIBUTE_VALID = 8
uint8 LANE_LEFT_BOUNDARY_VALID = 16
uint8 LANE_RIGHT_BOUNDARY_VALID = 32
uint8 LANE_WIDTH_VALID = 64
uint8 available
landmark_msgs/TrackId lane_id
landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
lane_navi_info_msgs/LaneAttribute[] lane_attrs
lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] prev_lane_ids
lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] next_lane_ids
float32 on_route_offset
float32 width
lane_navi_info_msgs/LaneBoundaryInfo[] lb_left
lane_navi_info_msgs/LaneBoundaryInfo[] lb_right
landmark_msgs/TrackId[] related_road_id
landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones
landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones
lane_navi_info_msgs/Polyline polyline
lane_navi_info_msgs/LaneLimitInfo[] lane_limit_info_list

================================================================================
MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum
uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_NORMAL = 1
uint8 LANE_TYPE_EMERGENCY = 5
uint8 LANE_TYPE_BUS = 6
uint8 LANE_TYPE_PASSING = 7
uint8 LANE_TYPE_HOV = 8
uint8 LANE_TYPE_ACCELERATE = 9
uint8 LANE_TYPE_UTURN = 10
uint8 LANE_TYPE_DECELERATE = 11
uint8 LANE_TYPE_SHOULDER = 12
uint8 LANE_TYPE_INTERSECTION = 14
uint8 LANE_TYPE_NON_MOTOR = 15
uint8 LANE_TYPE_MIXED_MOTOR = 16
uint8 LANE_TYPE_SIDE_WALK = 17
uint8 LANE_TYPE_MOTORCYCLE = 18
uint8 LANE_TYPE_TOLL_ETC = 19
uint8 LANE_TYPE_TOLL = 20
uint8 LANE_TYPE_CHECKPOINT = 21
uint8 LANE_TYPE_RAMP = 22
uint8 LANE_TYPE_BARRIER = 23
uint8 LANE_TYPE_CHANNELIZATION = 24
uint8 LANE_TYPE_EMERGENCE_STOP = 25
uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
uint8 LANE_TYPE_STEEP_GRADE = 27
uint8 LANE_TYPE_DIREC_VARIABLE = 28
uint8 LANE_TYPE_CUSTOMS_SUP = 29
uint8 LANE_TYPE_EMERGENCE_RAMP = 30
uint8 LANE_TYPE_PARKING = 31
uint8 LANE_TYPE_TIDAL = 32
uint8 LANE_TYPE_TEMPORARY = 33
uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
uint8 LANE_TYPE_LEFT_ACC = 36
uint8 LANE_TYPE_RIGHT_ACC = 37
uint8 LANE_TYPE_LEFT_DEC = 38
uint8 LANE_TYPE_RIGHT_DEC = 39
uint8 LANE_TYPE_SERVICE_RAMP = 40
uint8 LANE_TYPE_CURB = 41
uint8 LANE_TYPE_RAILWAY = 42
uint8 LANE_TYPE_BUS_STOP = 43
uint8 LANE_TYPE_ROUNDABOUT = 44
uint8 LANE_TYPE_INVALID = 45
uint8 LANE_TYPE_WIDE = 46
uint8 LANE_TYPE_VIRTUAL = 47
uint8 LANE_TYPE_OTHERS = 63
uint8 LANE_TYPE_ACC_DEC = 70
uint8 LANE_TYPE_WAITING_AREA = 71
uint8 LANE_TYPE_TOLL_MANUAL = 72
uint8 LANE_TYPE_INCOMPLETE = 73
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LaneAttribute
uint8 LANE_DIRECTION_VALID = 1
uint8 START_OFFSET_VALID = 2
uint8 END_OFFSET_VALID = 4
uint8 available
landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction
float32 start_offset
float32 end_offset

================================================================================
MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo
landmark_msgs/TrackId lane_id
lane_navi_info_msgs/SplitMergeInfo split_merge_info

================================================================================
MSG: lane_navi_info_msgs/SplitMergeInfo
uint8 NONE = 0
uint8 SPLIT = 1
uint8 MERGE = 2
uint8 CONTINUE = 3
uint8 value

================================================================================
MSG: lane_navi_info_msgs/LaneBoundaryInfo
landmark_msgs/LaneBoundaryTypeEnum type
float32 start_offset
float32 end_offset
lane_navi_info_msgs/Polyline polyline

================================================================================
MSG: landmark_msgs/LaneBoundaryTypeEnum
uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_TYPE_DASHED = 1
uint8 LANE_BOUNDARY_TYPE_SOLID = 2
uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
uint8 value

================================================================================
MSG: lane_navi_info_msgs/Polyline
lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

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
MSG: lane_navi_info_msgs/LaneLimitInfo
lane_navi_info_msgs/DayOfYear[] day_of_year_list
lane_navi_info_msgs/DaysOfWeek[] day_of_week_list
lane_navi_info_msgs/TimeRangeOfDay[] time_range_list
lane_navi_info_msgs/Holiday[] holiday_list
lane_navi_info_msgs/VehicleType[] vehicle_type_list

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeek
lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeekType
uint8 DAYSOFWEEKTYPE_INVALID = 0
uint8 DAYSOFWEEKTYPE_SUNDAY = 1
uint8 DAYSOFWEEKTYPE_MONDAY = 2
uint8 DAYSOFWEEKTYPE_TUESDAY = 3
uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4
uint8 DAYSOFWEEKTYPE_THURSDAY = 5
uint8 DAYSOFWEEKTYPE_FRIDAY = 6
uint8 DAYSOFWEEKTYPE_SATURDAY = 7
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRangeOfDay
lane_navi_info_msgs/TimeOfDay start_time
lane_navi_info_msgs/TimeOfDay end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

================================================================================
MSG: lane_navi_info_msgs/Holiday
lane_navi_info_msgs/HolidayType holiday_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/VehicleType
uint8 RESTRICTION_VEHICLE_ALL = 0
uint8 RESTRICTION_VEHICLE_MOTOR = 1
uint8 RESTRICTION_VEHICLE_CAR = 2
uint8 RESTRICTION_VEHICLE_BUS = 3
uint8 RESTRICTION_VEHICLE_HOV = 4
uint8 RESTRICTION_VEHICLE_UNKNOWN = 255
uint8 type

")



(provide :lane_navi_info_msgs/LaneGroup "a603daf4352012a2b3e37e2db2e19e37")


