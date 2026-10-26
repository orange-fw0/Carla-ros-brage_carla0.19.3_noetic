;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSDistractionTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSDistractionTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM")
  (make-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSDistractionTypeEnum.msg.html


(intern "*LONG_TERM_DISTRACTION*" (find-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM"))
(shadow '*LONG_TERM_DISTRACTION* (find-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionTypeEnum::*LONG_TERM_DISTRACTION* 0)
(intern "*SHORT_TERM_DISTRACTION*" (find-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM"))
(shadow '*SHORT_TERM_DISTRACTION* (find-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionTypeEnum::*SHORT_TERM_DISTRACTION* 1)
(intern "*HEADPOSE_ABNORMAL_DISTRACTION*" (find-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM"))
(shadow '*HEADPOSE_ABNORMAL_DISTRACTION* (find-package "DMS_MSGS::DMSDISTRACTIONTYPEENUM"))
(defconstant dms_msgs::DMSDistractionTypeEnum::*HEADPOSE_ABNORMAL_DISTRACTION* 2)

(defun dms_msgs::DMSDistractionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSDistractionTypeEnum::*LONG_TERM_DISTRACTION*)
        ((= const 1) 'dms_msgs::DMSDistractionTypeEnum::*SHORT_TERM_DISTRACTION*)
        ((= const 2) 'dms_msgs::DMSDistractionTypeEnum::*HEADPOSE_ABNORMAL_DISTRACTION*)
        (t nil)))

(defclass dms_msgs::DMSDistractionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSDistractionTypeEnum
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

(setf (get dms_msgs::DMSDistractionTypeEnum :md5sum-) "48bb7f05d0f14e5c6767335d849baf64")
(setf (get dms_msgs::DMSDistractionTypeEnum :datatype-) "dms_msgs/DMSDistractionTypeEnum")
(setf (get dms_msgs::DMSDistractionTypeEnum :definition-)
      "uint8 LONG_TERM_DISTRACTION = 0
uint8 SHORT_TERM_DISTRACTION = 1
uint8 HEADPOSE_ABNORMAL_DISTRACTION = 2
uint8 value

")



(provide :dms_msgs/DMSDistractionTypeEnum "48bb7f05d0f14e5c6767335d849baf64")


