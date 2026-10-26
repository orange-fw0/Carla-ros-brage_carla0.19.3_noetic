;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSCameraDiagnoseTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSCameraDiagnoseTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM")
  (make-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSCameraDiagnoseTypeEnum.msg.html


(intern "*DMS_CAMERA_DIAGNOSE_NORMAL*" (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(shadow '*DMS_CAMERA_DIAGNOSE_NORMAL* (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(defconstant dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_NORMAL* 1)
(intern "*DMS_CAMERA_DIAGNOSE_TOO_SMALL*" (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(shadow '*DMS_CAMERA_DIAGNOSE_TOO_SMALL* (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(defconstant dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_TOO_SMALL* 2)
(intern "*DMS_CAMERA_DIAGNOSE_TOO_BRIGHT*" (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(shadow '*DMS_CAMERA_DIAGNOSE_TOO_BRIGHT* (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(defconstant dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_TOO_BRIGHT* 4)
(intern "*DMS_CAMERA_DIAGNOSE_TOO_DARK*" (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(shadow '*DMS_CAMERA_DIAGNOSE_TOO_DARK* (find-package "DMS_MSGS::DMSCAMERADIAGNOSETYPEENUM"))
(defconstant dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_TOO_DARK* 8)

(defun dms_msgs::DMSCameraDiagnoseTypeEnum-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_NORMAL*)
        ((= const 2) 'dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_TOO_SMALL*)
        ((= const 4) 'dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_TOO_BRIGHT*)
        ((= const 8) 'dms_msgs::DMSCameraDiagnoseTypeEnum::*DMS_CAMERA_DIAGNOSE_TOO_DARK*)
        (t nil)))

(defclass dms_msgs::DMSCameraDiagnoseTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSCameraDiagnoseTypeEnum
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

(setf (get dms_msgs::DMSCameraDiagnoseTypeEnum :md5sum-) "14c3f8092d698d5f22abee8381636371")
(setf (get dms_msgs::DMSCameraDiagnoseTypeEnum :datatype-) "dms_msgs/DMSCameraDiagnoseTypeEnum")
(setf (get dms_msgs::DMSCameraDiagnoseTypeEnum :definition-)
      "uint8 DMS_CAMERA_DIAGNOSE_NORMAL = 1
uint8 DMS_CAMERA_DIAGNOSE_TOO_SMALL = 2
uint8 DMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 4
uint8 DMS_CAMERA_DIAGNOSE_TOO_DARK = 8
uint8 value

")



(provide :dms_msgs/DMSCameraDiagnoseTypeEnum "14c3f8092d698d5f22abee8381636371")


