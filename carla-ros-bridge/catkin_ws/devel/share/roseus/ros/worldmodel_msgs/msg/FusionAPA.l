;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::FusionAPA)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'FusionAPA (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::FUSIONAPA")
  (make-package "WORLDMODEL_MSGS::FUSIONAPA"))

(in-package "ROS")
;;//! \htmlinclude FusionAPA.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*PARKING_SLOTS*" (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(shadow '*PARKING_SLOTS* (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(defconstant worldmodel_msgs::FusionAPA::*PARKING_SLOTS* 1)
(intern "*EGO_PARKING_SLOT_TRACK_ID*" (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(shadow '*EGO_PARKING_SLOT_TRACK_ID* (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(defconstant worldmodel_msgs::FusionAPA::*EGO_PARKING_SLOT_TRACK_ID* 2)
(intern "*EGO_PARKING_SLOT_MAP_ID*" (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(shadow '*EGO_PARKING_SLOT_MAP_ID* (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(defconstant worldmodel_msgs::FusionAPA::*EGO_PARKING_SLOT_MAP_ID* 4)
(intern "*SUGGESTED_PARKING_SLOT_TRACK_ID*" (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(shadow '*SUGGESTED_PARKING_SLOT_TRACK_ID* (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(defconstant worldmodel_msgs::FusionAPA::*SUGGESTED_PARKING_SLOT_TRACK_ID* 8)
(intern "*SUGGESTED_PARKING_SLOT_MAP_ID*" (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(shadow '*SUGGESTED_PARKING_SLOT_MAP_ID* (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(defconstant worldmodel_msgs::FusionAPA::*SUGGESTED_PARKING_SLOT_MAP_ID* 16)
(intern "*RESERVED_INFO*" (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(shadow '*RESERVED_INFO* (find-package "WORLDMODEL_MSGS::FUSIONAPA"))
(defconstant worldmodel_msgs::FusionAPA::*RESERVED_INFO* 32)

(defun worldmodel_msgs::FusionAPA-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::FusionAPA::*PARKING_SLOTS*)
        ((= const 2) 'worldmodel_msgs::FusionAPA::*EGO_PARKING_SLOT_TRACK_ID*)
        ((= const 4) 'worldmodel_msgs::FusionAPA::*EGO_PARKING_SLOT_MAP_ID*)
        ((= const 8) 'worldmodel_msgs::FusionAPA::*SUGGESTED_PARKING_SLOT_TRACK_ID*)
        ((= const 16) 'worldmodel_msgs::FusionAPA::*SUGGESTED_PARKING_SLOT_MAP_ID*)
        ((= const 32) 'worldmodel_msgs::FusionAPA::*RESERVED_INFO*)
        (t nil)))

(defclass worldmodel_msgs::FusionAPA
  :super ros::object
  :slots (_header _meta _available _parking_slots _ego_parking_slot_track_id _ego_parking_slot_map_id _suggested_parking_slot_track_id _suggested_parking_slot_map_id _reserved_info ))

(defmethod worldmodel_msgs::FusionAPA
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance worldmodel_msgs::FusionAPAMeta :init))
    ((:available __available) 0)
    ((:parking_slots __parking_slots) ())
    ((:ego_parking_slot_track_id __ego_parking_slot_track_id) 0)
    ((:ego_parking_slot_map_id __ego_parking_slot_map_id) 0)
    ((:suggested_parking_slot_track_id __suggested_parking_slot_track_id) 0)
    ((:suggested_parking_slot_map_id __suggested_parking_slot_map_id) 0)
    ((:reserved_info __reserved_info) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _available (round __available))
   (setq _parking_slots __parking_slots)
   (setq _ego_parking_slot_track_id (round __ego_parking_slot_track_id))
   (setq _ego_parking_slot_map_id (round __ego_parking_slot_map_id))
   (setq _suggested_parking_slot_track_id (round __suggested_parking_slot_track_id))
   (setq _suggested_parking_slot_map_id (round __suggested_parking_slot_map_id))
   (setq _reserved_info __reserved_info)
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
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:parking_slots
   (&rest __parking_slots)
   (if (keywordp (car __parking_slots))
       (send* _parking_slots __parking_slots)
     (progn
       (if __parking_slots (setq _parking_slots (car __parking_slots)))
       _parking_slots)))
  (:ego_parking_slot_track_id
   (&optional __ego_parking_slot_track_id)
   (if __ego_parking_slot_track_id (setq _ego_parking_slot_track_id __ego_parking_slot_track_id)) _ego_parking_slot_track_id)
  (:ego_parking_slot_map_id
   (&optional __ego_parking_slot_map_id)
   (if __ego_parking_slot_map_id (setq _ego_parking_slot_map_id __ego_parking_slot_map_id)) _ego_parking_slot_map_id)
  (:suggested_parking_slot_track_id
   (&optional __suggested_parking_slot_track_id)
   (if __suggested_parking_slot_track_id (setq _suggested_parking_slot_track_id __suggested_parking_slot_track_id)) _suggested_parking_slot_track_id)
  (:suggested_parking_slot_map_id
   (&optional __suggested_parking_slot_map_id)
   (if __suggested_parking_slot_map_id (setq _suggested_parking_slot_map_id __suggested_parking_slot_map_id)) _suggested_parking_slot_map_id)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; worldmodel_msgs/FusionAPAMeta _meta
    (send _meta :serialization-length)
    ;; uint8 _available
    1
    ;; worldmodel_msgs/ParkingSlotFusionAPAData[] _parking_slots
    (apply #'+ (send-all _parking_slots :serialization-length)) 4
    ;; int32 _ego_parking_slot_track_id
    4
    ;; int32 _ego_parking_slot_map_id
    4
    ;; int32 _suggested_parking_slot_track_id
    4
    ;; int32 _suggested_parking_slot_map_id
    4
    ;; string[] _reserved_info
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _reserved_info)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; worldmodel_msgs/FusionAPAMeta _meta
       (send _meta :serialize s)
     ;; uint8 _available
       (write-byte _available s)
     ;; worldmodel_msgs/ParkingSlotFusionAPAData[] _parking_slots
     (write-long (length _parking_slots) s)
     (dolist (elem _parking_slots)
       (send elem :serialize s)
       )
     ;; int32 _ego_parking_slot_track_id
       (write-long _ego_parking_slot_track_id s)
     ;; int32 _ego_parking_slot_map_id
       (write-long _ego_parking_slot_map_id s)
     ;; int32 _suggested_parking_slot_track_id
       (write-long _suggested_parking_slot_track_id s)
     ;; int32 _suggested_parking_slot_map_id
       (write-long _suggested_parking_slot_map_id s)
     ;; string[] _reserved_info
     (write-long (length _reserved_info) s)
     (dolist (elem _reserved_info)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; worldmodel_msgs/FusionAPAMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; worldmodel_msgs/ParkingSlotFusionAPAData[] _parking_slots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_slots (let (r) (dotimes (i n) (push (instance worldmodel_msgs::ParkingSlotFusionAPAData :init) r)) r))
     (dolist (elem- _parking_slots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _ego_parking_slot_track_id
     (setq _ego_parking_slot_track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ego_parking_slot_map_id
     (setq _ego_parking_slot_map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _suggested_parking_slot_track_id
     (setq _suggested_parking_slot_track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _suggested_parking_slot_map_id
     (setq _suggested_parking_slot_map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get worldmodel_msgs::FusionAPA :md5sum-) "b39ba1e5bf23d75d807e5f1922902cb3")
(setf (get worldmodel_msgs::FusionAPA :datatype-) "worldmodel_msgs/FusionAPA")
(setf (get worldmodel_msgs::FusionAPA :definition-)
      "uint8 PARKING_SLOTS = 1
uint8 EGO_PARKING_SLOT_TRACK_ID = 2
uint8 EGO_PARKING_SLOT_MAP_ID = 4
uint8 SUGGESTED_PARKING_SLOT_TRACK_ID = 8
uint8 SUGGESTED_PARKING_SLOT_MAP_ID = 16
uint8 RESERVED_INFO = 32
std_msgs/Header header
worldmodel_msgs/FusionAPAMeta meta
uint8 available
worldmodel_msgs/ParkingSlotFusionAPAData[] parking_slots
int32 ego_parking_slot_track_id
int32 ego_parking_slot_map_id
int32 suggested_parking_slot_track_id
int32 suggested_parking_slot_map_id
string[] reserved_info

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
MSG: worldmodel_msgs/FusionAPAMeta
uint64 timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us

================================================================================
MSG: worldmodel_msgs/ParkingSlotFusionAPAData
uint8 PARKING_SLOT = 1
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



(provide :worldmodel_msgs/FusionAPA "b39ba1e5bf23d75d807e5f1922902cb3")


