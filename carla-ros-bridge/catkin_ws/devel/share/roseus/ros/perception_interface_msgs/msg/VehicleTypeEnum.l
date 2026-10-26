;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleTypeEnum.msg.html


(intern "*VEHICLE_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(shadow '*VEHICLE_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(defconstant perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_UNKNOWN* 0)
(intern "*VEHICLE_TYPE_CAR*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(shadow '*VEHICLE_TYPE_CAR* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(defconstant perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_CAR* 1)
(intern "*VEHICLE_TYPE_TRUCK*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(shadow '*VEHICLE_TYPE_TRUCK* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(defconstant perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_TRUCK* 2)
(intern "*VEHICLE_TYPE_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(shadow '*VEHICLE_TYPE_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLETYPEENUM"))
(defconstant perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_BUS* 3)

(defun perception_interface_msgs::VehicleTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_CAR*)
        ((= const 2) 'perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_TRUCK*)
        ((= const 3) 'perception_interface_msgs::VehicleTypeEnum::*VEHICLE_TYPE_BUS*)
        (t nil)))

(defclass perception_interface_msgs::VehicleTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleTypeEnum
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

(setf (get perception_interface_msgs::VehicleTypeEnum :md5sum-) "a2ee3c2a1fb5af633f7f901d1fb4738e")
(setf (get perception_interface_msgs::VehicleTypeEnum :datatype-) "perception_interface_msgs/VehicleTypeEnum")
(setf (get perception_interface_msgs::VehicleTypeEnum :definition-)
      "uint8 VEHICLE_TYPE_UNKNOWN = 0
uint8 VEHICLE_TYPE_CAR = 1
uint8 VEHICLE_TYPE_TRUCK = 2
uint8 VEHICLE_TYPE_BUS = 3
uint8 value

")



(provide :perception_interface_msgs/VehicleTypeEnum "a2ee3c2a1fb5af633f7f901d1fb4738e")


