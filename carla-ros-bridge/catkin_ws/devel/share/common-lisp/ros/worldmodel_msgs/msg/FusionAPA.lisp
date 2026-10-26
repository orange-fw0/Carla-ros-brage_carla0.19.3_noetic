; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude FusionAPA.msg.html

(cl:defclass <FusionAPA> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type worldmodel_msgs-msg:FusionAPAMeta
    :initform (cl:make-instance 'worldmodel_msgs-msg:FusionAPAMeta))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (parking_slots
    :reader parking_slots
    :initarg :parking_slots
    :type (cl:vector worldmodel_msgs-msg:ParkingSlotFusionAPAData)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:ParkingSlotFusionAPAData :initial-element (cl:make-instance 'worldmodel_msgs-msg:ParkingSlotFusionAPAData)))
   (ego_parking_slot_track_id
    :reader ego_parking_slot_track_id
    :initarg :ego_parking_slot_track_id
    :type cl:integer
    :initform 0)
   (ego_parking_slot_map_id
    :reader ego_parking_slot_map_id
    :initarg :ego_parking_slot_map_id
    :type cl:integer
    :initform 0)
   (suggested_parking_slot_track_id
    :reader suggested_parking_slot_track_id
    :initarg :suggested_parking_slot_track_id
    :type cl:integer
    :initform 0)
   (suggested_parking_slot_map_id
    :reader suggested_parking_slot_map_id
    :initarg :suggested_parking_slot_map_id
    :type cl:integer
    :initform 0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass FusionAPA (<FusionAPA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionAPA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionAPA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<FusionAPA> is deprecated: use worldmodel_msgs-msg:FusionAPA instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:header-val is deprecated.  Use worldmodel_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:meta-val is deprecated.  Use worldmodel_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'parking_slots-val :lambda-list '(m))
(cl:defmethod parking_slots-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_slots-val is deprecated.  Use worldmodel_msgs-msg:parking_slots instead.")
  (parking_slots m))

(cl:ensure-generic-function 'ego_parking_slot_track_id-val :lambda-list '(m))
(cl:defmethod ego_parking_slot_track_id-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:ego_parking_slot_track_id-val is deprecated.  Use worldmodel_msgs-msg:ego_parking_slot_track_id instead.")
  (ego_parking_slot_track_id m))

(cl:ensure-generic-function 'ego_parking_slot_map_id-val :lambda-list '(m))
(cl:defmethod ego_parking_slot_map_id-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:ego_parking_slot_map_id-val is deprecated.  Use worldmodel_msgs-msg:ego_parking_slot_map_id instead.")
  (ego_parking_slot_map_id m))

(cl:ensure-generic-function 'suggested_parking_slot_track_id-val :lambda-list '(m))
(cl:defmethod suggested_parking_slot_track_id-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:suggested_parking_slot_track_id-val is deprecated.  Use worldmodel_msgs-msg:suggested_parking_slot_track_id instead.")
  (suggested_parking_slot_track_id m))

(cl:ensure-generic-function 'suggested_parking_slot_map_id-val :lambda-list '(m))
(cl:defmethod suggested_parking_slot_map_id-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:suggested_parking_slot_map_id-val is deprecated.  Use worldmodel_msgs-msg:suggested_parking_slot_map_id instead.")
  (suggested_parking_slot_map_id m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <FusionAPA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:reserved_info-val is deprecated.  Use worldmodel_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionAPA>)))
    "Constants for message type '<FusionAPA>"
  '((:PARKING_SLOTS . 1)
    (:EGO_PARKING_SLOT_TRACK_ID . 2)
    (:EGO_PARKING_SLOT_MAP_ID . 4)
    (:SUGGESTED_PARKING_SLOT_TRACK_ID . 8)
    (:SUGGESTED_PARKING_SLOT_MAP_ID . 16)
    (:RESERVED_INFO . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionAPA)))
    "Constants for message type 'FusionAPA"
  '((:PARKING_SLOTS . 1)
    (:EGO_PARKING_SLOT_TRACK_ID . 2)
    (:EGO_PARKING_SLOT_MAP_ID . 4)
    (:SUGGESTED_PARKING_SLOT_TRACK_ID . 8)
    (:SUGGESTED_PARKING_SLOT_MAP_ID . 16)
    (:RESERVED_INFO . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionAPA>) ostream)
  "Serializes a message object of type '<FusionAPA>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_slots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_slots))
  (cl:let* ((signed (cl:slot-value msg 'ego_parking_slot_track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ego_parking_slot_map_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'suggested_parking_slot_track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'suggested_parking_slot_map_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved_info))))
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
   (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionAPA>) istream)
  "Deserializes a message object of type '<FusionAPA>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_slots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_slots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:ParkingSlotFusionAPAData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ego_parking_slot_track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ego_parking_slot_map_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'suggested_parking_slot_track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'suggested_parking_slot_map_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved_info)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionAPA>)))
  "Returns string type for a message object of type '<FusionAPA>"
  "worldmodel_msgs/FusionAPA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionAPA)))
  "Returns string type for a message object of type 'FusionAPA"
  "worldmodel_msgs/FusionAPA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionAPA>)))
  "Returns md5sum for a message object of type '<FusionAPA>"
  "b39ba1e5bf23d75d807e5f1922902cb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionAPA)))
  "Returns md5sum for a message object of type 'FusionAPA"
  "b39ba1e5bf23d75d807e5f1922902cb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionAPA>)))
  "Returns full string definition for message of type '<FusionAPA>"
  (cl:format cl:nil "uint8 PARKING_SLOTS = 1~%uint8 EGO_PARKING_SLOT_TRACK_ID = 2~%uint8 EGO_PARKING_SLOT_MAP_ID = 4~%uint8 SUGGESTED_PARKING_SLOT_TRACK_ID = 8~%uint8 SUGGESTED_PARKING_SLOT_MAP_ID = 16~%uint8 RESERVED_INFO = 32~%std_msgs/Header header~%worldmodel_msgs/FusionAPAMeta meta~%uint8 available~%worldmodel_msgs/ParkingSlotFusionAPAData[] parking_slots~%int32 ego_parking_slot_track_id~%int32 ego_parking_slot_map_id~%int32 suggested_parking_slot_track_id~%int32 suggested_parking_slot_map_id~%string[] reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/FusionAPAMeta~%uint64 timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%================================================================================~%MSG: worldmodel_msgs/ParkingSlotFusionAPAData~%uint8 PARKING_SLOT = 1~%uint8 APA_INFO = 2~%uint8 available~%perception_interface_msgs/FusionParkingSlotData parking_slot~%worldmodel_msgs/APAInfo apa_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: worldmodel_msgs/APAInfo~%uint32 UNKNOWN = 0~%uint32 OCCUPIED = 1~%uint32 VACANT = 2~%uint32 APA_FAIL = 3~%uint32 APA_SUCCEED = 4~%uint32 REVERSED = 5~%uint32 status~%int32 map_id~%uint64 last_update_timestamp~%bool allow_back_in~%bool allow_front_in~%int32 back_in_estimated_zigzag_num~%int32 front_in_estimated_zigzag_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionAPA)))
  "Returns full string definition for message of type 'FusionAPA"
  (cl:format cl:nil "uint8 PARKING_SLOTS = 1~%uint8 EGO_PARKING_SLOT_TRACK_ID = 2~%uint8 EGO_PARKING_SLOT_MAP_ID = 4~%uint8 SUGGESTED_PARKING_SLOT_TRACK_ID = 8~%uint8 SUGGESTED_PARKING_SLOT_MAP_ID = 16~%uint8 RESERVED_INFO = 32~%std_msgs/Header header~%worldmodel_msgs/FusionAPAMeta meta~%uint8 available~%worldmodel_msgs/ParkingSlotFusionAPAData[] parking_slots~%int32 ego_parking_slot_track_id~%int32 ego_parking_slot_map_id~%int32 suggested_parking_slot_track_id~%int32 suggested_parking_slot_map_id~%string[] reserved_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: worldmodel_msgs/FusionAPAMeta~%uint64 timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%~%================================================================================~%MSG: worldmodel_msgs/ParkingSlotFusionAPAData~%uint8 PARKING_SLOT = 1~%uint8 APA_INFO = 2~%uint8 available~%perception_interface_msgs/FusionParkingSlotData parking_slot~%worldmodel_msgs/APAInfo apa_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: worldmodel_msgs/APAInfo~%uint32 UNKNOWN = 0~%uint32 OCCUPIED = 1~%uint32 VACANT = 2~%uint32 APA_FAIL = 3~%uint32 APA_SUCCEED = 4~%uint32 REVERSED = 5~%uint32 status~%int32 map_id~%uint64 last_update_timestamp~%bool allow_back_in~%bool allow_front_in~%int32 back_in_estimated_zigzag_num~%int32 front_in_estimated_zigzag_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionAPA>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_slots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionAPA>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionAPA
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':available (available msg))
    (cl:cons ':parking_slots (parking_slots msg))
    (cl:cons ':ego_parking_slot_track_id (ego_parking_slot_track_id msg))
    (cl:cons ':ego_parking_slot_map_id (ego_parking_slot_map_id msg))
    (cl:cons ':suggested_parking_slot_track_id (suggested_parking_slot_track_id msg))
    (cl:cons ':suggested_parking_slot_map_id (suggested_parking_slot_map_id msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
