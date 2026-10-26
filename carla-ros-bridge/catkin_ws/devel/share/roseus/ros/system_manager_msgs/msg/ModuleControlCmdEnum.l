;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ModuleControlCmdEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ModuleControlCmdEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDENUM")
  (make-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDENUM"))

(in-package "ROS")
;;//! \htmlinclude ModuleControlCmdEnum.msg.html


(intern "*PAUSE*" (find-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDENUM"))
(shadow '*PAUSE* (find-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDENUM"))
(defconstant system_manager_msgs::ModuleControlCmdEnum::*PAUSE* 0)
(intern "*RESUME*" (find-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDENUM"))
(shadow '*RESUME* (find-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDENUM"))
(defconstant system_manager_msgs::ModuleControlCmdEnum::*RESUME* 1)

(defun system_manager_msgs::ModuleControlCmdEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::ModuleControlCmdEnum::*PAUSE*)
        ((= const 1) 'system_manager_msgs::ModuleControlCmdEnum::*RESUME*)
        (t nil)))

(defclass system_manager_msgs::ModuleControlCmdEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::ModuleControlCmdEnum
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

(setf (get system_manager_msgs::ModuleControlCmdEnum :md5sum-) "408fbe443d6664ac257a31cb09103ce4")
(setf (get system_manager_msgs::ModuleControlCmdEnum :datatype-) "system_manager_msgs/ModuleControlCmdEnum")
(setf (get system_manager_msgs::ModuleControlCmdEnum :definition-)
      "uint8 PAUSE = 0
uint8 RESUME = 1
uint8 value

")



(provide :system_manager_msgs/ModuleControlCmdEnum "408fbe443d6664ac257a31cb09103ce4")


