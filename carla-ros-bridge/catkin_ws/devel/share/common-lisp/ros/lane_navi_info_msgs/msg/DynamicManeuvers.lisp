; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude DynamicManeuvers.msg.html

(cl:defclass <DynamicManeuvers> (roslisp-msg-protocol:ros-message)
  ((valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (common_maneuver
    :reader common_maneuver
    :initarg :common_maneuver
    :type (cl:vector lane_navi_info_msgs-msg:CommonManeuver)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:CommonManeuver :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:CommonManeuver))))
)

(cl:defclass DynamicManeuvers (<DynamicManeuvers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicManeuvers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicManeuvers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<DynamicManeuvers> is deprecated: use lane_navi_info_msgs-msg:DynamicManeuvers instead.")))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <DynamicManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:valid-val is deprecated.  Use lane_navi_info_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'common_maneuver-val :lambda-list '(m))
(cl:defmethod common_maneuver-val ((m <DynamicManeuvers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:common_maneuver-val is deprecated.  Use lane_navi_info_msgs-msg:common_maneuver instead.")
  (common_maneuver m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicManeuvers>) ostream)
  "Serializes a message object of type '<DynamicManeuvers>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'common_maneuver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'common_maneuver))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicManeuvers>) istream)
  "Deserializes a message object of type '<DynamicManeuvers>"
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicManeuvers>)))
  "Returns string type for a message object of type '<DynamicManeuvers>"
  "lane_navi_info_msgs/DynamicManeuvers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicManeuvers)))
  "Returns string type for a message object of type 'DynamicManeuvers"
  "lane_navi_info_msgs/DynamicManeuvers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicManeuvers>)))
  "Returns md5sum for a message object of type '<DynamicManeuvers>"
  "614c4ea66016ec51484f5c5724c9f6d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicManeuvers)))
  "Returns md5sum for a message object of type 'DynamicManeuvers"
  "614c4ea66016ec51484f5c5724c9f6d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicManeuvers>)))
  "Returns full string definition for message of type '<DynamicManeuvers>"
  (cl:format cl:nil "bool valid~%lane_navi_info_msgs/CommonManeuver[] common_maneuver~%~%================================================================================~%MSG: lane_navi_info_msgs/CommonManeuver~%uint8 MANEUVER_VALID = 1~%uint8 VALUE_VALID = 2~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%float32 value~%lane_navi_info_msgs/ConditionType condition~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/ConditionType~%uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicManeuvers)))
  "Returns full string definition for message of type 'DynamicManeuvers"
  (cl:format cl:nil "bool valid~%lane_navi_info_msgs/CommonManeuver[] common_maneuver~%~%================================================================================~%MSG: lane_navi_info_msgs/CommonManeuver~%uint8 MANEUVER_VALID = 1~%uint8 VALUE_VALID = 2~%uint8 available~%lane_navi_info_msgs/StaticManeuverBase maneuver_base~%float32 value~%lane_navi_info_msgs/ConditionType condition~%~%================================================================================~%MSG: lane_navi_info_msgs/StaticManeuverBase~%landmark_msgs/ManeuverType type~%lane_navi_info_msgs/Cursor start_cursor~%lane_navi_info_msgs/Cursor end_cursor~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/ConditionType~%uint8 ALWAYS_VALID = 0~%uint8 SIGN_IS_NOT_VALID_AT_ALL = 5~%uint8 VALID_ONLY_IF_SNOW = 6~%uint8 VALID_ONLY_IF_FOG = 7~%uint8 VALID_ONLY_IF_RAIN = 8~%uint8 VALID_ONLY_BY_DAY = 9~%uint8 VALID_ONLY_BY_NIGHT = 10~%uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicManeuvers>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'common_maneuver) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicManeuvers>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicManeuvers
    (cl:cons ':valid (valid msg))
    (cl:cons ':common_maneuver (common_maneuver msg))
))
