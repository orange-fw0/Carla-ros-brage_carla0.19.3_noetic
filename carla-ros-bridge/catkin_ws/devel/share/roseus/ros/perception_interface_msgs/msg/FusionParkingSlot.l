;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionParkingSlot)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionParkingSlot (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT"))

(in-package "ROS")
;;//! \htmlinclude FusionParkingSlot.msg.html


(intern "*FUSION_PARKING_SLOT_AVAILABLE_DATA*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT"))
(shadow '*FUSION_PARKING_SLOT_AVAILABLE_DATA* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT"))
(defconstant perception_interface_msgs::FusionParkingSlot::*FUSION_PARKING_SLOT_AVAILABLE_DATA* 1)
(intern "*FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT"))
(shadow '*FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT"))
(defconstant perception_interface_msgs::FusionParkingSlot::*FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT* 2)
(intern "*FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT"))
(shadow '*FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOT"))
(defconstant perception_interface_msgs::FusionParkingSlot::*FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO* 4)

(defun perception_interface_msgs::FusionParkingSlot-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::FusionParkingSlot::*FUSION_PARKING_SLOT_AVAILABLE_DATA*)
        ((= const 2) 'perception_interface_msgs::FusionParkingSlot::*FUSION_PARKING_SLOT_AVAILABLE_EGO_PARKING_SLOT*)
        ((= const 4) 'perception_interface_msgs::FusionParkingSlot::*FUSION_PARKING_SLOT_AVAILABLE_RESERVED_INFO*)
        (t nil)))

(defclass perception_interface_msgs::FusionParkingSlot
  :super ros::object
  :slots (_available _parking_slot_data _ego_parking_slot _reserved_info ))

(defmethod perception_interface_msgs::FusionParkingSlot
  (:init
   (&key
    ((:available __available) 0)
    ((:parking_slot_data __parking_slot_data) ())
    ((:ego_parking_slot __ego_parking_slot) (instance perception_interface_msgs::EgoParkingSlot :init))
    ((:reserved_info __reserved_info) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _parking_slot_data __parking_slot_data)
   (setq _ego_parking_slot __ego_parking_slot)
   (setq _reserved_info __reserved_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:parking_slot_data
   (&rest __parking_slot_data)
   (if (keywordp (car __parking_slot_data))
       (send* _parking_slot_data __parking_slot_data)
     (progn
       (if __parking_slot_data (setq _parking_slot_data (car __parking_slot_data)))
       _parking_slot_data)))
  (:ego_parking_slot
   (&rest __ego_parking_slot)
   (if (keywordp (car __ego_parking_slot))
       (send* _ego_parking_slot __ego_parking_slot)
     (progn
       (if __ego_parking_slot (setq _ego_parking_slot (car __ego_parking_slot)))
       _ego_parking_slot)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; perception_interface_msgs/FusionParkingSlotData[] _parking_slot_data
    (apply #'+ (send-all _parking_slot_data :serialization-length)) 4
    ;; perception_interface_msgs/EgoParkingSlot _ego_parking_slot
    (send _ego_parking_slot :serialization-length)
    ;; string[] _reserved_info
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved_info)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; perception_interface_msgs/FusionParkingSlotData[] _parking_slot_data
     (write-long (length _parking_slot_data) s)
     (dolist (elem _parking_slot_data)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/EgoParkingSlot _ego_parking_slot
       (send _ego_parking_slot :serialize s)
     ;; string[] _reserved_info
     (write-long (length _reserved_info) s)
     (dolist (elem _reserved_info)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; perception_interface_msgs/FusionParkingSlotData[] _parking_slot_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_slot_data (let (r) (dotimes (i n) (push (instance perception_interface_msgs::FusionParkingSlotData :init) r)) r))
     (dolist (elem- _parking_slot_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/EgoParkingSlot _ego_parking_slot
     (send _ego_parking_slot :deserialize buf ptr-) (incf ptr- (send _ego_parking_slot :serialization-length))
   ;; string[] _reserved_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reserved_info (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _reserved_info i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FusionParkingSlot :md5sum-) "229603488f57390a20e86c13b064f375")
(setf (get perception_interface_msgs::FusionParkingSlot :datatype-) "perception_interface_msgs/FusionParkingSlot")
(setf (get perception_interface_msgs::FusionParkingSlot :definition-)
      "uint8 FUSION_PARKING_SLOT_AVAILABLE_DATA = 1
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



(provide :perception_interface_msgs/FusionParkingSlot "229603488f57390a20e86c13b064f375")


