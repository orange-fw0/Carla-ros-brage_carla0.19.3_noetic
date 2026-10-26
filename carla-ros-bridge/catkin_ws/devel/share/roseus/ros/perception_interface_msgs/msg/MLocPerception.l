;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::MLocPerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'MLocPerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::MLOCPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::MLOCPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude MLocPerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::MLocPerception
  :super ros::object
  :slots (_header _meta _lane_segment_perception _pole_line_perception _traffic_sign_perception ))

(defmethod perception_interface_msgs::MLocPerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionMeta :init))
    ((:lane_segment_perception __lane_segment_perception) (instance perception_interface_msgs::LaneSegmentPerception :init))
    ((:pole_line_perception __pole_line_perception) (instance perception_interface_msgs::PoleLinePerception :init))
    ((:traffic_sign_perception __traffic_sign_perception) (instance perception_interface_msgs::TrafficSignPerception :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _lane_segment_perception __lane_segment_perception)
   (setq _pole_line_perception __pole_line_perception)
   (setq _traffic_sign_perception __traffic_sign_perception)
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
  (:lane_segment_perception
   (&rest __lane_segment_perception)
   (if (keywordp (car __lane_segment_perception))
       (send* _lane_segment_perception __lane_segment_perception)
     (progn
       (if __lane_segment_perception (setq _lane_segment_perception (car __lane_segment_perception)))
       _lane_segment_perception)))
  (:pole_line_perception
   (&rest __pole_line_perception)
   (if (keywordp (car __pole_line_perception))
       (send* _pole_line_perception __pole_line_perception)
     (progn
       (if __pole_line_perception (setq _pole_line_perception (car __pole_line_perception)))
       _pole_line_perception)))
  (:traffic_sign_perception
   (&rest __traffic_sign_perception)
   (if (keywordp (car __traffic_sign_perception))
       (send* _traffic_sign_perception __traffic_sign_perception)
     (progn
       (if __traffic_sign_perception (setq _traffic_sign_perception (car __traffic_sign_perception)))
       _traffic_sign_perception)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionMeta _meta
    (send _meta :serialization-length)
    ;; perception_interface_msgs/LaneSegmentPerception _lane_segment_perception
    (send _lane_segment_perception :serialization-length)
    ;; perception_interface_msgs/PoleLinePerception _pole_line_perception
    (send _pole_line_perception :serialization-length)
    ;; perception_interface_msgs/TrafficSignPerception _traffic_sign_perception
    (send _traffic_sign_perception :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/PerceptionMeta _meta
       (send _meta :serialize s)
     ;; perception_interface_msgs/LaneSegmentPerception _lane_segment_perception
       (send _lane_segment_perception :serialize s)
     ;; perception_interface_msgs/PoleLinePerception _pole_line_perception
       (send _pole_line_perception :serialize s)
     ;; perception_interface_msgs/TrafficSignPerception _traffic_sign_perception
       (send _traffic_sign_perception :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/PerceptionMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; perception_interface_msgs/LaneSegmentPerception _lane_segment_perception
     (send _lane_segment_perception :deserialize buf ptr-) (incf ptr- (send _lane_segment_perception :serialization-length))
   ;; perception_interface_msgs/PoleLinePerception _pole_line_perception
     (send _pole_line_perception :deserialize buf ptr-) (incf ptr- (send _pole_line_perception :serialization-length))
   ;; perception_interface_msgs/TrafficSignPerception _traffic_sign_perception
     (send _traffic_sign_perception :deserialize buf ptr-) (incf ptr- (send _traffic_sign_perception :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::MLocPerception :md5sum-) "411afc801397b1352688d7de607d356c")
(setf (get perception_interface_msgs::MLocPerception :datatype-) "perception_interface_msgs/MLocPerception")
(setf (get perception_interface_msgs::MLocPerception :definition-)
      "std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
perception_interface_msgs/LaneSegmentPerception lane_segment_perception
perception_interface_msgs/PoleLinePerception pole_line_perception
perception_interface_msgs/TrafficSignPerception traffic_sign_perception

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
MSG: perception_interface_msgs/LaneSegmentPerception
uint8 VISION_PERCEPTION_LANE_SEGMENT_RESULT = 1
uint8 VISION_PERCEPTION_LANE_SEGMENT_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/LaneSegment[] lane_segments
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/LaneSegment
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/Point2f[] points_2d
perception_interface_msgs/Point3f[] points_3d
uint32[] points_track_id
float32[] points_score
perception_interface_msgs/LaneSegmentPointEnum[] points_type

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/LaneSegmentPointEnum
uint8 LANE_SEGMENT_POINT_UNKNOWN = 0
uint8 LANE_SEGMENT_POINT_FAKE_POINT = 1
uint8 LANE_SEGMENT_POINT_REAL_POINT = 2
uint8 LANE_SEGMENT_POINT_FARTHEST_POINT = 3
uint8 LANE_SEGMENT_POINT_OCCLUSION_POINT = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/PoleLinePerception
uint8 VISION_PERCEPTION_POLE_LINE_RESULT = 1
uint8 VISION_PERCEPTION_POLE_LINE_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/PoleLine[] pole_lines
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/PoleLine
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/PoleLinePoint[] points_2d
perception_interface_msgs/PoleLineTypeEnum type
uint32 track_id

================================================================================
MSG: perception_interface_msgs/PoleLinePoint
perception_interface_msgs/Point2f position
float32 visibility

================================================================================
MSG: perception_interface_msgs/PoleLineTypeEnum
uint8 POLE_LINE_TYPE_UNKNOWN = 0
uint8 POLE_LINE_TYPE_GENERAL_POLE = 1
uint8 POLE_LINE_TYPE_LIGHT_POLE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficSignPerception
uint8 VISION_PERCEPTION_TRAFFIC_SIGN_RESULT = 1
uint8 VISION_PERCEPTION_TRAFFIC_SIGN_RESERVED_INFOS = 2
uint64 available
perception_interface_msgs/TrafficSign[] traffic_signs
string[] reserved_infos

================================================================================
MSG: perception_interface_msgs/TrafficSign
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficSignPoint[] points_2d
uint32 track_id
perception_interface_msgs/TrafficSignShapeEnum shape_info
perception_interface_msgs/Rect4f bounding_box_2d
bool is_speed_sign
perception_interface_msgs/SpeedSignTypeEnum speed_type
perception_interface_msgs/SpeedSignSpeedEnum speed_num
bool is_road_mark
perception_interface_msgs/RoadMarkTypeEnum road_mark_type
perception_interface_msgs/TrafficSignTypeEnum type_info
perception_interface_msgs/SpeedSignCategoryEnum speedsign_category
bool is_restriction_sign
perception_interface_msgs/RestrictionSignTypeEnum restriction_type
float32 restriction_value
perception_interface_msgs/ReservedParkingSignSubtypeEnum reseved_parking_subtype
bool is_multi_cam
perception_interface_msgs/Point3d position
perception_interface_msgs/TrafficSignArrowDirectionEnum arrow_direction
perception_interface_msgs/TrafficSignRegionEnum region
bool is_condition_weather
bool is_condition_arrow
bool is_condition_period
bool is_condition_ramp
bool is_condition_exit
bool is_condition_vehicle_type
bool is_condition_school
bool is_condition_arrow_left
bool is_condition_arrow_right
bool is_condition_arrow_front
bool is_condition_regional

================================================================================
MSG: perception_interface_msgs/TrafficSignPoint
perception_interface_msgs/Point2f position
float32 visibility

================================================================================
MSG: perception_interface_msgs/TrafficSignShapeEnum
uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1
uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2
uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3
uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4
uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5
uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6
uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7
uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8
uint8 value

================================================================================
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

================================================================================
MSG: perception_interface_msgs/SpeedSignTypeEnum
uint8 SPEED_SIGN_TYPE_UNKNOWN = 0
uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1
uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2
uint8 SPEED_SIGN_TYPE_DESPEED = 3
uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/SpeedSignSpeedEnum
uint8 SPEED_SIGN_SPEED_UNKNOWN = 0
uint8 SPEED_SIGN_SPEED_5 = 1
uint8 SPEED_SIGN_SPEED_10 = 2
uint8 SPEED_SIGN_SPEED_15 = 3
uint8 SPEED_SIGN_SPEED_20 = 4
uint8 SPEED_SIGN_SPEED_25 = 5
uint8 SPEED_SIGN_SPEED_30 = 6
uint8 SPEED_SIGN_SPEED_35 = 7
uint8 SPEED_SIGN_SPEED_40 = 8
uint8 SPEED_SIGN_SPEED_50 = 9
uint8 SPEED_SIGN_SPEED_60 = 10
uint8 SPEED_SIGN_SPEED_70 = 11
uint8 SPEED_SIGN_SPEED_80 = 12
uint8 SPEED_SIGN_SPEED_90 = 13
uint8 SPEED_SIGN_SPEED_100 = 14
uint8 SPEED_SIGN_SPEED_110 = 15
uint8 SPEED_SIGN_SPEED_120 = 16
uint8 SPEED_SIGN_SPEED_130 = 17
uint8 SPEED_SIGN_SPEED_140 = 18
uint8 SPEED_SIGN_SPEED_45 = 19
uint8 SPEED_SIGN_SPEED_55 = 20
uint8 SPEED_SIGN_SPEED_65 = 21
uint8 SPEED_SIGN_SPEED_75 = 22
uint8 SPEED_SIGN_SPEED_85 = 23
uint8 value

================================================================================
MSG: perception_interface_msgs/RoadMarkTypeEnum
uint8 ROAD_MARK_TYPE_UNKNOWN = 0
uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3
uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4
uint8 ROAD_MARK_TYPE_TURN_LEFT = 5
uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6
uint8 ROAD_MARK_TYPE_TURN_BACK = 7
uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8
uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9
uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10
uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficSignTypeEnum
uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_TYPE_OTHER = 1
uint8 TRAFFIC_SIGN_TYPE_STOP = 2
uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3
uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5
uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6
uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7
uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8
uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9
uint8 TRAFFIC_SIGN_TYPE_RAMP = 10
uint8 TRAFFIC_SIGN_TYPE_EXIT = 11
uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12
uint8 TRAFFIC_SIGN_TYPE_TIME = 13
uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14
uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15
uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16
uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17
uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18
uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19
uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20
uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21
uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24
uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25
uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28
uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29
uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30
uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31
uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32
uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33
uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34
uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36
uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37
uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39
uint8 TRAFFIC_SIGN_TYPE_PARKING = 40
uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41
uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42
uint8 value

================================================================================
MSG: perception_interface_msgs/SpeedSignCategoryEnum
uint8 SPEED_SIGN_CATEGORY_UNKNOWN = 0
uint8 SPEED_SIGN_CATEGORY_ORDINARY = 1
uint8 SPEED_SIGN_CATEGORY_ELECTRONIC = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/RestrictionSignTypeEnum
uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0
uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1
uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2
uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/ReservedParkingSignSubtypeEnum
uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0
uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1
uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2
uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3
uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4
uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5
uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6
uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/TrafficSignArrowDirectionEnum
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3
uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficSignRegionEnum
uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_REGION_CN = 1
uint8 TRAFFIC_SIGN_REGION_EU = 2
uint8 TRAFFIC_SIGN_REGION_US = 3
uint8 value

")



(provide :perception_interface_msgs/MLocPerception "411afc801397b1352688d7de607d356c")


