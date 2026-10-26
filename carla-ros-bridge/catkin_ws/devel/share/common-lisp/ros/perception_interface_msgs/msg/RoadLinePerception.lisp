; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude RoadLinePerception.msg.html

(cl:defclass <RoadLinePerception> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type perception_interface_msgs-msg:PerceptionMeta
    :initform (cl:make-instance 'perception_interface_msgs-msg:PerceptionMeta))
   (lane_perception
    :reader lane_perception
    :initarg :lane_perception
    :type perception_interface_msgs-msg:LanePerception
    :initform (cl:make-instance 'perception_interface_msgs-msg:LanePerception))
   (road_edge_perception
    :reader road_edge_perception
    :initarg :road_edge_perception
    :type perception_interface_msgs-msg:RoadEdgePerception
    :initform (cl:make-instance 'perception_interface_msgs-msg:RoadEdgePerception)))
)

(cl:defclass RoadLinePerception (<RoadLinePerception>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadLinePerception>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadLinePerception)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<RoadLinePerception> is deprecated: use perception_interface_msgs-msg:RoadLinePerception instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoadLinePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <RoadLinePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:meta-val is deprecated.  Use perception_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'lane_perception-val :lambda-list '(m))
(cl:defmethod lane_perception-val ((m <RoadLinePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:lane_perception-val is deprecated.  Use perception_interface_msgs-msg:lane_perception instead.")
  (lane_perception m))

(cl:ensure-generic-function 'road_edge_perception-val :lambda-list '(m))
(cl:defmethod road_edge_perception-val ((m <RoadLinePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:road_edge_perception-val is deprecated.  Use perception_interface_msgs-msg:road_edge_perception instead.")
  (road_edge_perception m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadLinePerception>) ostream)
  "Serializes a message object of type '<RoadLinePerception>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_perception) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_edge_perception) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadLinePerception>) istream)
  "Deserializes a message object of type '<RoadLinePerception>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_perception) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_edge_perception) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadLinePerception>)))
  "Returns string type for a message object of type '<RoadLinePerception>"
  "perception_interface_msgs/RoadLinePerception")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadLinePerception)))
  "Returns string type for a message object of type 'RoadLinePerception"
  "perception_interface_msgs/RoadLinePerception")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadLinePerception>)))
  "Returns md5sum for a message object of type '<RoadLinePerception>"
  "071376a3398538f6af9cc0707ee1fe0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadLinePerception)))
  "Returns md5sum for a message object of type 'RoadLinePerception"
  "071376a3398538f6af9cc0707ee1fe0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadLinePerception>)))
  "Returns full string definition for message of type '<RoadLinePerception>"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%perception_interface_msgs/LanePerception lane_perception~%perception_interface_msgs/RoadEdgePerception road_edge_perception~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LanePerception~%uint8 VISION_PERCEPTION_LANE_RESULT = 1~%uint8 VISION_PERCEPTION_LANE_RESERVED_INFOS = 2~%uint64 available~%perception_interface_msgs/Lane[] lanes~%string[] reserved_infos~%~%================================================================================~%MSG: perception_interface_msgs/Lane~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%perception_interface_msgs/LaneTypeEnum lane_type~%perception_interface_msgs/LaneColorEnum lane_color~%float32 lane_width~%bool is_centerline~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%bool is_horizontal_line~%perception_interface_msgs/LaneHorizontalTypeEnum lane_horizontal_type~%float32 stopline_depth~%~%================================================================================~%MSG: perception_interface_msgs/LaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_DASHED = 1~%uint8 LANE_TYPE_SOLID = 2~%uint8 LANE_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneColorEnum~%uint8 LANE_COLOR_UNKNOWN = 0~%uint8 LANE_COLOR_WHITE = 1~%uint8 LANE_COLOR_YELLOW = 2~%uint8 LANE_COLOR_RED = 3~%uint8 LANE_COLOR_BLUE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneHorizontalTypeEnum~%uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0~%uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1~%uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2~%uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RoadEdgePerception~%uint8 VISION_PERCEPTION_ROAD_EDGE_RESULT = 1~%uint8 VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS = 2~%uint64 available~%perception_interface_msgs/RoadEdge[] road_edges~%string[] reserved_infos~%~%================================================================================~%MSG: perception_interface_msgs/RoadEdge~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%perception_interface_msgs/LidarRoadEdgeTypeEnum lidar_roadedge_type~%float32[] points_3d_hmi_x~%float32[] points_3d_hmi_y~%float32[] points_3d_hmi_z~%~%================================================================================~%MSG: perception_interface_msgs/LidarRoadEdgeTypeEnum~%uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0~%uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1~%uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2~%uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadLinePerception)))
  "Returns full string definition for message of type 'RoadLinePerception"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%perception_interface_msgs/LanePerception lane_perception~%perception_interface_msgs/RoadEdgePerception road_edge_perception~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LanePerception~%uint8 VISION_PERCEPTION_LANE_RESULT = 1~%uint8 VISION_PERCEPTION_LANE_RESERVED_INFOS = 2~%uint64 available~%perception_interface_msgs/Lane[] lanes~%string[] reserved_infos~%~%================================================================================~%MSG: perception_interface_msgs/Lane~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%perception_interface_msgs/LaneTypeEnum lane_type~%perception_interface_msgs/LaneColorEnum lane_color~%float32 lane_width~%bool is_centerline~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%bool is_horizontal_line~%perception_interface_msgs/LaneHorizontalTypeEnum lane_horizontal_type~%float32 stopline_depth~%~%================================================================================~%MSG: perception_interface_msgs/LaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_DASHED = 1~%uint8 LANE_TYPE_SOLID = 2~%uint8 LANE_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneColorEnum~%uint8 LANE_COLOR_UNKNOWN = 0~%uint8 LANE_COLOR_WHITE = 1~%uint8 LANE_COLOR_YELLOW = 2~%uint8 LANE_COLOR_RED = 3~%uint8 LANE_COLOR_BLUE = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/LaneHorizontalTypeEnum~%uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0~%uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1~%uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2~%uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/RoadEdgePerception~%uint8 VISION_PERCEPTION_ROAD_EDGE_RESULT = 1~%uint8 VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS = 2~%uint64 available~%perception_interface_msgs/RoadEdge[] road_edges~%string[] reserved_infos~%~%================================================================================~%MSG: perception_interface_msgs/RoadEdge~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%float32 score~%int32 index~%float32[] points_2d_x~%float32[] points_2d_y~%float32[] points_2d_v~%uint32 track_id~%float32[] coefficient_bv~%float32[] coefficient_bv_sigma~%bool is_failed_3d~%float32[] points_3d_x~%float32[] points_3d_y~%float32[] points_3d_z~%perception_interface_msgs/LidarRoadEdgeTypeEnum lidar_roadedge_type~%float32[] points_3d_hmi_x~%float32[] points_3d_hmi_y~%float32[] points_3d_hmi_z~%~%================================================================================~%MSG: perception_interface_msgs/LidarRoadEdgeTypeEnum~%uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0~%uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1~%uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2~%uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadLinePerception>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_perception))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_edge_perception))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadLinePerception>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadLinePerception
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':lane_perception (lane_perception msg))
    (cl:cons ':road_edge_perception (road_edge_perception msg))
))
