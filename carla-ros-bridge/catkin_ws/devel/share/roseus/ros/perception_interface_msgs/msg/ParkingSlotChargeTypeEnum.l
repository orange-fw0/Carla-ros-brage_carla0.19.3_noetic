;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotChargeTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotChargeTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotChargeTypeEnum.msg.html


(intern "*PARKING_SLOT_CHARGE_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM"))
(shadow '*PARKING_SLOT_CHARGE_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotChargeTypeEnum::*PARKING_SLOT_CHARGE_TYPE_UNKNOWN* 0)
(intern "*PARKING_SLOT_CHARGE_TYPE_AVAILABLE*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM"))
(shadow '*PARKING_SLOT_CHARGE_TYPE_AVAILABLE* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotChargeTypeEnum::*PARKING_SLOT_CHARGE_TYPE_AVAILABLE* 1)
(intern "*PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM"))
(shadow '*PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTCHARGETYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotChargeTypeEnum::*PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE* 2)

(defun perception_interface_msgs::ParkingSlotChargeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ParkingSlotChargeTypeEnum::*PARKING_SLOT_CHARGE_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::ParkingSlotChargeTypeEnum::*PARKING_SLOT_CHARGE_TYPE_AVAILABLE*)
        ((= const 2) 'perception_interface_msgs::ParkingSlotChargeTypeEnum::*PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE*)
        (t nil)))

(defclass perception_interface_msgs::ParkingSlotChargeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ParkingSlotChargeTypeEnum
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

(setf (get perception_interface_msgs::ParkingSlotChargeTypeEnum :md5sum-) "794cf6e2ecbe3a5a6b27754eb8802412")
(setf (get perception_interface_msgs::ParkingSlotChargeTypeEnum :datatype-) "perception_interface_msgs/ParkingSlotChargeTypeEnum")
(setf (get perception_interface_msgs::ParkingSlotChargeTypeEnum :definition-)
      "uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2
uint8 value

")



(provide :perception_interface_msgs/ParkingSlotChargeTypeEnum "794cf6e2ecbe3a5a6b27754eb8802412")


