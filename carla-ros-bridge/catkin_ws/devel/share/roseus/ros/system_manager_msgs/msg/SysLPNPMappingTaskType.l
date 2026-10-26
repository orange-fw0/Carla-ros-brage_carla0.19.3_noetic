;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysLPNPMappingTaskType)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysLPNPMappingTaskType (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE")
  (make-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))

(in-package "ROS")
;;//! \htmlinclude SysLPNPMappingTaskType.msg.html


(intern "*DROP_OFF*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(shadow '*DROP_OFF* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(defconstant system_manager_msgs::SysLPNPMappingTaskType::*DROP_OFF* 0)
(intern "*PICK_UP*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(shadow '*PICK_UP* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(defconstant system_manager_msgs::SysLPNPMappingTaskType::*PICK_UP* 1)
(intern "*PARK_IN*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(shadow '*PARK_IN* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(defconstant system_manager_msgs::SysLPNPMappingTaskType::*PARK_IN* 2)
(intern "*PARK_OUT*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(shadow '*PARK_OUT* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(defconstant system_manager_msgs::SysLPNPMappingTaskType::*PARK_OUT* 3)
(intern "*VIRTUAL_PARK_IN*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(shadow '*VIRTUAL_PARK_IN* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(defconstant system_manager_msgs::SysLPNPMappingTaskType::*VIRTUAL_PARK_IN* 4)
(intern "*NUM*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(shadow '*NUM* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGTASKTYPE"))
(defconstant system_manager_msgs::SysLPNPMappingTaskType::*NUM* 5)

(defun system_manager_msgs::SysLPNPMappingTaskType-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::SysLPNPMappingTaskType::*DROP_OFF*)
        ((= const 1) 'system_manager_msgs::SysLPNPMappingTaskType::*PICK_UP*)
        ((= const 2) 'system_manager_msgs::SysLPNPMappingTaskType::*PARK_IN*)
        ((= const 3) 'system_manager_msgs::SysLPNPMappingTaskType::*PARK_OUT*)
        ((= const 4) 'system_manager_msgs::SysLPNPMappingTaskType::*VIRTUAL_PARK_IN*)
        ((= const 5) 'system_manager_msgs::SysLPNPMappingTaskType::*NUM*)
        (t nil)))

(defclass system_manager_msgs::SysLPNPMappingTaskType
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::SysLPNPMappingTaskType
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

(setf (get system_manager_msgs::SysLPNPMappingTaskType :md5sum-) "643aa78c2bf5665327e398cd393d7fc4")
(setf (get system_manager_msgs::SysLPNPMappingTaskType :datatype-) "system_manager_msgs/SysLPNPMappingTaskType")
(setf (get system_manager_msgs::SysLPNPMappingTaskType :definition-)
      "uint8 DROP_OFF = 0
uint8 PICK_UP = 1
uint8 PARK_IN = 2
uint8 PARK_OUT = 3
uint8 VIRTUAL_PARK_IN = 4
uint8 NUM = 5
uint8 value

")



(provide :system_manager_msgs/SysLPNPMappingTaskType "643aa78c2bf5665327e398cd393d7fc4")


