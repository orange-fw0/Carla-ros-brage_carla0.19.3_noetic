; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionParkingSlotResult.msg.html

(cl:defclass <FusionParkingSlotResult> (roslisp-msg-protocol:ros-message)
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
   (parking_slot
    :reader parking_slot
    :initarg :parking_slot
    :type perception_interface_msgs-msg:FusionParkingSlot
    :initform (cl:make-instance 'perception_interface_msgs-msg:FusionParkingSlot)))
)

(cl:defclass FusionParkingSlotResult (<FusionParkingSlotResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionParkingSlotResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionParkingSlotResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionParkingSlotResult> is deprecated: use perception_interface_msgs-msg:FusionParkingSlotResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FusionParkingSlotResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <FusionParkingSlotResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:meta-val is deprecated.  Use perception_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'parking_slot-val :lambda-list '(m))
(cl:defmethod parking_slot-val ((m <FusionParkingSlotResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:parking_slot-val is deprecated.  Use perception_interface_msgs-msg:parking_slot instead.")
  (parking_slot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionParkingSlotResult>) ostream)
  "Serializes a message object of type '<FusionParkingSlotResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_slot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionParkingSlotResult>) istream)
  "Deserializes a message object of type '<FusionParkingSlotResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_slot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionParkingSlotResult>)))
  "Returns string type for a message object of type '<FusionParkingSlotResult>"
  "perception_interface_msgs/FusionParkingSlotResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionParkingSlotResult)))
  "Returns string type for a message object of type 'FusionParkingSlotResult"
  "perception_interface_msgs/FusionParkingSlotResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionParkingSlotResult>)))
  "Returns md5sum for a message object of type '<FusionParkingSlotResult>"
  "ec0b72689c0d478b1680208a15610491")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionParkingSlotResult)))
  "Returns md5sum for a message object of type 'FusionParkingSlotResult"
  "ec0b72689c0d478b1680208a15610491")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionParkingSlotResult>)))
  "Returns full string definition for message of type '<FusionParkingSlotResult>"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionFusionResultMeta meta~%perception_interface_msgs/FusionParkingSlot parking_slot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionFusionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlot~%uint8 FUSION_PARKING_SLOT_AVAILABLE_DATA = 1~%uint8 FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT = 2~%uint8 FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO = 4~%uint8 available~%perception_interface_msgs/FusionParkingSlotData[] parking_slot_data~%perception_interface_msgs/EgoParkingSlot ego_parking_slot~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: perception_interface_msgs/EgoParkingSlot~%uint64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionParkingSlotResult)))
  "Returns full string definition for message of type 'FusionParkingSlotResult"
  (cl:format cl:nil "std_msgs/Header header~%perception_interface_msgs/PerceptionFusionResultMeta meta~%perception_interface_msgs/FusionParkingSlot parking_slot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionFusionResultMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%string version_tag~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlot~%uint8 FUSION_PARKING_SLOT_AVAILABLE_DATA = 1~%uint8 FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT = 2~%uint8 FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO = 4~%uint8 available~%perception_interface_msgs/FusionParkingSlotData[] parking_slot_data~%perception_interface_msgs/EgoParkingSlot ego_parking_slot~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: perception_interface_msgs/EgoParkingSlot~%uint64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionParkingSlotResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_slot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionParkingSlotResult>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionParkingSlotResult
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':parking_slot (parking_slot msg))
))
