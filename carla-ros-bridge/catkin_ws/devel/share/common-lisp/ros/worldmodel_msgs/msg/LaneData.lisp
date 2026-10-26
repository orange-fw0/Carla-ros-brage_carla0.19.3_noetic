; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LaneData.msg.html

(cl:defclass <LaneData> (roslisp-msg-protocol:ros-message)
  ((relative_id
    :reader relative_id
    :initarg :relative_id
    :type cl:integer
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (lane_marks
    :reader lane_marks
    :initarg :lane_marks
    :type worldmodel_msgs-msg:Direction
    :initform (cl:make-instance 'worldmodel_msgs-msg:Direction))
   (lane_type
    :reader lane_type
    :initarg :lane_type
    :type worldmodel_msgs-msg:LaneType
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneType))
   (left_lane_boundary
    :reader left_lane_boundary
    :initarg :left_lane_boundary
    :type worldmodel_msgs-msg:LaneBoundary
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundary))
   (right_lane_boundary
    :reader right_lane_boundary
    :initarg :right_lane_boundary
    :type worldmodel_msgs-msg:LaneBoundary
    :initform (cl:make-instance 'worldmodel_msgs-msg:LaneBoundary))
   (left_road_edge
    :reader left_road_edge
    :initarg :left_road_edge
    :type worldmodel_msgs-msg:RoadEdge
    :initform (cl:make-instance 'worldmodel_msgs-msg:RoadEdge))
   (right_road_edge
    :reader right_road_edge
    :initarg :right_road_edge
    :type worldmodel_msgs-msg:RoadEdge
    :initform (cl:make-instance 'worldmodel_msgs-msg:RoadEdge))
   (reference_line
    :reader reference_line
    :initarg :reference_line
    :type worldmodel_msgs-msg:ReferenceLine
    :initform (cl:make-instance 'worldmodel_msgs-msg:ReferenceLine))
   (entrance_width
    :reader entrance_width
    :initarg :entrance_width
    :type cl:float
    :initform 0.0)
   (road_priority
    :reader road_priority
    :initarg :road_priority
    :type worldmodel_msgs-msg:RoadPriority
    :initform (cl:make-instance 'worldmodel_msgs-msg:RoadPriority))
   (merge_point
    :reader merge_point
    :initarg :merge_point
    :type worldmodel_msgs-msg:MergePoint
    :initform (cl:make-instance 'worldmodel_msgs-msg:MergePoint))
   (y_point
    :reader y_point
    :initarg :y_point
    :type worldmodel_msgs-msg:MergePoint
    :initform (cl:make-instance 'worldmodel_msgs-msg:MergePoint))
   (bias
    :reader bias
    :initarg :bias
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneData (<LaneData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LaneData> is deprecated: use worldmodel_msgs-msg:LaneData instead.")))

(cl:ensure-generic-function 'relative_id-val :lambda-list '(m))
(cl:defmethod relative_id-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:relative_id-val is deprecated.  Use worldmodel_msgs-msg:relative_id instead.")
  (relative_id m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:track_id-val is deprecated.  Use worldmodel_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'lane_marks-val :lambda-list '(m))
(cl:defmethod lane_marks-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lane_marks-val is deprecated.  Use worldmodel_msgs-msg:lane_marks instead.")
  (lane_marks m))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:lane_type-val is deprecated.  Use worldmodel_msgs-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'left_lane_boundary-val :lambda-list '(m))
(cl:defmethod left_lane_boundary-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:left_lane_boundary-val is deprecated.  Use worldmodel_msgs-msg:left_lane_boundary instead.")
  (left_lane_boundary m))

(cl:ensure-generic-function 'right_lane_boundary-val :lambda-list '(m))
(cl:defmethod right_lane_boundary-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:right_lane_boundary-val is deprecated.  Use worldmodel_msgs-msg:right_lane_boundary instead.")
  (right_lane_boundary m))

(cl:ensure-generic-function 'left_road_edge-val :lambda-list '(m))
(cl:defmethod left_road_edge-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:left_road_edge-val is deprecated.  Use worldmodel_msgs-msg:left_road_edge instead.")
  (left_road_edge m))

(cl:ensure-generic-function 'right_road_edge-val :lambda-list '(m))
(cl:defmethod right_road_edge-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:right_road_edge-val is deprecated.  Use worldmodel_msgs-msg:right_road_edge instead.")
  (right_road_edge m))

(cl:ensure-generic-function 'reference_line-val :lambda-list '(m))
(cl:defmethod reference_line-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:reference_line-val is deprecated.  Use worldmodel_msgs-msg:reference_line instead.")
  (reference_line m))

(cl:ensure-generic-function 'entrance_width-val :lambda-list '(m))
(cl:defmethod entrance_width-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:entrance_width-val is deprecated.  Use worldmodel_msgs-msg:entrance_width instead.")
  (entrance_width m))

(cl:ensure-generic-function 'road_priority-val :lambda-list '(m))
(cl:defmethod road_priority-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:road_priority-val is deprecated.  Use worldmodel_msgs-msg:road_priority instead.")
  (road_priority m))

(cl:ensure-generic-function 'merge_point-val :lambda-list '(m))
(cl:defmethod merge_point-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:merge_point-val is deprecated.  Use worldmodel_msgs-msg:merge_point instead.")
  (merge_point m))

(cl:ensure-generic-function 'y_point-val :lambda-list '(m))
(cl:defmethod y_point-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:y_point-val is deprecated.  Use worldmodel_msgs-msg:y_point instead.")
  (y_point m))

(cl:ensure-generic-function 'bias-val :lambda-list '(m))
(cl:defmethod bias-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:bias-val is deprecated.  Use worldmodel_msgs-msg:bias instead.")
  (bias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneData>) ostream)
  "Serializes a message object of type '<LaneData>"
  (cl:let* ((signed (cl:slot-value msg 'relative_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_marks) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_lane_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_lane_boundary) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_road_edge) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_road_edge) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_line) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'entrance_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_priority) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'merge_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y_point) ostream)
  (cl:let* ((signed (cl:slot-value msg 'bias)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneData>) istream)
  "Deserializes a message object of type '<LaneData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'relative_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_marks) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_lane_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_lane_boundary) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_road_edge) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_road_edge) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_line) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'entrance_width) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_priority) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'merge_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y_point) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bias) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneData>)))
  "Returns string type for a message object of type '<LaneData>"
  "worldmodel_msgs/LaneData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneData)))
  "Returns string type for a message object of type 'LaneData"
  "worldmodel_msgs/LaneData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneData>)))
  "Returns md5sum for a message object of type '<LaneData>"
  "104597adfcc42ee08489c0cc8b1d58c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneData)))
  "Returns md5sum for a message object of type 'LaneData"
  "104597adfcc42ee08489c0cc8b1d58c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneData>)))
  "Returns full string definition for message of type '<LaneData>"
  (cl:format cl:nil "int32 relative_id~%int32 track_id~%worldmodel_msgs/Direction lane_marks~%worldmodel_msgs/LaneType lane_type~%worldmodel_msgs/LaneBoundary left_lane_boundary~%worldmodel_msgs/LaneBoundary right_lane_boundary~%worldmodel_msgs/RoadEdge left_road_edge~%worldmodel_msgs/RoadEdge right_road_edge~%worldmodel_msgs/ReferenceLine reference_line~%float64 entrance_width~%worldmodel_msgs/RoadPriority road_priority~%worldmodel_msgs/MergePoint merge_point~%worldmodel_msgs/MergePoint y_point~%int8 bias~%~%================================================================================~%MSG: worldmodel_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundary~%bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/RoadEdge~%bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLine~%bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriority~%worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MergePoint~%float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneData)))
  "Returns full string definition for message of type 'LaneData"
  (cl:format cl:nil "int32 relative_id~%int32 track_id~%worldmodel_msgs/Direction lane_marks~%worldmodel_msgs/LaneType lane_type~%worldmodel_msgs/LaneBoundary left_lane_boundary~%worldmodel_msgs/LaneBoundary right_lane_boundary~%worldmodel_msgs/RoadEdge left_road_edge~%worldmodel_msgs/RoadEdge right_road_edge~%worldmodel_msgs/ReferenceLine reference_line~%float64 entrance_width~%worldmodel_msgs/RoadPriority road_priority~%worldmodel_msgs/MergePoint merge_point~%worldmodel_msgs/MergePoint y_point~%int8 bias~%~%================================================================================~%MSG: worldmodel_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 4~%uint8 U_TURN_LEFT = 8~%uint8 U_TURN_RIGHT = 16~%uint8 OFF_ROUTE = 32~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneType~%uint8 UNKNOWN = 0~%uint8 NORMAL = 1~%uint8 VIRTUAL = 2~%uint8 PARKING = 3~%uint8 ACCELERATE = 4~%uint8 DECELERATE = 5~%uint8 BUS = 6~%uint8 EMERGENCY = 7~%uint8 ACCELERATE_DECELERATE = 8~%uint8 LEFT_TURN_WAITTING_AREA = 9~%uint8 NON_MOTOR = 10~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundary~%bool existence~%worldmodel_msgs/LaneBoundarySegment[] segments~%worldmodel_msgs/LaneBoundaryPolyline polyline~%perception_interface_msgs/Point3f[] points~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundarySegment~%float64 length~%worldmodel_msgs/LaneBoundaryType type~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryType~%worldmodel_msgs/LaneBoundaryForm value~%worldmodel_msgs/LaneBoundaryColor color~%worldmodel_msgs/LaneBoundaryWidth width~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryForm~%uint8 UNKNOWN = 0~%uint8 SOLID = 1~%uint8 DASH = 2~%uint8 VIRTUAL = 3~%uint8 PHYSICAL = 4~%uint8 DOUBLE_SOLID = 5~%uint8 DASH_SOLID = 6~%uint8 SOLID_DASH = 7~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryColor~%uint8 WHITE = 0~%uint8 YELLOW = 1~%uint8 OTHER = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryWidth~%uint8 THIN = 0~%uint8 THICK = 1~%uint8 UNKNOWN = 2~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/LaneBoundaryPolyline~%uint64 track_id~%float64[] poly_coefficient~%worldmodel_msgs/Interval available_interval~%~%================================================================================~%MSG: worldmodel_msgs/Interval~%float64 begin~%float64 end~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/RoadEdge~%bool existence~%perception_interface_msgs/Point3f[] points~%uint8 type~%string reserved~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLine~%bool available~%worldmodel_msgs/ReferenceLinePoint[] reference_line_points~%worldmodel_msgs/ReferenceLineSegment[] reference_line_segments~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLinePoint~%perception_interface_msgs/Point3d enu_point~%float32 curvature~%float32 distance_to_left_road_border~%float32 distance_to_right_road_border~%float32 distance_to_left_lane_border~%float32 distance_to_right_lane_border~%float32 distance_to_left_obstacle~%float32 distance_to_right_obstacle~%float32 lane_width~%int32 max_velocity~%uint64 track_id~%bool is_experience_data~%worldmodel_msgs/LaneBoundaryType left_road_border_type~%worldmodel_msgs/LaneBoundaryType right_road_border_type~%bool on_route~%float64 longitudinal_slope~%float64 horizontal_slope~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: worldmodel_msgs/ReferenceLineSegment~%uint16 begin_index~%uint16 end_index~%worldmodel_msgs/LaneConnectDirection direction~%worldmodel_msgs/LaneType lane_type~%bool is_in_intersection~%bool is_in_route~%~%================================================================================~%MSG: worldmodel_msgs/LaneConnectDirection~%uint8 NORMAL = 0~%uint8 SPLIT_TO_LEFT = 1~%uint8 SPLIT_TO_RIGHT = 2~%uint8 MERGE_FROM_LEFT = 3~%uint8 MERGE_FROM_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriority~%worldmodel_msgs/RoadPriorityType road_priority_type~%float64 distance~%float64 length~%~%================================================================================~%MSG: worldmodel_msgs/RoadPriorityType~%uint16 UNKNOWN = 0~%uint16 PRIORITY_ROAD = 1~%uint16 PRIORITY_ROAD_END = 2~%uint16 PRIORITY_AUXILIARY = 4~%uint16 PRIORITY_NEXT_INTERSECTION = 8~%uint16 STOP = 16~%uint16 YIELD = 32~%uint16 PRIORITY_OVER_ONGOING = 64~%uint16 YIELD_TO_ONCOMING = 128~%uint8 value~%~%================================================================================~%MSG: worldmodel_msgs/MergePoint~%float64 distance~%worldmodel_msgs/MergeType type~%~%================================================================================~%MSG: worldmodel_msgs/MergeType~%uint8 UNKNOWN = 0~%uint8 UNRELATED = 1~%uint8 FROM_RIGHT = 2~%uint8 FROM_LEFT = 3~%uint8 FROM_BOTH = 4~%uint8 LANE_END = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneData>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_marks))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_lane_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_lane_boundary))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_road_edge))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_road_edge))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_line))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_priority))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'merge_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y_point))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneData>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneData
    (cl:cons ':relative_id (relative_id msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':lane_marks (lane_marks msg))
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':left_lane_boundary (left_lane_boundary msg))
    (cl:cons ':right_lane_boundary (right_lane_boundary msg))
    (cl:cons ':left_road_edge (left_road_edge msg))
    (cl:cons ':right_road_edge (right_road_edge msg))
    (cl:cons ':reference_line (reference_line msg))
    (cl:cons ':entrance_width (entrance_width msg))
    (cl:cons ':road_priority (road_priority msg))
    (cl:cons ':merge_point (merge_point msg))
    (cl:cons ':y_point (y_point msg))
    (cl:cons ':bias (bias msg))
))
