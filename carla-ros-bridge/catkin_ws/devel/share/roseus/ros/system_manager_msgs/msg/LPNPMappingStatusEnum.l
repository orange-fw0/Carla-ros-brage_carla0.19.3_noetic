;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LPNPMappingStatusEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LPNPMappingStatusEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM")
  (make-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude LPNPMappingStatusEnum.msg.html


(intern "*SUCCESS*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(shadow '*SUCCESS* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(defconstant system_manager_msgs::LPNPMappingStatusEnum::*SUCCESS* 0)
(intern "*MAPPING*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(shadow '*MAPPING* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(defconstant system_manager_msgs::LPNPMappingStatusEnum::*MAPPING* 1)
(intern "*SAVING_MAP*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(shadow '*SAVING_MAP* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(defconstant system_manager_msgs::LPNPMappingStatusEnum::*SAVING_MAP* 2)
(intern "*FAILURE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(shadow '*FAILURE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(defconstant system_manager_msgs::LPNPMappingStatusEnum::*FAILURE* 3)
(intern "*MAPPING_IN*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(shadow '*MAPPING_IN* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(defconstant system_manager_msgs::LPNPMappingStatusEnum::*MAPPING_IN* 4)
(intern "*MAPPING_OUT*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(shadow '*MAPPING_OUT* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(defconstant system_manager_msgs::LPNPMappingStatusEnum::*MAPPING_OUT* 5)
(intern "*WAITING_TO_SAVE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(shadow '*WAITING_TO_SAVE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGSTATUSENUM"))
(defconstant system_manager_msgs::LPNPMappingStatusEnum::*WAITING_TO_SAVE* 6)

(defun system_manager_msgs::LPNPMappingStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::LPNPMappingStatusEnum::*SUCCESS*)
        ((= const 1) 'system_manager_msgs::LPNPMappingStatusEnum::*MAPPING*)
        ((= const 2) 'system_manager_msgs::LPNPMappingStatusEnum::*SAVING_MAP*)
        ((= const 3) 'system_manager_msgs::LPNPMappingStatusEnum::*FAILURE*)
        ((= const 4) 'system_manager_msgs::LPNPMappingStatusEnum::*MAPPING_IN*)
        ((= const 5) 'system_manager_msgs::LPNPMappingStatusEnum::*MAPPING_OUT*)
        ((= const 6) 'system_manager_msgs::LPNPMappingStatusEnum::*WAITING_TO_SAVE*)
        (t nil)))

(defclass system_manager_msgs::LPNPMappingStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::LPNPMappingStatusEnum
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

(setf (get system_manager_msgs::LPNPMappingStatusEnum :md5sum-) "530e5858825296df987685e1fa37ccdf")
(setf (get system_manager_msgs::LPNPMappingStatusEnum :datatype-) "system_manager_msgs/LPNPMappingStatusEnum")
(setf (get system_manager_msgs::LPNPMappingStatusEnum :definition-)
      "uint8 SUCCESS = 0
uint8 MAPPING = 1
uint8 SAVING_MAP = 2
uint8 FAILURE = 3
uint8 MAPPING_IN = 4
uint8 MAPPING_OUT = 5
uint8 WAITING_TO_SAVE = 6
uint8 value

")



(provide :system_manager_msgs/LPNPMappingStatusEnum "530e5858825296df987685e1fa37ccdf")


