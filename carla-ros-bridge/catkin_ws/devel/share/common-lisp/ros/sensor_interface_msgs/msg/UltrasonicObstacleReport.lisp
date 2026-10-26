; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicObstacleReport.msg.html

(cl:defclass <UltrasonicObstacleReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (uss_common_obstacle_result
    :reader uss_common_obstacle_result
    :initarg :uss_common_obstacle_result
    :type sensor_interface_msgs-msg:UssCommonObstacleResult
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssCommonObstacleResult))
   (uss_keypoint_obstacle_result
    :reader uss_keypoint_obstacle_result
    :initarg :uss_keypoint_obstacle_result
    :type sensor_interface_msgs-msg:UssKeyPointObstacleResult
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssKeyPointObstacleResult)))
)

(cl:defclass UltrasonicObstacleReport (<UltrasonicObstacleReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicObstacleReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicObstacleReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicObstacleReport> is deprecated: use sensor_interface_msgs-msg:UltrasonicObstacleReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UltrasonicObstacleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <UltrasonicObstacleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'uss_common_obstacle_result-val :lambda-list '(m))
(cl:defmethod uss_common_obstacle_result-val ((m <UltrasonicObstacleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_common_obstacle_result-val is deprecated.  Use sensor_interface_msgs-msg:uss_common_obstacle_result instead.")
  (uss_common_obstacle_result m))

(cl:ensure-generic-function 'uss_keypoint_obstacle_result-val :lambda-list '(m))
(cl:defmethod uss_keypoint_obstacle_result-val ((m <UltrasonicObstacleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_keypoint_obstacle_result-val is deprecated.  Use sensor_interface_msgs-msg:uss_keypoint_obstacle_result instead.")
  (uss_keypoint_obstacle_result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UltrasonicObstacleReport>)))
    "Constants for message type '<UltrasonicObstacleReport>"
  '((:COMMON_USS_OBSTACLE_DATA . 0)
    (:KEYPOINT_USS_OBSTACLE_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UltrasonicObstacleReport)))
    "Constants for message type 'UltrasonicObstacleReport"
  '((:COMMON_USS_OBSTACLE_DATA . 0)
    (:KEYPOINT_USS_OBSTACLE_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicObstacleReport>) ostream)
  "Serializes a message object of type '<UltrasonicObstacleReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_common_obstacle_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_keypoint_obstacle_result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicObstacleReport>) istream)
  "Deserializes a message object of type '<UltrasonicObstacleReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_common_obstacle_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_keypoint_obstacle_result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicObstacleReport>)))
  "Returns string type for a message object of type '<UltrasonicObstacleReport>"
  "sensor_interface_msgs/UltrasonicObstacleReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicObstacleReport)))
  "Returns string type for a message object of type 'UltrasonicObstacleReport"
  "sensor_interface_msgs/UltrasonicObstacleReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicObstacleReport>)))
  "Returns md5sum for a message object of type '<UltrasonicObstacleReport>"
  "6f3d7de847364a57cc960d023029c960")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicObstacleReport)))
  "Returns md5sum for a message object of type 'UltrasonicObstacleReport"
  "6f3d7de847364a57cc960d023029c960")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicObstacleReport>)))
  "Returns full string definition for message of type '<UltrasonicObstacleReport>"
  (cl:format cl:nil "uint8 COMMON_USS_OBSTACLE_DATA = 0~%uint8 KEYPOINT_USS_OBSTACLE_DATA = 1~%std_msgs/Header header~%uint8 available~%sensor_interface_msgs/UssCommonObstacleResult uss_common_obstacle_result~%sensor_interface_msgs/UssKeyPointObstacleResult uss_keypoint_obstacle_result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UssCommonObstacleResult~%sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUltrasonicObstacleData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicObjectType obj_type~%sensor_interface_msgs/UltrasonicObjectHeiType obj_height~%float32 obj_height_probability~%float32 obj_probability~%float32 obj_start_X~%float32 obj_start_Y~%float32 obj_end_X~%float32 obj_end_Y~%float32 obj_height_value~%float32 major_axis_error~%float32 minor_axis_variance~%float32 ellipse_theta_variance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectType~%uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectHeiType~%uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UssKeyPointObstacleResult~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data~%sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts~%~%================================================================================~%MSG: sensor_interface_msgs/UssKeyPointObstacleData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture~%sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObstacleInfo~%uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%================================================================================~%MSG: sensor_interface_msgs/UssRtObstaclePtsData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture~%sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicObstacleReport)))
  "Returns full string definition for message of type 'UltrasonicObstacleReport"
  (cl:format cl:nil "uint8 COMMON_USS_OBSTACLE_DATA = 0~%uint8 KEYPOINT_USS_OBSTACLE_DATA = 1~%std_msgs/Header header~%uint8 available~%sensor_interface_msgs/UssCommonObstacleResult uss_common_obstacle_result~%sensor_interface_msgs/UssKeyPointObstacleResult uss_keypoint_obstacle_result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UssCommonObstacleResult~%sensor_interface_msgs/CommonUltrasonicObstacleData[] uss_obstacle_data~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUltrasonicObstacleData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicObjectType obj_type~%sensor_interface_msgs/UltrasonicObjectHeiType obj_height~%float32 obj_height_probability~%float32 obj_probability~%float32 obj_start_X~%float32 obj_start_Y~%float32 obj_end_X~%float32 obj_end_Y~%float32 obj_height_value~%float32 major_axis_error~%float32 minor_axis_variance~%float32 ellipse_theta_variance~%string reserved_info~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectType~%uint8 NONE = 0~%uint8 POINT = 1~%uint8 STRAIGHT_LINE = 2~%uint8 RAYS = 3~%uint8 LINE_SEGMENT = 5~%uint8 SNA = 7~%uint8 RESERVED_INFO = 8~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObjectHeiType~%uint8 LOW = 0~%uint8 HIGH = 1~%uint8 TRAVERSIBLE = 2~%uint8 UNKONOWN = 3~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/UssKeyPointObstacleResult~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data~%sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts~%~%================================================================================~%MSG: sensor_interface_msgs/UssKeyPointObstacleData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture~%sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObstacleInfo~%uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%================================================================================~%MSG: sensor_interface_msgs/UssRtObstaclePtsData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture~%sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicObstacleReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_common_obstacle_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_keypoint_obstacle_result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicObstacleReport>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicObstacleReport
    (cl:cons ':header (header msg))
    (cl:cons ':available (available msg))
    (cl:cons ':uss_common_obstacle_result (uss_common_obstacle_result msg))
    (cl:cons ':uss_keypoint_obstacle_result (uss_keypoint_obstacle_result msg))
))
