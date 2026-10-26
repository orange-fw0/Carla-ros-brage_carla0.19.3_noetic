;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFidCompareTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFidCompareTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFIDCOMPARETYPEENUM")
  (make-package "DMS_MSGS::DMSFIDCOMPARETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSFidCompareTypeEnum.msg.html


(intern "*DMS_FID_COMPARE_MISMATCH*" (find-package "DMS_MSGS::DMSFIDCOMPARETYPEENUM"))
(shadow '*DMS_FID_COMPARE_MISMATCH* (find-package "DMS_MSGS::DMSFIDCOMPARETYPEENUM"))
(defconstant dms_msgs::DMSFidCompareTypeEnum::*DMS_FID_COMPARE_MISMATCH* 0)
(intern "*DMS_FID_COMPARE_MATCH*" (find-package "DMS_MSGS::DMSFIDCOMPARETYPEENUM"))
(shadow '*DMS_FID_COMPARE_MATCH* (find-package "DMS_MSGS::DMSFIDCOMPARETYPEENUM"))
(defconstant dms_msgs::DMSFidCompareTypeEnum::*DMS_FID_COMPARE_MATCH* 1)

(defun dms_msgs::DMSFidCompareTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFidCompareTypeEnum::*DMS_FID_COMPARE_MISMATCH*)
        ((= const 1) 'dms_msgs::DMSFidCompareTypeEnum::*DMS_FID_COMPARE_MATCH*)
        (t nil)))

(defclass dms_msgs::DMSFidCompareTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSFidCompareTypeEnum
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

(setf (get dms_msgs::DMSFidCompareTypeEnum :md5sum-) "163593b0decb552f10a12592d380559f")
(setf (get dms_msgs::DMSFidCompareTypeEnum :datatype-) "dms_msgs/DMSFidCompareTypeEnum")
(setf (get dms_msgs::DMSFidCompareTypeEnum :definition-)
      "uint8 DMS_FID_COMPARE_MISMATCH = 0
uint8 DMS_FID_COMPARE_MATCH = 1
uint8 value

")



(provide :dms_msgs/DMSFidCompareTypeEnum "163593b0decb552f10a12592d380559f")


