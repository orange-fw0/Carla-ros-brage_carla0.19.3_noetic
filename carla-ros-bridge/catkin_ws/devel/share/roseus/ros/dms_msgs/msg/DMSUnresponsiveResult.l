;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSUnresponsiveResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSUnresponsiveResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT")
  (make-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSUnresponsiveResult.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(defconstant dms_msgs::DMSUnresponsiveResult::*UN_AVAILABLE* 0)
(intern "*UNRESPONSIVE_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(shadow '*UNRESPONSIVE_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(defconstant dms_msgs::DMSUnresponsiveResult::*UNRESPONSIVE_TYPE_AVAILABLE* 1)
(intern "*ROI_CAUSED_UNRESPONSIVE_AVAILABLE*" (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(shadow '*ROI_CAUSED_UNRESPONSIVE_AVAILABLE* (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(defconstant dms_msgs::DMSUnresponsiveResult::*ROI_CAUSED_UNRESPONSIVE_AVAILABLE* 2)
(intern "*DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE*" (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(shadow '*DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE* (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(defconstant dms_msgs::DMSUnresponsiveResult::*DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE* 4)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSUNRESPONSIVERESULT"))
(defconstant dms_msgs::DMSUnresponsiveResult::*RESERVED* 8)

(defun dms_msgs::DMSUnresponsiveResult-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSUnresponsiveResult::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSUnresponsiveResult::*UNRESPONSIVE_TYPE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSUnresponsiveResult::*ROI_CAUSED_UNRESPONSIVE_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSUnresponsiveResult::*DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSUnresponsiveResult::*RESERVED*)
        (t nil)))

(defclass dms_msgs::DMSUnresponsiveResult
  :super ros::object
  :slots (_available _unresponsive_type _roi_caused_unresponsive _drowsiness_caused_unresponsive _reserved _unresponsive_sensitivity _unresponsive_params ))

(defmethod dms_msgs::DMSUnresponsiveResult
  (:init
   (&key
    ((:available __available) 0)
    ((:unresponsive_type __unresponsive_type) (instance dms_msgs::DMSUnresponsiveTypeEnum :init))
    ((:roi_caused_unresponsive __roi_caused_unresponsive) 0)
    ((:drowsiness_caused_unresponsive __drowsiness_caused_unresponsive) 0)
    ((:reserved __reserved) 0)
    ((:unresponsive_sensitivity __unresponsive_sensitivity) 0)
    ((:unresponsive_params __unresponsive_params) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _unresponsive_type __unresponsive_type)
   (setq _roi_caused_unresponsive (round __roi_caused_unresponsive))
   (setq _drowsiness_caused_unresponsive (round __drowsiness_caused_unresponsive))
   (setq _reserved (round __reserved))
   (setq _unresponsive_sensitivity (round __unresponsive_sensitivity))
   (setq _unresponsive_params (string __unresponsive_params))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:unresponsive_type
   (&rest __unresponsive_type)
   (if (keywordp (car __unresponsive_type))
       (send* _unresponsive_type __unresponsive_type)
     (progn
       (if __unresponsive_type (setq _unresponsive_type (car __unresponsive_type)))
       _unresponsive_type)))
  (:roi_caused_unresponsive
   (&optional __roi_caused_unresponsive)
   (if __roi_caused_unresponsive (setq _roi_caused_unresponsive __roi_caused_unresponsive)) _roi_caused_unresponsive)
  (:drowsiness_caused_unresponsive
   (&optional __drowsiness_caused_unresponsive)
   (if __drowsiness_caused_unresponsive (setq _drowsiness_caused_unresponsive __drowsiness_caused_unresponsive)) _drowsiness_caused_unresponsive)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:unresponsive_sensitivity
   (&optional __unresponsive_sensitivity)
   (if __unresponsive_sensitivity (setq _unresponsive_sensitivity __unresponsive_sensitivity)) _unresponsive_sensitivity)
  (:unresponsive_params
   (&optional __unresponsive_params)
   (if __unresponsive_params (setq _unresponsive_params __unresponsive_params)) _unresponsive_params)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSUnresponsiveTypeEnum _unresponsive_type
    (send _unresponsive_type :serialization-length)
    ;; uint8 _roi_caused_unresponsive
    1
    ;; uint8 _drowsiness_caused_unresponsive
    1
    ;; uint8 _reserved
    1
    ;; int32 _unresponsive_sensitivity
    4
    ;; string _unresponsive_params
    4 (length _unresponsive_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSUnresponsiveTypeEnum _unresponsive_type
       (send _unresponsive_type :serialize s)
     ;; uint8 _roi_caused_unresponsive
       (write-byte _roi_caused_unresponsive s)
     ;; uint8 _drowsiness_caused_unresponsive
       (write-byte _drowsiness_caused_unresponsive s)
     ;; uint8 _reserved
       (write-byte _reserved s)
     ;; int32 _unresponsive_sensitivity
       (write-long _unresponsive_sensitivity s)
     ;; string _unresponsive_params
       (write-long (length _unresponsive_params) s) (princ _unresponsive_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSUnresponsiveTypeEnum _unresponsive_type
     (send _unresponsive_type :deserialize buf ptr-) (incf ptr- (send _unresponsive_type :serialization-length))
   ;; uint8 _roi_caused_unresponsive
     (setq _roi_caused_unresponsive (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _drowsiness_caused_unresponsive
     (setq _drowsiness_caused_unresponsive (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved
     (setq _reserved (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _unresponsive_sensitivity
     (setq _unresponsive_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _unresponsive_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unresponsive_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSUnresponsiveResult :md5sum-) "ca63b7070833fd794ace6047b622e56d")
(setf (get dms_msgs::DMSUnresponsiveResult :datatype-) "dms_msgs/DMSUnresponsiveResult")
(setf (get dms_msgs::DMSUnresponsiveResult :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 UNRESPONSIVE_TYPE_AVAILABLE = 1
uint8 ROI_CAUSED_UNRESPONSIVE_AVAILABLE = 2
uint8 DROWSINESS_CAUSED_UNRESPONSIVE_AVAILABLE = 4
uint8 RESERVED = 8
uint8 available
dms_msgs/DMSUnresponsiveTypeEnum unresponsive_type
uint8 roi_caused_unresponsive
uint8 drowsiness_caused_unresponsive
uint8 reserved
int32 unresponsive_sensitivity
string unresponsive_params

================================================================================
MSG: dms_msgs/DMSUnresponsiveTypeEnum
uint8 NORMAL_DRIVE_STATE = 0
uint8 UNRESPONSIVE_DRIVE_STATE = 1
uint8 UNRESPONSIVE_DRIVE_RESERVERD_STATE = 2
uint8 value

")



(provide :dms_msgs/DMSUnresponsiveResult "ca63b7070833fd794ace6047b622e56d")


