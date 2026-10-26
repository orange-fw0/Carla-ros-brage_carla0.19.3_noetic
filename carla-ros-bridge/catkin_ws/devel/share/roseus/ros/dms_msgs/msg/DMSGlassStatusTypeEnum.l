;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSGlassStatusTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSGlassStatusTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSGLASSSTATUSTYPEENUM")
  (make-package "DMS_MSGS::DMSGLASSSTATUSTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSGlassStatusTypeEnum.msg.html


(intern "*DMS_GLASSES_IR_BLOCK_ON*" (find-package "DMS_MSGS::DMSGLASSSTATUSTYPEENUM"))
(shadow '*DMS_GLASSES_IR_BLOCK_ON* (find-package "DMS_MSGS::DMSGLASSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSGlassStatusTypeEnum::*DMS_GLASSES_IR_BLOCK_ON* 0)
(intern "*DMS_GLASSES_UNKNOWN*" (find-package "DMS_MSGS::DMSGLASSSTATUSTYPEENUM"))
(shadow '*DMS_GLASSES_UNKNOWN* (find-package "DMS_MSGS::DMSGLASSSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSGlassStatusTypeEnum::*DMS_GLASSES_UNKNOWN* 1)

(defun dms_msgs::DMSGlassStatusTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSGlassStatusTypeEnum::*DMS_GLASSES_IR_BLOCK_ON*)
        ((= const 1) 'dms_msgs::DMSGlassStatusTypeEnum::*DMS_GLASSES_UNKNOWN*)
        (t nil)))

(defclass dms_msgs::DMSGlassStatusTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSGlassStatusTypeEnum
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

(setf (get dms_msgs::DMSGlassStatusTypeEnum :md5sum-) "d5e5d934f27ac14be1282fc83d47addd")
(setf (get dms_msgs::DMSGlassStatusTypeEnum :datatype-) "dms_msgs/DMSGlassStatusTypeEnum")
(setf (get dms_msgs::DMSGlassStatusTypeEnum :definition-)
      "uint8 DMS_GLASSES_IR_BLOCK_ON = 0
uint8 DMS_GLASSES_UNKNOWN = 1
uint8 value

")



(provide :dms_msgs/DMSGlassStatusTypeEnum "d5e5d934f27ac14be1282fc83d47addd")


