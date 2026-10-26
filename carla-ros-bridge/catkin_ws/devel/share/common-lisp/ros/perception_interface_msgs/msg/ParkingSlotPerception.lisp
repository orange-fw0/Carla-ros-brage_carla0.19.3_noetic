; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotPerception.msg.html

(cl:defclass <ParkingSlotPerception> (roslisp-msg-protocol:ros-message)
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
    :type cl:integer
    :initform 0)
   (parking_slots
    :reader parking_slots
    :initarg :parking_slots
    :type (cl:vector perception_interface_msgs-msg:ParkingSlot)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:ParkingSlot :initial-element (cl:make-instance 'perception_interface_msgs-msg:ParkingSlot)))
   (reserved_infos
    :reader reserved_infos
    :initarg :reserved_infos
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ParkingSlotPerception (<ParkingSlotPerception>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotPerception>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotPerception)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotPerception> is deprecated: use perception_interface_msgs-msg:ParkingSlotPerception instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingSlotPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:header-val is deprecated.  Use perception_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <ParkingSlotPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:meta-val is deprecated.  Use perception_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ParkingSlotPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'parking_slots-val :lambda-list '(m))
(cl:defmethod parking_slots-val ((m <ParkingSlotPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:parking_slots-val is deprecated.  Use perception_interface_msgs-msg:parking_slots instead.")
  (parking_slots m))

(cl:ensure-generic-function 'reserved_infos-val :lambda-list '(m))
(cl:defmethod reserved_infos-val ((m <ParkingSlotPerception>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_infos-val is deprecated.  Use perception_interface_msgs-msg:reserved_infos instead.")
  (reserved_infos m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSlotPerception>)))
    "Constants for message type '<ParkingSlotPerception>"
  '((:VISION_PERCEPTION_PARKING_SLOT_RESULT . 1)
    (:VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSlotPerception)))
    "Constants for message type 'ParkingSlotPerception"
  '((:VISION_PERCEPTION_PARKING_SLOT_RESULT . 1)
    (:VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotPerception>) ostream)
  "Serializes a message object of type '<ParkingSlotPerception>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_slots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_slots))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved_infos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'reserved_infos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotPerception>) istream)
  "Deserializes a message object of type '<ParkingSlotPerception>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_slots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_slots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:ParkingSlot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved_infos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved_infos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotPerception>)))
  "Returns string type for a message object of type '<ParkingSlotPerception>"
  "perception_interface_msgs/ParkingSlotPerception")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotPerception)))
  "Returns string type for a message object of type 'ParkingSlotPerception"
  "perception_interface_msgs/ParkingSlotPerception")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotPerception>)))
  "Returns md5sum for a message object of type '<ParkingSlotPerception>"
  "39f01e8e4feaace55b9cc034ecd0d055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotPerception)))
  "Returns md5sum for a message object of type 'ParkingSlotPerception"
  "39f01e8e4feaace55b9cc034ecd0d055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotPerception>)))
  "Returns full string definition for message of type '<ParkingSlotPerception>"
  (cl:format cl:nil "uint8 VISION_PERCEPTION_PARKING_SLOT_RESULT = 1~%uint8 VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS = 2~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint64 available~%perception_interface_msgs/ParkingSlot[] parking_slots~%string[] reserved_infos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlot~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%perception_interface_msgs/ParkingSlotPoint[] corner_points~%perception_interface_msgs/ParkingSlotCenterPoint center_point~%perception_interface_msgs/Point2f[] wheel_stop_points~%perception_interface_msgs/ParkingSlotPoint3d[] points_3d~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint~%perception_interface_msgs/Point2f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotCenterPoint~%perception_interface_msgs/Point2f position~%perception_interface_msgs/ParkingSlotTypeEnum available_type~%float32 confidence~%float32 center_line_angle~%perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type~%perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type~%float32 special_confidence~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotTypeEnum~%uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum~%uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum~%uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint3d~%perception_interface_msgs/Point3f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotPerception)))
  "Returns full string definition for message of type 'ParkingSlotPerception"
  (cl:format cl:nil "uint8 VISION_PERCEPTION_PARKING_SLOT_RESULT = 1~%uint8 VISION_PERCEPTION_PARKING_SLOT_RESERVED_INFOS = 2~%std_msgs/Header header~%perception_interface_msgs/PerceptionMeta meta~%uint64 available~%perception_interface_msgs/ParkingSlot[] parking_slots~%string[] reserved_infos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_interface_msgs/PerceptionMeta~%string algorithm_name~%string instance_name~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%perception_interface_msgs/FrameMeta[] relevant_frames~%string version_tag~%string ts_log~%uint64 sequence~%string task_tag~%~%================================================================================~%MSG: perception_interface_msgs/FrameMeta~%uint64 timestamp_us~%uint64 sequence~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/CameraModelEnum~%uint8 CAMERA_MODEL_UNKNOWN = 0~%uint8 CAMERA_MODEL_RAW = 1~%uint8 CAMERA_MODEL_CYLINDER = 2~%uint8 CAMERA_MODEL_DEDISTORT = 3~%uint8 CAMERA_MODEL_PSTITCH = 4~%uint8 CAMERA_MODEL_RESERVED_A = 5~%uint8 CAMERA_MODEL_RESERVED_B = 6~%uint8 CAMERA_MODEL_RESERVED_C = 7~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlot~%perception_interface_msgs/CameraSourceEnum camera_source~%perception_interface_msgs/CameraModelEnum camera_model~%uint8 available~%perception_interface_msgs/ParkingSlotPoint[] corner_points~%perception_interface_msgs/ParkingSlotCenterPoint center_point~%perception_interface_msgs/Point2f[] wheel_stop_points~%perception_interface_msgs/ParkingSlotPoint3d[] points_3d~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint~%perception_interface_msgs/Point2f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotCenterPoint~%perception_interface_msgs/Point2f position~%perception_interface_msgs/ParkingSlotTypeEnum available_type~%float32 confidence~%float32 center_line_angle~%perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type~%perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type~%float32 special_confidence~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotTypeEnum~%uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum~%uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum~%uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPoint3d~%perception_interface_msgs/Point3f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotPerception>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_slots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_infos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotPerception>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotPerception
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':available (available msg))
    (cl:cons ':parking_slots (parking_slots msg))
    (cl:cons ':reserved_infos (reserved_infos msg))
))
