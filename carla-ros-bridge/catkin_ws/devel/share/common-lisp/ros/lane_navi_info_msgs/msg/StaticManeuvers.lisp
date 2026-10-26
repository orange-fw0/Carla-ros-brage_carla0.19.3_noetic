; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude StaticManeuvers.msg.html

(cl:defclass <StaticManeuvers> (roslisp-msg-protocol:ros-message)
  ((valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (intersection_maneuvers
    :reader intersection_maneuvers
    :initarg :intersection_maneuvers
    :type (cl:vector lane_navi_info_msgs-msg:IntersectionManeuver)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:IntersectionManeuver :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:IntersectionManeuver)))
   (ramp_maneuvers
    :reader ramp_maneuvers
    :initarg :ramp_maneuvers
    :type (cl:vector lane_navi_info_msgs-msg:RampManeuver)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:RampManeuver :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:RampManeuver)))
   (road_splitting_merging_maneuver
    :reader road_splitting_merging_maneuver
    :initarg :road_splitting_merging_maneuver
    :type (cl:vector lane_navi_info_msgs-msg:RoadSplittingMergingManeuver)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:RoadSplittingMergingManeuver :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:RoadSplittingMergingManeuver)))
   (lane_splitting_merging_maneuver
    :reader lane_splitting_merging_maneuver
    :initarg :lane_splitting_merging_maneuver
    :type (cl:vector lane_navi_info_msgs-msg:LaneSplittingMergingManeuver)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:LaneSplittingMergingManeuver :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:LaneSplittingMergingManeuver)))
   (destination_maneuver
    :reader destination_maneuver
    :initarg :destination_maneuver
    :type (cl:vector lane_navi_info_msgs-msg:DestinationManeuver)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:DestinationManeuver :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:DestinationManeuver)))
   (common_maneuver
    :reader common_maneuver
    :initarg :common_maneuver
    :type (cl:vector lane_navi_info_msgs-msg:CommonManeuver)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:CommonManeuver :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:CommonManeuver))))
)

