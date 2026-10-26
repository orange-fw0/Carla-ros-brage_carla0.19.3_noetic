; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionGroundLineResult.msg.html

(cl:defclass <FusionGroundLineResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type perception_interface_msgs-msg:PerceptionFusionResultMeta
    :initform (cl:make-instance 'perception_interface_msgs-msg:PerceptionFusionResultMeta))
   (ground_line
    :reader ground_line
    :initarg :ground_line
    :type perception_interface_msgs-msg:FusionGroundLine
    :initform (cl:make-instance 'perception_interface_msgs-msg:FusionGroundLine)))
)

(cl:defclass FusionGroundLineResult (<FusionGroundLineResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionGroundLineResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionGroundLineResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionGroundLineResult> is deprecated: use perception_interface_msgs-msg:FusionGroundLineResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FusionGroundLineResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <FusionGroundLineResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:meta-val is deprecated.  Use perception_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'ground_line-val :lambda-list '(m))
(cl:defmethod ground_line-val ((m <FusionGroundLineResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ground_line-val is deprecated.  Use perception_interface_msgs-msg:ground_line instead.")
  (ground_line m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionGroundLineResult>) ostream)
  "Serializes a message object of type '<FusionGroundLineResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ground_line) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionGroundLineResult>) istream)
  "Deserializes a message object of type '<FusionGroundLineResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ground_line) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionGroundLineResult>)))
  "Returns string type for a message object of type '<FusionGroundLineResult>"
  "perception_interface_msgs/FusionGroundLineResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionGroundLineResult)))
  "Returns string type for a message object of type 'FusionGroundLineResult"
  "perception_interface_msgs/FusionGroundLineResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionGroundLineResult>)))
  "Returns md5sum for a message object of type '<FusionGroundLineResult>"
  "5df3705f4a40b6992a60c68bfe941a8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionGroundLineResult)))
  "Returns md5sum for a message object of type 'FusionGroundLineResult"
  "5df3705f4a40b6992a60c68bfe941a8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionGroundLineResult>)))
  "Returns full string definition for message of type '<FusionGroundLineResult>"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionFusionResultMeta meta~%perception_interface_msgs/FusionGroundLine ground_line~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionFusionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%================================================================================~%MSG: perception_interface_msgs/FusionGroundLine~%uint8 FUSION_GROUND_LINE_AVAILABLE_DATA = 1~%uint8 FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO = 2~%uint8 available~%perception_interface_msgs/FusionGroundLineData[] ground_line_data~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionGroundLineData~%uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1~%uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2~%uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3~%uint8 available~%perception_interface_msgs/GroundLineTypeEnum type~%uint64 track_id~%float32 score~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/FusionObstacleTypeEnum obstacle_type~%perception_interface_msgs/FusionObstaclePointType obstacle_point_type~%string reserved_info~%float32[] points_height~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstacleTypeEnum~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstaclePointType~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionGroundLineResult)))
  "Returns full string definition for message of type 'FusionGroundLineResult"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionFusionResultMeta meta~%perception_interface_msgs/FusionGroundLine ground_line~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionFusionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%================================================================================~%MSG: perception_interface_msgs/FusionGroundLine~%uint8 FUSION_GROUND_LINE_AVAILABLE_DATA = 1~%uint8 FUSION_GROUND_LINE_AVAILABLE_RESERVED_INFO = 2~%uint8 available~%perception_interface_msgs/FusionGroundLineData[] ground_line_data~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionGroundLineData~%uint8 FUSION_GROUND_LINE_SOURCE_VISON = 1~%uint8 FUSION_GROUND_LINE_SOURCE_ULTRASONIC = 2~%uint8 FUSION_GROUND_LINE_SOURCE_DDUSS = 3~%uint8 available~%perception_interface_msgs/GroundLineTypeEnum type~%uint64 track_id~%float32 score~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/FusionObstacleTypeEnum obstacle_type~%perception_interface_msgs/FusionObstaclePointType obstacle_point_type~%string reserved_info~%float32[] points_height~%~%================================================================================~%MSG: perception_interface_msgs/GroundLineTypeEnum~%uint8 GROUND_LINE_TYPE_UNKNOWN = 0~%uint8 GROUND_LINE_TYPE_WALL = 1~%uint8 GROUND_LINE_TYPE_PILLAR = 2~%uint8 GROUND_LINE_TYPE_FENCE = 3~%uint8 GROUND_LINE_TYPE_STEP = 4~%uint8 GROUND_LINE_TYPE_SPECIAL = 5~%uint8 GROUND_LINE_TYPE_POLE = 6~%uint8 GROUND_LINE_TYPE_WHEELSTOP = 7~%uint8 GROUNDLINE_TYPE_BARRIER = 8~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_OPENLINE = 9~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_RIGHTLINE = 10~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_BOTTOMLINE = 11~%uint8 GROUNDLINE_TYPE_MACHINE_SLOT_LEFTLINE = 12~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstacleTypeEnum~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionObstaclePointType~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_SCATTER = 1~%uint8 POINT_TYPE_POLYLINE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionGroundLineResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ground_line))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionGroundLineResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionGroundLineResult
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':ground_line (ground_line msg))
))
