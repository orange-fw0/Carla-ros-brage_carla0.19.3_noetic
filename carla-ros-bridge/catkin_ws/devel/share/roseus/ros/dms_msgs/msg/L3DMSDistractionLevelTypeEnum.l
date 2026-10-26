;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::L3DMSDistractionLevelTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'L3DMSDistractionLevelTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM")
  (make-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude L3DMSDistractionLevelTypeEnum.msg.html


(intern "*DISTRACTION_LEVEL_0*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_0* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_0* 0)
(intern "*DISTRACTION_LEVEL_1*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_1* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_1* 1)
(intern "*DISTRACTION_LEVEL_2*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_2* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_2* 2)
(intern "*DISTRACTION_LEVEL_3*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_3* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_3* 3)
(intern "*DISTRACTION_LEVEL_4*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_4* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_4* 4)
(intern "*DISTRACTION_LEVEL_5*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_5* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_5* 5)
(intern "*DISTRACTION_LEVEL_6*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_6* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_6* 6)
(intern "*DISTRACTION_LEVEL_7*" (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(shadow '*DISTRACTION_LEVEL_7* (find-package "DMS_MSGS::L3DMSDISTRACTIONLEVELTYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_7* 7)

(defun dms_msgs::L3DMSDistractionLevelTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_0*)
        ((= const 1) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_1*)
        ((= const 2) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_2*)
        ((= const 3) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_3*)
        ((= const 4) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_4*)
        ((= const 5) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_5*)
        ((= const 6) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_6*)
        ((= const 7) 'dms_msgs::L3DMSDistractionLevelTypeEnum::*DISTRACTION_LEVEL_7*)
        (t nil)))

(defclass dms_msgs::L3DMSDistractionLevelTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::L3DMSDistractionLevelTypeEnum
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

(setf (get dms_msgs::L3DMSDistractionLevelTypeEnum :md5sum-) "dc585faac7e290383091b156fed52c91")
(setf (get dms_msgs::L3DMSDistractionLevelTypeEnum :datatype-) "dms_msgs/L3DMSDistractionLevelTypeEnum")
(setf (get dms_msgs::L3DMSDistractionLevelTypeEnum :definition-)
      "uint16 DISTRACTION_LEVEL_0 = 0
uint16 DISTRACTION_LEVEL_1 = 1
uint16 DISTRACTION_LEVEL_2 = 2
uint16 DISTRACTION_LEVEL_3 = 3
uint16 DISTRACTION_LEVEL_4 = 4
uint16 DISTRACTION_LEVEL_5 = 5
uint16 DISTRACTION_LEVEL_6 = 6
uint16 DISTRACTION_LEVEL_7 = 7
uint16 value

")



(provide :dms_msgs/L3DMSDistractionLevelTypeEnum "dc585faac7e290383091b156fed52c91")


