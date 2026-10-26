;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSGenderTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSGenderTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSGENDERTYPEENUM")
  (make-package "DMS_MSGS::DMSGENDERTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSGenderTypeEnum.msg.html


(intern "*DMS_GENDER_MALE*" (find-package "DMS_MSGS::DMSGENDERTYPEENUM"))
(shadow '*DMS_GENDER_MALE* (find-package "DMS_MSGS::DMSGENDERTYPEENUM"))
(defconstant dms_msgs::DMSGenderTypeEnum::*DMS_GENDER_MALE* 0)
(intern "*DMS_GENDER_FEMALE*" (find-package "DMS_MSGS::DMSGENDERTYPEENUM"))
(shadow '*DMS_GENDER_FEMALE* (find-package "DMS_MSGS::DMSGENDERTYPEENUM"))
(defconstant dms_msgs::DMSGenderTypeEnum::*DMS_GENDER_FEMALE* 1)
(intern "*DMS_GENDER_OTHER*" (find-package "DMS_MSGS::DMSGENDERTYPEENUM"))
(shadow '*DMS_GENDER_OTHER* (find-package "DMS_MSGS::DMSGENDERTYPEENUM"))
(defconstant dms_msgs::DMSGenderTypeEnum::*DMS_GENDER_OTHER* 2)

(defun dms_msgs::DMSGenderTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSGenderTypeEnum::*DMS_GENDER_MALE*)
        ((= const 1) 'dms_msgs::DMSGenderTypeEnum::*DMS_GENDER_FEMALE*)
        ((= const 2) 'dms_msgs::DMSGenderTypeEnum::*DMS_GENDER_OTHER*)
        (t nil)))

(defclass dms_msgs::DMSGenderTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSGenderTypeEnum
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

(setf (get dms_msgs::DMSGenderTypeEnum :md5sum-) "6ab982dcb29b1b09ddedc27f71701519")
(setf (get dms_msgs::DMSGenderTypeEnum :datatype-) "dms_msgs/DMSGenderTypeEnum")
(setf (get dms_msgs::DMSGenderTypeEnum :definition-)
      "uint8 DMS_GENDER_MALE = 0
uint8 DMS_GENDER_FEMALE = 1
uint8 DMS_GENDER_OTHER = 2
uint8 value

")



(provide :dms_msgs/DMSGenderTypeEnum "6ab982dcb29b1b09ddedc27f71701519")