(cl:defclass StaticManeuvers (<StaticManeuvers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticManeuvers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticManeuvers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<StaticManeuvers> is deprecated: use lane_navi_info_msgs-msg:StaticManeuvers instead.")))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <StaticManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:valid-val is deprecated.  Use lane_navi_info_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'intersection_maneuvers-val :lambda-list '(m))
(cl:defmethod intersection_maneuvers-val ((m <StaticManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:intersection_maneuvers-val is deprecated.  Use lane_navi_info_msgs-msg:intersection_maneuvers instead.")
  (intersection_maneuvers m))

(cl:ensure-generic-function 'ramp_maneuvers-val :lambda-list '(m))
(cl:defmethod ramp_maneuvers-val ((m <StaticManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:ramp_maneuvers-val is deprecated.  Use lane_navi_info_msgs-msg:ramp_maneuvers instead.")
  (ramp_maneuvers m))

(cl:ensure-generic-function 'road_splitting_merging_maneuver-val :lambda-list '(m))
(cl:defmethod road_splitting_merging_maneuver-val ((m <StaticManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:road_splitting_merging_maneuver-val is deprecated.  Use lane_navi_info_msgs-msg:road_splitting_merging_maneuver instead.")
  (road_splitting_merging_maneuver m))

(cl:ensure-generic-function 'lane_splitting_merging_maneuver-val :lambda-list '(m))
(cl:defmethod lane_splitting_merging_maneuver-val ((m <StaticManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_splitting_merging_maneuver-val is deprecated.  Use lane_navi_info_msgs-msg:lane_splitting_merging_maneuver instead.")
  (lane_splitting_merging_maneuver m))

(cl:ensure-generic-function 'destination_maneuver-val :lambda-list '(m))
(cl:defmethod destination_maneuver-val ((m <StaticManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:destination_maneuver-val is deprecated.  Use lane_navi_info_msgs-msg:destination_maneuver instead.")
  (destination_maneuver m))

(cl:ensure-generic-function 'common_maneuver-val :lambda-list '(m))
(cl:defmethod common_maneuver-val ((m <StaticManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:common_maneuver-val is deprecated.  Use lane_navi_info_msgs-msg:common_maneuver instead.")
  (common_maneuver m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticManeuvers>) ostream)
  "Serializes a message object of type '<StaticManeuvers>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intersection_maneuvers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'intersection_maneuvers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ramp_maneuvers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ramp_maneuvers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road_splitting_merging_maneuver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road_splitting_merging_maneuver))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_splitting_merging_maneuver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_splitting_merging_maneuver))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'destination_maneuver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'destination_maneuver))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'common_maneuver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'common_maneuver))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticManeuvers>) istream)
  "Deserializes a message object of type '<StaticManeuvers>"
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intersection_maneuvers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intersection_maneuvers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:IntersectionManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ramp_maneuvers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ramp_maneuvers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:RampManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_splitting_merging_maneuver) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_splitting_merging_maneuver)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:RoadSplittingMergingManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_splitting_merging_maneuver) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_splitting_merging_maneuver)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:LaneSplittingMergingManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'destination_maneuver) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'destination_maneuver)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:DestinationManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'common_maneuver) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'common_maneuver)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:CommonManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticManeuvers>)))
  "Returns string type for a message object of type '<StaticManeuvers>"
  "lane_navi_info_msgs/StaticManeuvers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticManeuvers)))
  "Returns string type for a message object of type 'StaticManeuvers"
  "lane_navi_info_msgs/StaticManeuvers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticManeuvers>)))
  "Returns md5sum for a message object of type '<StaticManeuvers>"
  "44a486afcd8ffbc3218cf0eeed2fcba2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticManeuvers)))
  "Returns md5sum for a message object of type 'StaticManeuvers"
  "44a486afcd8ffbc3218cf0eeed2fcba2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticManeuvers>)))
  "Returns full string definition for message of type '<StaticManeuvers>"
  (cl:format cl:nil "bool valid~%lane_navi_info_msgs/IntersectionManeuver[] intersection_maneuvers~%lane_navi_info_msgs/RampManeuver[] ramp_maneuvers~%lane_navi_info_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver~%lane_navi_info_msgs/LaneSplittingMergingManeuver[] lane_splitting_merging_maneuver~%lane_navi_info_msgs/DestinationManeuver[] destination_maneuver~%lane_navi_info_msgs/CommonManeuver[] common_maneuver~%~%================================================================================~%MSG: lane_navi_info_msgs/IntersectionManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%lane_navi_info_msgs/IntersectionType type~%bool is_traffic_light_exist~%bool has_traffic_light_detail~%landmark_msgs/Direction direction~%landmark_msgs/TrafficLightGroup[] light_groups~%landmark_msgs/TrackId linked_intersection~%lane_navi_info_msgs/ExperienceTrajectory[] experience_trajectories~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/IntersectionType~%uint8 UNKNOWN = 0~%uint8 HIGHWAY_SPLIT = 1~%uint8 URBAN_NORMAL = 2~%uint8 NORMAL_SPLIT_MERGE = 3~%uint8 T_JUNCTION = 4~%uint8 Y_JUNCTION = 5~%uint8 ROUNDABOUT = 6~%uint8 OVERPASS = 7~%uint8 OTHERS = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/ExperienceTrajectory~%lane_navi_info_msgs/Polyline polyline~%landmark_msgs/TrackId[] related_lane_id~%lane_navi_info_msgs/Lane_Cursor start_lane~%lane_navi_info_msgs/Lane_Cursor end_lane~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/Lane_Cursor~%landmark_msgs/TrackId lane_id~%float32 offset~%~%================================================================================~%MSG: lane_navi_info_msgs/RampManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%landmark_msgs/DirectionInfo ramp_in_direction_info~%landmark_msgs/DirectionInfo ramp_out_direction_info~%float64 ramp_in_angle~%float64 ramp_out_angle~%~%================================================================================~%MSG: landmark_msgs/DirectionInfo~%int16 road_index~%int16 road_sum~%~%================================================================================~%MSG: lane_navi_info_msgs/RoadSplittingMergingManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%landmark_msgs/DirectionInfo direction_info~%float64[] angles~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneSplittingMergingManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%bool is_continue~%bool is_none_continue~%landmark_msgs/Orientation direction~%landmark_msgs/TrackId[] linked_lane_ids~%~%================================================================================~%MSG: landmark_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/DestinationManeuver~%uint8 MANEUVER_VALID = 1~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%~%================================================================================~%MSG: lane_navi_info_msgs/CommonManeuver~%uint8 MANEUVER_VALID = 1~%uint8 VALUE_VALID = 2~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%float32 value~%lane_navi_info_msgs/ConditionType condition~%~%================================================================================~%MSG: lane_navi_info_msgs/ConditionType~%uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticManeuvers)))
  "Returns full string definition for message of type 'StaticManeuvers"
  (cl:format cl:nil "bool valid~%lane_navi_info_msgs/IntersectionManeuver[] intersection_maneuvers~%lane_navi_info_msgs/RampManeuver[] ramp_maneuvers~%lane_navi_info_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver~%lane_navi_info_msgs/LaneSplittingMergingManeuver[] lane_splitting_merging_maneuver~%lane_navi_info_msgs/DestinationManeuver[] destination_maneuver~%lane_navi_info_msgs/CommonManeuver[] common_maneuver~%~%================================================================================~%MSG: lane_navi_info_msgs/IntersectionManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%lane_navi_info_msgs/IntersectionType type~%bool is_traffic_light_exist~%bool has_traffic_light_detail~%landmark_msgs/Direction direction~%landmark_msgs/TrafficLightGroup[] light_groups~%landmark_msgs/TrackId linked_intersection~%lane_navi_info_msgs/ExperienceTrajectory[] experience_trajectories~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/IntersectionType~%uint8 UNKNOWN = 0~%uint8 HIGHWAY_SPLIT = 1~%uint8 URBAN_NORMAL = 2~%uint8 NORMAL_SPLIT_MERGE = 3~%uint8 T_JUNCTION = 4~%uint8 Y_JUNCTION = 5~%uint8 ROUNDABOUT = 6~%uint8 OVERPASS = 7~%uint8 OTHERS = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/ExperienceTrajectory~%lane_navi_info_msgs/Polyline polyline~%landmark_msgs/TrackId[] related_lane_id~%lane_navi_info_msgs/Lane_Cursor start_lane~%lane_navi_info_msgs/Lane_Cursor end_lane~%~%================================================================================~%MSG: lane_navi_info_msgs/Polyline~%lane_navi_info_msgs/Point[] points~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/Lane_Cursor~%landmark_msgs/TrackId lane_id~%float32 offset~%~%================================================================================~%MSG: lane_navi_info_msgs/RampManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%landmark_msgs/DirectionInfo ramp_in_direction_info~%landmark_msgs/DirectionInfo ramp_out_direction_info~%float64 ramp_in_angle~%float64 ramp_out_angle~%~%================================================================================~%MSG: landmark_msgs/DirectionInfo~%int16 road_index~%int16 road_sum~%~%================================================================================~%MSG: lane_navi_info_msgs/RoadSplittingMergingManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%landmark_msgs/DirectionInfo direction_info~%float64[] angles~%~%================================================================================~%MSG: lane_navi_info_msgs/LaneSplittingMergingManeuver~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%bool is_continue~%bool is_none_continue~%landmark_msgs/Orientation direction~%landmark_msgs/TrackId[] linked_lane_ids~%~%================================================================================~%MSG: landmark_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/DestinationManeuver~%uint8 MANEUVER_VALID = 1~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%~%================================================================================~%MSG: lane_navi_info_msgs/CommonManeuver~%uint8 MANEUVER_VALID = 1~%uint8 VALUE_VALID = 2~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%float32 value~%lane_navi_info_msgs/ConditionType condition~%~%================================================================================~%MSG: lane_navi_info_msgs/ConditionType~%uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticManeuvers>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intersection_maneuvers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ramp_maneuvers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_splitting_merging_maneuver) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_splitting_merging_maneuver) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'destination_maneuver) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'common_maneuver) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticManeuvers>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticManeuvers
    (cl:cons ':valid (valid msg))
    (cl:cons ':intersection_maneuvers (intersection_maneuvers msg))
    (cl:cons ':ramp_maneuvers (ramp_maneuvers msg))
    (cl:cons ':road_splitting_merging_maneuver (road_splitting_merging_maneuver msg))
    (cl:cons ':lane_splitting_merging_maneuver (lane_splitting_merging_maneuver msg))
    (cl:cons ':destination_maneuver (destination_maneuver msg))
    (cl:cons ':common_maneuver (common_maneuver msg))
))
