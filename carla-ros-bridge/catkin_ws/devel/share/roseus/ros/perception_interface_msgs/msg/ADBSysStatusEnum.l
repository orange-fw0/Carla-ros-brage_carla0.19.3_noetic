;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ADBSysStatusEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ADBSysStatusEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude ADBSysStatusEnum.msg.html


(intern "*INVALID*" (find-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM"))
(shadow '*INVALID* (find-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM"))
(defconstant perception_interface_msgs::ADBSysStatusEnum::*INVALID* 0)
(intern "*DETECTED_NO_FAULT*" (find-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM"))
(shadow '*DETECTED_NO_FAULT* (find-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM"))
(defconstant perception_interface_msgs::ADBSysStatusEnum::*DETECTED_NO_FAULT* 1)
(intern "*DETECTED_FAULT*" (find-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM"))
(shadow '*DETECTED_FAULT* (find-package "PERCEPTION_INTERFACE_MSGS::ADBSYSSTATUSENUM"))
(defconstant perception_interface_msgs::ADBSysStatusEnum::*DETECTED_FAULT* 2)

(defun perception_interface_msgs::ADBSysStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ADBSysStatusEnum::*INVALID*)
        ((= const 1) 'perception_interface_msgs::ADBSysStatusEnum::*DETECTED_NO_FAULT*)
        ((= const 2) 'perception_interface_msgs::ADBSysStatusEnum::*DETECTED_FAULT*)
        (t nil)))

(defclass perception_interface_msgs::ADBSysStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ADBSysStatusEnum
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

(setf (get perception_interface_msgs::ADBSysStatusEnum :md5sum-) "142f51e40111bd7b72c15597fd9a717d")
(setf (get perception_interface_msgs::ADBSysStatusEnum :datatype-) "perception_interface_msgs/ADBSysStatusEnum")
(setf (get perception_interface_msgs::ADBSysStatusEnum :definition-)
      "uint8 INVALID = 0
uint8 DETECTED_NO_FAULT = 1
uint8 DETECTED_FAULT = 2
uint8 value

")



(provide :perception_interface_msgs/ADBSysStatusEnum "142f51e40111bd7b72c15597fd9a717d")


