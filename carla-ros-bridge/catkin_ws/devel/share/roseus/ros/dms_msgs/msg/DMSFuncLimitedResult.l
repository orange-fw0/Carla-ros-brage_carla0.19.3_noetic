;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFuncLimitedResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFuncLimitedResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT")
  (make-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSFuncLimitedResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(defconstant dms_msgs::DMSFuncLimitedResult::*UN_AVAILABLE* 0)
(intern "*FUNCTION_LIMITED_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(shadow '*FUNCTION_LIMITED_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(defconstant dms_msgs::DMSFuncLimitedResult::*FUNCTION_LIMITED_TYPE_AVAILABLE* 1)
(intern "*L2_FUNCTION_LIMITED_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(shadow '*L2_FUNCTION_LIMITED_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(defconstant dms_msgs::DMSFuncLimitedResult::*L2_FUNCTION_LIMITED_TYPE_AVAILABLE* 2)
(intern "*L3_FUNCTION_LIMITED_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(shadow '*L3_FUNCTION_LIMITED_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(defconstant dms_msgs::DMSFuncLimitedResult::*L3_FUNCTION_LIMITED_TYPE_AVAILABLE* 4)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSFUNCLIMITEDRESULT"))
(defconstant dms_msgs::DMSFuncLimitedResult::*RESERVED* 8)

(defun dms_msgs::DMSFuncLimitedResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFuncLimitedResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSFuncLimitedResult::*FUNCTION_LIMITED_TYPE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSFuncLimitedResult::*L2_FUNCTION_LIMITED_TYPE_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSFuncLimitedResult::*L3_FUNCTION_LIMITED_TYPE_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSFuncLimitedResult::*RESERVED*)
        (t nil)))

(defclass dms_msgs::DMSFuncLimitedResult
  :super ros::object
  :slots (_available _function_limited_type _l2_function_limited_type _l3_function_limited_type _reserved _func_limited_params ))

(defmethod dms_msgs::DMSFuncLimitedResult
  (:init
   (&key
    ((:available __available) 0)
    ((:function_limited_type __function_limited_type) (instance dms_msgs::DMSFunctionLimitedTypeEnum :init))
    ((:l2_function_limited_type __l2_function_limited_type) (instance dms_msgs::L2DMSFunctionLimitedTypeEnum :init))
    ((:l3_function_limited_type __l3_function_limited_type) (instance dms_msgs::L3DMSFunctionLimitedTypeEnum :init))
    ((:reserved __reserved) 0)
    ((:func_limited_params __func_limited_params) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _function_limited_type __function_limited_type)
   (setq _l2_function_limited_type __l2_function_limited_type)
   (setq _l3_function_limited_type __l3_function_limited_type)
   (setq _reserved (round __reserved))
   (setq _func_limited_params (string __func_limited_params))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:function_limited_type
   (&rest __function_limited_type)
   (if (keywordp (car __function_limited_type))
       (send* _function_limited_type __function_limited_type)
     (progn
       (if __function_limited_type (setq _function_limited_type (car __function_limited_type)))
       _function_limited_type)))
  (:l2_function_limited_type
   (&rest __l2_function_limited_type)
   (if (keywordp (car __l2_function_limited_type))
       (send* _l2_function_limited_type __l2_function_limited_type)
     (progn
       (if __l2_function_limited_type (setq _l2_function_limited_type (car __l2_function_limited_type)))
       _l2_function_limited_type)))
  (:l3_function_limited_type
   (&rest __l3_function_limited_type)
   (if (keywordp (car __l3_function_limited_type))
       (send* _l3_function_limited_type __l3_function_limited_type)
     (progn
       (if __l3_function_limited_type (setq _l3_function_limited_type (car __l3_function_limited_type)))
       _l3_function_limited_type)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:func_limited_params
   (&optional __func_limited_params)
   (if __func_limited_params (setq _func_limited_params __func_limited_params)) _func_limited_params)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSFunctionLimitedTypeEnum _function_limited_type
    (send _function_limited_type :serialization-length)
    ;; dms_msgs/L2DMSFunctionLimitedTypeEnum _l2_function_limited_type
    (send _l2_function_limited_type :serialization-length)
    ;; dms_msgs/L3DMSFunctionLimitedTypeEnum _l3_function_limited_type
    (send _l3_function_limited_type :serialization-length)
    ;; uint8 _reserved
    1
    ;; string _func_limited_params
    4 (length _func_limited_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSFunctionLimitedTypeEnum _function_limited_type
       (send _function_limited_type :serialize s)
     ;; dms_msgs/L2DMSFunctionLimitedTypeEnum _l2_function_limited_type
       (send _l2_function_limited_type :serialize s)
     ;; dms_msgs/L3DMSFunctionLimitedTypeEnum _l3_function_limited_type
       (send _l3_function_limited_type :serialize s)
     ;; uint8 _reserved
       (write-byte _reserved s)
     ;; string _func_limited_params
       (write-long (length _func_limited_params) s) (princ _func_limited_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSFunctionLimitedTypeEnum _function_limited_type
     (send _function_limited_type :deserialize buf ptr-) (incf ptr- (send _function_limited_type :serialization-length))
   ;; dms_msgs/L2DMSFunctionLimitedTypeEnum _l2_function_limited_type
     (send _l2_function_limited_type :deserialize buf ptr-) (incf ptr- (send _l2_function_limited_type :serialization-length))
   ;; dms_msgs/L3DMSFunctionLimitedTypeEnum _l3_function_limited_type
     (send _l3_function_limited_type :deserialize buf ptr-) (incf ptr- (send _l3_function_limited_type :serialization-length))
   ;; uint8 _reserved
     (setq _reserved (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _func_limited_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _func_limited_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFuncLimitedResult :md5sum-) "f27f64c429ae56367dec0d4320ccb5d5")
(setf (get dms_msgs::DMSFuncLimitedResult :datatype-) "dms_msgs/DMSFuncLimitedResult")
(setf (get dms_msgs::DMSFuncLimitedResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 FUNCTION_LIMITED_TYPE_AVAILABLE = 1
uint8 L2_FUNCTION_LIMITED_TYPE_AVAILABLE = 2
uint8 L3_FUNCTION_LIMITED_TYPE_AVAILABLE = 4
uint8 RESERVED = 8
uint8 available
dms_msgs/DMSFunctionLimitedTypeEnum function_limited_type
dms_msgs/L2DMSFunctionLimitedTypeEnum l2_function_limited_type
dms_msgs/L3DMSFunctionLimitedTypeEnum l3_function_limited_type
uint8 reserved
string func_limited_params

================================================================================
MSG: dms_msgs/DMSFunctionLimitedTypeEnum
uint8 DMS_NORMAL_FUNCTION_STATE = 0
uint8 DMS_LIMITED_FUNCTION_STATE = 1
uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
uint8 value

================================================================================
MSG: dms_msgs/L2DMSFunctionLimitedTypeEnum
uint8 DMS_NORMAL_FUNCTION_STATE = 0
uint8 DMS_LIMITED_FUNCTION_STATE = 1
uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
uint8 value

================================================================================
MSG: dms_msgs/L3DMSFunctionLimitedTypeEnum
uint8 DMS_NORMAL_FUNCTION_STATE = 0
uint8 DMS_LIMITED_FUNCTION_STATE = 1
uint8 DMS_FUNCTION_LIMIT_RESERVERD_STATE = 2
uint8 value

")



(provide :dms_msgs/DMSFuncLimitedResult "f27f64c429ae56367dec0d4320ccb5d5")


