;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingLotTypeEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingLotTypeEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingLotTypeEnum.msg.html


(intern "*PNP*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM"))
(shadow '*PNP* (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM"))
(defconstant system_manager_msgs::ParkingLotTypeEnum::*PNP* 0)
(intern "*LPNP*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM"))
(shadow '*LPNP* (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM"))
(defconstant system_manager_msgs::ParkingLotTypeEnum::*LPNP* 1)
(intern "*BOTH*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM"))
(shadow '*BOTH* (find-package "SYSTEM_MANAGER_MSGS::PARKINGLOTTYPEENUM"))
(defconstant system_manager_msgs::ParkingLotTypeEnum::*BOTH* 2)

(defun system_manager_msgs::ParkingLotTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::ParkingLotTypeEnum::*PNP*)
        ((= const 1) 'system_manager_msgs::ParkingLotTypeEnum::*LPNP*)
        ((= const 2) 'system_manager_msgs::ParkingLotTypeEnum::*BOTH*)
        (t nil)))

(defclass system_manager_msgs::ParkingLotTypeEnum
  :super ros::object
  :slots (_type ))

(defmethod system_manager_msgs::ParkingLotTypeEnum
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::ParkingLotTypeEnum :md5sum-) "846d4f08b7de51f0bc80f53fe295ef5e")
(setf (get system_manager_msgs::ParkingLotTypeEnum :datatype-) "system_manager_msgs/ParkingLotTypeEnum")
(setf (get system_manager_msgs::ParkingLotTypeEnum :definition-)
      "uint8 PNP = 0
uint8 LPNP = 1
uint8 BOTH = 2
uint8 type

")



(provide :system_manager_msgs/ParkingLotTypeEnum "846d4f08b7de51f0bc80f53fe295ef5e")


