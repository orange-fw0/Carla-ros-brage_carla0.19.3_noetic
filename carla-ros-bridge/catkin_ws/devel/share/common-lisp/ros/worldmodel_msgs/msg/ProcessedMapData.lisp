; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ProcessedMapData.msg.html

(cl:defclass <ProcessedMapData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (target_position
    :reader target_position
    :initarg :target_position
    :type worldmodel_msgs-msg:TargetPosition
    :initform (cl:make-instance 'worldmodel_msgs-msg:TargetPosition))
   (self_position
    :reader self_position
    :initarg :self_position
    :type worldmodel_msgs-msg:SelfPositionData
    :initform (cl:make-instance 'worldmodel_msgs-msg:SelfPositionData))
   (way_point_position
    :reader way_point_position
    :initarg :way_point_position
    :type worldmodel_msgs-msg:WayPointData
    :initform (cl:make-instance 'worldmodel_msgs-msg:WayPointData))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector worldmodel_msgs-msg:LaneData)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LaneData :initial-element (cl:make-instance 'worldmodel_msgs-msg:LaneData)))
   (map_poi_info
    :reader map_poi_info
    :initarg :map_poi_info
    :type (cl:vector worldmodel_msgs-msg:MapPOIInfoData)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:MapPOIInfoData :initial-element (cl:make-instance 'worldmodel_msgs-msg:MapPOIInfoData)))
   (intersections
    :reader intersections
    :initarg :intersections
    :type (cl:vector worldmodel_msgs-msg:IntersectionData)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:IntersectionData :initial-element (cl:make-instance 'worldmodel_msgs-msg:IntersectionData)))
   (lane_merging_splitting_points
    :reader lane_merging_splitting_points
    :initarg :lane_merging_splitting_points
    :type (cl:vector worldmodel_msgs-msg:LaneMergingSplittingPointData)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:LaneMergingSplittingPointData :initial-element (cl:make-instance 'worldmodel_msgs-msg:LaneMergingSplittingPointData)))
   (lane_strategy
    :reader lane_strategy
    :initarg :lane_strategy
    :type worldmodel_msgs-msg:LaneStrategyData
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneStrategyData))
   (extra_info
    :reader extra_info
    :initarg :extra_info
    :type worldmodel_msgs-msg:ExtraInfo
    :initform (cl:make-instance 'worldmodel_msgs-msg:ExtraInfo)))
)

(cl:defclass ProcessedMapData (<ProcessedMapData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessedMapData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessedMapData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ProcessedMapData> is deprecated: use worldmodel_msgs-msg:ProcessedMapData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'target_position-val :lambda-list '(m))
(cl:defmethod target_position-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:target_position-val is deprecated.  Use worldmodel_msgs-msg:target_position instead.")
  (target_position m))

(cl:ensure-generic-function 'self_position-val :lambda-list '(m))
(cl:defmethod self_position-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:self_position-val is deprecated.  Use worldmodel_msgs-msg:self_position instead.")
  (self_position m))

(cl:ensure-generic-function 'way_point_position-val :lambda-list '(m))
(cl:defmethod way_point_position-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:way_point_position-val is deprecated.  Use worldmodel_msgs-msg:way_point_position instead.")
  (way_point_position m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lanes-val is deprecated.  Use worldmodel_msgs-msg:lanes instead.")
  (lanes m))

(cl:ensure-generic-function 'map_poi_info-val :lambda-list '(m))
(cl:defmethod map_poi_info-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:map_poi_info-val is deprecated.  Use worldmodel_msgs-msg:map_poi_info instead.")
  (map_poi_info m))

(cl:ensure-generic-function 'intersections-val :lambda-list '(m))
(cl:defmethod intersections-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:intersections-val is deprecated.  Use worldmodel_msgs-msg:intersections instead.")
  (intersections m))

(cl:ensure-generic-function 'lane_merging_splitting_points-val :lambda-list '(m))
(cl:defmethod lane_merging_splitting_points-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lane_merging_splitting_points-val is deprecated.  Use worldmodel_msgs-msg:lane_merging_splitting_points instead.")
  (lane_merging_splitting_points m))

(cl:ensure-generic-function 'lane_strategy-val :lambda-list '(m))
(cl:defmethod lane_strategy-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lane_strategy-val is deprecated.  Use worldmodel_msgs-msg:lane_strategy instead.")
  (lane_strategy m))

(cl:ensure-generic-function 'extra_info-val :lambda-list '(m))
(cl:defmethod extra_info-val ((m <ProcessedMapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:extra_info-val is deprecated.  Use worldmodel_msgs-msg:extra_info instead.")
  (extra_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProcessedMapData>)))
    "Constants for message type '<ProcessedMapData>"
  '((:TARGET_POTISION . 1)
    (:SELF_POSITION . 2)
    (:WAYPOINT_POSITION . 4)
    (:LANE . 8)
    (:MAP_POI_INFO . 16)
    (:INTERSECTION . 32)
    (:LANE_MERGING_SPLITTING_POINT . 64)
    (:LANE_STRATEGY . 128)
    (:EXTRA_INFO . 256))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProcessedMapData)))
    "Constants for message type 'ProcessedMapData"
  '((:TARGET_POTISION . 1)
    (:SELF_POSITION . 2)
    (:WAYPOINT_POSITION . 4)
    (:LANE . 8)
    (:MAP_POI_INFO . 16)
    (:INTERSECTION . 32)
    (:LANE_MERGING_SPLITTING_POINT . 64)
    (:LANE_STRATEGY . 128)
    (:EXTRA_INFO . 256))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessedMapData>) ostream)
  "Serializes a message object of type '<ProcessedMapData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'self_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'way_point_position) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_poi_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_poi_info))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intersections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'intersections))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_merging_splitting_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_merging_splitting_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_strategy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extra_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessedMapData>) istream)
  "Deserializes a message object of type '<ProcessedMapData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'self_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'way_point_position) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LaneData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_poi_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_poi_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:MapPOIInfoData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intersections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intersections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:IntersectionData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_merging_splitting_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_merging_splitting_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:LaneMergingSplittingPointData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_strategy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extra_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessedMapData>)))
  "Returns string type for a message object of type '<ProcessedMapData>"
  "worldmodel_msgs/ProcessedMapData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessedMapData)))
  "Returns string type for a message object of type 'ProcessedMapData"
  "worldmodel_msgs/ProcessedMapData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessedMapData>)))
  "Returns md5sum for a message object of type '<ProcessedMapData>"
  "b526aa746d7da49fb0fef6e7e17a6d7c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessedMapData)))
  "Returns md5sum for a message object of type 'ProcessedMapData"
  "b526aa746d7da49fb0fef6e7e17a6d7c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessedMapData>)))
  "Returns full string definition for message of type '<ProcessedMapData>"
  (cl:format cl:nil "uint16 TARGET_POTISION = 1~%uint16 SELF_POSITION = 2~%uint16 WAYPOINT_POSITION = 4~%uint16 LANE = 8~%uint16 MAP_POI_INFO = 16~%uint16 INTERSECTION = 32~%uint16 LANE_MERGING_SPLITTING_POINT = 64~%uint16 LANE_STRATEGY = 128~%uint16 EXTRA_INFO = 256~%uint16 available~%worldmodel_msgs/TargetPosition target_position~%worldmodel_msgs/SelfPositionData self_position~%worldmodel_msgs/WayPointData way_point_position~%worldmodel_msgs/LaneData[] lanes~%worldmodel_msgs/MapPOIInfoData[] map_poi_info~%worldmodel_msgs/IntersectionData[] intersections~%worldmodel_msgs/LaneMergingSplittingPointData[] lane_merging_splitting_points~%worldmodel_msgs/LaneStrategyData lane_strategy~%worldmodel_msgs/ExtraInfo extra_info~%~%================================================================================~%MSG: worldmodel_msgs/TargetPosition~%uint8 PARKING_TARGET_POSITION = 1~%uint8 available~%worldmodel_msgs/ParkingTargetPosition parking_target_position~%~%================================================================================~%MSG: worldmodel_msgs/ParkingTargetPosition~%uint64 TARGET_MAP_POI = 1~%uint64 TRAVERSED_PARKING_LOTS = 2~%uint64 PARKING_OUT_POSITION = 4~%uint64 available~%worldmodel_msgs/TargetMapPOI target_map_poi~%worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots~%worldmodel_msgs/ParkingOutPosition parking_out_position~%~%================================================================================~%MSG: worldmodel_msgs/TargetMapPOI~%uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/TraversedParkingLot~%uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: worldmodel_msgs/ParkingOutPosition~%uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%================================================================================~%MSG: worldmodel_msgs/SelfPositionData~%bool in_map_area~%bool in_intersection~%bool on_ramp~%int32 current_parking_slot_id~%~%================================================================================~%MSG: worldmodel_msgs/WayPointData~%worldmodel_msgs/WayPointType way_point_type~%float64 longtitude~%float64 latitude~%float64 altitude~%~%================================================================================~%MSG: worldmodel_msgs/WayPointType~%uint8 NORMAL_WAYPOINT = 1~%uint8 INTERSECTION_WAYPOINT = 2~%uint8 RAMP_WAYPOINT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneData~%int32 relative_id~%int32 track_id~%worldmodel_msgs/Direction lane_marks~%worldmodel_msgs/LaneType lane_type~%worldmodel_msgs/LaneBoundary left_lane_boundary~%worldmodel_msgs/LaneBoundary right_lane_boundary~%worldmodel_msgs/RoadEdge left_road_edge~%worldmodel_msgs/RoadEdge right_road_edge~%worldmodel_msgs/ReferenceLine reference_line~%float64 entrance_width~%worldmodel_msgs/RoadPriority road_priority~%worldmodel_msgs/MergePoint merge_point~%worldmodel_msgs/MergePoint y_point~%int8 bias~%~%================================================================================~%MSG: worldmodel_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundary~%bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: worldmodel_msgs/RoadEdge~%bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLine~%bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriority~%worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MergePoint~%float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIInfoData~%float64 distance~%float64 length~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Point3f[] key_points_enu~%~%================================================================================~%MSG: worldmodel_msgs/IntersectionData~%worldmodel_msgs/Direction direction~%float64 length~%worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups~%worldmodel_msgs/LeftWaitingArea left_waiting_area~%worldmodel_msgs/StopLine distance_to_stop_line~%worldmodel_msgs/LaneData[] lanes_out~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLightGroup~%uint64 track_id~%worldmodel_msgs/MapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LeftWaitingArea~%bool existence~%float64 length~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/StopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: worldmodel_msgs/LaneMergingSplittingPointData~%float64 distance~%bool is_split~%bool is_continue~%worldmodel_msgs/Orientation orientation~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 IGNORED = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneStrategyData~%worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane~%worldmodel_msgs/Interval[] current_lane_change_available_interval~%worldmodel_msgs/Interval[] left_lane_change_available_interval~%worldmodel_msgs/Interval[] right_lane_change_available_interval~%~%================================================================================~%MSG: worldmodel_msgs/LaneChangeState~%uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/ExtraInfo~%uint8 RAMP_MANEUVER = 1~%uint8 SCENE_TYPE = 2~%uint8 RESERVED_INFO = 4~%uint8 available~%worldmodel_msgs/RampManeuver ramp_maneuver~%string scene_type~%string reserved_info~%~%================================================================================~%MSG: worldmodel_msgs/RampManeuver~%float32 dis_to_ramp~%float32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessedMapData)))
  "Returns full string definition for message of type 'ProcessedMapData"
  (cl:format cl:nil "uint16 TARGET_POTISION = 1~%uint16 SELF_POSITION = 2~%uint16 WAYPOINT_POSITION = 4~%uint16 LANE = 8~%uint16 MAP_POI_INFO = 16~%uint16 INTERSECTION = 32~%uint16 LANE_MERGING_SPLITTING_POINT = 64~%uint16 LANE_STRATEGY = 128~%uint16 EXTRA_INFO = 256~%uint16 available~%worldmodel_msgs/TargetPosition target_position~%worldmodel_msgs/SelfPositionData self_position~%worldmodel_msgs/WayPointData way_point_position~%worldmodel_msgs/LaneData[] lanes~%worldmodel_msgs/MapPOIInfoData[] map_poi_info~%worldmodel_msgs/IntersectionData[] intersections~%worldmodel_msgs/LaneMergingSplittingPointData[] lane_merging_splitting_points~%worldmodel_msgs/LaneStrategyData lane_strategy~%worldmodel_msgs/ExtraInfo extra_info~%~%================================================================================~%MSG: worldmodel_msgs/TargetPosition~%uint8 PARKING_TARGET_POSITION = 1~%uint8 available~%worldmodel_msgs/ParkingTargetPosition parking_target_position~%~%================================================================================~%MSG: worldmodel_msgs/ParkingTargetPosition~%uint64 TARGET_MAP_POI = 1~%uint64 TRAVERSED_PARKING_LOTS = 2~%uint64 PARKING_OUT_POSITION = 4~%uint64 available~%worldmodel_msgs/TargetMapPOI target_map_poi~%worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots~%worldmodel_msgs/ParkingOutPosition parking_out_position~%~%================================================================================~%MSG: worldmodel_msgs/TargetMapPOI~%uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/TraversedParkingLot~%uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: worldmodel_msgs/ParkingOutPosition~%uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%================================================================================~%MSG: worldmodel_msgs/SelfPositionData~%bool in_map_area~%bool in_intersection~%bool on_ramp~%int32 current_parking_slot_id~%~%================================================================================~%MSG: worldmodel_msgs/WayPointData~%worldmodel_msgs/WayPointType way_point_type~%float64 longtitude~%float64 latitude~%float64 altitude~%~%================================================================================~%MSG: worldmodel_msgs/WayPointType~%uint8 NORMAL_WAYPOINT = 1~%uint8 INTERSECTION_WAYPOINT = 2~%uint8 RAMP_WAYPOINT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneData~%int32 relative_id~%int32 track_id~%worldmodel_msgs/Direction lane_marks~%worldmodel_msgs/LaneType lane_type~%worldmodel_msgs/LaneBoundary left_lane_boundary~%worldmodel_msgs/LaneBoundary right_lane_boundary~%worldmodel_msgs/RoadEdge left_road_edge~%worldmodel_msgs/RoadEdge right_road_edge~%worldmodel_msgs/ReferenceLine reference_line~%float64 entrance_width~%worldmodel_msgs/RoadPriority road_priority~%worldmodel_msgs/MergePoint merge_point~%worldmodel_msgs/MergePoint y_point~%int8 bias~%~%================================================================================~%MSG: worldmodel_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundary~%bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: worldmodel_msgs/RoadEdge~%bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLine~%bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriority~%worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MergePoint~%float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIInfoData~%float64 distance~%float64 length~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Point3f[] key_points_enu~%~%================================================================================~%MSG: worldmodel_msgs/IntersectionData~%worldmodel_msgs/Direction direction~%float64 length~%worldmodel_msgs/MapTrafficLightGroup[] traffic_light_groups~%worldmodel_msgs/LeftWaitingArea left_waiting_area~%worldmodel_msgs/StopLine distance_to_stop_line~%worldmodel_msgs/LaneData[] lanes_out~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLightGroup~%uint64 track_id~%worldmodel_msgs/MapTrafficLight[] traffic_lights~%~%================================================================================~%MSG: worldmodel_msgs/MapTrafficLight~%perception_interface_msgs/Point3d[] boundary~%perception_interface_msgs/TrafficLightPatternEnum pattern~%bool on_route~%~%================================================================================~%MSG: perception_interface_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LeftWaitingArea~%bool existence~%float64 length~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/StopLine~%float64 distance_to_stop_line~%float64 distance_buffer~%~%================================================================================~%MSG: worldmodel_msgs/LaneMergingSplittingPointData~%float64 distance~%bool is_split~%bool is_continue~%worldmodel_msgs/Orientation orientation~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/Orientation~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 INTERSECT = 3~%uint8 IGNORED = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneStrategyData~%worldmodel_msgs/LaneChangeState[] strategy_start_with_current_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_left_lane~%worldmodel_msgs/LaneChangeState[] strategy_start_with_right_lane~%worldmodel_msgs/Interval[] current_lane_change_available_interval~%worldmodel_msgs/Interval[] left_lane_change_available_interval~%worldmodel_msgs/Interval[] right_lane_change_available_interval~%~%================================================================================~%MSG: worldmodel_msgs/LaneChangeState~%uint8 FOLLOW = 0~%uint8 TURN_LEFT = 1~%uint8 TURN_RIGHT = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/ExtraInfo~%uint8 RAMP_MANEUVER = 1~%uint8 SCENE_TYPE = 2~%uint8 RESERVED_INFO = 4~%uint8 available~%worldmodel_msgs/RampManeuver ramp_maneuver~%string scene_type~%string reserved_info~%~%================================================================================~%MSG: worldmodel_msgs/RampManeuver~%float32 dis_to_ramp~%float32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessedMapData>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'self_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'way_point_position))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_poi_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intersections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_merging_splitting_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_strategy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extra_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessedMapData>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessedMapData
    (cl:cons ':available (available msg))
    (cl:cons ':target_position (target_position msg))
    (cl:cons ':self_position (self_position msg))
    (cl:cons ':way_point_position (way_point_position msg))
    (cl:cons ':lanes (lanes msg))
    (cl:cons ':map_poi_info (map_poi_info msg))
    (cl:cons ':intersections (intersections msg))
    (cl:cons ':lane_merging_splitting_points (lane_merging_splitting_points msg))
    (cl:cons ':lane_strategy (lane_strategy msg))
    (cl:cons ':extra_info (extra_info msg))
))
