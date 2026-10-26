;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSAttentionDriveResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSAttentionDriveResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT")
  (make-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSAttentionDriveResult.msg.html


(intern "*ATTENTION_DRIVE_AVAILABLE*" (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(shadow '*ATTENTION_DRIVE_AVAILABLE* (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(defconstant dms_msgs::DMSAttentionDriveResult::*ATTENTION_DRIVE_AVAILABLE* 1)
(intern "*L2_ATTENTION_DRIVE_AVAILABLE*" (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(shadow '*L2_ATTENTION_DRIVE_AVAILABLE* (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(defconstant dms_msgs::DMSAttentionDriveResult::*L2_ATTENTION_DRIVE_AVAILABLE* 2)
(intern "*L3_ATTENTION_DRIVE_AVAILABLE*" (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(shadow '*L3_ATTENTION_DRIVE_AVAILABLE* (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(defconstant dms_msgs::DMSAttentionDriveResult::*L3_ATTENTION_DRIVE_AVAILABLE* 4)
(intern "*RESERVED_AVAILABLE*" (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(shadow '*RESERVED_AVAILABLE* (find-package "DMS_MSGS::DMSATTENTIONDRIVERESULT"))
(defconstant dms_msgs::DMSAttentionDriveResult::*RESERVED_AVAILABLE* 8)

(defun dms_msgs::DMSAttentionDriveResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSAttentionDriveResult::*ATTENTION_DRIVE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSAttentionDriveResult::*L2_ATTENTION_DRIVE_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSAttentionDriveResult::*L3_ATTENTION_DRIVE_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSAttentionDriveResult::*RESERVED_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSAttentionDriveResult
  :super ros::object
  :slots (_available _attention_drive_type _l2_attention_drive_type _l3_attention_drive_type _reserved _attention_sensitivity _attention_params ))

(defmethod dms_msgs::DMSAttentionDriveResult
  (:init
   (&key
    ((:available __available) 0)
    ((:attention_drive_type __attention_drive_type) (instance dms_msgs::DMSAttentionDriveTypeEnum :init))
    ((:l2_attention_drive_type __l2_attention_drive_type) (instance dms_msgs::L2DMSAttentionDriveTypeEnum :init))
    ((:l3_attention_drive_type __l3_attention_drive_type) (instance dms_msgs::L3DMSAttentionDriveTypeEnum :init))
    ((:reserved __reserved) "")
    ((:attention_sensitivity __attention_sensitivity) 0)
    ((:attention_params __attention_params) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _attention_drive_type __attention_drive_type)
   (setq _l2_attention_drive_type __l2_attention_drive_type)
   (setq _l3_attention_drive_type __l3_attention_drive_type)
   (setq _reserved (string __reserved))
   (setq _attention_sensitivity (round __attention_sensitivity))
   (setq _attention_params (string __attention_params))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:attention_drive_type
   (&rest __attention_drive_type)
   (if (keywordp (car __attention_drive_type))
       (send* _attention_drive_type __attention_drive_type)
     (progn
       (if __attention_drive_type (setq _attention_drive_type (car __attention_drive_type)))
       _attention_drive_type)))
  (:l2_attention_drive_type
   (&rest __l2_attention_drive_type)
   (if (keywordp (car __l2_attention_drive_type))
       (send* _l2_attention_drive_type __l2_attention_drive_type)
     (progn
       (if __l2_attention_drive_type (setq _l2_attention_drive_type (car __l2_attention_drive_type)))
       _l2_attention_drive_type)))
  (:l3_attention_drive_type
   (&rest __l3_attention_drive_type)
   (if (keywordp (car __l3_attention_drive_type))
       (send* _l3_attention_drive_type __l3_attention_drive_type)
     (progn
       (if __l3_attention_drive_type (setq _l3_attention_drive_type (car __l3_attention_drive_type)))
       _l3_attention_drive_type)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:attention_sensitivity
   (&optional __attention_sensitivity)
   (if __attention_sensitivity (setq _attention_sensitivity __attention_sensitivity)) _attention_sensitivity)
  (:attention_params
   (&optional __attention_params)
   (if __attention_params (setq _attention_params __attention_params)) _attention_params)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSAttentionDriveTypeEnum _attention_drive_type
    (send _attention_drive_type :serialization-length)
    ;; dms_msgs/L2DMSAttentionDriveTypeEnum _l2_attention_drive_type
    (send _l2_attention_drive_type :serialization-length)
    ;; dms_msgs/L3DMSAttentionDriveTypeEnum _l3_attention_drive_type
    (send _l3_attention_drive_type :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ;; int32 _attention_sensitivity
    4
    ;; string _attention_params
    4 (length _attention_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSAttentionDriveTypeEnum _attention_drive_type
       (send _attention_drive_type :serialize s)
     ;; dms_msgs/L2DMSAttentionDriveTypeEnum _l2_attention_drive_type
       (send _l2_attention_drive_type :serialize s)
     ;; dms_msgs/L3DMSAttentionDriveTypeEnum _l3_attention_drive_type
       (send _l3_attention_drive_type :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;; int32 _attention_sensitivity
       (write-long _attention_sensitivity s)
     ;; string _attention_params
       (write-long (length _attention_params) s) (princ _attention_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSAttentionDriveTypeEnum _attention_drive_type
     (send _attention_drive_type :deserialize buf ptr-) (incf ptr- (send _attention_drive_type :serialization-length))
   ;; dms_msgs/L2DMSAttentionDriveTypeEnum _l2_attention_drive_type
     (send _l2_attention_drive_type :deserialize buf ptr-) (incf ptr- (send _l2_attention_drive_type :serialization-length))
   ;; dms_msgs/L3DMSAttentionDriveTypeEnum _l3_attention_drive_type
     (send _l3_attention_drive_type :deserialize buf ptr-) (incf ptr- (send _l3_attention_drive_type :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _attention_sensitivity
     (setq _attention_sensitivity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _attention_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _attention_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSAttentionDriveResult :md5sum-) "f17195b5a45eb5fdaf7a12c5dd9a6aa5")
(setf (get dms_msgs::DMSAttentionDriveResult :datatype-) "dms_msgs/DMSAttentionDriveResult")
(setf (get dms_msgs::DMSAttentionDriveResult :definition-)
      "uint8 ATTENTION_DRIVE_AVAILABLE = 1
uint8 L2_ATTENTION_DRIVE_AVAILABLE = 2
uint8 L3_ATTENTION_DRIVE_AVAILABLE = 4
uint8 RESERVED_AVAILABLE = 8
uint8 available
dms_msgs/DMSAttentionDriveTypeEnum attention_drive_type
dms_msgs/L2DMSAttentionDriveTypeEnum l2_attention_drive_type
dms_msgs/L3DMSAttentionDriveTypeEnum l3_attention_drive_type
string reserved
int32 attention_sensitivity
string attention_params

================================================================================
MSG: dms_msgs/DMSAttentionDriveTypeEnum
uint8 NOT_FOCUSE_ON_DRIVING = 0
uint8 FOCUSE_ON_DRIVING = 1
uint8 RESERVED = 2
uint8 value

================================================================================
MSG: dms_msgs/L2DMSAttentionDriveTypeEnum
uint8 NOT_FOCUSE_ON_DRIVING = 0
uint8 FOCUSE_ON_DRIVING = 1
uint8 RESERVED = 2
uint8 value

================================================================================
MSG: dms_msgs/L3DMSAttentionDriveTypeEnum
uint8 NOT_FOCUSE_ON_DRIVING = 0
uint8 FOCUSE_ON_DRIVING = 1
uint8 RESERVED = 2
uint8 value

")



(provide :dms_msgs/DMSAttentionDriveResult "f17195b5a45eb5fdaf7a12c5dd9a6aa5")


