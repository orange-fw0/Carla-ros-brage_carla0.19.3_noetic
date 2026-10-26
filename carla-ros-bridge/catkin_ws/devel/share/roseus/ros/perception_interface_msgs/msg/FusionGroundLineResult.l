;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionGroundLineResult)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionGroundLineResult (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINERESULT")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONGROUNDLINERESULT"))

(in-package "ROS")
;;//! \htmlinclude FusionGroundLineResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::FusionGroundLineResult
  :super ros::object
  :slots (_header _meta _ground_line ))

(defmethod perception_interface_msgs::FusionGroundLineResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionFusionResultMeta :init))
    ((:ground_line __ground_line) (instance perception_interface_msgs::FusionGroundLine :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _ground_line __ground_line)
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
  (:ground_line
   (&rest __ground_line)
   (if (keywordp (car __ground_line))
       (send* _ground_line __ground_line)
     (progn
       (if __ground_line (setq _ground_line (car __ground_line)))
       _ground_line)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionFusionResultMeta _meta
    (send _meta :serialization-length)
    ;; perception_interface_msgs/FusionGroundLine _ground_line
    (send _ground_line :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/PerceptionFusionResultMeta _meta
       (send _meta :serialize s)
     ;; perception_interface_msgs/FusionGroundLine _ground_line
       (send _ground_line :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/PerceptionFusionResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; perception_interface_msgs/FusionGroundLine _ground_line
     (send _ground_line :deserialize buf ptr-) (incf ptr- (send _ground_line :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FusionGroundLineResult :md5sum-) "5df3705f4a40b6992a60c68bfe941a8e")
(setf (get perception_interface_msgs::FusionGroundLineResult :datatype-) "perception_interface_msgs/FusionGroundLineResult")
(setf (get perception_interface_msgs::FusionGroundLineResult :definition-)
      "std_msgs/Header header
perception_interface_msgs/PerceptionFusionResultMeta meta
perception_interface_msgs/FusionGroundLine ground_line

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
MSG: perception_interface_msgs/PerceptionFusionResultMeta
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
string version_tag

================================================================================
MSG: perception_interface_msgs/FusionGroundLine
uint8 FUSION_GROUND_LINE_AVAILABLE_DATA = 1
uint8 FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO = 2
uint8 available
perception_interface_msgs/FusionGroundLineData[] ground_line_data
string[] reserved_info

================================================================================
MSG: perception_interface_msgs/FusionGroundLineData
uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1
uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2
uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3
uint8 available
perception_interface_msgs/GroundLineTypeEnum type
uint64 track_id
float32 score
perception_interface_msgs/Point3f[] points_fusion
float32[] points_fusion_confidence
perception_interface_msgs/Point3f[] local_points_fusion
float32[] local_points_fusion_confidence
perception_interface_msgs/FusionObstacleTypeEnum obstacle_type
perception_interface_msgs/FusionObstaclePointType obstacle_point_type
string reserved_info
float32[] points_height

================================================================================
MSG: perception_interface_msgs/GroundLineTypeEnum
uint8 GROUND_LINE_TYPE_UNKNOWN = 0
uint8 GROUND_LINE_TYPE_WALL = 1
uint8 GROUND_LINE_TYPE_PILLAR = 2
uint8 GROUND_LINE_TYPE_FENCE = 3
uint8 GROUND_LINE_TYPE_STEP = 4
uint8 GROUND_LINE_TYPE_SPECIAL = 5
uint8 GROUND_LINE_TYPE_POLE = 6
uint8 GROUND_LINE_TYPE_WHEELSTOP = 7
uint8 GROUNDLINE_TYPE_BARRIER = 8
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11
uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/FusionObstacleTypeEnum
uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0
uint8 FUSION_OBSTACLE_TYPE_WALL = 1
uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2
uint8 FUSION_OBSTACLE_TYPE_FENCE = 3
uint8 FUSION_OBSTACLE_TYPE_STEP = 4
uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5
uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6
uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7
uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8
uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11
uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12
uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13
uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14
uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15
uint8 value

================================================================================
MSG: perception_interface_msgs/FusionObstaclePointType
uint8 POINT_TYPE_UNKNOWN = 0
uint8 POINT_TYPE_SCATTER = 1
uint8 POINT_TYPE_POLYLINE = 2
uint8 value

")



(provide :perception_interface_msgs/FusionGroundLineResult "5df3705f4a40b6992a60c68bfe941a8e")


