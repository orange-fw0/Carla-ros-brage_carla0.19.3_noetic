;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotSpecialTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotSpecialTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotSpecialTypeEnum.msg.html


(intern "*PARKING_SLOT_SPECIAL_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(shadow '*PARKING_SLOT_SPECIAL_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_UNKNOWN* 0)
(intern "*PARKING_SLOT_SPECIAL_TYPE_NORMAL*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(shadow '*PARKING_SLOT_SPECIAL_TYPE_NORMAL* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_NORMAL* 1)
(intern "*PARKING_SLOT_SPECIAL_TYPE_CHARGE*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(shadow '*PARKING_SLOT_SPECIAL_TYPE_CHARGE* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_CHARGE* 2)
(intern "*PARKING_SLOT_SPECIAL_TYPE_MECHANICAL*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(shadow '*PARKING_SLOT_SPECIAL_TYPE_MECHANICAL* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_MECHANICAL* 3)
(intern "*PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(shadow '*PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTSPECIALTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN* 4)

(defun perception_interface_msgs::ParkingSlotSpecialTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_NORMAL*)
        ((= const 2) 'perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_CHARGE*)
        ((= const 3) 'perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_MECHANICAL*)
        ((= const 4) 'perception_interface_msgs::ParkingSlotSpecialTypeEnum::*PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN*)
        (t nil)))

(defclass perception_interface_msgs::ParkingSlotSpecialTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ParkingSlotSpecialTypeEnum
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

(setf (get perception_interface_msgs::ParkingSlotSpecialTypeEnum :md5sum-) "289cceacdcb9179fbeda8fe9b4968cbd")
(setf (get perception_interface_msgs::ParkingSlotSpecialTypeEnum :datatype-) "perception_interface_msgs/ParkingSlotSpecialTypeEnum")
(setf (get perception_interface_msgs::ParkingSlotSpecialTypeEnum :definition-)
      "uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1
uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2
uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3
uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4
uint8 value

")



(provide :perception_interface_msgs/ParkingSlotSpecialTypeEnum "289cceacdcb9179fbeda8fe9b4968cbd")


