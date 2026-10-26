;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionParkingSlotResult)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionParkingSlotResult (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTRESULT")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTRESULT"))

(in-package "ROS")
;;//! \htmlinclude FusionParkingSlotResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_interface_msgs::FusionParkingSlotResult
  :super ros::object
  :slots (_header _meta _parking_slot ))

(defmethod perception_interface_msgs::FusionParkingSlotResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance perception_interface_msgs::PerceptionFusionResultMeta :init))
    ((:parking_slot __parking_slot) (instance perception_interface_msgs::FusionParkingSlot :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _parking_slot __parking_slot)
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
  (:parking_slot
   (&rest __parking_slot)
   (if (keywordp (car __parking_slot))
       (send* _parking_slot __parking_slot)
     (progn
       (if __parking_slot (setq _parking_slot (car __parking_slot)))
       _parking_slot)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_interface_msgs/PerceptionFusionResultMeta _meta
    (send _meta :serialization-length)
    ;; perception_interface_msgs/FusionParkingSlot _parking_slot
    (send _parking_slot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_interface_msgs/PerceptionFusionResultMeta _meta
       (send _meta :serialize s)
     ;; perception_interface_msgs/FusionParkingSlot _parking_slot
       (send _parking_slot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_interface_msgs/PerceptionFusionResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; perception_interface_msgs/FusionParkingSlot _parking_slot
     (send _parking_slot :deserialize buf ptr-) (incf ptr- (send _parking_slot :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FusionParkingSlotResult :md5sum-) "ec0b72689c0d478b1680208a15610491")
(setf (get perception_interface_msgs::FusionParkingSlotResult :datatype-) "perception_interface_msgs/FusionParkingSlotResult")
(setf (get perception_interface_msgs::FusionParkingSlotResult :definition-)
      "std_msgs/Header header
perception_interface_msgs/PerceptionFusionResultMeta meta
perception_interface_msgs/FusionParkingSlot parking_slot

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
MSG: perception_interface_msgs/PerceptionFusionResultMeta
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
string version_tag

================================================================================
MSG: perception_interface_msgs/FusionParkingSlot
uint8 FUSION_PARKING_SLOT_AVAILABLE_DATA = 1
uint8 FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT = 2
uint8 FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO = 4
uint8 available
perception_interface_msgs/FusionParkingSlotData[] parking_slot_data
perception_interface_msgs/EgoParkingSlot ego_parking_slot
string[] reserved_info

================================================================================
MSG: perception_interface_msgs/FusionParkingSlotData
uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1
uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2
uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4
uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8
uint8 available
uint8 charge_property
uint64 track_id
int32 empty_votes
perception_interface_msgs/Point3f[] points_fusion
float32[] points_fusion_confidence
perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type
perception_interface_msgs/Point3f[] local_points_fusion
float32[] local_points_fusion_confidence
perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type
perception_interface_msgs/Point2f[] points_fusion_in_image
float32[] points_fusion_in_image_confidence
perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type
perception_interface_msgs/Point3f[] local_wheel_stop_points
perception_interface_msgs/FusionParkingSlotType slot_type
perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type
perception_interface_msgs/ParkingSlotVirtualPoint virtual_point
string reserved_info

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/FusionParkingSlotType
uint8 PARKING_SLOT_TYPE_UNKOWN = 0
uint8 PARKING_SLOT_TYPE_VERTICAL = 1
uint8 PARKING_SLOT_TYPE_PARALLEL = 2
uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3
uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4
uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5
uint8 value

================================================================================
MSG: perception_interface_msgs/FusionSpecialParkingSlotType
uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0
uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1
uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2
uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotVirtualPoint
uint8 point_index
perception_interface_msgs/Point3f local_point

================================================================================
MSG: perception_interface_msgs/EgoParkingSlot
uint64 id

")



(provide :perception_interface_msgs/FusionParkingSlotResult "ec0b72689c0d478b1680208a15610491")


