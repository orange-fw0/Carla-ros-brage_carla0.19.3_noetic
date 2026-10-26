;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionSpecialParkingSlotType)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionSpecialParkingSlotType (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))

(in-package "ROS")
;;//! \htmlinclude FusionSpecialParkingSlotType.msg.html


(intern "*SPECIAL_PARKING_SLOT_TYPE_DEFAULT*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(shadow '*SPECIAL_PARKING_SLOT_TYPE_DEFAULT* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_DEFAULT* 0)
(intern "*SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(shadow '*SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE* 1)
(intern "*SPECIAL_PARKING_SLOT_TYPE_MECHANICAL*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(shadow '*SPECIAL_PARKING_SLOT_TYPE_MECHANICAL* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_MECHANICAL* 2)
(intern "*SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(shadow '*SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONSPECIALPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN* 4)

(defun perception_interface_msgs::FusionSpecialParkingSlotType-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_DEFAULT*)
        ((= const 1) 'perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE*)
        ((= const 2) 'perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_MECHANICAL*)
        ((= const 4) 'perception_interface_msgs::FusionSpecialParkingSlotType::*SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN*)
        (t nil)))

(defclass perception_interface_msgs::FusionSpecialParkingSlotType
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::FusionSpecialParkingSlotType
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

(setf (get perception_interface_msgs::FusionSpecialParkingSlotType :md5sum-) "1222fcf8e33a977abc4456e4db5b195c")
(setf (get perception_interface_msgs::FusionSpecialParkingSlotType :datatype-) "perception_interface_msgs/FusionSpecialParkingSlotType")
(setf (get perception_interface_msgs::FusionSpecialParkingSlotType :definition-)
      "uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0
uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1
uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2
uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4
uint8 value

")



(provide :perception_interface_msgs/FusionSpecialParkingSlotType "1222fcf8e33a977abc4456e4db5b195c")


