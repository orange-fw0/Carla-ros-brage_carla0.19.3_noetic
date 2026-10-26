;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingSpaceStatusEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingSpaceStatusEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingSpaceStatusEnum.msg.html


(intern "*NO_INFORMATION*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(shadow '*NO_INFORMATION* (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(defconstant system_manager_msgs::ParkingSpaceStatusEnum::*NO_INFORMATION* 0)
(intern "*PARKING_SPACE_VACANT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(shadow '*PARKING_SPACE_VACANT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(defconstant system_manager_msgs::ParkingSpaceStatusEnum::*PARKING_SPACE_VACANT* 1)
(intern "*PARKING_SPACE_OCCUPIED*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(shadow '*PARKING_SPACE_OCCUPIED* (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(defconstant system_manager_msgs::ParkingSpaceStatusEnum::*PARKING_SPACE_OCCUPIED* 2)
(intern "*PARKING_SPACE_HIGHLIGHT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(shadow '*PARKING_SPACE_HIGHLIGHT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACESTATUSENUM"))
(defconstant system_manager_msgs::ParkingSpaceStatusEnum::*PARKING_SPACE_HIGHLIGHT* 3)

(defun system_manager_msgs::ParkingSpaceStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::ParkingSpaceStatusEnum::*NO_INFORMATION*)
        ((= const 1) 'system_manager_msgs::ParkingSpaceStatusEnum::*PARKING_SPACE_VACANT*)
        ((= const 2) 'system_manager_msgs::ParkingSpaceStatusEnum::*PARKING_SPACE_OCCUPIED*)
        ((= const 3) 'system_manager_msgs::ParkingSpaceStatusEnum::*PARKING_SPACE_HIGHLIGHT*)
        (t nil)))

(defclass system_manager_msgs::ParkingSpaceStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::ParkingSpaceStatusEnum
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

(setf (get system_manager_msgs::ParkingSpaceStatusEnum :md5sum-) "9836ee2f07deca839e9562ed9e3f7b08")
(setf (get system_manager_msgs::ParkingSpaceStatusEnum :datatype-) "system_manager_msgs/ParkingSpaceStatusEnum")
(setf (get system_manager_msgs::ParkingSpaceStatusEnum :definition-)
      "uint8 NO_INFORMATION = 0
uint8 PARKING_SPACE_VACANT = 1
uint8 PARKING_SPACE_OCCUPIED = 2
uint8 PARKING_SPACE_HIGHLIGHT = 3
uint8 value

")



(provide :system_manager_msgs/ParkingSpaceStatusEnum "9836ee2f07deca839e9562ed9e3f7b08")


