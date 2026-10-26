;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightPerception)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightPerception (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTPERCEPTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTPERCEPTION"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightPerception.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*VISION_PERCEPTION_TRAFFIC_LIGHT_RESULT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTPERCEPTION"))
(shadow '*VISION_PERCEPTION_TRAFFIC_LIGHT_RESULT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTPERCEPTION"))
(defconstant perception_interface_msgs::TrafficLightPerception::*VISION_PERCEPTION_TRAFFIC_LIGHT_RESULT* 1)

(defun perception_interface_msgs::TrafficLightPerception-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::TrafficLightPerception::*VISION_PERCEPTION_TRAFFIC_LIGHT_RESULT*)
        (t nil)))

(defclass perception_interface_msgs::TrafficLightPerception
  :super ros::object
  :slots (_header _meta _available _traffic_light_perception_result ))

(defmethod perception_interface_msgs::TrafficLightPerception
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionMeta :init))
    ((:available __available) 0)
    ((:traffic_light_perception_result __traffic_light_perception_result) (instance perception_interface_msgs::TrafficLightPerceptionResult :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _traffic_light_perception_result __traffic_light_perception_result)
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
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:traffic_light_perception_result
   (&rest __traffic_light_perception_result)
   (if (keywordp (car __traffic_light_perception_result))
       (send* _traffic_light_perception_result __traffic_light_perception_result)
     (progn
       (if __traffic_light_perception_result (setq _traffic_light_perception_result (car __traffic_light_perception_result)))
       _traffic_light_perception_result)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionMeta _meta
    (send _meta :serialization-length)
    ;; uint64 _available
    8
    ;; perception_interface_msgs/TrafficLightPerceptionResult _traffic_light_perception_result
    (send _traffic_light_perception_result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/PerceptionMeta _meta
       (send _meta :serialize s)
     ;; uint64 _available
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _available (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _available) (= (length (_available . bv)) 2)) ;; bignum
              (write-long (ash (elt (_available . bv) 0) 0) s)
              (write-long (ash (elt (_available . bv) 1) -1) s))
             ((and (class _available) (= (length (_available . bv)) 1)) ;; big1
              (write-long (elt (_available . bv) 0) s)
              (write-long (if (>= _available 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _available s)(write-long (if (>= _available 0) 0 #xffffffff) s)))
     ;; perception_interface_msgs/TrafficLightPerceptionResult _traffic_light_perception_result
       (send _traffic_light_perception_result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/PerceptionMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; uint64 _available
     
#+(or :alpha :irix6 :x86_64)
      (setf _available (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _available (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; perception_interface_msgs/TrafficLightPerceptionResult _traffic_light_perception_result
     (send _traffic_light_perception_result :deserialize buf ptr-) (incf ptr- (send _traffic_light_perception_result :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficLightPerception :md5sum-) "035e562e07c56e429bd78f8daa3206c2")
(setf (get perception_interface_msgs::TrafficLightPerception :datatype-) "perception_interface_msgs/TrafficLightPerception")
(setf (get perception_interface_msgs::TrafficLightPerception :definition-)
      "uint8 VISION_PERCEPTION_TRAFFIC_LIGHT_RESULT = 1
std_msgs/Header header
perception_interface_msgs/PerceptionMeta meta
uint64 available
perception_interface_msgs/TrafficLightPerceptionResult traffic_light_perception_result

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
MSG: perception_interface_msgs/TrafficLightPerceptionResult
uint64 cross_id
perception_interface_msgs/TrafficLightInFov in_fov
perception_interface_msgs/TrafficLightROI[] traffic_light_roi
perception_interface_msgs/TrafficLightSingleFrame[] traffic_light_single_frame
perception_interface_msgs/TrafficLightMultiFrame[] traffic_light_multi_frame
perception_interface_msgs/TrafficLightDecision[] traffic_light_decision
perception_interface_msgs/HDMapTafficLightInformation hdmap_traffic_light_information
perception_interface_msgs/PhysicalTrafficLightSingleFrame[] physical_traffic_light_single_frame
perception_interface_msgs/PhysicalTrafficLightMultiFrame[] physical_traffic_light_multi_frame

================================================================================
MSG: perception_interface_msgs/TrafficLightInFov
uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1
uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2
uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4
uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8
uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightROI
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/Rect4f roi

================================================================================
MSG: perception_interface_msgs/Rect4f
float32 left
float32 top
float32 right
float32 bottom

================================================================================
MSG: perception_interface_msgs/TrafficLightSingleFrame
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficLightTypeEnum type
perception_interface_msgs/Rect4f bounding_box_2d
float32[] features
int32 track_id
perception_interface_msgs/TrafficLightPatternEnum[] pattern
perception_interface_msgs/TrafficLightStatusEnum[] status
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
perception_interface_msgs/TrafficLightNumberEnum[] number
float32[] glim_type_scores
float32[] pattern_scores
float32[] status_scores
float32[] onoff_scores
float32[] number_scores
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

================================================================================
MSG: perception_interface_msgs/TrafficLightTypeEnum
uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightPatternEnum
uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightStatusEnum
uint8 TRAFFIC_LIGHT_STATUS_RED = 0
uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightOnOffEnum
uint8 TRAFFIC_LIGHT_ONOFF_ON = 0
uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1
uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2
uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightNumberEnum
uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0
uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1
uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2
uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3
uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4
uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5
uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6
uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7
uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8
uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9
uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10
uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11
uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12
uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16
uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17
uint8 value

================================================================================
MSG: perception_interface_msgs/Shape3f
float32 length
float32 height
float32 width

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/Vector2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/TrafficLightAssociatedInfo
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
uint32 track_id

================================================================================
MSG: perception_interface_msgs/TrafficLightMultiFrame
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/TrafficLightTypeEnum type
int32 track_id
perception_interface_msgs/TrafficLightPatternEnum[] pattern
perception_interface_msgs/TrafficLightStatusEnum[] status
float32[] pattern_score
float32[] status_score
float32 duration
float32 remaining
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

================================================================================
MSG: perception_interface_msgs/TrafficLightDecision
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
perception_interface_msgs/TrafficLightPatternEnum pattern
perception_interface_msgs/TrafficLightStatusEnum status
float32 duration
float32 remaining
uint8 count_number
float32 score
string reserved_info
perception_interface_msgs/TrafficLightPositionFeature pos_feature

================================================================================
MSG: perception_interface_msgs/TrafficLightPositionFeature
perception_interface_msgs/Point3f position
float32 yaw

================================================================================
MSG: perception_interface_msgs/HDMapTafficLightInformation
bool valid
bool in_intersection
perception_interface_msgs/HDMapIntersection[] hdmap_intersecions

================================================================================
MSG: perception_interface_msgs/HDMapIntersection
perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line
perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups

================================================================================
MSG: perception_interface_msgs/HDMapIntersectionStopLine
float64 distance_to_stop_line
float64 distance_buffer

================================================================================
MSG: perception_interface_msgs/HDMapTrafficLightGroup
uint64 track_id
perception_interface_msgs/HDMapTrafficLight[] traffic_lights

================================================================================
MSG: perception_interface_msgs/HDMapTrafficLight
perception_interface_msgs/Point3d[] boundary
perception_interface_msgs/TrafficLightPatternEnum pattern
bool on_route

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/PhysicalTrafficLightSingleFrame
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficLightGroupEnum group_type
perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type
perception_interface_msgs/TrafficLightGroupPropertyEnum group_property
uint8 bulb_num
perception_interface_msgs/PhysicalTrafficLightBulb[] bulb
perception_interface_msgs/Rect4f bounding_box_2d
int32 track_id
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
float32[] group_type_scores
float32[] shape_scores
float32[] onoff_scores
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

================================================================================
MSG: perception_interface_msgs/TrafficLightGroupEnum
uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0
uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1
uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2
uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3
uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4
uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5
uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightGroupShapeEnum
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9
uint8 value

================================================================================
MSG: perception_interface_msgs/TrafficLightGroupPropertyEnum
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7
uint8 value

================================================================================
MSG: perception_interface_msgs/PhysicalTrafficLightBulb
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficLightTypeEnum type
perception_interface_msgs/Rect4f bounding_box_2d
int32 track_id
perception_interface_msgs/TrafficLightPatternEnum[] pattern
perception_interface_msgs/TrafficLightStatusEnum[] status
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
perception_interface_msgs/TrafficLightNumberEnum[] number
float32[] glim_type_scores
float32[] pattern_scores
float32[] status_scores
float32[] onoff_scores
float32[] number_scores
uint8 bulb_id
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

================================================================================
MSG: perception_interface_msgs/PhysicalTrafficLightMultiFrame
perception_interface_msgs/CameraSourceEnum camera_source
perception_interface_msgs/CameraModelEnum camera_model
float32 score
perception_interface_msgs/TrafficLightGroupEnum group_type
perception_interface_msgs/TrafficLightGroupShapeEnum group_shape_type
perception_interface_msgs/TrafficLightGroupPropertyEnum group_property
uint8 bulb_num
perception_interface_msgs/PhysicalTrafficLightBulb[] bulb
perception_interface_msgs/Rect4f bounding_box_2d
int32 track_id
perception_interface_msgs/TrafficLightOnOffEnum[] onoff
float32[] group_type_scores
float32[] shape_scores
float32[] onoff_scores
uint8 count_number
perception_interface_msgs/Shape3f shape_3d
perception_interface_msgs/Point3f location_bv
float32 heading_theta_bv
perception_interface_msgs/Vector2f velocity_bv
perception_interface_msgs/TrafficLightAssociatedInfo[] associated_infos
string reserved_info

")



(provide :perception_interface_msgs/TrafficLightPerception "035e562e07c56e429bd78f8daa3206c2")


