;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysPlanningModeTypeForParking)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysPlanningModeTypeForParking (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING")
  (make-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))

(in-package "ROS")
;;//! \htmlinclude SysPlanningModeTypeForParking.msg.html


(intern "*PLANNING_APA*" (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(shadow '*PLANNING_APA* (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(defconstant system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_APA* 1)
(intern "*PLANNING_LVP*" (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(shadow '*PLANNING_LVP* (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(defconstant system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_LVP* 2)
(intern "*PLANNING_SVP*" (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(shadow '*PLANNING_SVP* (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(defconstant system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_SVP* 3)
(intern "*PLANNING_NEARBY*" (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(shadow '*PLANNING_NEARBY* (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGMODETYPEFORPARKING"))
(defconstant system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_NEARBY* 4)

(defun system_manager_msgs::SysPlanningModeTypeForParking-to-symbol (const)
  (cond
        ((= const 1) 'system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_APA*)
        ((= const 2) 'system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_LVP*)
        ((= const 3) 'system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_SVP*)
        ((= const 4) 'system_manager_msgs::SysPlanningModeTypeForParking::*PLANNING_NEARBY*)
        (t nil)))

(defclass system_manager_msgs::SysPlanningModeTypeForParking
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::SysPlanningModeTypeForParking
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

(setf (get system_manager_msgs::SysPlanningModeTypeForParking :md5sum-) "7439e0639db85e43370ebb9735e74d92")
(setf (get system_manager_msgs::SysPlanningModeTypeForParking :datatype-) "system_manager_msgs/SysPlanningModeTypeForParking")
(setf (get system_manager_msgs::SysPlanningModeTypeForParking :definition-)
      "uint8 PLANNING_APA = 1
uint8 PLANNING_LVP = 2
uint8 PLANNING_SVP = 3
uint8 PLANNING_NEARBY = 4
uint8 value

")



(provide :system_manager_msgs/SysPlanningModeTypeForParking "7439e0639db85e43370ebb9735e74d92")


