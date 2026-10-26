; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FeaturePointPerception.msg.html

(cl:defclass <FeaturePointPerception> (roslisp-msg-protocol:ros-message)
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
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (feature_point_arrays
    :reader feature_point_arrays
    :initarg :feature_point_arrays
    :type (cl:vector perception_interface_msgs-msg:FeaturePointArray)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:FeaturePointArray :initial-element (cl:make-instance 'perception_interface_msgs-msg:FeaturePointArray))))
)

(cl:defclass FeaturePointPerception (<FeaturePointPerception>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeaturePointPerception>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeaturePointPerception)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FeaturePointPerception> is deprecated: use perception_interface_msgs-msg:FeaturePointPerception instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FeaturePointPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <FeaturePointPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:meta-val is deprecated.  Use perception_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <FeaturePointPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'feature_point_arrays-val :lambda-list '(m))
(cl:defmethod feature_point_arrays-val ((m <FeaturePointPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:feature_point_arrays-val is deprecated.  Use perception_interface_msgs-msg:feature_point_arrays instead.")
  (feature_point_arrays m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FeaturePointPerception>)))
    "Constants for message type '<FeaturePointPerception>"
  '((:VISION_PERCEPTION_FEATURE_POINT_RESULT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FeaturePointPerception)))
    "Constants for message type 'FeaturePointPerception"
  '((:VISION_PERCEPTION_FEATURE_POINT_RESULT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeaturePointPerception>) ostream)
  "Serializes a message object of type '<FeaturePointPerception>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_point_arrays))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'feature_point_arrays))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeaturePointPerception>) istream)
  "Deserializes a message object of type '<FeaturePointPerception>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_point_arrays) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_point_arrays)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:FeaturePointArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeaturePointPerception>)))
  "Returns string type for a message object of type '<FeaturePointPerception>"
  "perception_interface_msgs/FeaturePointPerception")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeaturePointPerception)))
  "Returns string type for a message object of type 'FeaturePointPerception"
  "perception_interface_msgs/FeaturePointPerception")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeaturePointPerception>)))
  "Returns md5sum for a message object of type '<FeaturePointPerception>"
  "0d193d1b9d16255b54f377847d356285")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeaturePointPerception)))
  "Returns md5sum for a message object of type 'FeaturePointPerception"
  "0d193d1b9d16255b54f377847d356285")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeaturePointPerception>)))
  "Returns full string definition for message of type '<FeaturePointPerception>"
  (cl:format cl:nil "uint8 VISION_PERCEPTION_FEATURE_POINT_RESULT = 1~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint8 available~%perception_interface_msgs/FeaturePointArray[] feature_point_arrays~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FeaturePointArray~%string tag~%uint8 available~%int32 num_point~%uint32[] track_ids~%float32[] point_xs~%float32[] point_ys~%int32 descriptor_size~%float32[] descriptors~%string log_info_2d~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeaturePointPerception)))
  "Returns full string definition for message of type 'FeaturePointPerception"
  (cl:format cl:nil "uint8 VISION_PERCEPTION_FEATURE_POINT_RESULT = 1~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint8 available~%perception_interface_msgs/FeaturePointArray[] feature_point_arrays~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FeaturePointArray~%string tag~%uint8 available~%int32 num_point~%uint32[] track_ids~%float32[] point_xs~%float32[] point_ys~%int32 descriptor_size~%float32[] descriptors~%string log_info_2d~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeaturePointPerception>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_point_arrays) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeaturePointPerception>))
  "Converts a ROS message object to a list"
  (cl:list 'FeaturePointPerception
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':available (available msg))
    (cl:cons ':feature_point_arrays (feature_point_arrays msg))
))
