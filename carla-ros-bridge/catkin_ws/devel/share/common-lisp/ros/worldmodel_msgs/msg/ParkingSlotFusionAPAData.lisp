; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ParkingSlotFusionAPAData.msg.html

(cl:defclass <ParkingSlotFusionAPAData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (parking_slot
    :reader parking_slot
    :initarg :parking_slot
    :type perception_interface_msgs-msg:FusionParkingSlotData
    :initform (cl:make-instance 'perception_interface_msgs-msg:FusionParkingSlotData))
   (apa_info
    :reader apa_info
    :initarg :apa_info
    :type worldmodel_msgs-msg:APAInfo
    :initform (cl:make-instance 'worldmodel_msgs-msg:APAInfo)))
)

(cl:defclass ParkingSlotFusionAPAData (<ParkingSlotFusionAPAData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotFusionAPAData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotFusionAPAData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ParkingSlotFusionAPAData> is deprecated: use worldmodel_msgs-msg:ParkingSlotFusionAPAData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ParkingSlotFusionAPAData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'parking_slot-val :lambda-list '(m))
(cl:defmethod parking_slot-val ((m <ParkingSlotFusionAPAData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_slot-val is deprecated.  Use worldmodel_msgs-msg:parking_slot instead.")
  (parking_slot m))

(cl:ensure-generic-function 'apa_info-val :lambda-list '(m))
(cl:defmethod apa_info-val ((m <ParkingSlotFusionAPAData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:apa_info-val is deprecated.  Use worldmodel_msgs-msg:apa_info instead.")
  (apa_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSlotFusionAPAData>)))
    "Constants for message type '<ParkingSlotFusionAPAData>"
  '((:PARKING_SLOT . 1)
    (:APA_INFO . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSlotFusionAPAData)))
    "Constants for message type 'ParkingSlotFusionAPAData"
  '((:PARKING_SLOT . 1)
    (:APA_INFO . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotFusionAPAData>) ostream)
  "Serializes a message object of type '<ParkingSlotFusionAPAData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_slot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'apa_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotFusionAPAData>) istream)
  "Deserializes a message object of type '<ParkingSlotFusionAPAData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_slot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'apa_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotFusionAPAData>)))
  "Returns string type for a message object of type '<ParkingSlotFusionAPAData>"
  "worldmodel_msgs/ParkingSlotFusionAPAData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotFusionAPAData)))
  "Returns string type for a message object of type 'ParkingSlotFusionAPAData"
  "worldmodel_msgs/ParkingSlotFusionAPAData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotFusionAPAData>)))
  "Returns md5sum for a message object of type '<ParkingSlotFusionAPAData>"
  "6e3b0e30d3ab97c35f5d4c0bcede920b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotFusionAPAData)))
  "Returns md5sum for a message object of type 'ParkingSlotFusionAPAData"
  "6e3b0e30d3ab97c35f5d4c0bcede920b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotFusionAPAData>)))
  "Returns full string definition for message of type '<ParkingSlotFusionAPAData>"
  (cl:format cl:nil "uint8 PARKING_SLOT = 1~%uint8 APA_INFO = 2~%uint8 available~%perception_interface_msgs/FusionParkingSlotData parking_slot~%worldmodel_msgs/APAInfo apa_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: worldmodel_msgs/APAInfo~%uint32 UNKNOWN = 0~%uint32 OCCUPIED = 1~%uint32 VACANT = 2~%uint32 APA_FAIL = 3~%uint32 APA_SUCCEED = 4~%uint32 REVERSED = 5~%uint32 status~%int32 map_id~%uint64 last_update_timestamp~%bool allow_back_in~%bool allow_front_in~%int32 back_in_estimated_zigzag_num~%int32 front_in_estimated_zigzag_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotFusionAPAData)))
  "Returns full string definition for message of type 'ParkingSlotFusionAPAData"
  (cl:format cl:nil "uint8 PARKING_SLOT = 1~%uint8 APA_INFO = 2~%uint8 available~%perception_interface_msgs/FusionParkingSlotData parking_slot~%worldmodel_msgs/APAInfo apa_info~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotData~%uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1~%uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2~%uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4~%uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8~%uint8 available~%uint8 charge_property~%uint64 track_id~%int32 empty_votes~%perception_interface_msgs/Point3f[] points_fusion~%float32[] points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type~%perception_interface_msgs/Point3f[] local_points_fusion~%float32[] local_points_fusion_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type~%perception_interface_msgs/Point2f[] points_fusion_in_image~%float32[] points_fusion_in_image_confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type~%perception_interface_msgs/Point3f[] local_wheel_stop_points~%perception_interface_msgs/FusionParkingSlotType slot_type~%perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type~%perception_interface_msgs/ParkingSlotVirtualPoint virtual_point~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/FusionParkingSlotType~%uint8 PARKING_SLOT_TYPE_UNKOWN = 0~%uint8 PARKING_SLOT_TYPE_VERTICAL = 1~%uint8 PARKING_SLOT_TYPE_PARALLEL = 2~%uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3~%uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4~%uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/FusionSpecialParkingSlotType~%uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0~%uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1~%uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2~%uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotVirtualPoint~%uint8 point_index~%perception_interface_msgs/Point3f local_point~%~%================================================================================~%MSG: worldmodel_msgs/APAInfo~%uint32 UNKNOWN = 0~%uint32 OCCUPIED = 1~%uint32 VACANT = 2~%uint32 APA_FAIL = 3~%uint32 APA_SUCCEED = 4~%uint32 REVERSED = 5~%uint32 status~%int32 map_id~%uint64 last_update_timestamp~%bool allow_back_in~%bool allow_front_in~%int32 back_in_estimated_zigzag_num~%int32 front_in_estimated_zigzag_num~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotFusionAPAData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_slot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'apa_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotFusionAPAData>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotFusionAPAData
    (cl:cons ':available (available msg))
    (cl:cons ':parking_slot (parking_slot msg))
    (cl:cons ':apa_info (apa_info msg))
))
