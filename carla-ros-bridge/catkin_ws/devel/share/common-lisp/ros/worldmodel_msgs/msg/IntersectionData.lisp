; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude IntersectionData.msg.html

(cl:defclass <IntersectionData> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type worldmodel_msgs-msg:Direction
    :initform (cl:make-instance 'worldmodel_msgs-msg:Direction))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (traffic_light_groups
    :reader traffic_light_groups
    :initarg :traffic_light_groups
    :type (cl:vector worldmodel_msgs-msg:MapTrafficLightGroup)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:MapTrafficLightGroup :initial-element (cl:make-instance 'worldmodel_msgs-msg:MapTrafficLightGroup)))
   (left_waiting_area
    :reader left_waiting_area
    :initarg :left_waiting_area
    :type worldmodel_msgs-msg:LeftWaitingArea
    :initform (cl:make-instance 'worldmodel_msgs-msg:LeftWaitingArea))
   (distance_to_stop_line
    :reader distance_to_stop_line
    :initarg :distance_to_stop_line
    :type worldmodel_msgs-msg:StopLine
    :initform (cl:make-instance 'worldmodel_msgs-msg:StopLine))
   (lanes_out
    :reader lanes_out
    :initarg :lanes_out
    :type (cl:vector worldmodel_msgs-msg:LaneData)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LaneData :initial-element (cl:make-instance 'worldmodel_msgs-msg:LaneData))))
)

(cl:defclass IntersectionData (<IntersectionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<IntersectionData> is deprecated: use worldmodel_msgs-msg:IntersectionData instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <IntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:direction-val is deprecated.  Use worldmodel_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <IntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:length-val is deprecated.  Use worldmodel_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'traffic_light_groups-val :lambda-list '(m))
(cl:defmethod traffic_light_groups-val ((m <IntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:traffic_light_groups-val is deprecated.  Use worldmodel_msgs-msg:traffic_light_groups instead.")
  (traffic_light_groups m))

(cl:ensure-generic-function 'left_waiting_area-val :lambda-list '(m))
(cl:defmethod left_waiting_area-val ((m <IntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:left_waiting_area-val is deprecated.  Use worldmodel_msgs-msg:left_waiting_area instead.")
  (left_waiting_area m))

(cl:ensure-generic-function 'distance_to_stop_line-val :lambda-list '(m))
(cl:defmethod distance_to_stop_line-val ((m <IntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_stop_line-val is deprecated.  Use worldmodel_msgs-msg:distance_to_stop_line instead.")
  (distance_to_stop_line m))

(cl:ensure-generic-function 'lanes_out-val :lambda-list '(m))
(cl:defmethod lanes_out-val ((m <IntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lanes_out-val is deprecated.  Use worldmodel_msgs-msg:lanes_out instead.")
  (lanes_out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionData>) ostream)
  "Serializes a message object of type '<IntersectionData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_groups))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_waiting_area) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distance_to_stop_line) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes_out))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionData>) istream)
  "Deserializes a message object of type '<IntersectionData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:MapTrafficLightGroup))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_waiting_area) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distance_to_stop_line) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes_out) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes_out)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LaneData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionData>)))
  "Returns string type for a message object of type '<IntersectionData>"
  "worldmodel_msgs/IntersectionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionData)))
  "Returns string type for a message object of type 'IntersectionData"
  "worldmodel_msgs/IntersectionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionData>)))
  "Returns md5sum for a message object of type '<IntersectionData>"
  "291e7b30c09610719ec5d17d51d893c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionData)))
  "Returns md5sum for a message object of type 'IntersectionData"
  "291e7b30c09610719ec5d17d51d893c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionData>)))
  "Returns full string definition for message of type '<IntersectionData>"
  (cl:format cl:nil "worldmodel_msgs/Direction direction~%float64 length~%worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups~%worldmodel_msgs/LeftWaitingArea left_waiting_area~%worldmodel_msgs/StopLine distance_to_stop_line~%worldmodel_msgs/LaneData[] lanes_out~%~%================================================================================~%MSG: worldmodel_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLightGroup~%uint64 track_id~%worldmodel_msgs/MapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LeftWaitingArea~%bool existence~%float64 length~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/StopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: worldmodel_msgs/LaneData~%int32 relative_id~%int32 track_id~%worldmodel_msgs/Direction lane_marks~%worldmodel_msgs/LaneType lane_type~%worldmodel_msgs/LaneBoundary left_lane_boundary~%worldmodel_msgs/LaneBoundary right_lane_boundary~%worldmodel_msgs/RoadEdge left_road_edge~%worldmodel_msgs/RoadEdge right_road_edge~%worldmodel_msgs/ReferenceLine reference_line~%float64 entrance_width~%worldmodel_msgs/RoadPriority road_priority~%worldmodel_msgs/MergePoint merge_point~%worldmodel_msgs/MergePoint y_point~%int8 bias~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundary~%bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/RoadEdge~%bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLine~%bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriority~%worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MergePoint~%float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionData)))
  "Returns full string definition for message of type 'IntersectionData"
  (cl:format cl:nil "worldmodel_msgs/Direction direction~%float64 length~%worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups~%worldmodel_msgs/LeftWaitingArea left_waiting_area~%worldmodel_msgs/StopLine distance_to_stop_line~%worldmodel_msgs/LaneData[] lanes_out~%~%================================================================================~%MSG: worldmodel_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLightGroup~%uint64 track_id~%worldmodel_msgs/MapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LeftWaitingArea~%bool existence~%float64 length~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/StopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: worldmodel_msgs/LaneData~%int32 relative_id~%int32 track_id~%worldmodel_msgs/Direction lane_marks~%worldmodel_msgs/LaneType lane_type~%worldmodel_msgs/LaneBoundary left_lane_boundary~%worldmodel_msgs/LaneBoundary right_lane_boundary~%worldmodel_msgs/RoadEdge left_road_edge~%worldmodel_msgs/RoadEdge right_road_edge~%worldmodel_msgs/ReferenceLine reference_line~%float64 entrance_width~%worldmodel_msgs/RoadPriority road_priority~%worldmodel_msgs/MergePoint merge_point~%worldmodel_msgs/MergePoint y_point~%int8 bias~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundary~%bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/RoadEdge~%bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLine~%bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriority~%worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MergePoint~%float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_waiting_area))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distance_to_stop_line))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes_out) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionData>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionData
    (cl:cons ':direction (direction msg))
    (cl:cons ':length (length msg))
    (cl:cons ':traffic_light_groups (traffic_light_groups msg))
    (cl:cons ':left_waiting_area (left_waiting_area msg))
    (cl:cons ':distance_to_stop_line (distance_to_stop_line msg))
    (cl:cons ':lanes_out (lanes_out msg))
))
