; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude LaneGroup.msg.html

(cl:defclass <LaneGroup> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (lane_group_id
    :reader lane_group_id
    :initarg :lane_group_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (lane_number
    :reader lane_number
    :initarg :lane_number
    :type cl:fixnum
    :initform 0)
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector lane_navi_info_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:Lane :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:Lane))))
)

(cl:defclass LaneGroup (<LaneGroup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneGroup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneGroup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<LaneGroup> is deprecated: use lane_navi_info_msgs-msg:LaneGroup instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LaneGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'lane_group_id-val :lambda-list '(m))
(cl:defmethod lane_group_id-val ((m <LaneGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_group_id-val is deprecated.  Use lane_navi_info_msgs-msg:lane_group_id instead.")
  (lane_group_id m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LaneGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:length-val is deprecated.  Use lane_navi_info_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'lane_number-val :lambda-list '(m))
(cl:defmethod lane_number-val ((m <LaneGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_number-val is deprecated.  Use lane_navi_info_msgs-msg:lane_number instead.")
  (lane_number m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <LaneGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lanes-val is deprecated.  Use lane_navi_info_msgs-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneGroup>)))
    "Constants for message type '<LaneGroup>"
  '((:LANE_VALID . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneGroup)))
    "Constants for message type 'LaneGroup"
  '((:LANE_VALID . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneGroup>) ostream)
  "Serializes a message object of type '<LaneGroup>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_group_id) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_number)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneGroup>) istream)
  "Deserializes a message object of type '<LaneGroup>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_group_id) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_number)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneGroup>)))
  "Returns string type for a message object of type '<LaneGroup>"
  "lane_navi_info_msgs/LaneGroup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneGroup)))
  "Returns string type for a message object of type 'LaneGroup"
  "lane_navi_info_msgs/LaneGroup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneGroup>)))
  "Returns md5sum for a message object of type '<LaneGroup>"
  "a603daf4352012a2b3e37e2db2e19e37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneGroup)))
  "Returns md5sum for a message object of type 'LaneGroup"
  "a603daf4352012a2b3e37e2db2e19e37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneGroup>)))
  "Returns full string definition for message of type '<LaneGroup>"
  (cl:format cl:nil "uint8 LANE_VALID = 1~%uint8 available~%landmark_msgs/TrackId lane_group_id~%float32 length~%uint8 lane_number~%lane_navi_info_msgs/Lane[] lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Lane~%uint8 LANE_TOPO_VALID = 1~%uint8 ON_ROUTE_OFFSET_VALID = 2~%uint8 LANE_TYPE_VALID = 4~%uint8 LANE_ATTRIBUTE_VALID = 8~%uint8 LANE_LEFT_BOUNDARY_VALID = 16~%uint8 LANE_RIGHT_BOUNDARY_VALID = 32~%uint8 LANE_WIDTH_VALID = 64~%uint8 available~%landmark_msgs/TrackId lane_id~%landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types~%lane_navi_info_msgs/LaneAttribute[] lane_attrs~%lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] prev_lane_ids~%lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] next_lane_ids~%float32 on_route_offset~%float32 width~%lane_navi_info_msgs/LaneBoundaryInfo[] lb_left~%lane_navi_info_msgs/LaneBoundaryInfo[] lb_right~%landmark_msgs/TrackId[] related_road_id~%landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones~%landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones~%lane_navi_info_msgs/Polyline polyline~%lane_navi_info_msgs/LaneLimitInfo[] lane_limit_info_list~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_NORMAL = 1~%uint8 LANE_TYPE_EMERGENCY = 5~%uint8 LANE_TYPE_BUS = 6~%uint8 LANE_TYPE_PASSING = 7~%uint8 LANE_TYPE_HOV = 8~%uint8 LANE_TYPE_ACCELERATE = 9~%uint8 LANE_TYPE_UTURN = 10~%uint8 LANE_TYPE_DECELERATE = 11~%uint8 LANE_TYPE_SHOULDER = 12~%uint8 LANE_TYPE_INTERSECTION = 14~%uint8 LANE_TYPE_NON_MOTOR = 15~%uint8 LANE_TYPE_MIXED_MOTOR = 16~%uint8 LANE_TYPE_SIDE_WALK = 17~%uint8 LANE_TYPE_MOTORCYCLE = 18~%uint8 LANE_TYPE_TOLL_ETC = 19~%uint8 LANE_TYPE_TOLL = 20~%uint8 LANE_TYPE_CHECKPOINT = 21~%uint8 LANE_TYPE_RAMP = 22~%uint8 LANE_TYPE_BARRIER = 23~%uint8 LANE_TYPE_CHANNELIZATION = 24~%uint8 LANE_TYPE_EMERGENCE_STOP = 25~%uint8 LANE_TYPE_HAZARDOUS_GOODS = 26~%uint8 LANE_TYPE_STEEP_GRADE = 27~%uint8 LANE_TYPE_DIREC_VARIABLE = 28~%uint8 LANE_TYPE_CUSTOMS_SUP = 29~%uint8 LANE_TYPE_EMERGENCE_RAMP = 30~%uint8 LANE_TYPE_PARKING = 31~%uint8 LANE_TYPE_TIDAL = 32~%uint8 LANE_TYPE_TEMPORARY = 33~%uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34~%uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35~%uint8 LANE_TYPE_LEFT_ACC = 36~%uint8 LANE_TYPE_RIGHT_ACC = 37~%uint8 LANE_TYPE_LEFT_DEC = 38~%uint8 LANE_TYPE_RIGHT_DEC = 39~%uint8 LANE_TYPE_SERVICE_RAMP = 40~%uint8 LANE_TYPE_CURB = 41~%uint8 LANE_TYPE_RAILWAY = 42~%uint8 LANE_TYPE_BUS_STOP = 43~%uint8 LANE_TYPE_ROUNDABOUT = 44~%uint8 LANE_TYPE_INVALID = 45~%uint8 LANE_TYPE_WIDE = 46~%uint8 LANE_TYPE_VIRTUAL = 47~%uint8 LANE_TYPE_OTHERS = 63~%uint8 LANE_TYPE_ACC_DEC = 70~%uint8 LANE_TYPE_WAITING_AREA = 71~%uint8 LANE_TYPE_TOLL_MANUAL = 72~%uint8 LANE_TYPE_INCOMPLETE = 73~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneAttribute~%uint8 LANE_DIRECTION_VALID = 1~%uint8 START_OFFSET_VALID = 2~%uint8 END_OFFSET_VALID = 4~%uint8 available~%landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum~%uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo~%landmark_msgs/TrackId lane_id~%lane_navi_info_msgs/SplitMergeInfo split_merge_info~%~%================================================================================~%MSG: lane_navi_info_msgs/SplitMergeInfo~%uint8 NONE = 0~%uint8 SPLIT = 1~%uint8 MERGE = 2~%uint8 CONTINUE = 3~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneBoundaryInfo~%landmark_msgs/LaneBoundaryTypeEnum type~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/Polyline polyline~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryTypeEnum~%uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: landmark_msgs/NoLaneChangeZone~%uint8 UNKNOWN = 1~%uint8 SOLID_LINE = 2~%uint8 BUS_LANE = 3~%uint8 OTHERS = 99~%uint8 type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneLimitInfo~%lane_navi_info_msgs/DayOfYear[] day_of_year_list~%lane_navi_info_msgs/DaysOfWeek[] day_of_week_list~%lane_navi_info_msgs/TimeRangeOfDay[] time_range_list~%lane_navi_info_msgs/Holiday[] holiday_list~%lane_navi_info_msgs/VehicleType[] vehicle_type_list~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeek~%lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeekType~%uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRangeOfDay~%lane_navi_info_msgs/TimeOfDay start_time~%lane_navi_info_msgs/TimeOfDay end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/Holiday~%lane_navi_info_msgs/HolidayType holiday_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/VehicleType~%uint8 RESTRICTION_VEHICLE_ALL = 0~%uint8 RESTRICTION_VEHICLE_MOTOR = 1~%uint8 RESTRICTION_VEHICLE_CAR = 2~%uint8 RESTRICTION_VEHICLE_BUS = 3~%uint8 RESTRICTION_VEHICLE_HOV = 4~%uint8 RESTRICTION_VEHICLE_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneGroup)))
  "Returns full string definition for message of type 'LaneGroup"
  (cl:format cl:nil "uint8 LANE_VALID = 1~%uint8 available~%landmark_msgs/TrackId lane_group_id~%float32 length~%uint8 lane_number~%lane_navi_info_msgs/Lane[] lanes~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Lane~%uint8 LANE_TOPO_VALID = 1~%uint8 ON_ROUTE_OFFSET_VALID = 2~%uint8 LANE_TYPE_VALID = 4~%uint8 LANE_ATTRIBUTE_VALID = 8~%uint8 LANE_LEFT_BOUNDARY_VALID = 16~%uint8 LANE_RIGHT_BOUNDARY_VALID = 32~%uint8 LANE_WIDTH_VALID = 64~%uint8 available~%landmark_msgs/TrackId lane_id~%landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types~%lane_navi_info_msgs/LaneAttribute[] lane_attrs~%lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] prev_lane_ids~%lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo[] next_lane_ids~%float32 on_route_offset~%float32 width~%lane_navi_info_msgs/LaneBoundaryInfo[] lb_left~%lane_navi_info_msgs/LaneBoundaryInfo[] lb_right~%landmark_msgs/TrackId[] related_road_id~%landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones~%landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones~%lane_navi_info_msgs/Polyline polyline~%lane_navi_info_msgs/LaneLimitInfo[] lane_limit_info_list~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_NORMAL = 1~%uint8 LANE_TYPE_EMERGENCY = 5~%uint8 LANE_TYPE_BUS = 6~%uint8 LANE_TYPE_PASSING = 7~%uint8 LANE_TYPE_HOV = 8~%uint8 LANE_TYPE_ACCELERATE = 9~%uint8 LANE_TYPE_UTURN = 10~%uint8 LANE_TYPE_DECELERATE = 11~%uint8 LANE_TYPE_SHOULDER = 12~%uint8 LANE_TYPE_INTERSECTION = 14~%uint8 LANE_TYPE_NON_MOTOR = 15~%uint8 LANE_TYPE_MIXED_MOTOR = 16~%uint8 LANE_TYPE_SIDE_WALK = 17~%uint8 LANE_TYPE_MOTORCYCLE = 18~%uint8 LANE_TYPE_TOLL_ETC = 19~%uint8 LANE_TYPE_TOLL = 20~%uint8 LANE_TYPE_CHECKPOINT = 21~%uint8 LANE_TYPE_RAMP = 22~%uint8 LANE_TYPE_BARRIER = 23~%uint8 LANE_TYPE_CHANNELIZATION = 24~%uint8 LANE_TYPE_EMERGENCE_STOP = 25~%uint8 LANE_TYPE_HAZARDOUS_GOODS = 26~%uint8 LANE_TYPE_STEEP_GRADE = 27~%uint8 LANE_TYPE_DIREC_VARIABLE = 28~%uint8 LANE_TYPE_CUSTOMS_SUP = 29~%uint8 LANE_TYPE_EMERGENCE_RAMP = 30~%uint8 LANE_TYPE_PARKING = 31~%uint8 LANE_TYPE_TIDAL = 32~%uint8 LANE_TYPE_TEMPORARY = 33~%uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34~%uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35~%uint8 LANE_TYPE_LEFT_ACC = 36~%uint8 LANE_TYPE_RIGHT_ACC = 37~%uint8 LANE_TYPE_LEFT_DEC = 38~%uint8 LANE_TYPE_RIGHT_DEC = 39~%uint8 LANE_TYPE_SERVICE_RAMP = 40~%uint8 LANE_TYPE_CURB = 41~%uint8 LANE_TYPE_RAILWAY = 42~%uint8 LANE_TYPE_BUS_STOP = 43~%uint8 LANE_TYPE_ROUNDABOUT = 44~%uint8 LANE_TYPE_INVALID = 45~%uint8 LANE_TYPE_WIDE = 46~%uint8 LANE_TYPE_VIRTUAL = 47~%uint8 LANE_TYPE_OTHERS = 63~%uint8 LANE_TYPE_ACC_DEC = 70~%uint8 LANE_TYPE_WAITING_AREA = 71~%uint8 LANE_TYPE_TOLL_MANUAL = 72~%uint8 LANE_TYPE_INCOMPLETE = 73~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneAttribute~%uint8 LANE_DIRECTION_VALID = 1~%uint8 START_OFFSET_VALID = 2~%uint8 END_OFFSET_VALID = 4~%uint8 available~%landmark_msgs/LaneCenterNodeDirectionTypeEnum lane_direction~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum~%uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo~%landmark_msgs/TrackId lane_id~%lane_navi_info_msgs/SplitMergeInfo split_merge_info~%~%================================================================================~%MSG: lane_navi_info_msgs/SplitMergeInfo~%uint8 NONE = 0~%uint8 SPLIT = 1~%uint8 MERGE = 2~%uint8 CONTINUE = 3~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneBoundaryInfo~%landmark_msgs/LaneBoundaryTypeEnum type~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/Polyline polyline~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryTypeEnum~%uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: landmark_msgs/NoLaneChangeZone~%uint8 UNKNOWN = 1~%uint8 SOLID_LINE = 2~%uint8 BUS_LANE = 3~%uint8 OTHERS = 99~%uint8 type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneLimitInfo~%lane_navi_info_msgs/DayOfYear[] day_of_year_list~%lane_navi_info_msgs/DaysOfWeek[] day_of_week_list~%lane_navi_info_msgs/TimeRangeOfDay[] time_range_list~%lane_navi_info_msgs/Holiday[] holiday_list~%lane_navi_info_msgs/VehicleType[] vehicle_type_list~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeek~%lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeekType~%uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRangeOfDay~%lane_navi_info_msgs/TimeOfDay start_time~%lane_navi_info_msgs/TimeOfDay end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/Holiday~%lane_navi_info_msgs/HolidayType holiday_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/VehicleType~%uint8 RESTRICTION_VEHICLE_ALL = 0~%uint8 RESTRICTION_VEHICLE_MOTOR = 1~%uint8 RESTRICTION_VEHICLE_CAR = 2~%uint8 RESTRICTION_VEHICLE_BUS = 3~%uint8 RESTRICTION_VEHICLE_HOV = 4~%uint8 RESTRICTION_VEHICLE_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneGroup>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_group_id))
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneGroup>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneGroup
    (cl:cons ':available (available msg))
    (cl:cons ':lane_group_id (lane_group_id msg))
    (cl:cons ':length (length msg))
    (cl:cons ':lane_number (lane_number msg))
    (cl:cons ':lanes (lanes msg))
))
