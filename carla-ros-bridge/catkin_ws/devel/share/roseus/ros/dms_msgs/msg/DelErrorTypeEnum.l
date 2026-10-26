;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DelErrorTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DelErrorTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DELERRORTYPEENUM")
  (make-package "DMS_MSGS::DELERRORTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DelErrorTypeEnum.msg.html


(intern "*NO_ERROR*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*NO_ERROR* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*NO_ERROR* 0)
(intern "*NO_USER*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*NO_USER* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*NO_USER* 1)
(intern "*TIME_OUT*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*TIME_OUT* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*TIME_OUT* 2)
(intern "*SYSTEM_ERROR*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*SYSTEM_ERROR* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*SYSTEM_ERROR* 3)
(intern "*RESERVED*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*RESERVED* 4)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*RESERVED1* 5)
(intern "*RESERVED2*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*RESERVED2* 6)
(intern "*RESERVED3*" (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(shadow '*RESERVED3* (find-package "DMS_MSGS::DELERRORTYPEENUM"))
(defconstant dms_msgs::DelErrorTypeEnum::*RESERVED3* 7)

(defun dms_msgs::DelErrorTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DelErrorTypeEnum::*NO_ERROR*)
        ((= const 1) 'dms_msgs::DelErrorTypeEnum::*NO_USER*)
        ((= const 2) 'dms_msgs::DelErrorTypeEnum::*TIME_OUT*)
        ((= const 3) 'dms_msgs::DelErrorTypeEnum::*SYSTEM_ERROR*)
        ((= const 4) 'dms_msgs::DelErrorTypeEnum::*RESERVED*)
        ((= const 5) 'dms_msgs::DelErrorTypeEnum::*RESERVED1*)
        ((= const 6) 'dms_msgs::DelErrorTypeEnum::*RESERVED2*)
        ((= const 7) 'dms_msgs::DelErrorTypeEnum::*RESERVED3*)
        (t nil)))

(defclass dms_msgs::DelErrorTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DelErrorTypeEnum
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

(setf (get dms_msgs::DelErrorTypeEnum :md5sum-) "711563fcfb145942355331bac6bd88a1")
(setf (get dms_msgs::DelErrorTypeEnum :datatype-) "dms_msgs/DelErrorTypeEnum")
(setf (get dms_msgs::DelErrorTypeEnum :definition-)
      "uint8 NO_ERROR = 0
uint8 NO_USER = 1
uint8 TIME_OUT = 2
uint8 SYSTEM_ERROR = 3
uint8 RESERVED = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 RESERVED3 = 7
uint8 value

")



(provide :dms_msgs/DelErrorTypeEnum "711563fcfb145942355331bac6bd88a1")


