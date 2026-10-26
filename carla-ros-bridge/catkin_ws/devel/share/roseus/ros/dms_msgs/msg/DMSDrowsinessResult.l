;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSDrowsinessResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSDrowsinessResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSDROWSINESSRESULT")
  (make-package "DMS_MSGS::DMSDROWSINESSRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSDrowsinessResult.msg.html


(intern "*DROWSINESS_MODEL_SCORE_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*DROWSINESS_MODEL_SCORE_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*DROWSINESS_MODEL_SCORE_AVAILABLE* 1)
(intern "*DROWSINESS_PRO_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*DROWSINESS_PRO_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*DROWSINESS_PRO_AVAILABLE* 2)
(intern "*MODEL_BASED_DROWSINESS_PRO_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*MODEL_BASED_DROWSINESS_PRO_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*MODEL_BASED_DROWSINESS_PRO_AVAILABLE* 4)
(intern "*RULE_BASED_DROWSINESS_PRO_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*RULE_BASED_DROWSINESS_PRO_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*RULE_BASED_DROWSINESS_PRO_AVAILABLE* 8)
(intern "*DROWSINESS_LEVEL_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*DROWSINESS_LEVEL_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*DROWSINESS_LEVEL_TYPE_AVAILABLE* 16)
(intern "*DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE* 32)
(intern "*DROWSINESS_PRO_CORE_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*DROWSINESS_PRO_CORE_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*DROWSINESS_PRO_CORE_AVAILABLE* 64)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*RESERVED* 128)
(intern "*L3_DROWSINESS_LEVEL_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*L3_DROWSINESS_LEVEL_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*L3_DROWSINESS_LEVEL_TYPE_AVAILABLE* 256)
(intern "*L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE* 512)
(intern "*L2_DROWSINESS_LEVEL_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*L2_DROWSINESS_LEVEL_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*L2_DROWSINESS_LEVEL_TYPE_AVAILABLE* 1024)
(intern "*L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE*" (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(shadow '*L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE* (find-package "DMS_MSGS::DMSDROWSINESSRESULT"))
(defconstant dms_msgs::DMSDrowsinessResult::*L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE* 2048)

(defun dms_msgs::DMSDrowsinessResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSDrowsinessResult::*DROWSINESS_MODEL_SCORE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSDrowsinessResult::*DROWSINESS_PRO_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSDrowsinessResult::*MODEL_BASED_DROWSINESS_PRO_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSDrowsinessResult::*RULE_BASED_DROWSINESS_PRO_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSDrowsinessResult::*DROWSINESS_LEVEL_TYPE_AVAILABLE*)
        ((= const 32) 'dms_msgs::DMSDrowsinessResult::*DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE*)
        ((= const 64) 'dms_msgs::DMSDrowsinessResult::*DROWSINESS_PRO_CORE_AVAILABLE*)
        ((= const 128) 'dms_msgs::DMSDrowsinessResult::*RESERVED*)
        ((= const 256) 'dms_msgs::DMSDrowsinessResult::*L3_DROWSINESS_LEVEL_TYPE_AVAILABLE*)
        ((= const 512) 'dms_msgs::DMSDrowsinessResult::*L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE*)
        ((= const 1024) 'dms_msgs::DMSDrowsinessResult::*L2_DROWSINESS_LEVEL_TYPE_AVAILABLE*)
        ((= const 2048) 'dms_msgs::DMSDrowsinessResult::*L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSDrowsinessResult
  :super ros::object
  :slots (_available _drowsiness_model_score _drowsiness_pro _model_based_drowsiness_pro _rule_based_drowsiness_pro _drowsiness_level_type _drowsiness_confidence_level _l2_drowsiness_level_type _l2_drowsiness_confidence_level _l3_drowsiness_level_type _l3_drowsiness_confidence_level _drowsiness_pro_core _reserved _drowsiness_sensitivity _drows_params _l2_drowsiness_sensitivity _l2_drows_params _l3_drowsiness_sensitivity _l3_drows_params ))

(defmethod dms_msgs::DMSDrowsinessResult
  (:init
   (&key
    ((:available __available) 0)
    ((:drowsiness_model_score __drowsiness_model_score) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:drowsiness_pro __drowsiness_pro) 0)
    ((:model_based_drowsiness_pro __model_based_drowsiness_pro) 0)
    ((:rule_based_drowsiness_pro __rule_based_drowsiness_pro) 0)
    ((:drowsiness_level_type __drowsiness_level_type) (instance dms_msgs::DMSDrowsinessLevelTypeEnum :init))
    ((:drowsiness_confidence_level __drowsiness_confidence_level) (instance dms_msgs::DMSDrowsinessConfidenceTypeEnum :init))
    ((:l2_drowsiness_level_type __l2_drowsiness_level_type) (instance dms_msgs::L2DMSDrowsinessLevelTypeEnum :init))
    ((:l2_drowsiness_confidence_level __l2_drowsiness_confidence_level) (instance dms_msgs::L2DMSDrowsinessConfidenceTypeEnum :init))
    ((:l3_drowsiness_level_type __l3_drowsiness_level_type) (instance dms_msgs::L3DMSDrowsinessLevelTypeEnum :init))
    ((:l3_drowsiness_confidence_level __l3_drowsiness_confidence_level) (instance dms_msgs::L3DMSDrowsinessConfidenceTypeEnum :init))
    ((:drowsiness_pro_core __drowsiness_pro_core) 0)
    ((:reserved __reserved) 0.0)
    ((:drowsiness_sensitivity __drowsiness_sensitivity) 0)
    ((:drows_params __drows_params) "")
    ((:l2_drowsiness_sensitivity __l2_drowsiness_sensitivity) 0)
    ((:l2_drows_params __l2_drows_params) "")
    ((:l3_drowsiness_sensitivity __l3_drowsiness_sensitivity) 0)
    ((:l3_drows_params __l3_drows_params) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _drowsiness_model_score __drowsiness_model_score)
   (setq _drowsiness_pro (round __drowsiness_pro))
   (setq _model_based_drowsiness_pro (round __model_based_drowsiness_pro))
   (setq _rule_based_drowsiness_pro (round __rule_based_drowsiness_pro))
   (setq _drowsiness_level_type __drowsiness_level_type)
   (setq _drowsiness_confidence_level __drowsiness_confidence_level)
   (setq _l2_drowsiness_level_type __l2_drowsiness_level_type)
   (setq _l2_drowsiness_confidence_level __l2_drowsiness_confidence_level)
   (setq _l3_drowsiness_level_type __l3_drowsiness_level_type)
   (setq _l3_drowsiness_confidence_level __l3_drowsiness_confidence_level)
   (setq _drowsiness_pro_core (round __drowsiness_pro_core))
   (setq _reserved (float __reserved))
   (setq _drowsiness_sensitivity (round __drowsiness_sensitivity))
   (setq _drows_params (string __drows_params))
   (setq _l2_drowsiness_sensitivity (round __l2_drowsiness_sensitivity))
   (setq _l2_drows_params (string __l2_drows_params))
   (setq _l3_drowsiness_sensitivity (round __l3_drowsiness_sensitivity))
   (setq _l3_drows_params (string __l3_drows_params))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:drowsiness_model_score
   (&optional __drowsiness_model_score)
   (if __drowsiness_model_score (setq _drowsiness_model_score __drowsiness_model_score)) _drowsiness_model_score)
  (:drowsiness_pro
   (&optional __drowsiness_pro)
   (if __drowsiness_pro (setq _drowsiness_pro __drowsiness_pro)) _drowsiness_pro)
  (:model_based_drowsiness_pro
   (&optional __model_based_drowsiness_pro)
   (if __model_based_drowsiness_pro (setq _model_based_drowsiness_pro __model_based_drowsiness_pro)) _model_based_drowsiness_pro)
  (:rule_based_drowsiness_pro
   (&optional __rule_based_drowsiness_pro)
   (if __rule_based_drowsiness_pro (setq _rule_based_drowsiness_pro __rule_based_drowsiness_pro)) _rule_based_drowsiness_pro)
  (:drowsiness_level_type
   (&rest __drowsiness_level_type)
   (if (keywordp (car __drowsiness_level_type))
       (send* _drowsiness_level_type __drowsiness_level_type)
     (progn
       (if __drowsiness_level_type (setq _drowsiness_level_type (car __drowsiness_level_type)))
       _drowsiness_level_type)))
  (:drowsiness_confidence_level
   (&rest __drowsiness_confidence_level)
   (if (keywordp (car __drowsiness_confidence_level))
       (send* _drowsiness_confidence_level __drowsiness_confidence_level)
     (progn
       (if __drowsiness_confidence_level (setq _drowsiness_confidence_level (car __drowsiness_confidence_level)))
       _drowsiness_confidence_level)))
  (:l2_drowsiness_level_type
   (&rest __l2_drowsiness_level_type)
   (if (keywordp (car __l2_drowsiness_level_type))
       (send* _l2_drowsiness_level_type __l2_drowsiness_level_type)
     (progn
       (if __l2_drowsiness_level_type (setq _l2_drowsiness_level_type (car __l2_drowsiness_level_type)))
       _l2_drowsiness_level_type)))
  (:l2_drowsiness_confidence_level
   (&rest __l2_drowsiness_confidence_level)
   (if (keywordp (car __l2_drowsiness_confidence_level))
       (send* _l2_drowsiness_confidence_level __l2_drowsiness_confidence_level)
     (progn
       (if __l2_drowsiness_confidence_level (setq _l2_drowsiness_confidence_level (car __l2_drowsiness_confidence_level)))
       _l2_drowsiness_confidence_level)))
  (:l3_drowsiness_level_type
   (&rest __l3_drowsiness_level_type)
   (if (keywordp (car __l3_drowsiness_level_type))
       (send* _l3_drowsiness_level_type __l3_drowsiness_level_type)
     (progn
       (if __l3_drowsiness_level_type (setq _l3_drowsiness_level_type (car __l3_drowsiness_level_type)))
       _l3_drowsiness_level_type)))
  (:l3_drowsiness_confidence_level
   (&rest __l3_drowsiness_confidence_level)
   (if (keywordp (car __l3_drowsiness_confidence_level))
       (send* _l3_drowsiness_confidence_level __l3_drowsiness_confidence_level)
     (progn
       (if __l3_drowsiness_confidence_level (setq _l3_drowsiness_confidence_level (car __l3_drowsiness_confidence_level)))
       _l3_drowsiness_confidence_level)))
  (:drowsiness_pro_core
   (&optional __drowsiness_pro_core)
   (if __drowsiness_pro_core (setq _drowsiness_pro_core __drowsiness_pro_core)) _drowsiness_pro_core)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:drowsiness_sensitivity
   (&optional __drowsiness_sensitivity)
   (if __drowsiness_sensitivity (setq _drowsiness_sensitivity __drowsiness_sensitivity)) _drowsiness_sensitivity)
  (:drows_params
   (&optional __drows_params)
   (if __drows_params (setq _drows_params __drows_params)) _drows_params)
  (:l2_drowsiness_sensitivity
   (&optional __l2_drowsiness_sensitivity)
   (if __l2_drowsiness_sensitivity (setq _l2_drowsiness_sensitivity __l2_drowsiness_sensitivity)) _l2_drowsiness_sensitivity)
  (:l2_drows_params
   (&optional __l2_drows_params)
   (if __l2_drows_params (setq _l2_drows_params __l2_drows_params)) _l2_drows_params)
  (:l3_drowsiness_sensitivity
   (&optional __l3_drowsiness_sensitivity)
   (if __l3_drowsiness_sensitivity (setq _l3_drowsiness_sensitivity __l3_drowsiness_sensitivity)) _l3_drowsiness_sensitivity)
  (:l3_drows_params
   (&optional __l3_drows_params)
   (if __l3_drows_params (setq _l3_drows_params __l3_drows_params)) _l3_drows_params)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32[] _drowsiness_model_score
    (* 4    (length _drowsiness_model_score)) 4
    ;; int32 _drowsiness_pro
    4
    ;; int32 _model_based_drowsiness_pro
    4
    ;; int32 _rule_based_drowsiness_pro
    4
    ;; dms_msgs/DMSDrowsinessLevelTypeEnum _drowsiness_level_type
    (send _drowsiness_level_type :serialization-length)
    ;; dms_msgs/DMSDrowsinessConfidenceTypeEnum _drowsiness_confidence_level
    (send _drowsiness_confidence_level :serialization-length)
    ;; dms_msgs/L2DMSDrowsinessLevelTypeEnum _l2_drowsiness_level_type
    (send _l2_drowsiness_level_type :serialization-length)
    ;; dms_msgs/L2DMSDrowsinessConfidenceTypeEnum _l2_drowsiness_confidence_level
    (send _l2_drowsiness_confidence_level :serialization-length)
    ;; dms_msgs/L3DMSDrowsinessLevelTypeEnum _l3_drowsiness_level_type
    (send _l3_drowsiness_level_type :serialization-length)
    ;; dms_msgs/L3DMSDrowsinessConfidenceTypeEnum _l3_drowsiness_confidence_level
    (send _l3_drowsiness_confidence_level :serialization-length)
    ;; int32 _drowsiness_pro_core
    4
    ;; float32 _reserved
    4
    ;; int32 _drowsiness_sensitivity
    4
    ;; string _drows_params
    4 (length _drows_params)
    ;; int32 _l2_drowsiness_sensitivity
    4
    ;; string _l2_drows_params
    4 (length _l2_drows_params)
    ;; int32 _l3_drowsiness_sensitivity
    4
    ;; string _l3_drows_params
    4 (length _l3_drows_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; float32[] _drowsiness_model_score
     (write-long (length _drowsiness_model_score) s)
     (dotimes (i (length _drowsiness_model_score))
       (sys::poke (elt _drowsiness_model_score i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _drowsiness_pro
       (write-long _drowsiness_pro s)
     ;; int32 _model_based_drowsiness_pro
       (write-long _model_based_drowsiness_pro s)
     ;; int32 _rule_based_drowsiness_pro
       (write-long _rule_based_drowsiness_pro s)
     ;; dms_msgs/DMSDrowsinessLevelTypeEnum _drowsiness_level_type
       (send _drowsiness_level_type :serialize s)
     ;; dms_msgs/DMSDrowsinessConfidenceTypeEnum _drowsiness_confidence_level
       (send _drowsiness_confidence_level :serialize s)
     ;; dms_msgs/L2DMSDrowsinessLevelTypeEnum _l2_drowsiness_level_type
       (send _l2_drowsiness_level_type :serialize s)
     ;; dms_msgs/L2DMSDrowsinessConfidenceTypeEnum _l2_drowsiness_confidence_level
       (send _l2_drowsiness_confidence_level :serialize s)
     ;; dms_msgs/L3DMSDrowsinessLevelTypeEnum _l3_drowsiness_level_type
       (send _l3_drowsiness_level_type :serialize s)
     ;; dms_msgs/L3DMSDrowsinessConfidenceTypeEnum _l3_drowsiness_confidence_level
       (send _l3_drowsiness_confidence_level :serialize s)
     ;; int32 _drowsiness_pro_core
       (write-long _drowsiness_pro_core s)
     ;; float32 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _drowsiness_sensitivity
       (write-long _drowsiness_sensitivity s)
     ;; string _drows_params
       (write-long (length _drows_params) s) (princ _drows_params s)
     ;; int32 _l2_drowsiness_sensitivity
       (write-long _l2_drowsiness_sensitivity s)
     ;; string _l2_drows_params
       (write-long (length _l2_drows_params) s) (princ _l2_drows_params s)
     ;; int32 _l3_drowsiness_sensitivity
       (write-long _l3_drowsiness_sensitivity s)
     ;; string _l3_drows_params
       (write-long (length _l3_drows_params) s) (princ _l3_drows_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32[] _drowsiness_model_score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drowsiness_model_score (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _drowsiness_model_score i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _drowsiness_pro
     (setq _drowsiness_pro (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _model_based_drowsiness_pro
     (setq _model_based_drowsiness_pro (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rule_based_drowsiness_pro
     (setq _rule_based_drowsiness_pro (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; dms_msgs/DMSDrowsinessLevelTypeEnum _drowsiness_level_type
     (send _drowsiness_level_type :deserialize buf ptr-) (incf ptr- (send _drowsiness_level_type :serialization-length))
   ;; dms_msgs/DMSDrowsinessConfidenceTypeEnum _drowsiness_confidence_level
     (send _drowsiness_confidence_level :deserialize buf ptr-) (incf ptr- (send _drowsiness_confidence_level :serialization-length))
   ;; dms_msgs/L2DMSDrowsinessLevelTypeEnum _l2_drowsiness_level_type
     (send _l2_drowsiness_level_type :deserialize buf ptr-) (incf ptr- (send _l2_drowsiness_level_type :serialization-length))
   ;; dms_msgs/L2DMSDrowsinessConfidenceTypeEnum _l2_drowsiness_confidence_level
     (send _l2_drowsiness_confidence_level :deserialize buf ptr-) (incf ptr- (send _l2_drowsiness_confidence_level :serialization-length))
   ;; dms_msgs/L3DMSDrowsinessLevelTypeEnum _l3_drowsiness_level_type
     (send _l3_drowsiness_level_type :deserialize buf ptr-) (incf ptr- (send _l3_drowsiness_level_type :serialization-length))
   ;; dms_msgs/L3DMSDrowsinessConfidenceTypeEnum _l3_drowsiness_confidence_level
     (send _l3_drowsiness_confidence_level :deserialize buf ptr-) (incf ptr- (send _l3_drowsiness_confidence_level :serialization-length))
   ;; int32 _drowsiness_pro_core
     (setq _drowsiness_pro_core (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _reserved
     (setq _reserved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _drowsiness_sensitivity
     (setq _drowsiness_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _drows_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _drows_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _l2_drowsiness_sensitivity
     (setq _l2_drowsiness_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _l2_drows_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _l2_drows_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _l3_drowsiness_sensitivity
     (setq _l3_drowsiness_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _l3_drows_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _l3_drows_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSDrowsinessResult :md5sum-) "c864d1db8b226718cb69069a074b8053")
(setf (get dms_msgs::DMSDrowsinessResult :datatype-) "dms_msgs/DMSDrowsinessResult")
(setf (get dms_msgs::DMSDrowsinessResult :definition-)
      "uint16 DROWSINESS_MODEL_SCORE_AVAILABLE = 1
uint16 DROWSINESS_PRO_AVAILABLE = 2
uint16 MODEL_BASED_DROWSINESS_PRO_AVAILABLE = 4
uint16 RULE_BASED_DROWSINESS_PRO_AVAILABLE = 8
uint16 DROWSINESS_LEVEL_TYPE_AVAILABLE = 16
uint16 DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 32
uint16 DROWSINESS_PRO_CORE_AVAILABLE = 64
uint16 RESERVED = 128
uint16 L3_DROWSINESS_LEVEL_TYPE_AVAILABLE = 256
uint16 L3_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 512
uint16 L2_DROWSINESS_LEVEL_TYPE_AVAILABLE = 1024
uint16 L2_DROWSINESS_CONFIDENCE_LEVEL_AVAILABLE = 2048
uint16 available
float32[] drowsiness_model_score
int32 drowsiness_pro
int32 model_based_drowsiness_pro
int32 rule_based_drowsiness_pro
dms_msgs/DMSDrowsinessLevelTypeEnum drowsiness_level_type
dms_msgs/DMSDrowsinessConfidenceTypeEnum drowsiness_confidence_level
dms_msgs/L2DMSDrowsinessLevelTypeEnum l2_drowsiness_level_type
dms_msgs/L2DMSDrowsinessConfidenceTypeEnum l2_drowsiness_confidence_level
dms_msgs/L3DMSDrowsinessLevelTypeEnum l3_drowsiness_level_type
dms_msgs/L3DMSDrowsinessConfidenceTypeEnum l3_drowsiness_confidence_level
int32 drowsiness_pro_core
float32 reserved
int32 drowsiness_sensitivity
string drows_params
int32 l2_drowsiness_sensitivity
string l2_drows_params
int32 l3_drowsiness_sensitivity
string l3_drows_params

================================================================================
MSG: dms_msgs/DMSDrowsinessLevelTypeEnum
uint16 DROWSINESS_LEVEL_0 = 0
uint16 DROWSINESS_LEVEL_1 = 1
uint16 DROWSINESS_LEVEL_2 = 2
uint16 DROWSINESS_LEVEL_3 = 3
uint16 DROWSINESS_LEVEL_4 = 4
uint16 DROWSINESS_LEVEL_5 = 5
uint16 DROWSINESS_LEVEL_6 = 6
uint16 DROWSINESS_LEVEL_7 = 7
uint16 DROWSINESS_LEVEL_8 = 8
uint16 DROWSINESS_LEVEL_9 = 9
uint16 DROWSINESS_LEVEL_10 = 10
uint16 DROWSINESS_LEVEL_11 = 11
uint16 value

================================================================================
MSG: dms_msgs/DMSDrowsinessConfidenceTypeEnum
uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
uint16 value

================================================================================
MSG: dms_msgs/L2DMSDrowsinessLevelTypeEnum
uint16 DROWSINESS_LEVEL_0 = 0
uint16 DROWSINESS_LEVEL_1 = 1
uint16 DROWSINESS_LEVEL_2 = 2
uint16 DROWSINESS_LEVEL_3 = 3
uint16 DROWSINESS_LEVEL_4 = 4
uint16 DROWSINESS_LEVEL_5 = 5
uint16 DROWSINESS_LEVEL_6 = 6
uint16 DROWSINESS_LEVEL_7 = 7
uint16 DROWSINESS_LEVEL_8 = 8
uint16 DROWSINESS_LEVEL_9 = 9
uint16 DROWSINESS_LEVEL_10 = 10
uint16 DROWSINESS_LEVEL_11 = 11
uint16 value

================================================================================
MSG: dms_msgs/L2DMSDrowsinessConfidenceTypeEnum
uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
uint16 value

================================================================================
MSG: dms_msgs/L3DMSDrowsinessLevelTypeEnum
uint16 DROWSINESS_LEVEL_0 = 0
uint16 DROWSINESS_LEVEL_1 = 1
uint16 DROWSINESS_LEVEL_2 = 2
uint16 DROWSINESS_LEVEL_3 = 3
uint16 DROWSINESS_LEVEL_4 = 4
uint16 DROWSINESS_LEVEL_5 = 5
uint16 DROWSINESS_LEVEL_6 = 6
uint16 DROWSINESS_LEVEL_7 = 7
uint16 DROWSINESS_LEVEL_8 = 8
uint16 DROWSINESS_LEVEL_9 = 9
uint16 DROWSINESS_LEVEL_10 = 10
uint16 DROWSINESS_LEVEL_11 = 11
uint16 value

================================================================================
MSG: dms_msgs/L3DMSDrowsinessConfidenceTypeEnum
uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
uint16 value

")



(provide :dms_msgs/DMSDrowsinessResult "c864d1db8b226718cb69069a074b8053")


