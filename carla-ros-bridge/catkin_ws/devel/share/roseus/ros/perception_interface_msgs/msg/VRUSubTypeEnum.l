;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VRUSubTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VRUSubTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude VRUSubTypeEnum.msg.html


(intern "*VRU_SUB_TYPE_UNKNOWN_VRU*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_UNKNOWN_VRU* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_VRU* 0)
(intern "*VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN* 1)
(intern "*VRU_SUB_TYPE_STAND_PEDESTRIAN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_STAND_PEDESTRIAN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_STAND_PEDESTRIAN* 2)
(intern "*VRU_SUB_TYPE_SQUATTER_PEDESTRIAN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_SQUATTER_PEDESTRIAN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_SQUATTER_PEDESTRIAN* 3)
(intern "*VRU_SUB_TYPE_LYING_PEDESTRIAN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_LYING_PEDESTRIAN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_LYING_PEDESTRIAN* 4)
(intern "*VRU_SUB_TYPE_UNKNOWN_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_UNKNOWN_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_BICYCLIST* 5)
(intern "*VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST* 6)
(intern "*VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST* 7)
(intern "*VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST* 8)
(intern "*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST* 9)
(intern "*VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST* 10)
(intern "*VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST* 11)
(intern "*VRU_SUB_TYPE_UNKNOWN_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_UNKNOWN_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_TRICYCLIST* 12)
(intern "*VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST* 13)
(intern "*VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST* 14)
(intern "*VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST* 15)
(intern "*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST* 16)
(intern "*VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST* 17)
(intern "*VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST* 18)
(intern "*VRU_SUB_TYPE_UNKNOWN_TROLLEY*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_UNKNOWN_TROLLEY* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_TROLLEY* 19)
(intern "*VRU_SUB_TYPE_FLAT_TROLLEY*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_FLAT_TROLLEY* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_FLAT_TROLLEY* 20)
(intern "*VRU_SUB_TYPE_SHOPPING_TROLLEY*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_SHOPPING_TROLLEY* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_SHOPPING_TROLLEY* 21)
(intern "*VRU_SUB_TYPE_STROLLER_TROLLEY*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_STROLLER_TROLLEY* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_STROLLER_TROLLEY* 22)
(intern "*VRU_SUB_TYPE_GARBAGE_TROLLEY*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_GARBAGE_TROLLEY* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_GARBAGE_TROLLEY* 23)
(intern "*VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY* 24)
(intern "*VRU_SUB_TYPE_ANIMAL*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(shadow '*VRU_SUB_TYPE_ANIMAL* (find-package "PERCEPTION_INTERFACE_MSGS::VRUSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_ANIMAL* 25)

(defun perception_interface_msgs::VRUSubTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_VRU*)
        ((= const 1) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN*)
        ((= const 2) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_STAND_PEDESTRIAN*)
        ((= const 3) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_SQUATTER_PEDESTRIAN*)
        ((= const 4) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_LYING_PEDESTRIAN*)
        ((= const 5) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_BICYCLIST*)
        ((= const 6) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST*)
        ((= const 7) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST*)
        ((= const 8) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST*)
        ((= const 9) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST*)
        ((= const 10) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST*)
        ((= const 11) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST*)
        ((= const 12) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_TRICYCLIST*)
        ((= const 13) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST*)
        ((= const 14) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST*)
        ((= const 15) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST*)
        ((= const 16) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST*)
        ((= const 17) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST*)
        ((= const 18) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST*)
        ((= const 19) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_UNKNOWN_TROLLEY*)
        ((= const 20) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_FLAT_TROLLEY*)
        ((= const 21) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_SHOPPING_TROLLEY*)
        ((= const 22) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_STROLLER_TROLLEY*)
        ((= const 23) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_GARBAGE_TROLLEY*)
        ((= const 24) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY*)
        ((= const 25) 'perception_interface_msgs::VRUSubTypeEnum::*VRU_SUB_TYPE_ANIMAL*)
        (t nil)))

(defclass perception_interface_msgs::VRUSubTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VRUSubTypeEnum
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

(setf (get perception_interface_msgs::VRUSubTypeEnum :md5sum-) "23ddcc9847cb4f2833e74a78a134d97f")
(setf (get perception_interface_msgs::VRUSubTypeEnum :datatype-) "perception_interface_msgs/VRUSubTypeEnum")
(setf (get perception_interface_msgs::VRUSubTypeEnum :definition-)
      "uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0
uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1
uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2
uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3
uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4
uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5
uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6
uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7
uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8
uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9
uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10
uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11
uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12
uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13
uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14
uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15
uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16
uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17
uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18
uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19
uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20
uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21
uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22
uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23
uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24
uint8 VRU_SUB_TYPE_ANIMAL = 25
uint8 value

")



(provide :perception_interface_msgs/VRUSubTypeEnum "23ddcc9847cb4f2833e74a78a134d97f")


