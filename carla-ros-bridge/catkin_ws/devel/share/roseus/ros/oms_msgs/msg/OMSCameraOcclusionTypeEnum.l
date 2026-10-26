;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSCameraOcclusionTypeEnum)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSCameraOcclusionTypeEnum (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSCAMERAOCCLUSIONTYPEENUM")
  (make-package "OMS_MSGS::OMSCAMERAOCCLUSIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude OMSCameraOcclusionTypeEnum.msg.html


(intern "*OMS_CAMERA_NO_BLOCK*" (find-package "OMS_MSGS::OMSCAMERAOCCLUSIONTYPEENUM"))
(shadow '*OMS_CAMERA_NO_BLOCK* (find-package "OMS_MSGS::OMSCAMERAOCCLUSIONTYPEENUM"))
(defconstant oms_msgs::OMSCameraOcclusionTypeEnum::*OMS_CAMERA_NO_BLOCK* 0)
(intern "*OMS_CAMERA_BLOCK*" (find-package "OMS_MSGS::OMSCAMERAOCCLUSIONTYPEENUM"))
(shadow '*OMS_CAMERA_BLOCK* (find-package "OMS_MSGS::OMSCAMERAOCCLUSIONTYPEENUM"))
(defconstant oms_msgs::OMSCameraOcclusionTypeEnum::*OMS_CAMERA_BLOCK* 1)

(defun oms_msgs::OMSCameraOcclusionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSCameraOcclusionTypeEnum::*OMS_CAMERA_NO_BLOCK*)
        ((= const 1) 'oms_msgs::OMSCameraOcclusionTypeEnum::*OMS_CAMERA_BLOCK*)
        (t nil)))

(defclass oms_msgs::OMSCameraOcclusionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod oms_msgs::OMSCameraOcclusionTypeEnum
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

(setf (get oms_msgs::OMSCameraOcclusionTypeEnum :md5sum-) "2f13c86e588737d39d13725ea759d5a0")
(setf (get oms_msgs::OMSCameraOcclusionTypeEnum :datatype-) "oms_msgs/OMSCameraOcclusionTypeEnum")
(setf (get oms_msgs::OMSCameraOcclusionTypeEnum :definition-)
      "uint8 OMS_CAMERA_NO_BLOCK = 0
uint8 OMS_CAMERA_BLOCK = 1
uint8 value

")



(provide :oms_msgs/OMSCameraOcclusionTypeEnum "2f13c86e588737d39d13725ea759d5a0")


