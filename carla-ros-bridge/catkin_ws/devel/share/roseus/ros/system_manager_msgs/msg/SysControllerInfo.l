;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysControllerInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysControllerInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSCONTROLLERINFO")
  (make-package "SYSTEM_MANAGER_MSGS::SYSCONTROLLERINFO"))

(in-package "ROS")
;;//! \htmlinclude SysControllerInfo.msg.html


(defclass system_manager_msgs::SysControllerInfo
  :super ros::object
  :slots (_function_mode ))

(defmethod system_manager_msgs::SysControllerInfo
  (:init
   (&key
    ((:function_mode __function_mode) (instance system_manager_msgs::FunctionModeEnum :init))
    )
   (send-super :init)
   (setq _function_mode __function_mode)
   self)
  (:function_mode
   (&rest __function_mode)
   (if (keywordp (car __function_mode))
       (send* _function_mode __function_mode)
     (progn
       (if __function_mode (setq _function_mode (car __function_mode)))
       _function_mode)))
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/FunctionModeEnum _function_mode
    (send _function_mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/FunctionModeEnum _function_mode
       (send _function_mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/FunctionModeEnum _function_mode
     (send _function_mode :deserialize buf ptr-) (incf ptr- (send _function_mode :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysControllerInfo :md5sum-) "4d842ce5a0436db29b7d7ed80fecdf08")
(setf (get system_manager_msgs::SysControllerInfo :datatype-) "system_manager_msgs/SysControllerInfo")
(setf (get system_manager_msgs::SysControllerInfo :definition-)
      "system_manager_msgs/FunctionModeEnum function_mode

================================================================================
MSG: system_manager_msgs/FunctionModeEnum
uint8 ACC = 0
uint8 CP = 1
uint8 HNP = 2
uint8 APA = 3
uint8 SVP = 4
uint8 PLAC = 5
uint8 ACE = 6
uint8 PNP = 7
uint8 LPNP = 8
uint8 LPNP_MAPPING = 9
uint8 MEB = 10
uint8 RADS = 11
uint8 MANUAL = 12
uint8 NRP = 13
uint8 UNP = 14
uint8 RPA = 15
uint8 MANUAL_WITH_CPP = 16
uint8 EESF = 17
uint8 LKC = 18
uint8 SENTRY_MODE = 20
uint8 ECO_ASSIST = 21
uint8 MNP = 22
uint8 MNP_MAPPING = 23
uint8 L3_FADEIN = 24
uint8 MANUAL_WITH_NPP = 66
uint8 value

")



(provide :system_manager_msgs/SysControllerInfo "4d842ce5a0436db29b7d7ed80fecdf08")


