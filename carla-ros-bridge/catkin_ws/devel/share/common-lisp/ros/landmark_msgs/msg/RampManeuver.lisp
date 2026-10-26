; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RampManeuver.msg.html

(cl:defclass <RampManeuver> (roslisp-msg-protocol:ros-message)
  ((maneuver_base
    :reader maneuver_base
    :initarg :maneuver_base
    :type landmark_msgs-msg:ManeuverBase
    :initform (cl:make-instance 'landmark_msgs-msg:ManeuverBase))
   (ramp_in_direction_info
    :reader ramp_in_direction_info
    :initarg :ramp_in_direction_info
    :type landmark_msgs-msg:DirectionInfo
    :initform (cl:make-instance 'landmark_msgs-msg:DirectionInfo))
   (ramp_out_direction_info
    :reader ramp_out_direction_info
    :initarg :ramp_out_direction_info
    :type landmark_msgs-msg:DirectionInfo
    :initform (cl:make-instance 'landmark_msgs-msg:DirectionInfo))
   (ramp_in_angle
    :reader ramp_in_angle
    :initarg :ramp_in_angle
    :type cl:float
    :initform 0.0)
   (ramp_out_angle
    :reader ramp_out_angle
    :initarg :ramp_out_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass RampManeuver (<RampManeuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RampManeuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RampManeuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RampManeuver> is deprecated: use landmark_msgs-msg:RampManeuver instead.")))

(cl:ensure-generic-function 'maneuver_base-val :lambda-list '(m))
(cl:defmethod maneuver_base-val ((m <RampManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:maneuver_base-val is deprecated.  Use landmark_msgs-msg:maneuver_base instead.")
  (maneuver_base m))

(cl:ensure-generic-function 'ramp_in_direction_info-val :lambda-list '(m))
(cl:defmethod ramp_in_direction_info-val ((m <RampManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:ramp_in_direction_info-val is deprecated.  Use landmark_msgs-msg:ramp_in_direction_info instead.")
  (ramp_in_direction_info m))

(cl:ensure-generic-function 'ramp_out_direction_info-val :lambda-list '(m))
(cl:defmethod ramp_out_direction_info-val ((m <RampManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:ramp_out_direction_info-val is deprecated.  Use landmark_msgs-msg:ramp_out_direction_info instead.")
  (ramp_out_direction_info m))

(cl:ensure-generic-function 'ramp_in_angle-val :lambda-list '(m))
(cl:defmethod ramp_in_angle-val ((m <RampManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:ramp_in_angle-val is deprecated.  Use landmark_msgs-msg:ramp_in_angle instead.")
  (ramp_in_angle m))

(cl:ensure-generic-function 'ramp_out_angle-val :lambda-list '(m))
(cl:defmethod ramp_out_angle-val ((m <RampManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:ramp_out_angle-val is deprecated.  Use landmark_msgs-msg:ramp_out_angle instead.")
  (ramp_out_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RampManeuver>) ostream)
  "Serializes a message object of type '<RampManeuver>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'maneuver_base) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ramp_in_direction_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ramp_out_direction_info) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ramp_in_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ramp_out_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RampManeuver>) istream)
  "Deserializes a message object of type '<RampManeuver>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'maneuver_base) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ramp_in_direction_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ramp_out_direction_info) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ramp_in_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ramp_out_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RampManeuver>)))
  "Returns string type for a message object of type '<RampManeuver>"
  "landmark_msgs/RampManeuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RampManeuver)))
  "Returns string type for a message object of type 'RampManeuver"
  "landmark_msgs/RampManeuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RampManeuver>)))
  "Returns md5sum for a message object of type '<RampManeuver>"
  "80e38a498eab63d154c10822f60038ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RampManeuver)))
  "Returns md5sum for a message object of type 'RampManeuver"
  "80e38a498eab63d154c10822f60038ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RampManeuver>)))
  "Returns full string definition for message of type '<RampManeuver>"
  (cl:format cl:nil "landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DirectionInfo ramp_in_direction_info~%landmark_msgs/DirectionInfo ramp_out_direction_info~%float64 ramp_in_angle~%float64 ramp_out_angle~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/DirectionInfo~%int16 road_index~%int16 road_sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RampManeuver)))
  "Returns full string definition for message of type 'RampManeuver"
  (cl:format cl:nil "landmark_msgs/ManeuverBase maneuver_base~%landmark_msgs/DirectionInfo ramp_in_direction_info~%landmark_msgs/DirectionInfo ramp_out_direction_info~%float64 ramp_in_angle~%float64 ramp_out_angle~%~%================================================================================~%MSG: landmark_msgs/ManeuverBase~%landmark_msgs/ManeuverType type~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: landmark_msgs/ManeuverType~%uint16 UNKNOWN = 0~%uint16 MANEUVER_INTERSECTION = 1~%uint16 MANEUVER_LANE_MERGING = 2~%uint16 MANEUVER_LANE_SPLITTING = 3~%uint16 MANEUVER_ROAD_MERGING = 4~%uint16 MANEUVER_ROAD_SPLITTING = 5~%uint16 MANEUVER_RAMP = 6~%uint16 DESTINATION = 7~%uint16 PEDESTRIAN_CROSSING = 8~%uint16 SCHOOL_ZONE = 9~%uint16 RAILROAD_CROSSING = 10~%uint16 DANGER_AHEAD = 11~%uint16 NO_OVERTAKING = 12~%uint16 SPEED_LIMIT = 13~%uint16 SPEED_LIMIT_ENDS = 14~%uint16 DETOUR_RIGHT = 15~%uint16 DETOUR_BOTH_SIDES = 16~%uint16 DETOUR_LEFT = 17~%uint16 MERGE_RIGHT = 18~%uint16 MERGE_LEFT = 19~%uint16 TRAFFIC_LIGHT = 20~%uint16 EMERGENCY_LANE = 21~%uint16 NON_MOTORIZED_VEHICLE_LANE = 22~%uint16 SECTIONAL_SPEED_MEASUREMENT = 23~%uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24~%uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25~%uint16 TOLL = 26~%uint16 CONDITIONAL_SPEED_LIMIT = 27~%uint16 ADVISORY_SPEED_LIMIT = 28~%uint16 ROAD_CONSTRUCTION = 29~%uint16 TRAFFIC_CONTROL = 30~%uint16 ROAD_CLOSED = 31~%uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32~%uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33~%uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34~%uint16 ROAD_END = 35~%uint16 UNKNOWN_TRAFFIC_FLOW = 36~%uint16 SMOOTH_TRAFFIC = 37~%uint16 SLOW_MOVING = 38~%uint16 CONGESTED = 39~%uint16 SEVERELY_CONGESTED = 40~%uint16 NO_TRAFFIC_FLOW = 41~%uint16 VISIBILITY = 42~%uint16 value~%~%================================================================================~%MSG: landmark_msgs/DirectionInfo~%int16 road_index~%int16 road_sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RampManeuver>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'maneuver_base))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ramp_in_direction_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ramp_out_direction_info))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RampManeuver>))
  "Converts a ROS message object to a list"
  (cl:list 'RampManeuver
    (cl:cons ':maneuver_base (maneuver_base msg))
    (cl:cons ':ramp_in_direction_info (ramp_in_direction_info msg))
    (cl:cons ':ramp_out_direction_info (ramp_out_direction_info msg))
    (cl:cons ':ramp_in_angle (ramp_in_angle msg))
    (cl:cons ':ramp_out_angle (ramp_out_angle msg))
))
