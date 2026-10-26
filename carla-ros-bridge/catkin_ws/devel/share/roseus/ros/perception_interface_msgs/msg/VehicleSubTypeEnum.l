;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleSubTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleSubTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleSubTypeEnum.msg.html


(intern "*VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE* 0)
(intern "*VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE* 1)
(intern "*VEHICLE_SUB_TYPE_UNKNOWN_CAR*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_UNKNOWN_CAR* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_CAR* 2)
(intern "*VEHICLE_SUB_TYPE_SEDAN_CAR*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_SEDAN_CAR* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SEDAN_CAR* 3)
(intern "*VEHICLE_SUB_TYPE_SUV_CAR*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_SUV_CAR* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SUV_CAR* 4)
(intern "*VEHICLE_SUB_TYPE_POLICE_CAR*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_POLICE_CAR* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_POLICE_CAR* 5)
(intern "*VEHICLE_SUB_TYPE_PICKUP_CAR*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_PICKUP_CAR* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PICKUP_CAR* 6)
(intern "*VEHICLE_SUB_TYPE_UNKNOWN_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_UNKNOWN_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_TRUCK* 7)
(intern "*VEHICLE_SUB_TYPE_VAN_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_VAN_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_VAN_TRUCK* 8)
(intern "*VEHICLE_SUB_TYPE_PLATE_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_PLATE_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PLATE_TRUCK* 9)
(intern "*VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK* 10)
(intern "*VEHICLE_SUB_TYPE_TRAILER_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_TRAILER_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_TRAILER_TRUCK* 11)
(intern "*VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK* 12)
(intern "*VEHICLE_SUB_TYPE_ENGINEERING_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_ENGINEERING_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_ENGINEERING_TRUCK* 13)
(intern "*VEHICLE_SUB_TYPE_AMBULANCE_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_AMBULANCE_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_AMBULANCE_TRUCK* 14)
(intern "*VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK* 15)
(intern "*VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK* 16)
(intern "*VEHICLE_SUB_TYPE_SWEEPER_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_SWEEPER_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SWEEPER_TRUCK* 17)
(intern "*VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK* 18)
(intern "*VEHICLE_SUB_TYPE_UNKNOWN_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_UNKNOWN_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_BUS* 19)
(intern "*VEHICLE_SUB_TYPE_PASSENGER_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_PASSENGER_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PASSENGER_BUS* 20)
(intern "*VEHICLE_SUB_TYPE_SCHOOL_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_SCHOOL_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SCHOOL_BUS* 21)
(intern "*VEHICLE_SUB_TYPE_CITY_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_CITY_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_CITY_BUS* 22)
(intern "*VEHICLE_SUB_TYPE_ARTICULATED_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_ARTICULATED_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_ARTICULATED_BUS* 23)
(intern "*VEHICLE_SUB_TYPE_TROLLEY_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_TROLLEY_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_TROLLEY_BUS* 24)
(intern "*VEHICLE_SUB_TYPE_MINI_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_MINI_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_MINI_BUS* 25)
(intern "*VEHICLE_SUB_TYPE_RV_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_RV_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_RV_BUS* 26)
(intern "*VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE* 27)
(intern "*VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK* 28)
(intern "*VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK* 29)
(intern "*VEHICLE_SUB_TYPE_DUMP_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_DUMP_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_DUMP_TRUCK* 30)
(intern "*VEHICLE_SUB_TYPE_TANK_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_TANK_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_TANK_TRUCK* 31)
(intern "*VEHICLE_SUB_TYPE_MPV_CAR*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(shadow '*VEHICLE_SUB_TYPE_MPV_CAR* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLESUBTYPEENUM"))
(defconstant perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_MPV_CAR* 32)

(defun perception_interface_msgs::VehicleSubTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE*)
        ((= const 1) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE*)
        ((= const 2) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_CAR*)
        ((= const 3) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SEDAN_CAR*)
        ((= const 4) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SUV_CAR*)
        ((= const 5) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_POLICE_CAR*)
        ((= const 6) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PICKUP_CAR*)
        ((= const 7) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_TRUCK*)
        ((= const 8) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_VAN_TRUCK*)
        ((= const 9) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PLATE_TRUCK*)
        ((= const 10) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK*)
        ((= const 11) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_TRAILER_TRUCK*)
        ((= const 12) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK*)
        ((= const 13) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_ENGINEERING_TRUCK*)
        ((= const 14) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_AMBULANCE_TRUCK*)
        ((= const 15) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK*)
        ((= const 16) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK*)
        ((= const 17) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SWEEPER_TRUCK*)
        ((= const 18) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK*)
        ((= const 19) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_UNKNOWN_BUS*)
        ((= const 20) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PASSENGER_BUS*)
        ((= const 21) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_SCHOOL_BUS*)
        ((= const 22) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_CITY_BUS*)
        ((= const 23) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_ARTICULATED_BUS*)
        ((= const 24) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_TROLLEY_BUS*)
        ((= const 25) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_MINI_BUS*)
        ((= const 26) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_RV_BUS*)
        ((= const 27) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE*)
        ((= const 28) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK*)
        ((= const 29) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK*)
        ((= const 30) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_DUMP_TRUCK*)
        ((= const 31) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_TANK_TRUCK*)
        ((= const 32) 'perception_interface_msgs::VehicleSubTypeEnum::*VEHICLE_SUB_TYPE_MPV_CAR*)
        (t nil)))

(defclass perception_interface_msgs::VehicleSubTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleSubTypeEnum
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

(setf (get perception_interface_msgs::VehicleSubTypeEnum :md5sum-) "d189e6ab74e25c32536331914cebc3cd")
(setf (get perception_interface_msgs::VehicleSubTypeEnum :datatype-) "perception_interface_msgs/VehicleSubTypeEnum")
(setf (get perception_interface_msgs::VehicleSubTypeEnum :definition-)
      "uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0
uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1
uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2
uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3
uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4
uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5
uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6
uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7
uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8
uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9
uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10
uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11
uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12
uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13
uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14
uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15
uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16
uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17
uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18
uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19
uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20
uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21
uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22
uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23
uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24
uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25
uint8 VEHICLE_SUB_TYPE_RV_BUS = 26
uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27
uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28
uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29
uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30
uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31
uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32
uint8 value

")



(provide :perception_interface_msgs/VehicleSubTypeEnum "d189e6ab74e25c32536331914cebc3cd")


