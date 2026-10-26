;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotTypeEnum.msg.html


(intern "*PARKING_SLOT_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM"))
(shadow '*PARKING_SLOT_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotTypeEnum::*PARKING_SLOT_TYPE_UNKNOWN* 0)
(intern "*PARKING_SLOT_TYPE_AVAILABLE*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM"))
(shadow '*PARKING_SLOT_TYPE_AVAILABLE* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotTypeEnum::*PARKING_SLOT_TYPE_AVAILABLE* 1)
(intern "*PARKING_SLOT_TYPE_OCCUPIED*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM"))
(shadow '*PARKING_SLOT_TYPE_OCCUPIED* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotTypeEnum::*PARKING_SLOT_TYPE_OCCUPIED* 2)

(defun perception_interface_msgs::ParkingSlotTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ParkingSlotTypeEnum::*PARKING_SLOT_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::ParkingSlotTypeEnum::*PARKING_SLOT_TYPE_AVAILABLE*)
        ((= const 2) 'perception_interface_msgs::ParkingSlotTypeEnum::*PARKING_SLOT_TYPE_OCCUPIED*)
        (t nil)))

(defclass perception_interface_msgs::ParkingSlotTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ParkingSlotTypeEnum
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

(setf (get perception_interface_msgs::ParkingSlotTypeEnum :md5sum-) "d0b2d32831154d819174eff11ca81c68")
(setf (get perception_interface_msgs::ParkingSlotTypeEnum :datatype-) "perception_interface_msgs/ParkingSlotTypeEnum")
(setf (get perception_interface_msgs::ParkingSlotTypeEnum :definition-)
      "uint8 PARKING_SLOT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_TYPE_AVAILABLE = 1
uint8 PARKING_SLOT_TYPE_OCCUPIED = 2
uint8 value

")



(provide :perception_interface_msgs/ParkingSlotTypeEnum "d0b2d32831154d819174eff11ca81c68")


