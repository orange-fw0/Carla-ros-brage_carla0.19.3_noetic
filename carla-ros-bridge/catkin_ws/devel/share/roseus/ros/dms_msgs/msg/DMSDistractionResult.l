;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSDistractionResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSDistractionResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSDISTRACTIONRESULT")
  (make-package "DMS_MSGS::DMSDISTRACTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSDistractionResult.msg.html


(intern "*DISTRACTION_LITE_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*DISTRACTION_LITE_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*DISTRACTION_LITE_AVAILABLE* 1)
(intern "*DISTRACTION_PRO_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*DISTRACTION_PRO_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*DISTRACTION_PRO_AVAILABLE* 2)
(intern "*DISTRACTION_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*DISTRACTION_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*DISTRACTION_TYPE_AVAILABLE* 4)
(intern "*DISTRACTION_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*DISTRACTION_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*DISTRACTION_LEVEL_AVAILABLE* 8)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE* 16)
(intern "*DISTRACTION_REASON_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*DISTRACTION_REASON_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*DISTRACTION_REASON_TYPE_AVAILABLE* 32)
(intern "*DISTRACTION_PRO_CORE_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*DISTRACTION_PRO_CORE_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*DISTRACTION_PRO_CORE_AVAILABLE* 64)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*RESERVED* 128)
(intern "*L3_DISTRACTION_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*L3_DISTRACTION_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*L3_DISTRACTION_LEVEL_AVAILABLE* 256)
(intern "*L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE* 512)
(intern "*L2_DISTRACTION_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*L2_DISTRACTION_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*L2_DISTRACTION_LEVEL_AVAILABLE* 1024)
(intern "*L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(shadow '*L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDISTRACTIONRESULT"))
(defconstant dms_msgs::DMSDistractionResult::*L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE* 2048)

(defun dms_msgs::DMSDistractionResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSDistractionResult::*DISTRACTION_LITE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSDistractionResult::*DISTRACTION_PRO_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSDistractionResult::*DISTRACTION_TYPE_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSDistractionResult::*DISTRACTION_LEVEL_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSDistractionResult::*DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE*)
        ((= const 32) 'dms_msgs::DMSDistractionResult::*DISTRACTION_REASON_TYPE_AVAILABLE*)
        ((= const 64) 'dms_msgs::DMSDistractionResult::*DISTRACTION_PRO_CORE_AVAILABLE*)
        ((= const 128) 'dms_msgs::DMSDistractionResult::*RESERVED*)
        ((= const 256) 'dms_msgs::DMSDistractionResult::*L3_DISTRACTION_LEVEL_AVAILABLE*)
        ((= const 512) 'dms_msgs::DMSDistractionResult::*L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE*)
        ((= const 1024) 'dms_msgs::DMSDistractionResult::*L2_DISTRACTION_LEVEL_AVAILABLE*)
        ((= const 2048) 'dms_msgs::DMSDistractionResult::*L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSDistractionResult
  :super ros::object
  :slots (_available _distraction_lite _distraction_pro _distraction_type _distraction_level_type _distraction_confidence_level _distraction_reason_type _l2_distraction_level_type _l2_distraction_confidence_level _l3_distraction_level_type _l3_distraction_confidence_level _distraction_pro_core _reserved _distraction_sensitivity _dis_params _l2_distraction_sensitivity _l2_dis_params _l3_distraction_sensitivity _l3_dis_params ))

(defmethod dms_msgs::DMSDistractionResult
  (:init
   (&key
    ((:available __available) 0)
    ((:distraction_lite __distraction_lite) 0)
    ((:distraction_pro __distraction_pro) 0)
    ((:distraction_type __distraction_type) (instance dms_msgs::DMSDistractionTypeEnum :init))
    ((:distraction_level_type __distraction_level_type) (instance dms_msgs::DMSDistractionLevelTypeEnum :init))
    ((:distraction_confidence_level __distraction_confidence_level) (instance dms_msgs::DMSDistractionConfidenceTypeEnum :init))
    ((:distraction_reason_type __distraction_reason_type) (instance dms_msgs::DMSDistractionReasonTypeEnum :init))
    ((:l2_distraction_level_type __l2_distraction_level_type) (instance dms_msgs::L2DMSDistractionLevelTypeEnum :init))
    ((:l2_distraction_confidence_level __l2_distraction_confidence_level) (instance dms_msgs::L2DMSDistractionConfidenceTypeEnum :init))
    ((:l3_distraction_level_type __l3_distraction_level_type) (instance dms_msgs::L3DMSDistractionLevelTypeEnum :init))
    ((:l3_distraction_confidence_level __l3_distraction_confidence_level) (instance dms_msgs::L3DMSDistractionConfidenceTypeEnum :init))
    ((:distraction_pro_core __distraction_pro_core) 0)
    ((:reserved __reserved) 0)
    ((:distraction_sensitivity __distraction_sensitivity) 0)
    ((:dis_params __dis_params) "")
    ((:l2_distraction_sensitivity __l2_distraction_sensitivity) 0)
    ((:l2_dis_params __l2_dis_params) "")
    ((:l3_distraction_sensitivity __l3_distraction_sensitivity) 0)
    ((:l3_dis_params __l3_dis_params) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _distraction_lite (round __distraction_lite))
   (setq _distraction_pro (round __distraction_pro))
   (setq _distraction_type __distraction_type)
   (setq _distraction_level_type __distraction_level_type)
   (setq _distraction_confidence_level __distraction_confidence_level)
   (setq _distraction_reason_type __distraction_reason_type)
   (setq _l2_distraction_level_type __l2_distraction_level_type)
   (setq _l2_distraction_confidence_level __l2_distraction_confidence_level)
   (setq _l3_distraction_level_type __l3_distraction_level_type)
   (setq _l3_distraction_confidence_level __l3_distraction_confidence_level)
   (setq _distraction_pro_core (round __distraction_pro_core))
   (setq _reserved (round __reserved))
   (setq _distraction_sensitivity (round __distraction_sensitivity))
   (setq _dis_params (string __dis_params))
   (setq _l2_distraction_sensitivity (round __l2_distraction_sensitivity))
   (setq _l2_dis_params (string __l2_dis_params))
   (setq _l3_distraction_sensitivity (round __l3_distraction_sensitivity))
   (setq _l3_dis_params (string __l3_dis_params))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:distraction_lite
   (&optional __distraction_lite)
   (if __distraction_lite (setq _distraction_lite __distraction_lite)) _distraction_lite)
  (:distraction_pro
   (&optional __distraction_pro)
   (if __distraction_pro (setq _distraction_pro __distraction_pro)) _distraction_pro)
  (:distraction_type
   (&rest __distraction_type)
   (if (keywordp (car __distraction_type))
       (send* _distraction_type __distraction_type)
     (progn
       (if __distraction_type (setq _distraction_type (car __distraction_type)))
       _distraction_type)))
  (:distraction_level_type
   (&rest __distraction_level_type)
   (if (keywordp (car __distraction_level_type))
       (send* _distraction_level_type __distraction_level_type)
     (progn
       (if __distraction_level_type (setq _distraction_level_type (car __distraction_level_type)))
       _distraction_level_type)))
  (:distraction_confidence_level
   (&rest __distraction_confidence_level)
   (if (keywordp (car __distraction_confidence_level))
       (send* _distraction_confidence_level __distraction_confidence_level)
     (progn
       (if __distraction_confidence_level (setq _distraction_confidence_level (car __distraction_confidence_level)))
       _distraction_confidence_level)))
  (:distraction_reason_type
   (&rest __distraction_reason_type)
   (if (keywordp (car __distraction_reason_type))
       (send* _distraction_reason_type __distraction_reason_type)
     (progn
       (if __distraction_reason_type (setq _distraction_reason_type (car __distraction_reason_type)))
       _distraction_reason_type)))
  (:l2_distraction_level_type
   (&rest __l2_distraction_level_type)
   (if (keywordp (car __l2_distraction_level_type))
       (send* _l2_distraction_level_type __l2_distraction_level_type)
     (progn
       (if __l2_distraction_level_type (setq _l2_distraction_level_type (car __l2_distraction_level_type)))
       _l2_distraction_level_type)))
  (:l2_distraction_confidence_level
   (&rest __l2_distraction_confidence_level)
   (if (keywordp (car __l2_distraction_confidence_level))
       (send* _l2_distraction_confidence_level __l2_distraction_confidence_level)
     (progn
       (if __l2_distraction_confidence_level (setq _l2_distraction_confidence_level (car __l2_distraction_confidence_level)))
       _l2_distraction_confidence_level)))
  (:l3_distraction_level_type
   (&rest __l3_distraction_level_type)
   (if (keywordp (car __l3_distraction_level_type))
       (send* _l3_distraction_level_type __l3_distraction_level_type)
     (progn
       (if __l3_distraction_level_type (setq _l3_distraction_level_type (car __l3_distraction_level_type)))
       _l3_distraction_level_type)))
  (:l3_distraction_confidence_level
   (&rest __l3_distraction_confidence_level)
   (if (keywordp (car __l3_distraction_confidence_level))
       (send* _l3_distraction_confidence_level __l3_distraction_confidence_level)
     (progn
       (if __l3_distraction_confidence_level (setq _l3_distraction_confidence_level (car __l3_distraction_confidence_level)))
       _l3_distraction_confidence_level)))
  (:distraction_pro_core
   (&optional __distraction_pro_core)
   (if __distraction_pro_core (setq _distraction_pro_core __distraction_pro_core)) _distraction_pro_core)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:distraction_sensitivity
   (&optional __distraction_sensitivity)
   (if __distraction_sensitivity (setq _distraction_sensitivity __distraction_sensitivity)) _distraction_sensitivity)
  (:dis_params
   (&optional __dis_params)
   (if __dis_params (setq _dis_params __dis_params)) _dis_params)
  (:l2_distraction_sensitivity
   (&optional __l2_distraction_sensitivity)
   (if __l2_distraction_sensitivity (setq _l2_distraction_sensitivity __l2_distraction_sensitivity)) _l2_distraction_sensitivity)
  (:l2_dis_params
   (&optional __l2_dis_params)
   (if __l2_dis_params (setq _l2_dis_params __l2_dis_params)) _l2_dis_params)
  (:l3_distraction_sensitivity
   (&optional __l3_distraction_sensitivity)
   (if __l3_distraction_sensitivity (setq _l3_distraction_sensitivity __l3_distraction_sensitivity)) _l3_distraction_sensitivity)
  (:l3_dis_params
   (&optional __l3_dis_params)
   (if __l3_dis_params (setq _l3_dis_params __l3_dis_params)) _l3_dis_params)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; int32 _distraction_lite
    4
    ;; int32 _distraction_pro
    4
    ;; dms_msgs/DMSDistractionTypeEnum _distraction_type
    (send _distraction_type :serialization-length)
    ;; dms_msgs/DMSDistractionLevelTypeEnum _distraction_level_type
    (send _distraction_level_type :serialization-length)
    ;; dms_msgs/DMSDistractionConfidenceTypeEnum _distraction_confidence_level
    (send _distraction_confidence_level :serialization-length)
    ;; dms_msgs/DMSDistractionReasonTypeEnum _distraction_reason_type
    (send _distraction_reason_type :serialization-length)
    ;; dms_msgs/L2DMSDistractionLevelTypeEnum _l2_distraction_level_type
    (send _l2_distraction_level_type :serialization-length)
    ;; dms_msgs/L2DMSDistractionConfidenceTypeEnum _l2_distraction_confidence_level
    (send _l2_distraction_confidence_level :serialization-length)
    ;; dms_msgs/L3DMSDistractionLevelTypeEnum _l3_distraction_level_type
    (send _l3_distraction_level_type :serialization-length)
    ;; dms_msgs/L3DMSDistractionConfidenceTypeEnum _l3_distraction_confidence_level
    (send _l3_distraction_confidence_level :serialization-length)
    ;; int32 _distraction_pro_core
    4
    ;; int32 _reserved
    4
    ;; int32 _distraction_sensitivity
    4
    ;; string _dis_params
    4 (length _dis_params)
    ;; int32 _l2_distraction_sensitivity
    4
    ;; string _l2_dis_params
    4 (length _l2_dis_params)
    ;; int32 _l3_distraction_sensitivity
    4
    ;; string _l3_dis_params
    4 (length _l3_dis_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; int32 _distraction_lite
       (write-long _distraction_lite s)
     ;; int32 _distraction_pro
       (write-long _distraction_pro s)
     ;; dms_msgs/DMSDistractionTypeEnum _distraction_type
       (send _distraction_type :serialize s)
     ;; dms_msgs/DMSDistractionLevelTypeEnum _distraction_level_type
       (send _distraction_level_type :serialize s)
     ;; dms_msgs/DMSDistractionConfidenceTypeEnum _distraction_confidence_level
       (send _distraction_confidence_level :serialize s)
     ;; dms_msgs/DMSDistractionReasonTypeEnum _distraction_reason_type
       (send _distraction_reason_type :serialize s)
     ;; dms_msgs/L2DMSDistractionLevelTypeEnum _l2_distraction_level_type
       (send _l2_distraction_level_type :serialize s)
     ;; dms_msgs/L2DMSDistractionConfidenceTypeEnum _l2_distraction_confidence_level
       (send _l2_distraction_confidence_level :serialize s)
     ;; dms_msgs/L3DMSDistractionLevelTypeEnum _l3_distraction_level_type
       (send _l3_distraction_level_type :serialize s)
     ;; dms_msgs/L3DMSDistractionConfidenceTypeEnum _l3_distraction_confidence_level
       (send _l3_distraction_confidence_level :serialize s)
     ;; int32 _distraction_pro_core
       (write-long _distraction_pro_core s)
     ;; int32 _reserved
       (write-long _reserved s)
     ;; int32 _distraction_sensitivity
       (write-long _distraction_sensitivity s)
     ;; string _dis_params
       (write-long (length _dis_params) s) (princ _dis_params s)
     ;; int32 _l2_distraction_sensitivity
       (write-long _l2_distraction_sensitivity s)
     ;; string _l2_dis_params
       (write-long (length _l2_dis_params) s) (princ _l2_dis_params s)
     ;; int32 _l3_distraction_sensitivity
       (write-long _l3_distraction_sensitivity s)
     ;; string _l3_dis_params
       (write-long (length _l3_dis_params) s) (princ _l3_dis_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _distraction_lite
     (setq _distraction_lite (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _distraction_pro
     (setq _distraction_pro (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; dms_msgs/DMSDistractionTypeEnum _distraction_type
     (send _distraction_type :deserialize buf ptr-) (incf ptr- (send _distraction_type :serialization-length))
   ;; dms_msgs/DMSDistractionLevelTypeEnum _distraction_level_type
     (send _distraction_level_type :deserialize buf ptr-) (incf ptr- (send _distraction_level_type :serialization-length))
   ;; dms_msgs/DMSDistractionConfidenceTypeEnum _distraction_confidence_level
     (send _distraction_confidence_level :deserialize buf ptr-) (incf ptr- (send _distraction_confidence_level :serialization-length))
   ;; dms_msgs/DMSDistractionReasonTypeEnum _distraction_reason_type
     (send _distraction_reason_type :deserialize buf ptr-) (incf ptr- (send _distraction_reason_type :serialization-length))
   ;; dms_msgs/L2DMSDistractionLevelTypeEnum _l2_distraction_level_type
     (send _l2_distraction_level_type :deserialize buf ptr-) (incf ptr- (send _l2_distraction_level_type :serialization-length))
   ;; dms_msgs/L2DMSDistractionConfidenceTypeEnum _l2_distraction_confidence_level
     (send _l2_distraction_confidence_level :deserialize buf ptr-) (incf ptr- (send _l2_distraction_confidence_level :serialization-length))
   ;; dms_msgs/L3DMSDistractionLevelTypeEnum _l3_distraction_level_type
     (send _l3_distraction_level_type :deserialize buf ptr-) (incf ptr- (send _l3_distraction_level_type :serialization-length))
   ;; dms_msgs/L3DMSDistractionConfidenceTypeEnum _l3_distraction_confidence_level
     (send _l3_distraction_confidence_level :deserialize buf ptr-) (incf ptr- (send _l3_distraction_confidence_level :serialization-length))
   ;; int32 _distraction_pro_core
     (setq _distraction_pro_core (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reserved
     (setq _reserved (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _distraction_sensitivity
     (setq _distraction_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _dis_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dis_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _l2_distraction_sensitivity
     (setq _l2_distraction_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _l2_dis_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _l2_dis_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _l3_distraction_sensitivity
     (setq _l3_distraction_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _l3_dis_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _l3_dis_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSDistractionResult :md5sum-) "98c231a7b2a6000eca25ba4de0266afb")
(setf (get dms_msgs::DMSDistractionResult :datatype-) "dms_msgs/DMSDistractionResult")
(setf (get dms_msgs::DMSDistractionResult :definition-)
      "uint16 DISTRACTION_LITE_AVAILABLE = 1
uint16 DISTRACTION_PRO_AVAILABLE = 2
uint16 DISTRACTION_TYPE_AVAILABLE = 4
uint16 DISTRACTION_LEVEL_AVAILABLE = 8
uint16 DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 16
uint16 DISTRACTION_REASON_TYPE_AVAILABLE = 32
uint16 DISTRACTION_PRO_CORE_AVAILABLE = 64
uint16 RESERVED = 128
uint16 L3_DISTRACTION_LEVEL_AVAILABLE = 256
uint16 L3_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 512
uint16 L2_DISTRACTION_LEVEL_AVAILABLE = 1024
uint16 L2_DISTRACTION_CONFIDENCE_LEVEL_AVAILABLE = 2048
uint16 available
int32 distraction_lite
int32 distraction_pro
dms_msgs/DMSDistractionTypeEnum distraction_type
dms_msgs/DMSDistractionLevelTypeEnum distraction_level_type
dms_msgs/DMSDistractionConfidenceTypeEnum distraction_confidence_level
dms_msgs/DMSDistractionReasonTypeEnum distraction_reason_type
dms_msgs/L2DMSDistractionLevelTypeEnum l2_distraction_level_type
dms_msgs/L2DMSDistractionConfidenceTypeEnum l2_distraction_confidence_level
dms_msgs/L3DMSDistractionLevelTypeEnum l3_distraction_level_type
dms_msgs/L3DMSDistractionConfidenceTypeEnum l3_distraction_confidence_level
int32 distraction_pro_core
int32 reserved
int32 distraction_sensitivity
string dis_params
int32 l2_distraction_sensitivity
string l2_dis_params
int32 l3_distraction_sensitivity
string l3_dis_params

================================================================================
MSG: dms_msgs/DMSDistractionTypeEnum
uint8 LONG_TERM_DISTRACTION = 0
uint8 SHORT_TERM_DISTRACTION = 1
uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2
uint8 value

================================================================================
MSG: dms_msgs/DMSDistractionLevelTypeEnum
uint16 DISTRACTION_LEVEL_0 = 0
uint16 DISTRACTION_LEVEL_1 = 1
uint16 DISTRACTION_LEVEL_2 = 2
uint16 DISTRACTION_LEVEL_3 = 3
uint16 DISTRACTION_LEVEL_4 = 4
uint16 DISTRACTION_LEVEL_5 = 5
uint16 DISTRACTION_LEVEL_6 = 6
uint16 DISTRACTION_LEVEL_7 = 7
uint16 value

================================================================================
MSG: dms_msgs/DMSDistractionConfidenceTypeEnum
uint16 NOT_AVAILABLE_CONFIDENCE = 0
uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
uint16 value

================================================================================
MSG: dms_msgs/DMSDistractionReasonTypeEnum
uint16 HEADPOSE_TRIGER_DISTRACTION = 1
uint16 GAZE_ROI_TRIGER_DISTRACTION = 2
uint16 HEAD_ROI_TRIGER_DISTRACTION = 4
uint16 RESERVED = 8
uint16 RESERVED1 = 16
uint16 RESERVED2 = 32
uint16 value

================================================================================
MSG: dms_msgs/L2DMSDistractionLevelTypeEnum
uint16 DISTRACTION_LEVEL_0 = 0
uint16 DISTRACTION_LEVEL_1 = 1
uint16 DISTRACTION_LEVEL_2 = 2
uint16 DISTRACTION_LEVEL_3 = 3
uint16 DISTRACTION_LEVEL_4 = 4
uint16 DISTRACTION_LEVEL_5 = 5
uint16 DISTRACTION_LEVEL_6 = 6
uint16 DISTRACTION_LEVEL_7 = 7
uint16 value

================================================================================
MSG: dms_msgs/L2DMSDistractionConfidenceTypeEnum
uint16 NOT_AVAILABLE_CONFIDENCE = 0
uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
uint16 value

================================================================================
MSG: dms_msgs/L3DMSDistractionLevelTypeEnum
uint16 DISTRACTION_LEVEL_0 = 0
uint16 DISTRACTION_LEVEL_1 = 1
uint16 DISTRACTION_LEVEL_2 = 2
uint16 DISTRACTION_LEVEL_3 = 3
uint16 DISTRACTION_LEVEL_4 = 4
uint16 DISTRACTION_LEVEL_5 = 5
uint16 DISTRACTION_LEVEL_6 = 6
uint16 DISTRACTION_LEVEL_7 = 7
uint16 value

================================================================================
MSG: dms_msgs/L3DMSDistractionConfidenceTypeEnum
uint16 NOT_AVAILABLE_CONFIDENCE = 0
uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
uint16 value

")



(provide :dms_msgs/DMSDistractionResult "98c231a7b2a6000eca25ba4de0266afb")


