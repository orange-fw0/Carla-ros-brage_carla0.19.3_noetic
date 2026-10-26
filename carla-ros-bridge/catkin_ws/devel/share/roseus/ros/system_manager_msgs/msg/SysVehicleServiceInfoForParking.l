;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysVehicleServiceInfoForParking)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysVehicleServiceInfoForParking (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING")
  (make-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING"))

(in-package "ROS")
;;//! \htmlinclude SysVehicleServiceInfoForParking.msg.html


(intern "*FOR_APA*" (find-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING"))
(shadow '*FOR_APA* (find-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING"))
(defconstant system_manager_msgs::SysVehicleServiceInfoForParking::*FOR_APA* 0)
(intern "*FOR_LPNP*" (find-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING"))
(shadow '*FOR_LPNP* (find-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING"))
(defconstant system_manager_msgs::SysVehicleServiceInfoForParking::*FOR_LPNP* 1)
(intern "*FOR_PNP*" (find-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING"))
(shadow '*FOR_PNP* (find-package "SYSTEM_MANAGER_MSGS::SYSVEHICLESERVICEINFOFORPARKING"))
(defconstant system_manager_msgs::SysVehicleServiceInfoForParking::*FOR_PNP* 2)

(defun system_manager_msgs::SysVehicleServiceInfoForParking-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::SysVehicleServiceInfoForParking::*FOR_APA*)
        ((= const 1) 'system_manager_msgs::SysVehicleServiceInfoForParking::*FOR_LPNP*)
        ((= const 2) 'system_manager_msgs::SysVehicleServiceInfoForParking::*FOR_PNP*)
        (t nil)))

(defclass system_manager_msgs::SysVehicleServiceInfoForParking
  :super ros::object
  :slots (_function_mode _apa_mode ))

(defmethod system_manager_msgs::SysVehicleServiceInfoForParking
  (:init
   (&key
    ((:function_mode __function_mode) (instance system_manager_msgs::FunctionModeEnum :init))
    ((:apa_mode __apa_mode) 0)
    )
   (send-super :init)
   (setq _function_mode __function_mode)
   (setq _apa_mode (round __apa_mode))
   self)
  (:function_mode
   (&rest __function_mode)
   (if (keywordp (car __function_mode))
       (send* _function_mode __function_mode)
     (progn
       (if __function_mode (setq _function_mode (car __function_mode)))
       _function_mode)))
  (:apa_mode
   (&optional __apa_mode)
   (if __apa_mode (setq _apa_mode __apa_mode)) _apa_mode)
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/FunctionModeEnum _function_mode
    (send _function_mode :serialization-length)
    ;; uint8 _apa_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/FunctionModeEnum _function_mode
       (send _function_mode :serialize s)
     ;; uint8 _apa_mode
       (write-byte _apa_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/FunctionModeEnum _function_mode
     (send _function_mode :deserialize buf ptr-) (incf ptr- (send _function_mode :serialization-length))
   ;; uint8 _apa_mode
     (setq _apa_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::SysVehicleServiceInfoForParking :md5sum-) "1ce86c98a90fb82bbfbd20feb8a58820")
(setf (get system_manager_msgs::SysVehicleServiceInfoForParking :datatype-) "system_manager_msgs/SysVehicleServiceInfoForParking")
(setf (get system_manager_msgs::SysVehicleServiceInfoForParking :definition-)
      "uint8 FOR_APA = 0
uint8 FOR_LPNP = 1
uint8 FOR_PNP = 2
system_manager_msgs/FunctionModeEnum function_mode
uint8 apa_mode

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



(provide :system_manager_msgs/SysVehicleServiceInfoForParking "1ce86c98a90fb82bbfbd20feb8a58820")


