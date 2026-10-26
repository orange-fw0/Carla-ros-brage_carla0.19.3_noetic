;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::RoadLinePerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'RoadLinePerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ROADLINEPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::ROADLINEPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude RoadLinePerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::RoadLinePerception
  :super ros::object
  :slots (_header _meta _lane_perception _road_edge_perception ))

(defmethod perception_interface_msgs::RoadLinePerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionMeta :init))
    ((:lane_perception __lane_perception) (instance perception_interface_msgs::LanePerception :init))
    ((:road_edge_perception __road_edge_perception) (instance perception_interface_msgs::RoadEdgePerception :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _lane_perception __lane_perception)
   (setq _road_edge_perception __road_edge_perception)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:lane_perception
   (&rest __lane_perception)
   (if (keywordp (car __lane_perception))
       (send* _lane_perception __lane_perception)
     (progn
       (if __lane_perception (setq _lane_perception (car __lane_perception)))
       _lane_perception)))
  (:road_edge_perception
   (&rest __road_edge_perception)
   (if (keywordp (car __road_edge_perception))
       (send* _road_edge_perception __road_edge_perception)
     (progn
       (if __road_edge_perception (setq _road_edge_perception (car __road_edge_perception)))
       _road_edge_perception)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionMeta _meta
    (send _meta :serialization-length)
    ;; perception_interface_msgs/LanePerception _lane_perception
    (send _lane_perception :serialization-length)
    ;; perception_interface_msgs/RoadEdgePerception _road_edge_perception
    (send _road_edge_perception :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/PerceptionMeta _meta
       (send _meta :serialize s)
     ;; perception_interface_msgs/LanePerception _lane_perception
       (send _lane_perception :serialize s)
     ;; perception_interface_msgs/RoadEdgePerception _road_edge_perception
       (send _road_edge_perception :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/PerceptionMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; perception_interface_msgs/LanePerception _lane_perception
     (send _lane_perception :deserialize buf ptr-) (incf ptr- (send _lane_perception :serialization-length))
   ;; perception_interface_msgs/RoadEdgePerception _road_edge_perception
     (send _road_edge_perception :deserialize buf ptr-) (incf ptr- (send _road_edge_perception :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::RoadLinePerception :md5sum-) "071376a3398538f6af9cc0707ee1fe0c")
(setf (get perception_interface_msgs::RoadLinePerception :datatype-) "perception_interface_msgs/RoadLinePerception")
(setf (get perception_interface_msgs::RoadLinePerception :definition-)
      "std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
perception_interface_msgs/LanePerception lane_perception
perception_interface_msgs/RoadEdgePerception road_edge_perception

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: perception_interface_msgs/PerceptionMeta
string algorithm_name
string instance_name
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
perception_interface_msgs/FrameMeta[] relevant_frames
string version_tag
string ts_log
uint64 sequence
string task_tag

================================================================================
MSG: perception_interface_msgs/FrameMeta
uint64 timestamp_us
uint64 sequence
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

================================================================================
MSG: perception_interface_msgs/CameraModelEnum
uint8 CAMERA_MODEL_UNKNOWN = 0
uint8 CAMERA_MODEL_RAW = 1
uint8 CAMERA_MODEL_CYLINDER = 2
uint8 CAMERA_MODEL_DEDISTORT = 3
uint8 CAMERA_MODEL_PSTITCH = 4
uint8 CAMERA_MODEL_RESERVED_A = 5
uint8 CAMERA_MODEL_RESERVED_B = 6
uint8 CAMERA_MODEL_RESERVED_C = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/LanePerception
uint8 VISION_PERCEPTION_LANE_RESULT = 1
uint8 VISION_PERCEPTION_LANE_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/Lane[] lanes
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/Lane
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
int32 index
float32[] points_2d_x
float32[] points_2d_y
float32[] points_2d_v
uint32 track_id
float32[] coefficient_bv
float32[] coefficient_bv_sigma
bool is_failed_3d
perception_interface_msgs/LaneTypeEnum lane_type
perception_interface_msgs/LaneColorEnum lane_color
float32 lane_width
bool is_centerline
float32[] points_3d_x
float32[] points_3d_y
float32[] points_3d_z
bool is_horizontal_line
perception_interface_msgs/LaneHorizontalTypeEnum lane_horizontal_type
float32 stopline_depth

================================================================================
MSG: perception_interface_msgs/LaneTypeEnum
uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_DASHED = 1
uint8 LANE_TYPE_SOLID = 2
uint8 LANE_TYPE_DOUBLE_SOLID = 3
uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/LaneColorEnum
uint8 LANE_COLOR_UNKNOWN = 0
uint8 LANE_COLOR_WHITE = 1
uint8 LANE_COLOR_YELLOW = 2
uint8 LANE_COLOR_RED = 3
uint8 LANE_COLOR_BLUE = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/LaneHorizontalTypeEnum
uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0
uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1
uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2
uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/RoadEdgePerception
uint8 VISION_PERCEPTION_ROAD_EDGE_RESULT = 1
uint8 VISION_PERCEPTION_ROAD_EDGE_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/RoadEdge[] road_edges
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/RoadEdge
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
int32 index
float32[] points_2d_x
float32[] points_2d_y
float32[] points_2d_v
uint32 track_id
float32[] coefficient_bv
float32[] coefficient_bv_sigma
bool is_failed_3d
float32[] points_3d_x
float32[] points_3d_y
float32[] points_3d_z
perception_interface_msgs/LidarRoadEdgeTypeEnum lidar_roadedge_type
float32[] points_3d_hmi_x
float32[] points_3d_hmi_y
float32[] points_3d_hmi_z

================================================================================
MSG: perception_interface_msgs/LidarRoadEdgeTypeEnum
uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0
uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1
uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2
uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3
uint8 value

")



(provide :perception_interface_msgs/RoadLinePerception "071376a3398538f6af9cc0707ee1fe0c")


