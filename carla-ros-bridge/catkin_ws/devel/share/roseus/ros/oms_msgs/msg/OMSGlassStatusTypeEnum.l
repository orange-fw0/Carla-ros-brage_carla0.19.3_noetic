;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSGlassStatusTypeEnum)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSGlassStatusTypeEnum (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSGLASSSTATUSTYPEENUM")
  (make-package "OMS_MSGS::OMSGLASSSTATUSTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude OMSGlassStatusTypeEnum.msg.html


(intern "*OMS_GLASSES_UNKNOWN*" (find-package "OMS_MSGS::OMSGLASSSTATUSTYPEENUM"))
(shadow '*OMS_GLASSES_UNKNOWN* (find-package "OMS_MSGS::OMSGLASSSTATUSTYPEENUM"))
(defconstant oms_msgs::OMSGlassStatusTypeEnum::*OMS_GLASSES_UNKNOWN* 0)
(intern "*OMS_GLASSES_IR_BLOCK_ON*" (find-package "OMS_MSGS::OMSGLASSSTATUSTYPEENUM"))
(shadow '*OMS_GLASSES_IR_BLOCK_ON* (find-package "OMS_MSGS::OMSGLASSSTATUSTYPEENUM"))
(defconstant oms_msgs::OMSGlassStatusTypeEnum::*OMS_GLASSES_IR_BLOCK_ON* 1)

(defun oms_msgs::OMSGlassStatusTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSGlassStatusTypeEnum::*OMS_GLASSES_UNKNOWN*)
        ((= const 1) 'oms_msgs::OMSGlassStatusTypeEnum::*OMS_GLASSES_IR_BLOCK_ON*)
        (t nil)))

(defclass oms_msgs::OMSGlassStatusTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod oms_msgs::OMSGlassStatusTypeEnum
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

(setf (get oms_msgs::OMSGlassStatusTypeEnum :md5sum-) "283d1e45a9eda6ebf9367c15eed76cbb")
(setf (get oms_msgs::OMSGlassStatusTypeEnum :datatype-) "oms_msgs/OMSGlassStatusTypeEnum")
(setf (get oms_msgs::OMSGlassStatusTypeEnum :definition-)
      "uint8 OMS_GLASSES_UNKNOWN = 0
uint8 OMS_GLASSES_IR_BLOCK_ON = 1
uint8 value

")



(provide :oms_msgs/OMSGlassStatusTypeEnum "283d1e45a9eda6ebf9367c15eed76cbb")


