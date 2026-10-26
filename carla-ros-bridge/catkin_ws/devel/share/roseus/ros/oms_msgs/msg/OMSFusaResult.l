;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSFusaResult)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSFusaResult (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSFUSARESULT")
  (make-package "OMS_MSGS::OMSFUSARESULT"))

(in-package "ROS")
;;//! \htmlinclude OMSFusaResult.msg.html


(intern "*TOO_DARK_BRIGHT_AVAILABLE*" (find-package "OMS_MSGS::OMSFUSARESULT"))
(shadow '*TOO_DARK_BRIGHT_AVAILABLE* (find-package "OMS_MSGS::OMSFUSARESULT"))
(defconstant oms_msgs::OMSFusaResult::*TOO_DARK_BRIGHT_AVAILABLE* 1)
(intern "*OCCLUSION_AVAILABLE*" (find-package "OMS_MSGS::OMSFUSARESULT"))
(shadow '*OCCLUSION_AVAILABLE* (find-package "OMS_MSGS::OMSFUSARESULT"))
(defconstant oms_msgs::OMSFusaResult::*OCCLUSION_AVAILABLE* 2)
(intern "*GLASS_STATUS_AVAILABLE*" (find-package "OMS_MSGS::OMSFUSARESULT"))
(shadow '*GLASS_STATUS_AVAILABLE* (find-package "OMS_MSGS::OMSFUSARESULT"))
(defconstant oms_msgs::OMSFusaResult::*GLASS_STATUS_AVAILABLE* 4)
(intern "*TEARING_AVAILABLE*" (find-package "OMS_MSGS::OMSFUSARESULT"))
(shadow '*TEARING_AVAILABLE* (find-package "OMS_MSGS::OMSFUSARESULT"))
(defconstant oms_msgs::OMSFusaResult::*TEARING_AVAILABLE* 8)
(intern "*FREEZING_AVAILABLE*" (find-package "OMS_MSGS::OMSFUSARESULT"))
(shadow '*FREEZING_AVAILABLE* (find-package "OMS_MSGS::OMSFUSARESULT"))
(defconstant oms_msgs::OMSFusaResult::*FREEZING_AVAILABLE* 16)
(intern "*FPS_ABNORMAL_AVAILABLE*" (find-package "OMS_MSGS::OMSFUSARESULT"))
(shadow '*FPS_ABNORMAL_AVAILABLE* (find-package "OMS_MSGS::OMSFUSARESULT"))
(defconstant oms_msgs::OMSFusaResult::*FPS_ABNORMAL_AVAILABLE* 32)

(defun oms_msgs::OMSFusaResult-to-symbol (const)
  (cond
        ((= const 1) 'oms_msgs::OMSFusaResult::*TOO_DARK_BRIGHT_AVAILABLE*)
        ((= const 2) 'oms_msgs::OMSFusaResult::*OCCLUSION_AVAILABLE*)
        ((= const 4) 'oms_msgs::OMSFusaResult::*GLASS_STATUS_AVAILABLE*)
        ((= const 8) 'oms_msgs::OMSFusaResult::*TEARING_AVAILABLE*)
        ((= const 16) 'oms_msgs::OMSFusaResult::*FREEZING_AVAILABLE*)
        ((= const 32) 'oms_msgs::OMSFusaResult::*FPS_ABNORMAL_AVAILABLE*)
        (t nil)))

(defclass oms_msgs::OMSFusaResult
  :super ros::object
  :slots (_available _too_dark_bright_status _occlusion_status _glass_status _occlusion_score _frame_tearing _frame_freezing _frame_fps_abnormal ))

(defmethod oms_msgs::OMSFusaResult
  (:init
   (&key
    ((:available __available) 0)
    ((:too_dark_bright_status __too_dark_bright_status) (instance oms_msgs::OMSCameraOcclusionTypeEnum :init))
    ((:occlusion_status __occlusion_status) (instance oms_msgs::OMSCameraOcclusionTypeEnum :init))
    ((:glass_status __glass_status) (instance oms_msgs::OMSGlassStatusTypeEnum :init))
    ((:occlusion_score __occlusion_score) 0.0)
    ((:frame_tearing __frame_tearing) nil)
    ((:frame_freezing __frame_freezing) nil)
    ((:frame_fps_abnormal __frame_fps_abnormal) nil)
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
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; oms_msgs/OMSCameraOcclusionTypeEnum _too_dark_bright_status
    (send _too_dark_bright_status :serialization-length)
    ;; oms_msgs/OMSCameraOcclusionTypeEnum _occlusion_status
    (send _occlusion_status :serialization-length)
    ;; oms_msgs/OMSGlassStatusTypeEnum _glass_status
    (send _glass_status :serialization-length)
    ;; float32 _occlusion_score
    4
    ;; bool _frame_tearing
    1
    ;; bool _frame_freezing
    1
    ;; bool _frame_fps_abnormal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; oms_msgs/OMSCameraOcclusionTypeEnum _too_dark_bright_status
       (send _too_dark_bright_status :serialize s)
     ;; oms_msgs/OMSCameraOcclusionTypeEnum _occlusion_status
       (send _occlusion_status :serialize s)
     ;; oms_msgs/OMSGlassStatusTypeEnum _glass_status
       (send _glass_status :serialize s)
     ;; float32 _occlusion_score
       (sys::poke _occlusion_score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _frame_tearing
       (if _frame_tearing (write-byte -1 s) (write-byte 0 s))
     ;; bool _frame_freezing
       (if _frame_freezing (write-byte -1 s) (write-byte 0 s))
     ;; bool _frame_fps_abnormal
       (if _frame_fps_abnormal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; oms_msgs/OMSCameraOcclusionTypeEnum _too_dark_bright_status
     (send _too_dark_bright_status :deserialize buf ptr-) (incf ptr- (send _too_dark_bright_status :serialization-length))
   ;; oms_msgs/OMSCameraOcclusionTypeEnum _occlusion_status
     (send _occlusion_status :deserialize buf ptr-) (incf ptr- (send _occlusion_status :serialization-length))
   ;; oms_msgs/OMSGlassStatusTypeEnum _glass_status
     (send _glass_status :deserialize buf ptr-) (incf ptr- (send _glass_status :serialization-length))
   ;; float32 _occlusion_score
     (setq _occlusion_score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _frame_tearing
     (setq _frame_tearing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _frame_freezing
     (setq _frame_freezing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _frame_fps_abnormal
     (setq _frame_fps_abnormal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get oms_msgs::OMSFusaResult :md5sum-) "19b6c1167a1ed95968f2bb11a9170c1e")
(setf (get oms_msgs::OMSFusaResult :datatype-) "oms_msgs/OMSFusaResult")
(setf (get oms_msgs::OMSFusaResult :definition-)
      "uint8 TOO_DARK_BRIGHT_AVAILABLE = 1
uint8 OCCLUSION_AVAILABLE = 2
uint8 GLASS_STATUS_AVAILABLE = 4
uint8 TEARING_AVAILABLE = 8
uint8 FREEZING_AVAILABLE = 16
uint8 FPS_ABNORMAL_AVAILABLE = 32
uint8 available
oms_msgs/OMSCameraOcclusionTypeEnum too_dark_bright_status
oms_msgs/OMSCameraOcclusionTypeEnum occlusion_status
oms_msgs/OMSGlassStatusTypeEnum glass_status
float32 occlusion_score
bool frame_tearing
bool frame_freezing
bool frame_fps_abnormal

================================================================================
MSG: oms_msgs/OMSCameraOcclusionTypeEnum
uint8 OMS_CAMERA_NO_BLOCK = 0
uint8 OMS_CAMERA_BLOCK = 1
uint8 value

================================================================================
MSG: oms_msgs/OMSGlassStatusTypeEnum
uint8 OMS_GLASSES_UNKNOWN = 0
uint8 OMS_GLASSES_IR_BLOCK_ON = 1
uint8 value

")



(provide :oms_msgs/OMSFusaResult "19b6c1167a1ed95968f2bb11a9170c1e")


