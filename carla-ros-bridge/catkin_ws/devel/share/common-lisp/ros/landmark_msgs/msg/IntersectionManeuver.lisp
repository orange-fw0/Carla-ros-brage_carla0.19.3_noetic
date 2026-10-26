; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude IntersectionManeuver.msg.html

(cl:defclass <IntersectionManeuver> (roslisp-msg-protocol:ros-message)
  ((maneuver_base
    :reader maneuver_base
    :initarg :maneuver_base
    :type landmark_msgs-msg:ManeuverBase
    :initform (cl:make-instance 'landmark_msgs-msg:ManeuverBase))
   (is_traffic_light_exist
    :reader is_traffic_light_exist
    :initarg :is_traffic_light_exist
    :type cl:boolean
    :initform cl:nil)
   (has_traffic_light_detail
    :reader has_traffic_light_detail
    :initarg :has_traffic_light_detail
    :type cl:boolean
    :initform cl:nil)
   (direction
    :reader direction
    :initarg :direction
    :type landmark_msgs-msg:Direction
    :initform (cl:make-instance 'landmark_msgs-msg:Direction))
   (distance_to_turn_left_waiting_area
    :reader distance_to_turn_left_waiting_area
    :initarg :distance_to_turn_left_waiting_area
    :type cl:float
    :initform 0.0)
   (light_groups
    :reader light_groups
    :initarg :light_groups
    :type (cl:vector landmark_msgs-msg:TrafficLightGroup)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLightGroup :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLightGroup))))
)

(cl:defclass IntersectionManeuver (<IntersectionManeuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionManeuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionManeuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<IntersectionManeuver> is deprecated: use landmark_msgs-msg:IntersectionManeuver instead.")))

(cl:ensure-generic-function 'maneuver_base-val :lambda-list '(m))
(cl:defmethod maneuver_base-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:maneuver_base-val is deprecated.  Use landmark_msgs-msg:maneuver_base instead.")
  (maneuver_base m))

(cl:ensure-generic-function 'is_traffic_light_exist-val :lambda-list '(m))
(cl:defmethod is_traffic_light_exist-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_traffic_light_exist-val is deprecated.  Use landmark_msgs-msg:is_traffic_light_exist instead.")
  (is_traffic_light_exist m))

(cl:ensure-generic-function 'has_traffic_light_detail-val :lambda-list '(m))
(cl:defmethod has_traffic_light_detail-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:has_traffic_light_detail-val is deprecated.  Use landmark_msgs-msg:has_traffic_light_detail instead.")
  (has_traffic_light_detail m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:direction-val is deprecated.  Use landmark_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'distance_to_turn_left_waiting_area-val :lambda-list '(m))
(cl:defmethod distance_to_turn_left_waiting_area-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:distance_to_turn_left_waiting_area-val is deprecated.  Use landmark_msgs-msg:distance_to_turn_left_waiting_area instead.")
  (distance_to_turn_left_waiting_area m))

(cl:ensure-generic-function 'light_groups-val :lambda-list '(m))
(cl:defmethod light_groups-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:light_groups-val is deprecated.  Use landmark_msgs-msg:light_groups instead.")
  (light_groups m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionManeuver>) ostream)
  "Serializes a message object of type '<IntersectionManeuver>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maneuver_base) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_traffic_light_exist) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_traffic_light_detail) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_turn_left_waiting_area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'light_groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'light_groups))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionManeuver>) istream)
  "Deserializes a message object of type '<IntersectionManeuver>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maneuver_base) istream)
    (cl:setf (cl:slot-value msg 'is_traffic_light_exist) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'has_traffic_light_detail) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_turn_left_waiting_area) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'light_groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'light_groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLightGroup))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionManeuver>)))
  "Returns string type for a message object of type '<IntersectionManeuver>"
  "landmark_msgs/IntersectionManeuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionManeuver)))
  "Returns string type for a message object of type 'IntersectionManeuver"
  "landmark_msgs/IntersectionManeuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionManeuver>)))
  "Returns md5sum for a message object of type '<IntersectionManeuver>"
  "1bdc11f5c7467d6312a88ae26506d35e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionManeuver)))
  "Returns md5sum for a message object of type 'IntersectionManeuver"
  "1bdc11f5c7467d6312a88ae26506d35e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionManeuver>)))
  "Returns full string definition for message of type '<IntersectionManeuver>"
  (cl:format cl:nil "landmark_msgs/ManeuverBase maneuver_base~%bool is_traffic_light_exist~%bool has_traffic_light_detail~%landmark_msgs/Direction direction~%float32 distance_to_turn_left_waiting_area~%landmark_msgs/TrafficLightGroup[] light_groups~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionManeuver)))
  "Returns full string definition for message of type 'IntersectionManeuver"
  (cl:format cl:nil "landmark_msgs/ManeuverBase maneuver_base~%bool is_traffic_light_exist~%bool has_traffic_light_detail~%landmark_msgs/Direction direction~%float32 distance_to_turn_left_waiting_area~%landmark_msgs/TrafficLightGroup[] light_groups~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionManeuver>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maneuver_base))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'light_groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionManeuver>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionManeuver
    (cl:cons ':maneuver_base (maneuver_base msg))
    (cl:cons ':is_traffic_light_exist (is_traffic_light_exist msg))
    (cl:cons ':has_traffic_light_detail (has_traffic_light_detail msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':distance_to_turn_left_waiting_area (distance_to_turn_left_waiting_area msg))
    (cl:cons ':light_groups (light_groups msg))
))
