;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ParkingSlotFusionAPAData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ParkingSlotFusionAPAData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PARKINGSLOTFUSIONAPADATA")
  (make-package "WORLDMODEL_MSGS::PARKINGSLOTFUSIONAPADATA"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotFusionAPAData.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*PARKING_SLOT*" (find-package "WORLDMODEL_MSGS::PARKINGSLOTFUSIONAPADATA"))
(shadow '*PARKING_SLOT* (find-package "WORLDMODEL_MSGS::PARKINGSLOTFUSIONAPADATA"))
(defconstant worldmodel_msgs::ParkingSlotFusionAPAData::*PARKING_SLOT* 1)
(intern "*APA_INFO*" (find-package "WORLDMODEL_MSGS::PARKINGSLOTFUSIONAPADATA"))
(shadow '*APA_INFO* (find-package "WORLDMODEL_MSGS::PARKINGSLOTFUSIONAPADATA"))
(defconstant worldmodel_msgs::ParkingSlotFusionAPAData::*APA_INFO* 2)

(defun worldmodel_msgs::ParkingSlotFusionAPAData-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::ParkingSlotFusionAPAData::*PARKING_SLOT*)
        ((= const 2) 'worldmodel_msgs::ParkingSlotFusionAPAData::*APA_INFO*)
        (t nil)))

(defclass worldmodel_msgs::ParkingSlotFusionAPAData
  :super ros::object
  :slots (_available _parking_slot _apa_info ))

(defmethod worldmodel_msgs::ParkingSlotFusionAPAData
  (:init
   (&key
    ((:available __available) 0)
    ((:parking_slot __parking_slot) (instance perception_interface_msgs::FusionParkingSlotData :init))
    ((:apa_info __apa_info) (instance worldmodel_msgs::APAInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _parking_slot __parking_slot)
   (setq _apa_info __apa_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:parking_slot
   (&rest __parking_slot)
   (if (keywordp (car __parking_slot))
       (send* _parking_slot __parking_slot)
     (progn
       (if __parking_slot (setq _parking_slot (car __parking_slot)))
       _parking_slot)))
  (:apa_info
   (&rest __apa_info)
   (if (keywordp (car __apa_info))
       (send* _apa_info __apa_info)
     (progn
       (if __apa_info (setq _apa_info (car __apa_info)))
       _apa_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; perception_interface_msgs/FusionParkingSlotData _parking_slot
    (send _parking_slot :serialization-length)
    ;; worldmodel_msgs/APAInfo _apa_info
    (send _apa_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/FusionParkingSlotData _parking_slot
       (send _parking_slot :serialize s)
     ;; worldmodel_msgs/APAInfo _apa_info
       (send _apa_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/FusionParkingSlotData _parking_slot
     (send _parking_slot :deserialize buf ptr-) (incf ptr- (send _parking_slot :serialization-length))
   ;; worldmodel_msgs/APAInfo _apa_info
     (send _apa_info :deserialize buf ptr-) (incf ptr- (send _apa_info :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ParkingSlotFusionAPAData :md5sum-) "6e3b0e30d3ab97c35f5d4c0bcede920b")
(setf (get worldmodel_msgs::ParkingSlotFusionAPAData :datatype-) "worldmodel_msgs/ParkingSlotFusionAPAData")
(setf (get worldmodel_msgs::ParkingSlotFusionAPAData :definition-)
      "uint8 PARKING_SLOT = 1
uint8 APA_INFO = 2
uint8 available
perception_interface_msgs/FusionParkingSlotData parking_slot
worldmodel_msgs/APAInfo apa_info

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
MSG: worldmodel_msgs/APAInfo
uint32 UNKNOWN = 0
uint32 OCCUPIED = 1
uint32 VACANT = 2
uint32 APA_FAIL = 3
uint32 APA_SUCCEED = 4
uint32 REVERSED = 5
uint32 status
int32 map_id
uint64 last_update_timestamp
bool allow_back_in
bool allow_front_in
int32 back_in_estimated_zigzag_num
int32 front_in_estimated_zigzag_num

")



(provide :worldmodel_msgs/ParkingSlotFusionAPAData "6e3b0e30d3ab97c35f5d4c0bcede920b")


