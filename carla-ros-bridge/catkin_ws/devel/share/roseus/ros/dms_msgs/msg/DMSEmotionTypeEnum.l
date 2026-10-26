;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEmotionTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEmotionTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM")
  (make-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSEmotionTypeEnum.msg.html


(intern "*DMS_EXPRESSION_ANGRY*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_ANGRY* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_ANGRY* 0)
(intern "*DMS_EXPRESSION_FEAR*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_FEAR* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_FEAR* 1)
(intern "*DMS_EXPRESSION_HAPPY*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_HAPPY* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_HAPPY* 2)
(intern "*DMS_EXPRESSION_SAD*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_SAD* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_SAD* 3)
(intern "*DMS_EXPRESSION_SURPRISE*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_SURPRISE* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_SURPRISE* 4)
(intern "*DMS_EXPRESSION_NEUTRAL*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_NEUTRAL* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_NEUTRAL* 5)
(intern "*DMS_EXPRESSION_RESERVED*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_RESERVED* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_RESERVED* 6)
(intern "*DMS_EXPRESSION_RESERVED1*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_RESERVED1* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_RESERVED1* 7)
(intern "*DMS_EXPRESSION_RESERVED2*" (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(shadow '*DMS_EXPRESSION_RESERVED2* (find-package "DMS_MSGS::DMSEMOTIONTYPEENUM"))
(defconstant dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_RESERVED2* 8)

(defun dms_msgs::DMSEmotionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_ANGRY*)
        ((= const 1) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_FEAR*)
        ((= const 2) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_HAPPY*)
        ((= const 3) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_SAD*)
        ((= const 4) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_SURPRISE*)
        ((= const 5) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_NEUTRAL*)
        ((= const 6) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_RESERVED*)
        ((= const 7) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_RESERVED1*)
        ((= const 8) 'dms_msgs::DMSEmotionTypeEnum::*DMS_EXPRESSION_RESERVED2*)
        (t nil)))

(defclass dms_msgs::DMSEmotionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSEmotionTypeEnum
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

(setf (get dms_msgs::DMSEmotionTypeEnum :md5sum-) "084ae889afb12e7377fba9bef0324b1d")
(setf (get dms_msgs::DMSEmotionTypeEnum :datatype-) "dms_msgs/DMSEmotionTypeEnum")
(setf (get dms_msgs::DMSEmotionTypeEnum :definition-)
      "uint8 DMS_EXPRESSION_ANGRY = 0
uint8 DMS_EXPRESSION_FEAR = 1
uint8 DMS_EXPRESSION_HAPPY = 2
uint8 DMS_EXPRESSION_SAD = 3
uint8 DMS_EXPRESSION_SURPRISE = 4
uint8 DMS_EXPRESSION_NEUTRAL = 5
uint8 DMS_EXPRESSION_RESERVED = 6
uint8 DMS_EXPRESSION_RESERVED1 = 7
uint8 DMS_EXPRESSION_RESERVED2 = 8
uint8 value

")



(provide :dms_msgs/DMSEmotionTypeEnum "084ae889afb12e7377fba9bef0324b1d")


