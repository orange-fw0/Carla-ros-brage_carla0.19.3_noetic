;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::RecogErrorTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'RecogErrorTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::RECOGERRORTYPEENUM")
  (make-package "DMS_MSGS::RECOGERRORTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RecogErrorTypeEnum.msg.html


(intern "*NO_ERROR*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*NO_ERROR* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*NO_ERROR* 0)
(intern "*CAMERA_ABNORMAL*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*CAMERA_ABNORMAL* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*CAMERA_ABNORMAL* 1)
(intern "*NO_FACE*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*NO_FACE* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*NO_FACE* 2)
(intern "*LOW_FACE_QUALITY*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*LOW_FACE_QUALITY* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*LOW_FACE_QUALITY* 3)
(intern "*FACE_NOT_ALIVE*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*FACE_NOT_ALIVE* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*FACE_NOT_ALIVE* 4)
(intern "*USER_NOT_EXIST*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*USER_NOT_EXIST* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*USER_NOT_EXIST* 5)
(intern "*TIME_OUT*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*TIME_OUT* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*TIME_OUT* 6)
(intern "*EMPTY_USER_LIST*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*EMPTY_USER_LIST* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*EMPTY_USER_LIST* 7)
(intern "*SYSTEM_ERROR*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*SYSTEM_ERROR* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*SYSTEM_ERROR* 8)
(intern "*RESERVED*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*RESERVED* 9)
(intern "*RESERVED1*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*RESERVED1* 10)
(intern "*RESERVED2*" (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::RECOGERRORTYPEENUM"))
(defconstant dms_msgs::RecogErrorTypeEnum::*RESERVED2* 11)

(defun dms_msgs::RecogErrorTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::RecogErrorTypeEnum::*NO_ERROR*)
        ((= const 1) 'dms_msgs::RecogErrorTypeEnum::*CAMERA_ABNORMAL*)
        ((= const 2) 'dms_msgs::RecogErrorTypeEnum::*NO_FACE*)
        ((= const 3) 'dms_msgs::RecogErrorTypeEnum::*LOW_FACE_QUALITY*)
        ((= const 4) 'dms_msgs::RecogErrorTypeEnum::*FACE_NOT_ALIVE*)
        ((= const 5) 'dms_msgs::RecogErrorTypeEnum::*USER_NOT_EXIST*)
        ((= const 6) 'dms_msgs::RecogErrorTypeEnum::*TIME_OUT*)
        ((= const 7) 'dms_msgs::RecogErrorTypeEnum::*EMPTY_USER_LIST*)
        ((= const 8) 'dms_msgs::RecogErrorTypeEnum::*SYSTEM_ERROR*)
        ((= const 9) 'dms_msgs::RecogErrorTypeEnum::*RESERVED*)
        ((= const 10) 'dms_msgs::RecogErrorTypeEnum::*RESERVED1*)
        ((= const 11) 'dms_msgs::RecogErrorTypeEnum::*RESERVED2*)
        (t nil)))

(defclass dms_msgs::RecogErrorTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::RecogErrorTypeEnum
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

(setf (get dms_msgs::RecogErrorTypeEnum :md5sum-) "44be4a988bcf624885bede4b3b181ee3")
(setf (get dms_msgs::RecogErrorTypeEnum :datatype-) "dms_msgs/RecogErrorTypeEnum")
(setf (get dms_msgs::RecogErrorTypeEnum :definition-)
      "uint8 NO_ERROR = 0
uint8 CAMERA_ABNORMAL = 1
uint8 NO_FACE = 2
uint8 LOW_FACE_QUALITY = 3
uint8 FACE_NOT_ALIVE = 4
uint8 USER_NOT_EXIST = 5
uint8 TIME_OUT = 6
uint8 EMPTY_USER_LIST = 7
uint8 SYSTEM_ERROR = 8
uint8 RESERVED = 9
uint8 RESERVED1 = 10
uint8 RESERVED2 = 11
uint8 value

")



(provide :dms_msgs/RecogErrorTypeEnum "44be4a988bcf624885bede4b3b181ee3")


