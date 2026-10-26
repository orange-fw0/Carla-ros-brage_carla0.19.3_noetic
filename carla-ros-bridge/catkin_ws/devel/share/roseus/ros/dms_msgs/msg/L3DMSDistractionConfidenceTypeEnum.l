;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::L3DMSDistractionConfidenceTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'L3DMSDistractionConfidenceTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM")
  (make-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude L3DMSDistractionConfidenceTypeEnum.msg.html


(intern "*NOT_AVAILABLE_CONFIDENCE*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*NOT_AVAILABLE_CONFIDENCE* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*NOT_AVAILABLE_CONFIDENCE* 0)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_1*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_1* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_1* 1)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_2*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_2* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_2* 2)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_3*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_3* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_3* 3)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_4*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_4* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_4* 4)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_5*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_5* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_5* 5)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_6*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_6* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_6* 6)
(intern "*DISTRACTION_CONFIDENCE_LEVEL_7*" (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(shadow '*DISTRACTION_CONFIDENCE_LEVEL_7* (find-package "DMS_MSGS::L3DMSDISTRACTIONCONFIDENCETYPEENUM"))
(defconstant dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_7* 7)

(defun dms_msgs::L3DMSDistractionConfidenceTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*NOT_AVAILABLE_CONFIDENCE*)
        ((= const 1) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_1*)
        ((= const 2) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_2*)
        ((= const 3) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_3*)
        ((= const 4) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_4*)
        ((= const 5) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_5*)
        ((= const 6) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_6*)
        ((= const 7) 'dms_msgs::L3DMSDistractionConfidenceTypeEnum::*DISTRACTION_CONFIDENCE_LEVEL_7*)
        (t nil)))

(defclass dms_msgs::L3DMSDistractionConfidenceTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::L3DMSDistractionConfidenceTypeEnum
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

(setf (get dms_msgs::L3DMSDistractionConfidenceTypeEnum :md5sum-) "26a1aac810af23af74a0b0c0863f997e")
(setf (get dms_msgs::L3DMSDistractionConfidenceTypeEnum :datatype-) "dms_msgs/L3DMSDistractionConfidenceTypeEnum")
(setf (get dms_msgs::L3DMSDistractionConfidenceTypeEnum :definition-)
      "uint16 NOT_AVAILABLE_CONFIDENCE = 0
uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
uint16 value

")



(provide :dms_msgs/L3DMSDistractionConfidenceTypeEnum "26a1aac810af23af74a0b0c0863f997e")


