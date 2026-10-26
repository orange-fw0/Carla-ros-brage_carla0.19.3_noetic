;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEventTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEventTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEVENTTYPEENUM")
  (make-package "DMS_MSGS::DMSEVENTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSEventTypeEnum.msg.html


(intern "*DMS_EVENT_UNKNOWN*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_UNKNOWN* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_UNKNOWN* 0)
(intern "*DMS_EVENT_FEATURE_EXTRACT_SUCCESS*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_FEATURE_EXTRACT_SUCCESS* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_FEATURE_EXTRACT_SUCCESS* 1)
(intern "*DMS_EVENT_FEATURE_EXTRACT_FAIL*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_FEATURE_EXTRACT_FAIL* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_FEATURE_EXTRACT_FAIL* 2)
(intern "*DMS_EVENT_WARNING_EYE_CLOSE*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_WARNING_EYE_CLOSE* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_EYE_CLOSE* 100)
(intern "*DMS_EVENT_WARNING_YAWN*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_WARNING_YAWN* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_YAWN* 101)
(intern "*DMS_EVENT_WARNING_DRINK*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_WARNING_DRINK* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_DRINK* 102)
(intern "*DMS_EVENT_WARNING_PHONE_CALL*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_WARNING_PHONE_CALL* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_PHONE_CALL* 103)
(intern "*DMS_EVENT_WARNING_SMOKE*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_WARNING_SMOKE* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_SMOKE* 104)
(intern "*DMS_EVENT_WARNING_DROWSINESS*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_WARNING_DROWSINESS* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_DROWSINESS* 105)
(intern "*DMS_EVENT_DISTRACTION*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_DISTRACTION* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_DISTRACTION* 106)
(intern "*DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS* 107)
(intern "*DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL* 108)
(intern "*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS* 109)
(intern "*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS* 110)
(intern "*DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS* 111)
(intern "*DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS* 112)
(intern "*DMS_EVENT_HEAD_SHAKE*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_HEAD_SHAKE* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_HEAD_SHAKE* 109)
(intern "*DMS_EVENT_HEAD_NOD*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_HEAD_NOD* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_HEAD_NOD* 110)
(intern "*DMS_EVENT_MUTE*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_MUTE* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_MUTE* 111)
(intern "*DMS_EVENT_RESERVED*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_RESERVED* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED* 112)
(intern "*DMS_EVENT_RESERVED1*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_RESERVED1* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED1* 113)
(intern "*DMS_EVENT_RESERVED2*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_RESERVED2* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED2* 114)
(intern "*DMS_EVENT_RESERVED3*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_RESERVED3* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED3* 115)
(intern "*DMS_EVENT_RESERVED4*" (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(shadow '*DMS_EVENT_RESERVED4* (find-package "DMS_MSGS::DMSEVENTTYPEENUM"))
(defconstant dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED4* 116)

(defun dms_msgs::DMSEventTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_UNKNOWN*)
        ((= const 1) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_FEATURE_EXTRACT_SUCCESS*)
        ((= const 2) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_FEATURE_EXTRACT_FAIL*)
        ((= const 100) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_EYE_CLOSE*)
        ((= const 101) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_YAWN*)
        ((= const 102) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_DRINK*)
        ((= const 103) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_PHONE_CALL*)
        ((= const 104) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_SMOKE*)
        ((= const 105) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_WARNING_DROWSINESS*)
        ((= const 106) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_DISTRACTION*)
        ((= const 107) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS*)
        ((= const 108) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL*)
        ((= const 109) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS*)
        ((= const 110) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS*)
        ((= const 111) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS*)
        ((= const 112) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS*)
        ((= const 109) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_HEAD_SHAKE*)
        ((= const 110) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_HEAD_NOD*)
        ((= const 111) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_MUTE*)
        ((= const 112) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED*)
        ((= const 113) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED1*)
        ((= const 114) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED2*)
        ((= const 115) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED3*)
        ((= const 116) 'dms_msgs::DMSEventTypeEnum::*DMS_EVENT_RESERVED4*)
        (t nil)))

(defclass dms_msgs::DMSEventTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSEventTypeEnum
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dms_msgs::DMSEventTypeEnum :md5sum-) "5853275112e4617a2e255aef5f1e0d4f")
(setf (get dms_msgs::DMSEventTypeEnum :datatype-) "dms_msgs/DMSEventTypeEnum")
(setf (get dms_msgs::DMSEventTypeEnum :definition-)
      "uint8 DMS_EVENT_UNKNOWN = 0
uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1
uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2
uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100
uint8 DMS_EVENT_WARNING_YAWN = 101
uint8 DMS_EVENT_WARNING_DRINK = 102
uint8 DMS_EVENT_WARNING_PHONE_CALL = 103
uint8 DMS_EVENT_WARNING_SMOKE = 104
uint8 DMS_EVENT_WARNING_DROWSINESS = 105
uint8 DMS_EVENT_DISTRACTION = 106
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112
uint8 DMS_EVENT_HEAD_SHAKE = 109
uint8 DMS_EVENT_HEAD_NOD = 110
uint8 DMS_EVENT_MUTE = 111
uint8 DMS_EVENT_RESERVED = 112
uint8 DMS_EVENT_RESERVED1 = 113
uint8 DMS_EVENT_RESERVED2 = 114
uint8 DMS_EVENT_RESERVED3 = 115
uint8 DMS_EVENT_RESERVED4 = 116
uint8 value

")



(provide :dms_msgs/DMSEventTypeEnum "5853275112e4617a2e255aef5f1e0d4f")


