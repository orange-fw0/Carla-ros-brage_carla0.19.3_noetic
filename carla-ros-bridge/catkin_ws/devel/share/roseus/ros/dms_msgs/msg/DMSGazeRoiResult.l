;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSGazeRoiResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSGazeRoiResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSGAZEROIRESULT")
  (make-package "DMS_MSGS::DMSGAZEROIRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSGazeRoiResult.msg.html


(intern "*GAZE_ROI_ZONE_AVAILABLE*" (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(shadow '*GAZE_ROI_ZONE_AVAILABLE* (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(defconstant dms_msgs::DMSGazeRoiResult::*GAZE_ROI_ZONE_AVAILABLE* 1)
(intern "*GAZE_ROI_TIME_AVAILABLE*" (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(shadow '*GAZE_ROI_TIME_AVAILABLE* (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(defconstant dms_msgs::DMSGazeRoiResult::*GAZE_ROI_TIME_AVAILABLE* 2)
(intern "*EYES_ON_ROAD_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(shadow '*EYES_ON_ROAD_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(defconstant dms_msgs::DMSGazeRoiResult::*EYES_ON_ROAD_TYPE_AVAILABLE* 4)
(intern "*ROI_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(shadow '*ROI_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(defconstant dms_msgs::DMSGazeRoiResult::*ROI_TYPE_AVAILABLE* 8)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(defconstant dms_msgs::DMSGazeRoiResult::*RESERVED* 16)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DMSGAZEROIRESULT"))
(defconstant dms_msgs::DMSGazeRoiResult::*RESERVED1* 32)

(defun dms_msgs::DMSGazeRoiResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSGazeRoiResult::*GAZE_ROI_ZONE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSGazeRoiResult::*GAZE_ROI_TIME_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSGazeRoiResult::*EYES_ON_ROAD_TYPE_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSGazeRoiResult::*ROI_TYPE_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSGazeRoiResult::*RESERVED*)
        ((= const 32) 'dms_msgs::DMSGazeRoiResult::*RESERVED1*)
        (t nil)))

(defclass dms_msgs::DMSGazeRoiResult
  :super ros::object
  :slots (_available _gaze_roi_zone _gaze_roi_time _eyes_on_road_type _roi_type _reserved _reserved1 ))

(defmethod dms_msgs::DMSGazeRoiResult
  (:init
   (&key
    ((:available __available) 0)
    ((:gaze_roi_zone __gaze_roi_zone) (instance dms_msgs::DMSGazeRoiZonesTypeEnum :init))
    ((:gaze_roi_time __gaze_roi_time) 0.0)
    ((:eyes_on_road_type __eyes_on_road_type) (instance dms_msgs::DMSEyesOnRoadTypeEnum :init))
    ((:roi_type __roi_type) (instance dms_msgs::DMSGazeRoiTypeEnum :init))
    ((:reserved __reserved) 0.0)
    ((:reserved1 __reserved1) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _gaze_roi_zone __gaze_roi_zone)
   (setq _gaze_roi_time (float __gaze_roi_time))
   (setq _eyes_on_road_type __eyes_on_road_type)
   (setq _roi_type __roi_type)
   (setq _reserved (float __reserved))
   (setq _reserved1 (float __reserved1))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:gaze_roi_zone
   (&rest __gaze_roi_zone)
   (if (keywordp (car __gaze_roi_zone))
       (send* _gaze_roi_zone __gaze_roi_zone)
     (progn
       (if __gaze_roi_zone (setq _gaze_roi_zone (car __gaze_roi_zone)))
       _gaze_roi_zone)))
  (:gaze_roi_time
   (&optional __gaze_roi_time)
   (if __gaze_roi_time (setq _gaze_roi_time __gaze_roi_time)) _gaze_roi_time)
  (:eyes_on_road_type
   (&rest __eyes_on_road_type)
   (if (keywordp (car __eyes_on_road_type))
       (send* _eyes_on_road_type __eyes_on_road_type)
     (progn
       (if __eyes_on_road_type (setq _eyes_on_road_type (car __eyes_on_road_type)))
       _eyes_on_road_type)))
  (:roi_type
   (&rest __roi_type)
   (if (keywordp (car __roi_type))
       (send* _roi_type __roi_type)
     (progn
       (if __roi_type (setq _roi_type (car __roi_type)))
       _roi_type)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSGazeRoiZonesTypeEnum _gaze_roi_zone
    (send _gaze_roi_zone :serialization-length)
    ;; float32 _gaze_roi_time
    4
    ;; dms_msgs/DMSEyesOnRoadTypeEnum _eyes_on_road_type
    (send _eyes_on_road_type :serialization-length)
    ;; dms_msgs/DMSGazeRoiTypeEnum _roi_type
    (send _roi_type :serialization-length)
    ;; float32 _reserved
    4
    ;; float32 _reserved1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSGazeRoiZonesTypeEnum _gaze_roi_zone
       (send _gaze_roi_zone :serialize s)
     ;; float32 _gaze_roi_time
       (sys::poke _gaze_roi_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dms_msgs/DMSEyesOnRoadTypeEnum _eyes_on_road_type
       (send _eyes_on_road_type :serialize s)
     ;; dms_msgs/DMSGazeRoiTypeEnum _roi_type
       (send _roi_type :serialize s)
     ;; float32 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSGazeRoiZonesTypeEnum _gaze_roi_zone
     (send _gaze_roi_zone :deserialize buf ptr-) (incf ptr- (send _gaze_roi_zone :serialization-length))
   ;; float32 _gaze_roi_time
     (setq _gaze_roi_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dms_msgs/DMSEyesOnRoadTypeEnum _eyes_on_road_type
     (send _eyes_on_road_type :deserialize buf ptr-) (incf ptr- (send _eyes_on_road_type :serialization-length))
   ;; dms_msgs/DMSGazeRoiTypeEnum _roi_type
     (send _roi_type :deserialize buf ptr-) (incf ptr- (send _roi_type :serialization-length))
   ;; float32 _reserved
     (setq _reserved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSGazeRoiResult :md5sum-) "8f463101a07001f5faac55cbf4856ddc")
(setf (get dms_msgs::DMSGazeRoiResult :datatype-) "dms_msgs/DMSGazeRoiResult")
(setf (get dms_msgs::DMSGazeRoiResult :definition-)
      "uint8 GAZE_ROI_ZONE_AVAILABLE = 1
uint8 GAZE_ROI_TIME_AVAILABLE = 2
uint8 EYES_ON_ROAD_TYPE_AVAILABLE = 4
uint8 ROI_TYPE_AVAILABLE = 8
uint8 RESERVED = 16
uint8 RESERVED1 = 32
uint8 available
dms_msgs/DMSGazeRoiZonesTypeEnum gaze_roi_zone
float32 gaze_roi_time
dms_msgs/DMSEyesOnRoadTypeEnum eyes_on_road_type
dms_msgs/DMSGazeRoiTypeEnum roi_type
float32 reserved
float32 reserved1

================================================================================
MSG: dms_msgs/DMSGazeRoiZonesTypeEnum
uint32 WINDSHIELDDRIVER = 1
uint32 REARVIEWMIRROR = 2
uint32 WINDSHIELDPASSENGER = 3
uint32 RESERVED = 4
uint32 DIM = 5
uint32 IHU = 6
uint32 WINDOWDRIVER = 7
uint32 REARMIRRORLEFT = 8
uint32 DOORDRIVER = 9
uint32 WINDOWPASSENGER = 10
uint32 REARMIRRORRIGHT = 11
uint32 DOORDPASSENGER = 12
uint32 FLOORDRIVER = 13
uint32 FLOORPASSENGER = 14
uint32 OTHER = 15
uint32 RESERVED1 = 16
uint32 RESERVED2 = 17
uint32 RESERVED3 = 18
uint32 STEERWHEELLE = 19
uint32 STEERWHEELRI = 20
uint32 RESERVED4 = 21
uint32 RESERVED5 = 22
uint32 RESERVED6 = 23
uint32 RESERVED7 = 24
uint32 RESERVED8 = 25
uint32 value

================================================================================
MSG: dms_msgs/DMSEyesOnRoadTypeEnum
uint8 EYES_OFF_ROAD = 0
uint8 EYES_ON_ROAD = 1
uint8 value

================================================================================
MSG: dms_msgs/DMSGazeRoiTypeEnum
uint16 GAZE_CALCULATE_ROI = 2
uint16 HEADPOSE_CALCULATE_ROI = 4
uint16 RESERVED = 8
uint16 RESERVED1 = 16
uint16 RESERVED2 = 32
uint16 value

")



(provide :dms_msgs/DMSGazeRoiResult "8f463101a07001f5faac55cbf4856ddc")


