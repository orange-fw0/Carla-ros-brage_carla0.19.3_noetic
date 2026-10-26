;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSAbnormalActionTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSAbnormalActionTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM")
  (make-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSAbnormalActionTypeEnum.msg.html


(intern "*NORMAL*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*NORMAL* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*NORMAL* 1)
(intern "*EYE_CLOSE*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*EYE_CLOSE* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*EYE_CLOSE* 2)
(intern "*YAWN*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*YAWN* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*YAWN* 4)
(intern "*DRINK*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*DRINK* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*DRINK* 8)
(intern "*PHONE_CALL*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*PHONE_CALL* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*PHONE_CALL* 16)
(intern "*SMOKE*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*SMOKE* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*SMOKE* 32)
(intern "*EAT*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*EAT* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*EAT* 64)
(intern "*PHONE_HAND*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*PHONE_HAND* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*PHONE_HAND* 128)
(intern "*PHONE_EAR*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*PHONE_EAR* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*PHONE_EAR* 256)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*RESERVED1* 512)
(intern "*RESERVED2*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*RESERVED2* 1024)
(intern "*RESERVED3*" (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(shadow '*RESERVED3* (find-package "DMS_MSGS::DMSABNORMALACTIONTYPEENUM"))
(defconstant dms_msgs::DMSAbnormalActionTypeEnum::*RESERVED3* 2048)

(defun dms_msgs::DMSAbnormalActionTypeEnum-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSAbnormalActionTypeEnum::*NORMAL*)
        ((= const 2) 'dms_msgs::DMSAbnormalActionTypeEnum::*EYE_CLOSE*)
        ((= const 4) 'dms_msgs::DMSAbnormalActionTypeEnum::*YAWN*)
        ((= const 8) 'dms_msgs::DMSAbnormalActionTypeEnum::*DRINK*)
        ((= const 16) 'dms_msgs::DMSAbnormalActionTypeEnum::*PHONE_CALL*)
        ((= const 32) 'dms_msgs::DMSAbnormalActionTypeEnum::*SMOKE*)
        ((= const 64) 'dms_msgs::DMSAbnormalActionTypeEnum::*EAT*)
        ((= const 128) 'dms_msgs::DMSAbnormalActionTypeEnum::*PHONE_HAND*)
        ((= const 256) 'dms_msgs::DMSAbnormalActionTypeEnum::*PHONE_EAR*)
        ((= const 512) 'dms_msgs::DMSAbnormalActionTypeEnum::*RESERVED1*)
        ((= const 1024) 'dms_msgs::DMSAbnormalActionTypeEnum::*RESERVED2*)
        ((= const 2048) 'dms_msgs::DMSAbnormalActionTypeEnum::*RESERVED3*)
        (t nil)))

(defclass dms_msgs::DMSAbnormalActionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSAbnormalActionTypeEnum
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dms_msgs::DMSAbnormalActionTypeEnum :md5sum-) "61f8ca89ffba856d7bfec3e8a3142b36")
(setf (get dms_msgs::DMSAbnormalActionTypeEnum :datatype-) "dms_msgs/DMSAbnormalActionTypeEnum")
(setf (get dms_msgs::DMSAbnormalActionTypeEnum :definition-)
      "uint16 NORMAL = 1
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

")



(provide :dms_msgs/DMSAbnormalActionTypeEnum "61f8ca89ffba856d7bfec3e8a3142b36")


