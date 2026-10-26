; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude Submap.msg.html

(cl:defclass <Submap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type submap_msgs-msg:SubmapMeta
    :initform (cl:make-instance 'submap_msgs-msg:SubmapMeta))
   (auxiliary_info
    :reader auxiliary_info
    :initarg :auxiliary_info
    :type submap_msgs-msg:SubmapAuxiliaryInfo
    :initform (cl:make-instance 'submap_msgs-msg:SubmapAuxiliaryInfo))
   (parking_slot_map
    :reader parking_slot_map
    :initarg :parking_slot_map
    :type submap_msgs-msg:ParkingSlotMap
    :initform (cl:make-instance 'submap_msgs-msg:ParkingSlotMap))
   (roadmark_map
    :reader roadmark_map
    :initarg :roadmark_map
    :type submap_msgs-msg:RoadmarkMap
    :initform (cl:make-instance 'submap_msgs-msg:RoadmarkMap))
   (slope_map
    :reader slope_map
    :initarg :slope_map
    :type submap_msgs-msg:SlopeMap
    :initform (cl:make-instance 'submap_msgs-msg:SlopeMap))
   (obs_map
    :reader obs_map
    :initarg :obs_map
    :type submap_msgs-msg:StaticObstacleMap
    :initform (cl:make-instance 'submap_msgs-msg:StaticObstacleMap))
   (vectorized_map
    :reader vectorized_map
    :initarg :vectorized_map
    :type submap_msgs-msg:VectorizedMap
    :initform (cl:make-instance 'submap_msgs-msg:VectorizedMap))
   (time_dis_diff
    :reader time_dis_diff
    :initarg :time_dis_diff
    :type submap_msgs-msg:TimeDisDiff
    :initform (cl:make-instance 'submap_msgs-msg:TimeDisDiff))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type submap_msgs-msg:SubmapReserved
    :initform (cl:make-instance 'submap_msgs-msg:SubmapReserved)))
)

(cl:defclass Submap (<Submap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Submap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Submap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<Submap> is deprecated: use submap_msgs-msg:Submap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:header-val is deprecated.  Use submap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:meta-val is deprecated.  Use submap_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'auxiliary_info-val :lambda-list '(m))
(cl:defmethod auxiliary_info-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:auxiliary_info-val is deprecated.  Use submap_msgs-msg:auxiliary_info instead.")
  (auxiliary_info m))

(cl:ensure-generic-function 'parking_slot_map-val :lambda-list '(m))
(cl:defmethod parking_slot_map-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:parking_slot_map-val is deprecated.  Use submap_msgs-msg:parking_slot_map instead.")
  (parking_slot_map m))

(cl:ensure-generic-function 'roadmark_map-val :lambda-list '(m))
(cl:defmethod roadmark_map-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:roadmark_map-val is deprecated.  Use submap_msgs-msg:roadmark_map instead.")
  (roadmark_map m))

(cl:ensure-generic-function 'slope_map-val :lambda-list '(m))
(cl:defmethod slope_map-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:slope_map-val is deprecated.  Use submap_msgs-msg:slope_map instead.")
  (slope_map m))

(cl:ensure-generic-function 'obs_map-val :lambda-list '(m))
(cl:defmethod obs_map-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:obs_map-val is deprecated.  Use submap_msgs-msg:obs_map instead.")
  (obs_map m))

(cl:ensure-generic-function 'vectorized_map-val :lambda-list '(m))
(cl:defmethod vectorized_map-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:vectorized_map-val is deprecated.  Use submap_msgs-msg:vectorized_map instead.")
  (vectorized_map m))

(cl:ensure-generic-function 'time_dis_diff-val :lambda-list '(m))
(cl:defmethod time_dis_diff-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:time_dis_diff-val is deprecated.  Use submap_msgs-msg:time_dis_diff instead.")
  (time_dis_diff m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <Submap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:reserved_info-val is deprecated.  Use submap_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Submap>) ostream)
  "Serializes a message object of type '<Submap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auxiliary_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_slot_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roadmark_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slope_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obs_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vectorized_map) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time_dis_diff) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reserved_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Submap>) istream)
  "Deserializes a message object of type '<Submap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auxiliary_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_slot_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roadmark_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slope_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obs_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vectorized_map) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time_dis_diff) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reserved_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Submap>)))
  "Returns string type for a message object of type '<Submap>"
  "submap_msgs/Submap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Submap)))
  "Returns string type for a message object of type 'Submap"
  "submap_msgs/Submap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Submap>)))
  "Returns md5sum for a message object of type '<Submap>"
  "8e70c67c22bf211a0195455ce5a6e693")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Submap)))
  "Returns md5sum for a message object of type 'Submap"
  "8e70c67c22bf211a0195455ce5a6e693")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Submap>)))
  "Returns full string definition for message of type '<Submap>"
  (cl:format cl:nil "std_msgs/Header header~%submap_msgs/SubmapMeta meta~%submap_msgs/SubmapAuxiliaryInfo auxiliary_info~%submap_msgs/ParkingSlotMap parking_slot_map~%submap_msgs/RoadmarkMap roadmark_map~%submap_msgs/SlopeMap slope_map~%submap_msgs/StaticObstacleMap obs_map~%submap_msgs/VectorizedMap vectorized_map~%submap_msgs/TimeDisDiff time_dis_diff~%submap_msgs/SubmapReserved reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: submap_msgs/SubmapMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: submap_msgs/SubmapAuxiliaryInfo~%submap_msgs/SubmapTrajectory trajectory~%~%================================================================================~%MSG: submap_msgs/SubmapTrajectory~%float64 distance~%submap_msgs/Position[] positions~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: submap_msgs/ParkingSlotMap~%submap_msgs/ParkingSlot[] slots~%~%================================================================================~%MSG: submap_msgs/ParkingSlot~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%float64 timestamp~%uint32 id~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: submap_msgs/RoadmarkMap~%submap_msgs/Roadmark roadmark_contours~%submap_msgs/Roadmark roadmark_raw_points~%~%================================================================================~%MSG: submap_msgs/Roadmark~%submap_msgs/RoadmarkLayer[] layers~%~%================================================================================~%MSG: submap_msgs/RoadmarkLayer~%submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: submap_msgs/SlopeMap~%submap_msgs/Slope[] slopes~%~%================================================================================~%MSG: submap_msgs/Slope~%submap_msgs/Position enter~%submap_msgs/Position exit~%submap_msgs/Position detected_slope_pose~%bool is_up~%bool finished~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/StaticObstacleMap~%submap_msgs/GroundLine[] ground_lines~%submap_msgs/Pillar[] pillars~%~%================================================================================~%MSG: submap_msgs/GroundLine~%geometry_msgs/Point start~%geometry_msgs/Point end~%geometry_msgs/Point[] map_points~%geometry_msgs/Point[] raw_points~%uint32 id~%submap_msgs/GroundLineType type~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/GroundLineType~%uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%================================================================================~%MSG: submap_msgs/Pillar~%geometry_msgs/Point center~%geometry_msgs/Point center_local~%geometry_msgs/Point[] edge_points~%geometry_msgs/Point[] edge_points_local~%uint32 id~%uint32 point_number~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/VectorizedMap~%submap_msgs/VectorElement[] vector_elements~%~%================================================================================~%MSG: submap_msgs/VectorElement~%uint32 id~%submap_msgs/VectorElementTypeEnum type~%float32 score~%float32 slide_distance~%geometry_msgs/Point center~%geometry_msgs/Point center_point~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/VectorElementTypeEnum~%uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%================================================================================~%MSG: submap_msgs/TimeDisDiff~%float64 dis_idff~%float64 time_diff~%float64 last_pose_timestamp~%~%================================================================================~%MSG: submap_msgs/SubmapReserved~%uint8 SUBMAP_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Submap)))
  "Returns full string definition for message of type 'Submap"
  (cl:format cl:nil "std_msgs/Header header~%submap_msgs/SubmapMeta meta~%submap_msgs/SubmapAuxiliaryInfo auxiliary_info~%submap_msgs/ParkingSlotMap parking_slot_map~%submap_msgs/RoadmarkMap roadmark_map~%submap_msgs/SlopeMap slope_map~%submap_msgs/StaticObstacleMap obs_map~%submap_msgs/VectorizedMap vectorized_map~%submap_msgs/TimeDisDiff time_dis_diff~%submap_msgs/SubmapReserved reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: submap_msgs/SubmapMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: submap_msgs/SubmapAuxiliaryInfo~%submap_msgs/SubmapTrajectory trajectory~%~%================================================================================~%MSG: submap_msgs/SubmapTrajectory~%float64 distance~%submap_msgs/Position[] positions~%~%================================================================================~%MSG: submap_msgs/Position~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 translation~%float64 timestamp~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: submap_msgs/ParkingSlotMap~%submap_msgs/ParkingSlot[] slots~%~%================================================================================~%MSG: submap_msgs/ParkingSlot~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%float64 timestamp~%uint32 id~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: submap_msgs/RoadmarkMap~%submap_msgs/Roadmark roadmark_contours~%submap_msgs/Roadmark roadmark_raw_points~%~%================================================================================~%MSG: submap_msgs/Roadmark~%submap_msgs/RoadmarkLayer[] layers~%~%================================================================================~%MSG: submap_msgs/RoadmarkLayer~%submap_msgs/RoadmarkType type~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/RoadmarkType~%uint8 NORMAL = 0~%uint8 ARROW = 1~%uint8 SPEED_BUMP = 2~%uint8 CROSS_WALK = 3~%uint8 STOP_LINE = 4~%uint8 value~%~%================================================================================~%MSG: submap_msgs/SlopeMap~%submap_msgs/Slope[] slopes~%~%================================================================================~%MSG: submap_msgs/Slope~%submap_msgs/Position enter~%submap_msgs/Position exit~%submap_msgs/Position detected_slope_pose~%bool is_up~%bool finished~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/StaticObstacleMap~%submap_msgs/GroundLine[] ground_lines~%submap_msgs/Pillar[] pillars~%~%================================================================================~%MSG: submap_msgs/GroundLine~%geometry_msgs/Point start~%geometry_msgs/Point end~%geometry_msgs/Point[] map_points~%geometry_msgs/Point[] raw_points~%uint32 id~%submap_msgs/GroundLineType type~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/GroundLineType~%uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%================================================================================~%MSG: submap_msgs/Pillar~%geometry_msgs/Point center~%geometry_msgs/Point center_local~%geometry_msgs/Point[] edge_points~%geometry_msgs/Point[] edge_points_local~%uint32 id~%uint32 point_number~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: submap_msgs/VectorizedMap~%submap_msgs/VectorElement[] vector_elements~%~%================================================================================~%MSG: submap_msgs/VectorElement~%uint32 id~%submap_msgs/VectorElementTypeEnum type~%float32 score~%float32 slide_distance~%geometry_msgs/Point center~%geometry_msgs/Point center_point~%geometry_msgs/Point[] points~%geometry_msgs/Point[] points_local~%~%================================================================================~%MSG: submap_msgs/VectorElementTypeEnum~%uint8 UNKNOWN = 0~%uint8 GATE = 1~%uint8 ARROW = 2~%uint8 STOP_LINE = 3~%uint8 DASH_LINE = 4~%uint8 SPEED_BUMP = 5~%uint8 ZWBRA_LINE = 6~%uint8 DDLD_ROAD_BOUNDARY = 7~%uint8 DDLD_LANE_BOUNDARY = 8~%uint8 DDLD_STOP_LINE = 9~%uint8 DDLD_CROSS_WALK = 10~%uint8 DDLD_ROAD_MARK = 11~%uint8 DDLD_TRAFFIC_SIGN = 12~%uint8 DDLD_TRAFFIC_LIGHT = 13~%uint8 value~%float32 score~%~%================================================================================~%MSG: submap_msgs/TimeDisDiff~%float64 dis_idff~%float64 time_diff~%float64 last_pose_timestamp~%~%================================================================================~%MSG: submap_msgs/SubmapReserved~%uint8 SUBMAP_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Submap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auxiliary_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_slot_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roadmark_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slope_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obs_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vectorized_map))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time_dis_diff))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Submap>))
  "Converts a ROS message object to a list"
  (cl:list 'Submap
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':auxiliary_info (auxiliary_info msg))
    (cl:cons ':parking_slot_map (parking_slot_map msg))
    (cl:cons ':roadmark_map (roadmark_map msg))
    (cl:cons ':slope_map (slope_map msg))
    (cl:cons ':obs_map (obs_map msg))
    (cl:cons ':vectorized_map (vectorized_map msg))
    (cl:cons ':time_dis_diff (time_dis_diff msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
