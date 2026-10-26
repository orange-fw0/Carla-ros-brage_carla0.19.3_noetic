;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSDistractionReasonTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSDistractionReasonTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM")
  (make-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSDistractionReasonTypeEnum.msg.html


(intern "*HEADPOSE_TRIGER_DISTRACTION*" (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(shadow '*HEADPOSE_TRIGER_DISTRACTION* (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionReasonTypeEnum::*HEADPOSE_TRIGER_DISTRACTION* 1)
(intern "*GAZE_ROI_TRIGER_DISTRACTION*" (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(shadow '*GAZE_ROI_TRIGER_DISTRACTION* (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionReasonTypeEnum::*GAZE_ROI_TRIGER_DISTRACTION* 2)
(intern "*HEAD_ROI_TRIGER_DISTRACTION*" (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(shadow '*HEAD_ROI_TRIGER_DISTRACTION* (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionReasonTypeEnum::*HEAD_ROI_TRIGER_DISTRACTION* 4)
(intern "*RESERVED*" (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(shadow '*RESERVED* (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionReasonTypeEnum::*RESERVED* 8)
(intern "*RESERVED1*" (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(shadow '*RESERVED1* (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionReasonTypeEnum::*RESERVED1* 16)
(intern "*RESERVED2*" (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(shadow '*RESERVED2* (find-package "DMS_MSGS::DMSDISTRACTIONREASONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionReasonTypeEnum::*RESERVED2* 32)

(defun dms_msgs::DMSDistractionReasonTypeEnum-to-symbol (const)
  (cond
        ((= const 1) 'dms_msgs::DMSDistractionReasonTypeEnum::*HEADPOSE_TRIGER_DISTRACTION*)
        ((= const 2) 'dms_msgs::DMSDistractionReasonTypeEnum::*GAZE_ROI_TRIGER_DISTRACTION*)
        ((= const 4) 'dms_msgs::DMSDistractionReasonTypeEnum::*HEAD_ROI_TRIGER_DISTRACTION*)
        ((= const 8) 'dms_msgs::DMSDistractionReasonTypeEnum::*RESERVED*)
        ((= const 16) 'dms_msgs::DMSDistractionReasonTypeEnum::*RESERVED1*)
        ((= const 32) 'dms_msgs::DMSDistractionReasonTypeEnum::*RESERVED2*)
        (t nil)))

(defclass dms_msgs::DMSDistractionReasonTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSDistractionReasonTypeEnum
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

(setf (get dms_msgs::DMSDistractionReasonTypeEnum :md5sum-) "cb8af4ef451f0b2d489859cdfb1873bd")
(setf (get dms_msgs::DMSDistractionReasonTypeEnum :datatype-) "dms_msgs/DMSDistractionReasonTypeEnum")
(setf (get dms_msgs::DMSDistractionReasonTypeEnum :definition-)
      "uint16 HEADPOSE_TRIGER_DISTRACTION = 1
uint16 GAZE_ROI_TRIGER_DISTRACTION = 2
uint16 HEAD_ROI_TRIGER_DISTRACTION = 4
uint16 RESERVED = 8
uint16 RESERVED1 = 16
uint16 RESERVED2 = 32
uint16 value

")



(provide :dms_msgs/DMSDistractionReasonTypeEnum "cb8af4ef451f0b2d489859cdfb1873bd")


