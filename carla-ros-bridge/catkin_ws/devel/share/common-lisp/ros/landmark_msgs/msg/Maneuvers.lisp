; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude Maneuvers.msg.html

(cl:defclass <Maneuvers> (roslisp-msg-protocol:ros-message)
  ((intersection_maneuvers
    :reader intersection_maneuvers
    :initarg :intersection_maneuvers
    :type (cl:vector landmark_msgs-msg:IntersectionManeuver)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:IntersectionManeuver :initial-element (cl:make-instance 'landmark_msgs-msg:IntersectionManeuver)))
   (ramp_maneuvers
    :reader ramp_maneuvers
    :initarg :ramp_maneuvers
    :type (cl:vector landmark_msgs-msg:RampManeuver)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:RampManeuver :initial-element (cl:make-instance 'landmark_msgs-msg:RampManeuver)))
   (road_splitting_merging_maneuver
    :reader road_splitting_merging_maneuver
    :initarg :road_splitting_merging_maneuver
    :type (cl:vector landmark_msgs-msg:RoadSplittingMergingManeuver)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:RoadSplittingMergingManeuver :initial-element (cl:make-instance 'landmark_msgs-msg:RoadSplittingMergingManeuver)))
   (destination_maneuver
    :reader destination_maneuver
    :initarg :destination_maneuver
    :type (cl:vector landmark_msgs-msg:DestinationManeuver)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:DestinationManeuver :initial-element (cl:make-instance 'landmark_msgs-msg:DestinationManeuver))))
)

(cl:defclass Maneuvers (<Maneuvers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Maneuvers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Maneuvers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<Maneuvers> is deprecated: use landmark_msgs-msg:Maneuvers instead.")))

(cl:ensure-generic-function 'intersection_maneuvers-val :lambda-list '(m))
(cl:defmethod intersection_maneuvers-val ((m <Maneuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:intersection_maneuvers-val is deprecated.  Use landmark_msgs-msg:intersection_maneuvers instead.")
  (intersection_maneuvers m))

(cl:ensure-generic-function 'ramp_maneuvers-val :lambda-list '(m))
(cl:defmethod ramp_maneuvers-val ((m <Maneuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:ramp_maneuvers-val is deprecated.  Use landmark_msgs-msg:ramp_maneuvers instead.")
  (ramp_maneuvers m))

(cl:ensure-generic-function 'road_splitting_merging_maneuver-val :lambda-list '(m))
(cl:defmethod road_splitting_merging_maneuver-val ((m <Maneuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:road_splitting_merging_maneuver-val is deprecated.  Use landmark_msgs-msg:road_splitting_merging_maneuver instead.")
  (road_splitting_merging_maneuver m))

(cl:ensure-generic-function 'destination_maneuver-val :lambda-list '(m))
(cl:defmethod destination_maneuver-val ((m <Maneuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:destination_maneuver-val is deprecated.  Use landmark_msgs-msg:destination_maneuver instead.")
  (destination_maneuver m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Maneuvers>) ostream)
  "Serializes a message object of type '<Maneuvers>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'destination_maneuver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'destination_maneuver))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Maneuvers>) istream)
  "Deserializes a message object of type '<Maneuvers>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intersection_maneuvers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intersection_maneuvers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:IntersectionManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ramp_maneuvers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ramp_maneuvers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:RampManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road_splitting_merging_maneuver) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road_splitting_merging_maneuver)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:RoadSplittingMergingManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'destination_maneuver) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'destination_maneuver)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:DestinationManeuver))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Maneuvers>)))
  "Returns string type for a message object of type '<Maneuvers>"
  "landmark_msgs/Maneuvers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Maneuvers)))
  "Returns string type for a message object of type 'Maneuvers"
  "landmark_msgs/Maneuvers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Maneuvers>)))
  "Returns md5sum for a message object of type '<Maneuvers>"
  "6c962fde63023db8d976235574c11135")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Maneuvers)))
  "Returns md5sum for a message object of type 'Maneuvers"
  "6c962fde63023db8d976235574c11135")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Maneuvers>)))
  "Returns full string definition for message of type '<Maneuvers>"
  (cl:format cl:nil "landmark_msgs/IntersectionManeuver[] intersection_maneuvers~%landmark_msgs/RampManeuver[] ramp_maneuvers~%landmark_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver~%landmark_msgs/DestinationManeuver[] destination_maneuver~%~%================================================================================~%MSG: landmark_msgs/IntersectionManeuver~%landmark_msgs/ManeuverBase maneuver_base~%bool is_traffic_light_exist~%bool has_traffic_light_detail~%landmark_msgs/Direction direction~%float32 distance_to_turn_left_waiting_area~%landmark_msgs/TrafficLightGroup[] light_groups~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RampManeuver~%landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DirectionInfo ramp_in_direction_info~%landmark_msgs/DirectionInfo ramp_out_direction_info~%float64 ramp_in_angle~%float64 ramp_out_angle~%~%================================================================================~%MSG: landmark_msgs/DirectionInfo~%int16 road_index~%int16 road_sum~%~%================================================================================~%MSG: landmark_msgs/RoadSplittingMergingManeuver~%landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DirectionInfo direction_info~%float64[] angles~%~%================================================================================~%MSG: landmark_msgs/DestinationManeuver~%landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DestinationParkingInfo parking_info~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingInfo~%uint8 PARKING_TYPE_VALID = 1~%uint8 ID_VALID = 2~%uint8 available~%landmark_msgs/DestinationParkingType parking_type~%landmark_msgs/TrackId id~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingType~%uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Maneuvers)))
  "Returns full string definition for message of type 'Maneuvers"
  (cl:format cl:nil "landmark_msgs/IntersectionManeuver[] intersection_maneuvers~%landmark_msgs/RampManeuver[] ramp_maneuvers~%landmark_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver~%landmark_msgs/DestinationManeuver[] destination_maneuver~%~%================================================================================~%MSG: landmark_msgs/IntersectionManeuver~%landmark_msgs/ManeuverBase maneuver_base~%bool is_traffic_light_exist~%bool has_traffic_light_detail~%landmark_msgs/Direction direction~%float32 distance_to_turn_left_waiting_area~%landmark_msgs/TrafficLightGroup[] light_groups~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RampManeuver~%landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DirectionInfo ramp_in_direction_info~%landmark_msgs/DirectionInfo ramp_out_direction_info~%float64 ramp_in_angle~%float64 ramp_out_angle~%~%================================================================================~%MSG: landmark_msgs/DirectionInfo~%int16 road_index~%int16 road_sum~%~%================================================================================~%MSG: landmark_msgs/RoadSplittingMergingManeuver~%landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DirectionInfo direction_info~%float64[] angles~%~%================================================================================~%MSG: landmark_msgs/DestinationManeuver~%landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DestinationParkingInfo parking_info~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingInfo~%uint8 PARKING_TYPE_VALID = 1~%uint8 ID_VALID = 2~%uint8 available~%landmark_msgs/DestinationParkingType parking_type~%landmark_msgs/TrackId id~%~%================================================================================~%MSG: landmark_msgs/DestinationParkingType~%uint8 UNKNOWN = 0~%uint8 NORMAL_DESTINATION = 1~%uint8 PARKING_SPACE = 2~%uint8 PARKING_AOI = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Maneuvers>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intersection_maneuvers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ramp_maneuvers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road_splitting_merging_maneuver) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'destination_maneuver) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Maneuvers>))
  "Converts a ROS message object to a list"
  (cl:list 'Maneuvers
    (cl:cons ':intersection_maneuvers (intersection_maneuvers msg))
    (cl:cons ':ramp_maneuvers (ramp_maneuvers msg))
    (cl:cons ':road_splitting_merging_maneuver (road_splitting_merging_maneuver msg))
    (cl:cons ':destination_maneuver (destination_maneuver msg))
))
