;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysLPNPMappingCommand)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysLPNPMappingCommand (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND")
  (make-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SysLPNPMappingCommand.msg.html


(intern "*START_SILENT_MODE*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(shadow '*START_SILENT_MODE* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(defconstant system_manager_msgs::SysLPNPMappingCommand::*START_SILENT_MODE* 0)
(intern "*START_USER_MODE*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(shadow '*START_USER_MODE* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(defconstant system_manager_msgs::SysLPNPMappingCommand::*START_USER_MODE* 1)
(intern "*FINISH*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(shadow '*FINISH* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(defconstant system_manager_msgs::SysLPNPMappingCommand::*FINISH* 2)
(intern "*ABORT*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(shadow '*ABORT* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(defconstant system_manager_msgs::SysLPNPMappingCommand::*ABORT* 3)
(intern "*BACK_TO_SILENT_MODE*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(shadow '*BACK_TO_SILENT_MODE* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(defconstant system_manager_msgs::SysLPNPMappingCommand::*BACK_TO_SILENT_MODE* 4)
(intern "*SAVE*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(shadow '*SAVE* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(defconstant system_manager_msgs::SysLPNPMappingCommand::*SAVE* 5)
(intern "*RESET_BUFFER*" (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(shadow '*RESET_BUFFER* (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGCOMMAND"))
(defconstant system_manager_msgs::SysLPNPMappingCommand::*RESET_BUFFER* 6)

(defun system_manager_msgs::SysLPNPMappingCommand-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::SysLPNPMappingCommand::*START_SILENT_MODE*)
        ((= const 1) 'system_manager_msgs::SysLPNPMappingCommand::*START_USER_MODE*)
        ((= const 2) 'system_manager_msgs::SysLPNPMappingCommand::*FINISH*)
        ((= const 3) 'system_manager_msgs::SysLPNPMappingCommand::*ABORT*)
        ((= const 4) 'system_manager_msgs::SysLPNPMappingCommand::*BACK_TO_SILENT_MODE*)
        ((= const 5) 'system_manager_msgs::SysLPNPMappingCommand::*SAVE*)
        ((= const 6) 'system_manager_msgs::SysLPNPMappingCommand::*RESET_BUFFER*)
        (t nil)))

(defclass system_manager_msgs::SysLPNPMappingCommand
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::SysLPNPMappingCommand
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

(setf (get system_manager_msgs::SysLPNPMappingCommand :md5sum-) "0cc954be2b276c6a59ac2a7d95f3a812")
(setf (get system_manager_msgs::SysLPNPMappingCommand :datatype-) "system_manager_msgs/SysLPNPMappingCommand")
(setf (get system_manager_msgs::SysLPNPMappingCommand :definition-)
      "uint8 START_SILENT_MODE = 0
uint8 START_USER_MODE = 1
uint8 FINISH = 2
uint8 ABORT = 3
uint8 BACK_TO_SILENT_MODE = 4
uint8 SAVE = 5
uint8 RESET_BUFFER = 6
uint8 value

")



(provide :system_manager_msgs/SysLPNPMappingCommand "0cc954be2b276c6a59ac2a7d95f3a812")


