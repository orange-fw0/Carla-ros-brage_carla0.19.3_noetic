;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ReservedParkingSignSubtypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ReservedParkingSignSubtypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ReservedParkingSignSubtypeEnum.msg.html


(intern "*RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN* 0)
(intern "*RESERVED_PARKING_SIGN_SUBTYPE_OTHER*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_OTHER* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_OTHER* 1)
(intern "*RESERVED_PARKING_SIGN_SUBTYPE_TAXI*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_TAXI* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_TAXI* 2)
(intern "*RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS* 3)
(intern "*RESERVED_PARKING_SIGN_SUBTYPE_BUS*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_BUS* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_BUS* 4)
(intern "*RESERVED_PARKING_SIGN_SUBTYPE_DISABLED*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_DISABLED* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_DISABLED* 5)
(intern "*RESERVED_PARKING_SIGN_SUBTYPE_FEMALE*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_FEMALE* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_FEMALE* 6)
(intern "*RESERVED_PARKING_SIGN_SUBTYPE_CHARGING*" (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(shadow '*RESERVED_PARKING_SIGN_SUBTYPE_CHARGING* (find-package "PERCEPTION_INTERFACE_MSGS::RESERVEDPARKINGSIGNSUBTYPEENUM"))
(defconstant perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_CHARGING* 7)

(defun perception_interface_msgs::ReservedParkingSignSubtypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_OTHER*)
        ((= const 2) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_TAXI*)
        ((= const 3) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS*)
        ((= const 4) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_BUS*)
        ((= const 5) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_DISABLED*)
        ((= const 6) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_FEMALE*)
        ((= const 7) 'perception_interface_msgs::ReservedParkingSignSubtypeEnum::*RESERVED_PARKING_SIGN_SUBTYPE_CHARGING*)
        (t nil)))

(defclass perception_interface_msgs::ReservedParkingSignSubtypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ReservedParkingSignSubtypeEnum
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

(setf (get perception_interface_msgs::ReservedParkingSignSubtypeEnum :md5sum-) "b195fe7065d4a8b446d7ae3483cfc8a0")
(setf (get perception_interface_msgs::ReservedParkingSignSubtypeEnum :datatype-) "perception_interface_msgs/ReservedParkingSignSubtypeEnum")
(setf (get perception_interface_msgs::ReservedParkingSignSubtypeEnum :definition-)
      "uint8 RESERVED_PARKING_SIGN_SUBTYPE_UNKNOWN = 0
uint8 RESERVED_PARKING_SIGN_SUBTYPE_OTHER = 1
uint8 RESERVED_PARKING_SIGN_SUBTYPE_TAXI = 2
uint8 RESERVED_PARKING_SIGN_SUBTYPE_SCHOOL_BUS = 3
uint8 RESERVED_PARKING_SIGN_SUBTYPE_BUS = 4
uint8 RESERVED_PARKING_SIGN_SUBTYPE_DISABLED = 5
uint8 RESERVED_PARKING_SIGN_SUBTYPE_FEMALE = 6
uint8 RESERVED_PARKING_SIGN_SUBTYPE_CHARGING = 7
uint8 value

")



(provide :perception_interface_msgs/ReservedParkingSignSubtypeEnum "b195fe7065d4a8b446d7ae3483cfc8a0")


