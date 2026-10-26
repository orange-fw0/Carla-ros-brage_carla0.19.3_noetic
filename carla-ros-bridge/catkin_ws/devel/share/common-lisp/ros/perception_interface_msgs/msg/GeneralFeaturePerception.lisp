; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude GeneralFeaturePerception.msg.html

(cl:defclass <GeneralFeaturePerception> (roslisp-msg-protocol:ros-message)
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
   (image_retrieval_descriptor_perception
    :reader image_retrieval_descriptor_perception
    :initarg :image_retrieval_descriptor_perception
    :type perception_interface_msgs-msg:ImageRetrievalDescriptorPerception
    :initform (cl:make-instance 'perception_interface_msgs-msg:ImageRetrievalDescriptorPerception))
   (feature_point_perception
    :reader feature_point_perception
    :initarg :feature_point_perception
    :type perception_interface_msgs-msg:FeaturePointPerception
    :initform (cl:make-instance 'perception_interface_msgs-msg:FeaturePointPerception)))
)

(cl:defclass GeneralFeaturePerception (<GeneralFeaturePerception>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeneralFeaturePerception>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeneralFeaturePerception)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<GeneralFeaturePerception> is deprecated: use perception_interface_msgs-msg:GeneralFeaturePerception instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GeneralFeaturePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <GeneralFeaturePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:meta-val is deprecated.  Use perception_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'image_retrieval_descriptor_perception-val :lambda-list '(m))
(cl:defmethod image_retrieval_descriptor_perception-val ((m <GeneralFeaturePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:image_retrieval_descriptor_perception-val is deprecated.  Use perception_interface_msgs-msg:image_retrieval_descriptor_perception instead.")
  (image_retrieval_descriptor_perception m))

(cl:ensure-generic-function 'feature_point_perception-val :lambda-list '(m))
(cl:defmethod feature_point_perception-val ((m <GeneralFeaturePerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:feature_point_perception-val is deprecated.  Use perception_interface_msgs-msg:feature_point_perception instead.")
  (feature_point_perception m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeneralFeaturePerception>) ostream)
  "Serializes a message object of type '<GeneralFeaturePerception>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_retrieval_descriptor_perception) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feature_point_perception) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeneralFeaturePerception>) istream)
  "Deserializes a message object of type '<GeneralFeaturePerception>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_retrieval_descriptor_perception) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feature_point_perception) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeneralFeaturePerception>)))
  "Returns string type for a message object of type '<GeneralFeaturePerception>"
  "perception_interface_msgs/GeneralFeaturePerception")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeneralFeaturePerception)))
  "Returns string type for a message object of type 'GeneralFeaturePerception"
  "perception_interface_msgs/GeneralFeaturePerception")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeneralFeaturePerception>)))
  "Returns md5sum for a message object of type '<GeneralFeaturePerception>"
  "4da5da729097f5521290e59804909575")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeneralFeaturePerception)))
  "Returns md5sum for a message object of type 'GeneralFeaturePerception"
  "4da5da729097f5521290e59804909575")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeneralFeaturePerception>)))
  "Returns full string definition for message of type '<GeneralFeaturePerception>"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%perception_interface_msgs/ImageRetrievalDescriptorPerception image_retrieval_descriptor_perception~%perception_interface_msgs/FeaturePointPerception feature_point_perception~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ImageRetrievalDescriptorPerception~%uint8 VISION_PERCEPTION_IMAGE_RETRIEVAL_DESCRIPTOR_RESULT = 1~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint64 available~%perception_interface_msgs/ImageRetrievalDescriptor image_descriptor~%~%================================================================================~%MSG: perception_interface_msgs/ImageRetrievalDescriptor~%string tag~%uint8 available~%float32[] feature_descriptor~%string log_info_2d~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FeaturePointPerception~%uint8 VISION_PERCEPTION_FEATURE_POINT_RESULT = 1~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint8 available~%perception_interface_msgs/FeaturePointArray[] feature_point_arrays~%~%================================================================================~%MSG: perception_interface_msgs/FeaturePointArray~%string tag~%uint8 available~%int32 num_point~%uint32[] track_ids~%float32[] point_xs~%float32[] point_ys~%int32 descriptor_size~%float32[] descriptors~%string log_info_2d~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeneralFeaturePerception)))
  "Returns full string definition for message of type 'GeneralFeaturePerception"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%perception_interface_msgs/ImageRetrievalDescriptorPerception image_retrieval_descriptor_perception~%perception_interface_msgs/FeaturePointPerception feature_point_perception~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ImageRetrievalDescriptorPerception~%uint8 VISION_PERCEPTION_IMAGE_RETRIEVAL_DESCRIPTOR_RESULT = 1~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint64 available~%perception_interface_msgs/ImageRetrievalDescriptor image_descriptor~%~%================================================================================~%MSG: perception_interface_msgs/ImageRetrievalDescriptor~%string tag~%uint8 available~%float32[] feature_descriptor~%string log_info_2d~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FeaturePointPerception~%uint8 VISION_PERCEPTION_FEATURE_POINT_RESULT = 1~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint8 available~%perception_interface_msgs/FeaturePointArray[] feature_point_arrays~%~%================================================================================~%MSG: perception_interface_msgs/FeaturePointArray~%string tag~%uint8 available~%int32 num_point~%uint32[] track_ids~%float32[] point_xs~%float32[] point_ys~%int32 descriptor_size~%float32[] descriptors~%string log_info_2d~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeneralFeaturePerception>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_retrieval_descriptor_perception))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feature_point_perception))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeneralFeaturePerception>))
  "Converts a ROS message object to a list"
  (cl:list 'GeneralFeaturePerception
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':image_retrieval_descriptor_perception (image_retrieval_descriptor_perception msg))
    (cl:cons ':feature_point_perception (feature_point_perception msg))
))
