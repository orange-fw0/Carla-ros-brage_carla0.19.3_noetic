;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSCameraDiagnoseTypeEnum)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSCameraDiagnoseTypeEnum (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM")
  (make-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude OMSCameraDiagnoseTypeEnum.msg.html


(intern "*OMS_CAMERA_DIAGNOSE_NORMAL*" (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(shadow '*OMS_CAMERA_DIAGNOSE_NORMAL* (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(defconstant oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_NORMAL* 1)
(intern "*OMS_CAMERA_DIAGNOSE_TOO_SMALL*" (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(shadow '*OMS_CAMERA_DIAGNOSE_TOO_SMALL* (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(defconstant oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_TOO_SMALL* 2)
(intern "*OMS_CAMERA_DIAGNOSE_TOO_BRIGHT*" (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(shadow '*OMS_CAMERA_DIAGNOSE_TOO_BRIGHT* (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(defconstant oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_TOO_BRIGHT* 3)
(intern "*OMS_CAMERA_DIAGNOSE_TOO_DARK*" (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(shadow '*OMS_CAMERA_DIAGNOSE_TOO_DARK* (find-package "OMS_MSGS::OMSCAMERADIAGNOSETYPEENUM"))
(defconstant oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_TOO_DARK* 4)

(defun oms_msgs::OMSCameraDiagnoseTypeEnum-to-symbol (const)
  (cond
        ((= const 1) 'oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_NORMAL*)
        ((= const 2) 'oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_TOO_SMALL*)
        ((= const 3) 'oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_TOO_BRIGHT*)
        ((= const 4) 'oms_msgs::OMSCameraDiagnoseTypeEnum::*OMS_CAMERA_DIAGNOSE_TOO_DARK*)
        (t nil)))

(defclass oms_msgs::OMSCameraDiagnoseTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod oms_msgs::OMSCameraDiagnoseTypeEnum
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

(setf (get oms_msgs::OMSCameraDiagnoseTypeEnum :md5sum-) "61cef719b174315d702655dc284fdde9")
(setf (get oms_msgs::OMSCameraDiagnoseTypeEnum :datatype-) "oms_msgs/OMSCameraDiagnoseTypeEnum")
(setf (get oms_msgs::OMSCameraDiagnoseTypeEnum :definition-)
      "uint8 OMS_CAMERA_DIAGNOSE_NORMAL = 1
uint8 OMS_CAMERA_DIAGNOSE_TOO_SMALL = 2
uint8 OMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 3
uint8 OMS_CAMERA_DIAGNOSE_TOO_DARK = 4
uint8 value

")



(provide :oms_msgs/OMSCameraDiagnoseTypeEnum "61cef719b174315d702655dc284fdde9")


