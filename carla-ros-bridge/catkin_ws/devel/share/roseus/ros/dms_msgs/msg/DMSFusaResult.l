;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFusaResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFusaResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFUSARESULT")
  (make-package "DMS_MSGS::DMSFUSARESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSFusaResult.msg.html


(intern "*TOO_DARK_BRIGHT_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*TOO_DARK_BRIGHT_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*TOO_DARK_BRIGHT_AVAILABLE* 1)
(intern "*OCCLUSION_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*OCCLUSION_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*OCCLUSION_AVAILABLE* 4)
(intern "*GLASS_STATUS_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*GLASS_STATUS_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*GLASS_STATUS_AVAILABLE* 8)
(intern "*TEARING_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*TEARING_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*TEARING_AVAILABLE* 16)
(intern "*FREEZING_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*FREEZING_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*FREEZING_AVAILABLE* 32)
(intern "*FPS_ABNORMAL_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*FPS_ABNORMAL_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*FPS_ABNORMAL_AVAILABLE* 64)
(intern "*MEMORY_FAULT_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*MEMORY_FAULT_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*MEMORY_FAULT_AVAILABLE* 128)
(intern "*SDK_STATUS_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*SDK_STATUS_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*SDK_STATUS_AVAILABLE* 256)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*RESERVED* 512)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*RESERVED1* 1024)
(intern "*STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE*" (find-package "DMS_MSGS::DMSFUSARESULT"))
(shadow '*STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE* (find-package "DMS_MSGS::DMSFUSARESULT"))
(defconstant dms_msgs::DMSFusaResult::*STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE* 2048)

(defun dms_msgs::DMSFusaResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSFusaResult::*TOO_DARK_BRIGHT_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSFusaResult::*OCCLUSION_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSFusaResult::*GLASS_STATUS_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSFusaResult::*TEARING_AVAILABLE*)
        ((= const 32) 'dms_msgs::DMSFusaResult::*FREEZING_AVAILABLE*)
        ((= const 64) 'dms_msgs::DMSFusaResult::*FPS_ABNORMAL_AVAILABLE*)
        ((= const 128) 'dms_msgs::DMSFusaResult::*MEMORY_FAULT_AVAILABLE*)
        ((= const 256) 'dms_msgs::DMSFusaResult::*SDK_STATUS_AVAILABLE*)
        ((= const 512) 'dms_msgs::DMSFusaResult::*RESERVED*)
        ((= const 1024) 'dms_msgs::DMSFusaResult::*RESERVED1*)
        ((= const 2048) 'dms_msgs::DMSFusaResult::*STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFusaResult
  :super ros::object
  :slots (_available _too_dark_bright_status _occlusion_status _glass_status _occlusion_score _frame_tearing _frame_freezing _frame_fps_abnormal _memory_fault _sdk_status _too_bright_score _too_dark_score _steering_wheel_occlusion_status _reserved _reserved1 _bright_count _dark_count _valid_pixel_count _time_stamp_diff _camera_occ_rate ))

(defmethod dms_msgs::DMSFusaResult
  (:init
   (&key
    ((:available __available) 0)
    ((:too_dark_bright_status __too_dark_bright_status) (instance dms_msgs::DMSCameraDiagnoseTypeEnum :init))
    ((:occlusion_status __occlusion_status) (instance dms_msgs::DMSCameraOcclusionTypeEnum :init))
    ((:glass_status __glass_status) (instance dms_msgs::DMSGlassStatusTypeEnum :init))
    ((:occlusion_score __occlusion_score) 0.0)
    ((:frame_tearing __frame_tearing) nil)
    ((:frame_freezing __frame_freezing) nil)
    ((:frame_fps_abnormal __frame_fps_abnormal) nil)
    ((:memory_fault __memory_fault) nil)
    ((:sdk_status __sdk_status) (instance dms_msgs::DMSSDKStatus :init))
    ((:too_bright_score __too_bright_score) 0.0)
    ((:too_dark_score __too_dark_score) 0.0)
    ((:steering_wheel_occlusion_status __steering_wheel_occlusion_status) (instance dms_msgs::DMSSteeringWheelOcclusionTypeEnum :init))
    ((:reserved __reserved) 0.0)
    ((:reserved1 __reserved1) 0.0)
    ((:bright_count __bright_count) 0)
    ((:dark_count __dark_count) 0)
    ((:valid_pixel_count __valid_pixel_count) 0)
    ((:time_stamp_diff __time_stamp_diff) 0.0)
    ((:camera_occ_rate __camera_occ_rate) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _too_dark_bright_status __too_dark_bright_status)
   (setq _occlusion_status __occlusion_status)
   (setq _glass_status __glass_status)
   (setq _occlusion_score (float __occlusion_score))
   (setq _frame_tearing __frame_tearing)
   (setq _frame_freezing __frame_freezing)
   (setq _frame_fps_abnormal __frame_fps_abnormal)
   (setq _memory_fault __memory_fault)
   (setq _sdk_status __sdk_status)
   (setq _too_bright_score (float __too_bright_score))
   (setq _too_dark_score (float __too_dark_score))
   (setq _steering_wheel_occlusion_status __steering_wheel_occlusion_status)
   (setq _reserved (float __reserved))
   (setq _reserved1 (float __reserved1))
   (setq _bright_count (round __bright_count))
   (setq _dark_count (round __dark_count))
   (setq _valid_pixel_count (round __valid_pixel_count))
   (setq _time_stamp_diff (float __time_stamp_diff))
   (setq _camera_occ_rate (float __camera_occ_rate))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:too_dark_bright_status
   (&rest __too_dark_bright_status)
   (if (keywordp (car __too_dark_bright_status))
       (send* _too_dark_bright_status __too_dark_bright_status)
     (progn
       (if __too_dark_bright_status (setq _too_dark_bright_status (car __too_dark_bright_status)))
       _too_dark_bright_status)))
  (:occlusion_status
   (&rest __occlusion_status)
   (if (keywordp (car __occlusion_status))
       (send* _occlusion_status __occlusion_status)
     (progn
       (if __occlusion_status (setq _occlusion_status (car __occlusion_status)))
       _occlusion_status)))
  (:glass_status
   (&rest __glass_status)
   (if (keywordp (car __glass_status))
       (send* _glass_status __glass_status)
     (progn
       (if __glass_status (setq _glass_status (car __glass_status)))
       _glass_status)))
  (:occlusion_score
   (&optional __occlusion_score)
   (if __occlusion_score (setq _occlusion_score __occlusion_score)) _occlusion_score)
  (:frame_tearing
   (&optional (__frame_tearing :null))
   (if (not (eq __frame_tearing :null)) (setq _frame_tearing __frame_tearing)) _frame_tearing)
  (:frame_freezing
   (&optional (__frame_freezing :null))
   (if (not (eq __frame_freezing :null)) (setq _frame_freezing __frame_freezing)) _frame_freezing)
  (:frame_fps_abnormal
   (&optional (__frame_fps_abnormal :null))
   (if (not (eq __frame_fps_abnormal :null)) (setq _frame_fps_abnormal __frame_fps_abnormal)) _frame_fps_abnormal)
  (:memory_fault
   (&optional (__memory_fault :null))
   (if (not (eq __memory_fault :null)) (setq _memory_fault __memory_fault)) _memory_fault)
  (:sdk_status
   (&rest __sdk_status)
   (if (keywordp (car __sdk_status))
       (send* _sdk_status __sdk_status)
     (progn
       (if __sdk_status (setq _sdk_status (car __sdk_status)))
       _sdk_status)))
  (:too_bright_score
   (&optional __too_bright_score)
   (if __too_bright_score (setq _too_bright_score __too_bright_score)) _too_bright_score)
  (:too_dark_score
   (&optional __too_dark_score)
   (if __too_dark_score (setq _too_dark_score __too_dark_score)) _too_dark_score)
  (:steering_wheel_occlusion_status
   (&rest __steering_wheel_occlusion_status)
   (if (keywordp (car __steering_wheel_occlusion_status))
       (send* _steering_wheel_occlusion_status __steering_wheel_occlusion_status)
     (progn
       (if __steering_wheel_occlusion_status (setq _steering_wheel_occlusion_status (car __steering_wheel_occlusion_status)))
       _steering_wheel_occlusion_status)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:bright_count
   (&optional __bright_count)
   (if __bright_count (setq _bright_count __bright_count)) _bright_count)
  (:dark_count
   (&optional __dark_count)
   (if __dark_count (setq _dark_count __dark_count)) _dark_count)
  (:valid_pixel_count
   (&optional __valid_pixel_count)
   (if __valid_pixel_count (setq _valid_pixel_count __valid_pixel_count)) _valid_pixel_count)
  (:time_stamp_diff
   (&optional __time_stamp_diff)
   (if __time_stamp_diff (setq _time_stamp_diff __time_stamp_diff)) _time_stamp_diff)
  (:camera_occ_rate
   (&optional __camera_occ_rate)
   (if __camera_occ_rate (setq _camera_occ_rate __camera_occ_rate)) _camera_occ_rate)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; dms_msgs/DMSCameraDiagnoseTypeEnum _too_dark_bright_status
    (send _too_dark_bright_status :serialization-length)
    ;; dms_msgs/DMSCameraOcclusionTypeEnum _occlusion_status
    (send _occlusion_status :serialization-length)
    ;; dms_msgs/DMSGlassStatusTypeEnum _glass_status
    (send _glass_status :serialization-length)
    ;; float32 _occlusion_score
    4
    ;; bool _frame_tearing
    1
    ;; bool _frame_freezing
    1
    ;; bool _frame_fps_abnormal
    1
    ;; bool _memory_fault
    1
    ;; dms_msgs/DMSSDKStatus _sdk_status
    (send _sdk_status :serialization-length)
    ;; float32 _too_bright_score
    4
    ;; float32 _too_dark_score
    4
    ;; dms_msgs/DMSSteeringWheelOcclusionTypeEnum _steering_wheel_occlusion_status
    (send _steering_wheel_occlusion_status :serialization-length)
    ;; float32 _reserved
    4
    ;; float32 _reserved1
    4
    ;; int32 _bright_count
    4
    ;; int32 _dark_count
    4
    ;; int32 _valid_pixel_count
    4
    ;; float32 _time_stamp_diff
    4
    ;; float32 _camera_occ_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; dms_msgs/DMSCameraDiagnoseTypeEnum _too_dark_bright_status
       (send _too_dark_bright_status :serialize s)
     ;; dms_msgs/DMSCameraOcclusionTypeEnum _occlusion_status
       (send _occlusion_status :serialize s)
     ;; dms_msgs/DMSGlassStatusTypeEnum _glass_status
       (send _glass_status :serialize s)
     ;; float32 _occlusion_score
       (sys::poke _occlusion_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _frame_tearing
       (if _frame_tearing (write-byte -1 s) (write-byte 0 s))
     ;; bool _frame_freezing
       (if _frame_freezing (write-byte -1 s) (write-byte 0 s))
     ;; bool _frame_fps_abnormal
       (if _frame_fps_abnormal (write-byte -1 s) (write-byte 0 s))
     ;; bool _memory_fault
       (if _memory_fault (write-byte -1 s) (write-byte 0 s))
     ;; dms_msgs/DMSSDKStatus _sdk_status
       (send _sdk_status :serialize s)
     ;; float32 _too_bright_score
       (sys::poke _too_bright_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _too_dark_score
       (sys::poke _too_dark_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSSteeringWheelOcclusionTypeEnum _steering_wheel_occlusion_status
       (send _steering_wheel_occlusion_status :serialize s)
     ;; float32 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _bright_count
       (write-long _bright_count s)
     ;; int32 _dark_count
       (write-long _dark_count s)
     ;; int32 _valid_pixel_count
       (write-long _valid_pixel_count s)
     ;; float32 _time_stamp_diff
       (sys::poke _time_stamp_diff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _camera_occ_rate
       (sys::poke _camera_occ_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; dms_msgs/DMSCameraDiagnoseTypeEnum _too_dark_bright_status
     (send _too_dark_bright_status :deserialize buf ptr-) (incf ptr- (send _too_dark_bright_status :serialization-length))
   ;; dms_msgs/DMSCameraOcclusionTypeEnum _occlusion_status
     (send _occlusion_status :deserialize buf ptr-) (incf ptr- (send _occlusion_status :serialization-length))
   ;; dms_msgs/DMSGlassStatusTypeEnum _glass_status
     (send _glass_status :deserialize buf ptr-) (incf ptr- (send _glass_status :serialization-length))
   ;; float32 _occlusion_score
     (setq _occlusion_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _frame_tearing
     (setq _frame_tearing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _frame_freezing
     (setq _frame_freezing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _frame_fps_abnormal
     (setq _frame_fps_abnormal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _memory_fault
     (setq _memory_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; dms_msgs/DMSSDKStatus _sdk_status
     (send _sdk_status :deserialize buf ptr-) (incf ptr- (send _sdk_status :serialization-length))
   ;; float32 _too_bright_score
     (setq _too_bright_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _too_dark_score
     (setq _too_dark_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSSteeringWheelOcclusionTypeEnum _steering_wheel_occlusion_status
     (send _steering_wheel_occlusion_status :deserialize buf ptr-) (incf ptr- (send _steering_wheel_occlusion_status :serialization-length))
   ;; float32 _reserved
     (setq _reserved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _bright_count
     (setq _bright_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _dark_count
     (setq _dark_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _valid_pixel_count
     (setq _valid_pixel_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _time_stamp_diff
     (setq _time_stamp_diff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _camera_occ_rate
     (setq _camera_occ_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSFusaResult :md5sum-) "5a8fb472226a4f17c56c02f5bcd9d8f6")
(setf (get dms_msgs::DMSFusaResult :datatype-) "dms_msgs/DMSFusaResult")
(setf (get dms_msgs::DMSFusaResult :definition-)
      "uint16 TOO_DARK_BRIGHT_AVAILABLE = 1
uint16 OCCLUSION_AVAILABLE = 4
uint16 GLASS_STATUS_AVAILABLE = 8
uint16 TEARING_AVAILABLE = 16
uint16 FREEZING_AVAILABLE = 32
uint16 FPS_ABNORMAL_AVAILABLE = 64
uint16 MEMORY_FAULT_AVAILABLE = 128
uint16 SDK_STATUS_AVAILABLE = 256
uint16 RESERVED = 512
uint16 RESERVED1 = 1024
uint16 STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE = 2048
uint16 available
dms_msgs/DMSCameraDiagnoseTypeEnum too_dark_bright_status
dms_msgs/DMSCameraOcclusionTypeEnum occlusion_status
dms_msgs/DMSGlassStatusTypeEnum glass_status
float32 occlusion_score
bool frame_tearing
bool frame_freezing
bool frame_fps_abnormal
bool memory_fault
dms_msgs/DMSSDKStatus sdk_status
float32 too_bright_score
float32 too_dark_score
dms_msgs/DMSSteeringWheelOcclusionTypeEnum steering_wheel_occlusion_status
float32 reserved
float32 reserved1
int32 bright_count
int32 dark_count
int32 valid_pixel_count
float32 time_stamp_diff
float32 camera_occ_rate

================================================================================
MSG: dms_msgs/DMSCameraDiagnoseTypeEnum
uint8 DMS_CAMERA_DIAGNOSE_NORMAL = 1
uint8 DMS_CAMERA_DIAGNOSE_TOO_SMALL = 2
uint8 DMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 4
uint8 DMS_CAMERA_DIAGNOSE_TOO_DARK = 8
uint8 value

================================================================================
MSG: dms_msgs/DMSCameraOcclusionTypeEnum
uint8 DMS_CAMERA_BLOCK = 0
uint8 DMS_CAMERA_NO_BLOCK = 1
uint8 value

================================================================================
MSG: dms_msgs/DMSGlassStatusTypeEnum
uint8 DMS_GLASSES_IR_BLOCK_ON = 0
uint8 DMS_GLASSES_UNKNOWN = 1
uint8 value

================================================================================
MSG: dms_msgs/DMSSDKStatus
uint8 SDK_STATUS_AVAILABLE = 1
uint8 STATE_MACHINE_AVAILABLE = 2
uint8 available
dms_msgs/DMSStatusTypeEnum dms_status_type
dms_msgs/DMSStateMachineTypeEnum state_machine_type

================================================================================
MSG: dms_msgs/DMSStatusTypeEnum
uint8 UNKNOWN = 0
uint8 INITIALIZING = 1
uint8 INTERNAL_FAULT = 2
uint8 EXTERNAL_FAULT = 3
uint8 INVALID_ENVIRONMENT = 4
uint8 AUTHENTICATION_FAIL = 5
uint8 INITIALIZ_OK = 6
uint8 INITIALIZ_FAIL = 7
uint8 RUNNING_OK = 8
uint8 RUNNING_FAIL = 9
uint8 value

================================================================================
MSG: dms_msgs/DMSStateMachineTypeEnum
uint8 OFF = 0
uint8 STANDBY = 1
uint8 ACTIVE = 2
uint8 FAILURE = 3
uint8 UNKNOWN = 4
uint8 value

================================================================================
MSG: dms_msgs/DMSSteeringWheelOcclusionTypeEnum
uint8 STEERING_WHEEL_BLOCK = 0
uint8 STEERING_WHEEL_NO_BLOCK = 1
uint8 value

")



(provide :dms_msgs/DMSFusaResult "5a8fb472226a4f17c56c02f5bcd9d8f6")


