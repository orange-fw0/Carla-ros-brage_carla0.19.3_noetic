;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LPNPMappingParkingSpaceBuildingWayEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM")
  (make-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))

(in-package "ROS")
;;//! \htmlinclude LPNPMappingParkingSpaceBuildingWayEnum.msg.html


(intern "*UNKNOWN*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(shadow '*UNKNOWN* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(defconstant system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*UNKNOWN* 0)
(intern "*PERCEIVED_BELOW*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(shadow '*PERCEIVED_BELOW* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(defconstant system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*PERCEIVED_BELOW* 1)
(intern "*USER_SELECTED*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(shadow '*USER_SELECTED* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(defconstant system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*USER_SELECTED* 2)
(intern "*NO_TARGET_SLOT*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(shadow '*NO_TARGET_SLOT* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(defconstant system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*NO_TARGET_SLOT* 3)
(intern "*VIRTUAL*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(shadow '*VIRTUAL* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGPARKINGSPACEBUILDINGWAYENUM"))
(defconstant system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*VIRTUAL* 4)

(defun system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*UNKNOWN*)
        ((= const 1) 'system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*PERCEIVED_BELOW*)
        ((= const 2) 'system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*USER_SELECTED*)
        ((= const 3) 'system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*NO_TARGET_SLOT*)
        ((= const 4) 'system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum::*VIRTUAL*)
        (t nil)))

(defclass system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum
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

(setf (get system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum :md5sum-) "14314fe954b6d64c8501b691e5f7cb76")
(setf (get system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum :datatype-) "system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum")
(setf (get system_manager_msgs::LPNPMappingParkingSpaceBuildingWayEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 PERCEIVED_BELOW = 1
uint8 USER_SELECTED = 2
uint8 NO_TARGET_SLOT = 3
uint8 VIRTUAL = 4
uint8 value

")



(provide :system_manager_msgs/LPNPMappingParkingSpaceBuildingWayEnum "14314fe954b6d64c8501b691e5f7cb76")


