;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSCameraOcclusionTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSCameraOcclusionTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSCAMERAOCCLUSIONTYPEENUM")
  (make-package "DMS_MSGS::DMSCAMERAOCCLUSIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSCameraOcclusionTypeEnum.msg.html


(intern "*DMS_CAMERA_BLOCK*" (find-package "DMS_MSGS::DMSCAMERAOCCLUSIONTYPEENUM"))
(shadow '*DMS_CAMERA_BLOCK* (find-package "DMS_MSGS::DMSCAMERAOCCLUSIONTYPEENUM"))
(defconstant dms_msgs::DMSCameraOcclusionTypeEnum::*DMS_CAMERA_BLOCK* 0)
(intern "*DMS_CAMERA_NO_BLOCK*" (find-package "DMS_MSGS::DMSCAMERAOCCLUSIONTYPEENUM"))
(shadow '*DMS_CAMERA_NO_BLOCK* (find-package "DMS_MSGS::DMSCAMERAOCCLUSIONTYPEENUM"))
(defconstant dms_msgs::DMSCameraOcclusionTypeEnum::*DMS_CAMERA_NO_BLOCK* 1)

(defun dms_msgs::DMSCameraOcclusionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSCameraOcclusionTypeEnum::*DMS_CAMERA_BLOCK*)
        ((= const 1) 'dms_msgs::DMSCameraOcclusionTypeEnum::*DMS_CAMERA_NO_BLOCK*)
        (t nil)))

(defclass dms_msgs::DMSCameraOcclusionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSCameraOcclusionTypeEnum
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

(setf (get dms_msgs::DMSCameraOcclusionTypeEnum :md5sum-) "43be5c4aa2d7611b0a747165c7c4f84b")
(setf (get dms_msgs::DMSCameraOcclusionTypeEnum :datatype-) "dms_msgs/DMSCameraOcclusionTypeEnum")
(setf (get dms_msgs::DMSCameraOcclusionTypeEnum :definition-)
      "uint8 DMS_CAMERA_BLOCK = 0
uint8 DMS_CAMERA_NO_BLOCK = 1
uint8 value

")



(provide :dms_msgs/DMSCameraOcclusionTypeEnum "43be5c4aa2d7611b0a747165c7c4f84b")


