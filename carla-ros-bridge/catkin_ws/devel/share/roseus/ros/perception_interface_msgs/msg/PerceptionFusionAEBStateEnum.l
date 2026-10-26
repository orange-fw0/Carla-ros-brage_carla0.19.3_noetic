;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PerceptionFusionAEBStateEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PerceptionFusionAEBStateEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM"))

(in-package "ROS")
;;//! \htmlinclude PerceptionFusionAEBStateEnum.msg.html


(intern "*AEB_STATE_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM"))
(shadow '*AEB_STATE_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM"))
(defconstant perception_interface_msgs::PerceptionFusionAEBStateEnum::*AEB_STATE_OFF* 0)
(intern "*AEB_STATE_FCW*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM"))
(shadow '*AEB_STATE_FCW* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM"))
(defconstant perception_interface_msgs::PerceptionFusionAEBStateEnum::*AEB_STATE_FCW* 1)
(intern "*AEB_STATE_AEB*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM"))
(shadow '*AEB_STATE_AEB* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONFUSIONAEBSTATEENUM"))
(defconstant perception_interface_msgs::PerceptionFusionAEBStateEnum::*AEB_STATE_AEB* 3)

(defun perception_interface_msgs::PerceptionFusionAEBStateEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::PerceptionFusionAEBStateEnum::*AEB_STATE_OFF*)
        ((= const 1) 'perception_interface_msgs::PerceptionFusionAEBStateEnum::*AEB_STATE_FCW*)
        ((= const 3) 'perception_interface_msgs::PerceptionFusionAEBStateEnum::*AEB_STATE_AEB*)
        (t nil)))

(defclass perception_interface_msgs::PerceptionFusionAEBStateEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::PerceptionFusionAEBStateEnum
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

(setf (get perception_interface_msgs::PerceptionFusionAEBStateEnum :md5sum-) "5a4eeba02b2c419f7527fe38b31c6da0")
(setf (get perception_interface_msgs::PerceptionFusionAEBStateEnum :datatype-) "perception_interface_msgs/PerceptionFusionAEBStateEnum")
(setf (get perception_interface_msgs::PerceptionFusionAEBStateEnum :definition-)
      "uint8 AEB_STATE_OFF = 0
uint8 AEB_STATE_FCW = 1
uint8 AEB_STATE_AEB = 3
uint8 value

")



(provide :perception_interface_msgs/PerceptionFusionAEBStateEnum "5a4eeba02b2c419f7527fe38b31c6da0")


