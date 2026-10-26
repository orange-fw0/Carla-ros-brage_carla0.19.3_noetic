;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::RegErrorTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'RegErrorTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::REGERRORTYPEENUM")
  (make-package "DMS_MSGS::REGERRORTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RegErrorTypeEnum.msg.html


(intern "*NO_ERROR*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*NO_ERROR* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*NO_ERROR* 0)
(intern "*CAMERA_ABNORMAL*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*CAMERA_ABNORMAL* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*CAMERA_ABNORMAL* 1)
(intern "*NO_FACE*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*NO_FACE* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*NO_FACE* 2)
(intern "*LOW_FACE_QUALITY*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*LOW_FACE_QUALITY* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*LOW_FACE_QUALITY* 3)
(intern "*FACE_NOT_ALIVE*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*FACE_NOT_ALIVE* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*FACE_NOT_ALIVE* 4)
(intern "*LARGE_HEAD_POSE*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*LARGE_HEAD_POSE* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*LARGE_HEAD_POSE* 5)
(intern "*ID_EXISTS*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*ID_EXISTS* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*ID_EXISTS* 6)
(intern "*FACE_WRITTEN_FAIL*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*FACE_WRITTEN_FAIL* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*FACE_WRITTEN_FAIL* 7)
(intern "*TIME_OUT*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*TIME_OUT* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*TIME_OUT* 8)
(intern "*FACE_EXISTS*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*FACE_EXISTS* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*FACE_EXISTS* 9)
(intern "*SYSTEM_ERROR*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*SYSTEM_ERROR* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*SYSTEM_ERROR* 10)
(intern "*RESERVED*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*RESERVED* 11)
(intern "*RESERVED1*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*RESERVED1* 12)
(intern "*RESERVED2*" (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::REGERRORTYPEENUM"))
(defconstant dms_msgs::RegErrorTypeEnum::*RESERVED2* 13)

(defun dms_msgs::RegErrorTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::RegErrorTypeEnum::*NO_ERROR*)
        ((= const 1) 'dms_msgs::RegErrorTypeEnum::*CAMERA_ABNORMAL*)
        ((= const 2) 'dms_msgs::RegErrorTypeEnum::*NO_FACE*)
        ((= const 3) 'dms_msgs::RegErrorTypeEnum::*LOW_FACE_QUALITY*)
        ((= const 4) 'dms_msgs::RegErrorTypeEnum::*FACE_NOT_ALIVE*)
        ((= const 5) 'dms_msgs::RegErrorTypeEnum::*LARGE_HEAD_POSE*)
        ((= const 6) 'dms_msgs::RegErrorTypeEnum::*ID_EXISTS*)
        ((= const 7) 'dms_msgs::RegErrorTypeEnum::*FACE_WRITTEN_FAIL*)
        ((= const 8) 'dms_msgs::RegErrorTypeEnum::*TIME_OUT*)
        ((= const 9) 'dms_msgs::RegErrorTypeEnum::*FACE_EXISTS*)
        ((= const 10) 'dms_msgs::RegErrorTypeEnum::*SYSTEM_ERROR*)
        ((= const 11) 'dms_msgs::RegErrorTypeEnum::*RESERVED*)
        ((= const 12) 'dms_msgs::RegErrorTypeEnum::*RESERVED1*)
        ((= const 13) 'dms_msgs::RegErrorTypeEnum::*RESERVED2*)
        (t nil)))

(defclass dms_msgs::RegErrorTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::RegErrorTypeEnum
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

(setf (get dms_msgs::RegErrorTypeEnum :md5sum-) "703b8b24ad4385f3c01adecd25a86cc2")
(setf (get dms_msgs::RegErrorTypeEnum :datatype-) "dms_msgs/RegErrorTypeEnum")
(setf (get dms_msgs::RegErrorTypeEnum :definition-)
      "uint8 NO_ERROR = 0
uint8 CAMERA_ABNORMAL = 1
uint8 NO_FACE = 2
uint8 LOW_FACE_QUALITY = 3
uint8 FACE_NOT_ALIVE = 4
uint8 LARGE_HEAD_POSE = 5
uint8 ID_EXISTS = 6
uint8 FACE_WRITTEN_FAIL = 7
uint8 TIME_OUT = 8
uint8 FACE_EXISTS = 9
uint8 SYSTEM_ERROR = 10
uint8 RESERVED = 11
uint8 RESERVED1 = 12
uint8 RESERVED2 = 13
uint8 value

")



(provide :dms_msgs/RegErrorTypeEnum "703b8b24ad4385f3c01adecd25a86cc2")


