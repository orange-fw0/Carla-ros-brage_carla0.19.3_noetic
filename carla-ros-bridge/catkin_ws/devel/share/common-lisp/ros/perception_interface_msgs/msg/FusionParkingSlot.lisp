; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionParkingSlot.msg.html

(cl:defclass <FusionParkingSlot> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (parking_slot_data
    :reader parking_slot_data
    :initarg :parking_slot_data
    :type (cl:vector perception_interface_msgs-msg:FusionParkingSlotData)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:FusionParkingSlotData :initial-element (cl:make-instance 'perception_interface_msgs-msg:FusionParkingSlotData)))
   (ego_parking_slot
    :reader ego_parking_slot
    :initarg :ego_parking_slot
    :type perception_interface_msgs-msg:EgoParkingSlot
    :initform (cl:make-instance 'perception_interface_msgs-msg:EgoParkingSlot))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass FusionParkingSlot (<FusionParkingSlot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionParkingSlot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionParkingSlot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionParkingSlot> is deprecated: use perception_interface_msgs-msg:FusionParkingSlot instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <FusionParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available-val is deprecated.  Use perception_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'parking_slot_data-val :lambda-list '(m))
(cl:defmethod parking_slot_data-val ((m <FusionParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:parking_slot_data-val is deprecated.  Use perception_interface_msgs-msg:parking_slot_data instead.")
  (parking_slot_data m))

(cl:ensure-generic-function 'ego_parking_slot-val :lambda-list '(m))
(cl:defmethod ego_parking_slot-val ((m <FusionParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ego_parking_slot-val is deprecated.  Use perception_interface_msgs-msg:ego_parking_slot instead.")
  (ego_parking_slot m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <FusionParkingSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:reserved_info-val is deprecated.  Use perception_interface_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionParkingSlot>)))
    "Constants for message type '<FusionParkingSlot>"
  '((:FUSION_PARKING_SLOT_AVAILABLE_DATA . 1)
    (:FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT . 2)
    (:FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionParkingSlot)))
    "Constants for message type 'FusionParkingSlot"
  '((:FUSION_PARKING_SLOT_AVAILABLE_DATA . 1)
    (:FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT . 2)
    (:FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionParkingSlot>) ostream)
  "Serializes a message object of type '<FusionParkingSlot>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_slot_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_slot_data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ego_parking_slot) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionParkingSlot>) istream)
  "Deserializes a message object of type '<FusionParkingSlot>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_slot_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_slot_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:FusionParkingSlotData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ego_parking_slot) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionParkingSlot>)))
  "Returns string type for a message object of type '<FusionParkingSlot>"
  "perception_interface_msgs/FusionParkingSlot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionParkingSlot)))
  "Returns string type for a message object of type 'FusionParkingSlot"
  "perception_interface_msgs/FusionParkingSlot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionParkingSlot>)))
  "Returns md5sum for a message object of type '<FusionParkingSlot>"
  "229603488f57390a20e86c13b064f375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionParkingSlot)))
  "Returns md5sum for a message object of type 'FusionParkingSlot"
  "229603488f57390a20e86c13b064f375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionParkingSlot>)))
  "Returns full string definition for message of type '<FusionParkingSlot>"
  (cl:format cl:nil "uint8 FUSION_PARKING_SLOT_AVAILABLE_DATA = 1~%uint8 FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT = 2~%uint8 FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO = 4~%uint8 available~%perception_interface_msgs/FusionParkingSlotData[] parking_slot_data~%perception_interface_msgs/EgoParkingSlot ego_parking_slot~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: perception_interface_msgs/EgoParkingSlot~%uint64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionParkingSlot)))
  "Returns full string definition for message of type 'FusionParkingSlot"
  (cl:format cl:nil "uint8 FUSION_PARKING_SLOT_AVAILABLE_DATA = 1~%uint8 FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT = 2~%uint8 FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO = 4~%uint8 available~%perception_interface_msgs/FusionParkingSlotData[] parking_slot_data~%perception_interface_msgs/EgoParkingSlot ego_parking_slot~%string[] reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: perception_interface_msgs/EgoParkingSlot~%uint64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionParkingSlot>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_slot_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ego_parking_slot))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionParkingSlot>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionParkingSlot
    (cl:cons ':available (available msg))
    (cl:cons ':parking_slot_data (parking_slot_data msg))
    (cl:cons ':ego_parking_slot (ego_parking_slot msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
