;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSAbnormalActionResult)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSAbnormalActionResult (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT")
  (make-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude DMSAbnormalActionResult.msg.html


(intern "*ABNORMAL_ACTION_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(shadow '*ABNORMAL_ACTION_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(defconstant dms_msgs::DMSAbnormalActionResult::*ABNORMAL_ACTION_TYPE_AVAILABLE* 1)
(intern "*L2_ABNORMAL_ACTION_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(shadow '*L2_ABNORMAL_ACTION_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(defconstant dms_msgs::DMSAbnormalActionResult::*L2_ABNORMAL_ACTION_TYPE_AVAILABLE* 2)
(intern "*L3_ABNORMAL_ACTION_TYPE_AVAILABLE*" (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(shadow '*L3_ABNORMAL_ACTION_TYPE_AVAILABLE* (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(defconstant dms_msgs::DMSAbnormalActionResult::*L3_ABNORMAL_ACTION_TYPE_AVAILABLE* 4)
(intern "*ACTIONS_AVAILABLE*" (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(shadow '*ACTIONS_AVAILABLE* (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(defconstant dms_msgs::DMSAbnormalActionResult::*ACTIONS_AVAILABLE* 8)
(intern "*L2_ACTIONS_AVAILABLE*" (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(shadow '*L2_ACTIONS_AVAILABLE* (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(defconstant dms_msgs::DMSAbnormalActionResult::*L2_ACTIONS_AVAILABLE* 16)
(intern "*L3_ACTIONS_AVAILABLE*" (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(shadow '*L3_ACTIONS_AVAILABLE* (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(defconstant dms_msgs::DMSAbnormalActionResult::*L3_ACTIONS_AVAILABLE* 32)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSABNORMALACTIONRESULT"))
(defconstant dms_msgs::DMSAbnormalActionResult::*RESERVED* 64)

(defun dms_msgs::DMSAbnormalActionResult-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSAbnormalActionResult::*ABNORMAL_ACTION_TYPE_AVAILABLE*)
        ((= const 2) 'dms_msgs::DMSAbnormalActionResult::*L2_ABNORMAL_ACTION_TYPE_AVAILABLE*)
        ((= const 4) 'dms_msgs::DMSAbnormalActionResult::*L3_ABNORMAL_ACTION_TYPE_AVAILABLE*)
        ((= const 8) 'dms_msgs::DMSAbnormalActionResult::*ACTIONS_AVAILABLE*)
        ((= const 16) 'dms_msgs::DMSAbnormalActionResult::*L2_ACTIONS_AVAILABLE*)
        ((= const 32) 'dms_msgs::DMSAbnormalActionResult::*L3_ACTIONS_AVAILABLE*)
        ((= const 64) 'dms_msgs::DMSAbnormalActionResult::*RESERVED*)
        (t nil)))

(defclass dms_msgs::DMSAbnormalActionResult
  :super ros::object
  :slots (_available _abnormal_action_type _l2_abnormal_action_type _l3_abnormal_action_type _actions _l2_actions _l3_actions _reserved ))

(defmethod dms_msgs::DMSAbnormalActionResult
  (:init
   (&key
    ((:available __available) 0)
    ((:abnormal_action_type __abnormal_action_type) (instance dms_msgs::DMSAbnormalActionTypeEnum :init))
    ((:l2_abnormal_action_type __l2_abnormal_action_type) (instance dms_msgs::L2DMSAbnormalActionTypeEnum :init))
    ((:l3_abnormal_action_type __l3_abnormal_action_type) (instance dms_msgs::L3DMSAbnormalActionTypeEnum :init))
    ((:actions __actions) ())
    ((:l2_actions __l2_actions) ())
    ((:l3_actions __l3_actions) ())
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _abnormal_action_type __abnormal_action_type)
   (setq _l2_abnormal_action_type __l2_abnormal_action_type)
   (setq _l3_abnormal_action_type __l3_abnormal_action_type)
   (setq _actions __actions)
   (setq _l2_actions __l2_actions)
   (setq _l3_actions __l3_actions)
   (setq _reserved (string __reserved))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:abnormal_action_type
   (&rest __abnormal_action_type)
   (if (keywordp (car __abnormal_action_type))
       (send* _abnormal_action_type __abnormal_action_type)
     (progn
       (if __abnormal_action_type (setq _abnormal_action_type (car __abnormal_action_type)))
       _abnormal_action_type)))
  (:l2_abnormal_action_type
   (&rest __l2_abnormal_action_type)
   (if (keywordp (car __l2_abnormal_action_type))
       (send* _l2_abnormal_action_type __l2_abnormal_action_type)
     (progn
       (if __l2_abnormal_action_type (setq _l2_abnormal_action_type (car __l2_abnormal_action_type)))
       _l2_abnormal_action_type)))
  (:l3_abnormal_action_type
   (&rest __l3_abnormal_action_type)
   (if (keywordp (car __l3_abnormal_action_type))
       (send* _l3_abnormal_action_type __l3_abnormal_action_type)
     (progn
       (if __l3_abnormal_action_type (setq _l3_abnormal_action_type (car __l3_abnormal_action_type)))
       _l3_abnormal_action_type)))
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:l2_actions
   (&rest __l2_actions)
   (if (keywordp (car __l2_actions))
       (send* _l2_actions __l2_actions)
     (progn
       (if __l2_actions (setq _l2_actions (car __l2_actions)))
       _l2_actions)))
  (:l3_actions
   (&rest __l3_actions)
   (if (keywordp (car __l3_actions))
       (send* _l3_actions __l3_actions)
     (progn
       (if __l3_actions (setq _l3_actions (car __l3_actions)))
       _l3_actions)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; dms_msgs/DMSAbnormalActionTypeEnum _abnormal_action_type
    (send _abnormal_action_type :serialization-length)
    ;; dms_msgs/L2DMSAbnormalActionTypeEnum _l2_abnormal_action_type
    (send _l2_abnormal_action_type :serialization-length)
    ;; dms_msgs/L3DMSAbnormalActionTypeEnum _l3_abnormal_action_type
    (send _l3_abnormal_action_type :serialization-length)
    ;; dms_msgs/DMSActionResult[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ;; dms_msgs/DMSActionResult[] _l2_actions
    (apply #'+ (send-all _l2_actions :serialization-length)) 4
    ;; dms_msgs/DMSActionResult[] _l3_actions
    (apply #'+ (send-all _l3_actions :serialization-length)) 4
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; dms_msgs/DMSAbnormalActionTypeEnum _abnormal_action_type
       (send _abnormal_action_type :serialize s)
     ;; dms_msgs/L2DMSAbnormalActionTypeEnum _l2_abnormal_action_type
       (send _l2_abnormal_action_type :serialize s)
     ;; dms_msgs/L3DMSAbnormalActionTypeEnum _l3_abnormal_action_type
       (send _l3_abnormal_action_type :serialize s)
     ;; dms_msgs/DMSActionResult[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSActionResult[] _l2_actions
     (write-long (length _l2_actions) s)
     (dolist (elem _l2_actions)
       (send elem :serialize s)
       )
     ;; dms_msgs/DMSActionResult[] _l3_actions
     (write-long (length _l3_actions) s)
     (dolist (elem _l3_actions)
       (send elem :serialize s)
       )
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; dms_msgs/DMSAbnormalActionTypeEnum _abnormal_action_type
     (send _abnormal_action_type :deserialize buf ptr-) (incf ptr- (send _abnormal_action_type :serialization-length))
   ;; dms_msgs/L2DMSAbnormalActionTypeEnum _l2_abnormal_action_type
     (send _l2_abnormal_action_type :deserialize buf ptr-) (incf ptr- (send _l2_abnormal_action_type :serialization-length))
   ;; dms_msgs/L3DMSAbnormalActionTypeEnum _l3_abnormal_action_type
     (send _l3_abnormal_action_type :deserialize buf ptr-) (incf ptr- (send _l3_abnormal_action_type :serialization-length))
   ;; dms_msgs/DMSActionResult[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance dms_msgs::DMSActionResult :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSActionResult[] _l2_actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _l2_actions (let (r) (dotimes (i n) (push (instance dms_msgs::DMSActionResult :init) r)) r))
     (dolist (elem- _l2_actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/DMSActionResult[] _l3_actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _l3_actions (let (r) (dotimes (i n) (push (instance dms_msgs::DMSActionResult :init) r)) r))
     (dolist (elem- _l3_actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSAbnormalActionResult :md5sum-) "eb4ac1b4a09793a7d8fc5ab48fd60359")
(setf (get dms_msgs::DMSAbnormalActionResult :datatype-) "dms_msgs/DMSAbnormalActionResult")
(setf (get dms_msgs::DMSAbnormalActionResult :definition-)
      "uint16 ABNORMAL_ACTION_TYPE_AVAILABLE = 1
uint16 L2_ABNORMAL_ACTION_TYPE_AVAILABLE = 2
uint16 L3_ABNORMAL_ACTION_TYPE_AVAILABLE = 4
uint16 ACTIONS_AVAILABLE = 8
uint16 L2_ACTIONS_AVAILABLE = 16
uint16 L3_ACTIONS_AVAILABLE = 32
uint16 RESERVED = 64
uint16 available
dms_msgs/DMSAbnormalActionTypeEnum abnormal_action_type
dms_msgs/L2DMSAbnormalActionTypeEnum l2_abnormal_action_type
dms_msgs/L3DMSAbnormalActionTypeEnum l3_abnormal_action_type
dms_msgs/DMSActionResult[] actions
dms_msgs/DMSActionResult[] l2_actions
dms_msgs/DMSActionResult[] l3_actions
string reserved

================================================================================
MSG: dms_msgs/DMSAbnormalActionTypeEnum
uint16 NORMAL = 1
uint16 EYE_CLOSE = 2
uint16 YAWN = 4
uint16 DRINK = 8
uint16 PHONE_CALL = 16
uint16 SMOKE = 32
uint16 EAT = 64
uint16 PHONE_HAND = 128
uint16 PHONE_EAR = 256
uint16 RESERVED1 = 512
uint16 RESERVED2 = 1024
uint16 RESERVED3 = 2048
uint16 value

================================================================================
MSG: dms_msgs/L2DMSAbnormalActionTypeEnum
uint16 NORMAL = 1
uint16 EYE_CLOSE = 2
uint16 YAWN = 4
uint16 DRINK = 8
uint16 PHONE_CALL = 16
uint16 SMOKE = 32
uint16 EAT = 64
uint16 PHONE_HAND = 128
uint16 PHONE_EAR = 256
uint16 RESERVED1 = 512
uint16 RESERVED2 = 1024
uint16 RESERVED3 = 2048
uint16 value

================================================================================
MSG: dms_msgs/L3DMSAbnormalActionTypeEnum
uint16 NORMAL = 1
uint16 EYE_CLOSE = 2
uint16 YAWN = 4
uint16 DRINK = 8
uint16 PHONE_CALL = 16
uint16 SMOKE = 32
uint16 EAT = 64
uint16 PHONE_HAND = 128
uint16 PHONE_EAR = 256
uint16 RESERVED1 = 512
uint16 RESERVED2 = 1024
uint16 RESERVED3 = 2048
uint16 value

================================================================================
MSG: dms_msgs/DMSActionResult
uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 available
dms_msgs/DMSFaceAction[] actions

================================================================================
MSG: dms_msgs/DMSFaceAction
string name
float32 score

")



(provide :dms_msgs/DMSAbnormalActionResult "eb4ac1b4a09793a7d8fc5ab48fd60359")


