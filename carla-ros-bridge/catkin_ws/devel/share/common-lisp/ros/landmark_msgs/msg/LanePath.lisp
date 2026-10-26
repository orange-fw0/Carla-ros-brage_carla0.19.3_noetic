; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LanePath.msg.html

(cl:defclass <LanePath> (roslisp-msg-protocol:ros-message)
  ((lane_in_lane_path
    :reader lane_in_lane_path
    :initarg :lane_in_lane_path
    :type (cl:vector landmark_msgs-msg:LaneIdWithOnRouteInfo)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneIdWithOnRouteInfo :initial-element (cl:make-instance 'landmark_msgs-msg:LaneIdWithOnRouteInfo)))
   (onroute_distance
    :reader onroute_distance
    :initarg :onroute_distance
    :type cl:float
    :initform 0.0)
   (lane_maneuvers
    :reader lane_maneuvers
    :initarg :lane_maneuvers
    :type (cl:vector landmark_msgs-msg:LaneSplittingMergingManeuver)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneSplittingMergingManeuver :initial-element (cl:make-instance 'landmark_msgs-msg:LaneSplittingMergingManeuver)))
   (direction
    :reader direction
    :initarg :direction
    :type landmark_msgs-msg:LanePathDirection
    :initform (cl:make-instance 'landmark_msgs-msg:LanePathDirection))
   (end_type
    :reader end_type
    :initarg :end_type
    :type landmark_msgs-msg:LanePathEndType
    :initform (cl:make-instance 'landmark_msgs-msg:LanePathEndType))
   (left_no_lane_change_zones
    :reader left_no_lane_change_zones
    :initarg :left_no_lane_change_zones
    :type (cl:vector landmark_msgs-msg:NoLaneChangeZone)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:NoLaneChangeZone :initial-element (cl:make-instance 'landmark_msgs-msg:NoLaneChangeZone)))
   (right_no_lane_change_zones
    :reader right_no_lane_change_zones
    :initarg :right_no_lane_change_zones
    :type (cl:vector landmark_msgs-msg:NoLaneChangeZone)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:NoLaneChangeZone :initial-element (cl:make-instance 'landmark_msgs-msg:NoLaneChangeZone)))
   (navi_onroutedis_info
    :reader navi_onroutedis_info
    :initarg :navi_onroutedis_info
    :type landmark_msgs-msg:NaviOnrouteDisInfo
    :initform (cl:make-instance 'landmark_msgs-msg:NaviOnrouteDisInfo))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass LanePath (<LanePath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LanePath> is deprecated: use landmark_msgs-msg:LanePath instead.")))

(cl:ensure-generic-function 'lane_in_lane_path-val :lambda-list '(m))
(cl:defmethod lane_in_lane_path-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_in_lane_path-val is deprecated.  Use landmark_msgs-msg:lane_in_lane_path instead.")
  (lane_in_lane_path m))

(cl:ensure-generic-function 'onroute_distance-val :lambda-list '(m))
(cl:defmethod onroute_distance-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:onroute_distance-val is deprecated.  Use landmark_msgs-msg:onroute_distance instead.")
  (onroute_distance m))

(cl:ensure-generic-function 'lane_maneuvers-val :lambda-list '(m))
(cl:defmethod lane_maneuvers-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_maneuvers-val is deprecated.  Use landmark_msgs-msg:lane_maneuvers instead.")
  (lane_maneuvers m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:direction-val is deprecated.  Use landmark_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'end_type-val :lambda-list '(m))
(cl:defmethod end_type-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:end_type-val is deprecated.  Use landmark_msgs-msg:end_type instead.")
  (end_type m))

(cl:ensure-generic-function 'left_no_lane_change_zones-val :lambda-list '(m))
(cl:defmethod left_no_lane_change_zones-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:left_no_lane_change_zones-val is deprecated.  Use landmark_msgs-msg:left_no_lane_change_zones instead.")
  (left_no_lane_change_zones m))

(cl:ensure-generic-function 'right_no_lane_change_zones-val :lambda-list '(m))
(cl:defmethod right_no_lane_change_zones-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:right_no_lane_change_zones-val is deprecated.  Use landmark_msgs-msg:right_no_lane_change_zones instead.")
  (right_no_lane_change_zones m))

(cl:ensure-generic-function 'navi_onroutedis_info-val :lambda-list '(m))
(cl:defmethod navi_onroutedis_info-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:navi_onroutedis_info-val is deprecated.  Use landmark_msgs-msg:navi_onroutedis_info instead.")
  (navi_onroutedis_info m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <LanePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePath>) ostream)
  "Serializes a message object of type '<LanePath>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_in_lane_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_in_lane_path))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'onroute_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_maneuvers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_maneuvers))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_no_lane_change_zones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left_no_lane_change_zones))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_no_lane_change_zones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right_no_lane_change_zones))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_onroutedis_info) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePath>) istream)
  "Deserializes a message object of type '<LanePath>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_in_lane_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_in_lane_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneIdWithOnRouteInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'onroute_distance) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_maneuvers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_maneuvers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneSplittingMergingManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_no_lane_change_zones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_no_lane_change_zones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:NoLaneChangeZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_no_lane_change_zones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_no_lane_change_zones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:NoLaneChangeZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_onroutedis_info) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePath>)))
  "Returns string type for a message object of type '<LanePath>"
  "landmark_msgs/LanePath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePath)))
  "Returns string type for a message object of type 'LanePath"
  "landmark_msgs/LanePath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePath>)))
  "Returns md5sum for a message object of type '<LanePath>"
  "c42c5475f20c6b555856a14cdd0814be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePath)))
  "Returns md5sum for a message object of type 'LanePath"
  "c42c5475f20c6b555856a14cdd0814be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePath>)))
  "Returns full string definition for message of type '<LanePath>"
  (cl:format cl:nil "landmark_msgs/LaneIdWithOnRouteInfo[] lane_in_lane_path~%float32 onroute_distance~%landmark_msgs/LaneSplittingMergingManeuver[] lane_maneuvers~%landmark_msgs/LanePathDirection direction~%landmark_msgs/LanePathEndType end_type~%landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones~%landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones~%landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/LaneIdWithOnRouteInfo~%uint8 UNKNOWN = 0~%uint8 ON_ROUTE = 1~%uint8 OFF_ROUTE = 2~%landmark_msgs/TrackId lane_id~%uint8 on_route_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneSplittingMergingManeuver~%uint8 UNKNOWN = 0~%uint8 HDMAP = 1~%uint8 DDLD = 2~%uint8 LANDTOPO = 3~%landmark_msgs/ManeuverBase maneuver_base~%bool is_continue~%bool is_none_continue~%landmark_msgs/Orientation direction~%landmark_msgs/TrackId[] linked_lane_ids~%uint8 source~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LanePathDirection~%uint8 UNKNOWN = 0~%uint8 CONTINUE = 1~%uint8 LEFT = 2~%uint8 RIGHT = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LanePathEndType~%uint8 UNKNOWN = 0~%uint8 OFF_ROUTE_END = 1~%uint8 SEARCH_RANGE_END = 2~%uint8 DEST_END = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NoLaneChangeZone~%uint8 UNKNOWN = 1~%uint8 SOLID_LINE = 2~%uint8 BUS_LANE = 3~%uint8 OTHERS = 99~%uint8 type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/NaviOnrouteDisInfo~%bool available~%float32 dist_to_onroute~%int16[] on_route_dis_clses~%int16 cls_num~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePath)))
  "Returns full string definition for message of type 'LanePath"
  (cl:format cl:nil "landmark_msgs/LaneIdWithOnRouteInfo[] lane_in_lane_path~%float32 onroute_distance~%landmark_msgs/LaneSplittingMergingManeuver[] lane_maneuvers~%landmark_msgs/LanePathDirection direction~%landmark_msgs/LanePathEndType end_type~%landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones~%landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones~%landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/LaneIdWithOnRouteInfo~%uint8 UNKNOWN = 0~%uint8 ON_ROUTE = 1~%uint8 OFF_ROUTE = 2~%landmark_msgs/TrackId lane_id~%uint8 on_route_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneSplittingMergingManeuver~%uint8 UNKNOWN = 0~%uint8 HDMAP = 1~%uint8 DDLD = 2~%uint8 LANDTOPO = 3~%landmark_msgs/ManeuverBase maneuver_base~%bool is_continue~%bool is_none_continue~%landmark_msgs/Orientation direction~%landmark_msgs/TrackId[] linked_lane_ids~%uint8 source~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LanePathDirection~%uint8 UNKNOWN = 0~%uint8 CONTINUE = 1~%uint8 LEFT = 2~%uint8 RIGHT = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LanePathEndType~%uint8 UNKNOWN = 0~%uint8 OFF_ROUTE_END = 1~%uint8 SEARCH_RANGE_END = 2~%uint8 DEST_END = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NoLaneChangeZone~%uint8 UNKNOWN = 1~%uint8 SOLID_LINE = 2~%uint8 BUS_LANE = 3~%uint8 OTHERS = 99~%uint8 type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/NaviOnrouteDisInfo~%bool available~%float32 dist_to_onroute~%int16[] on_route_dis_clses~%int16 cls_num~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePath>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_in_lane_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_maneuvers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_no_lane_change_zones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_no_lane_change_zones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_onroutedis_info))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePath>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePath
    (cl:cons ':lane_in_lane_path (lane_in_lane_path msg))
    (cl:cons ':onroute_distance (onroute_distance msg))
    (cl:cons ':lane_maneuvers (lane_maneuvers msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':end_type (end_type msg))
    (cl:cons ':left_no_lane_change_zones (left_no_lane_change_zones msg))
    (cl:cons ':right_no_lane_change_zones (right_no_lane_change_zones msg))
    (cl:cons ':navi_onroutedis_info (navi_onroutedis_info msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
