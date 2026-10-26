;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionParkingSlotType)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionParkingSlotType (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))

(in-package "ROS")
;;//! \htmlinclude FusionParkingSlotType.msg.html


(intern "*PARKING_SLOT_TYPE_UNKOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(shadow '*PARKING_SLOT_TYPE_UNKOWN* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_UNKOWN* 0)
(intern "*PARKING_SLOT_TYPE_VERTICAL*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(shadow '*PARKING_SLOT_TYPE_VERTICAL* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_VERTICAL* 1)
(intern "*PARKING_SLOT_TYPE_PARALLEL*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(shadow '*PARKING_SLOT_TYPE_PARALLEL* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_PARALLEL* 2)
(intern "*PARKING_SLOT_TYPE_NORMAL_DIAGONAL*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(shadow '*PARKING_SLOT_TYPE_NORMAL_DIAGONAL* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_NORMAL_DIAGONAL* 3)
(intern "*PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(shadow '*PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL* 4)
(intern "*PARKING_SLOT_TYPE_TOTAL_NUM*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(shadow '*PARKING_SLOT_TYPE_TOTAL_NUM* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTTYPE"))
(defconstant perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_TOTAL_NUM* 5)

(defun perception_interface_msgs::FusionParkingSlotType-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_UNKOWN*)
        ((= const 1) 'perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_VERTICAL*)
        ((= const 2) 'perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_PARALLEL*)
        ((= const 3) 'perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_NORMAL_DIAGONAL*)
        ((= const 4) 'perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL*)
        ((= const 5) 'perception_interface_msgs::FusionParkingSlotType::*PARKING_SLOT_TYPE_TOTAL_NUM*)
        (t nil)))

(defclass perception_interface_msgs::FusionParkingSlotType
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::FusionParkingSlotType
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

(setf (get perception_interface_msgs::FusionParkingSlotType :md5sum-) "79c8682f15227c4aedff23a8ca997116")
(setf (get perception_interface_msgs::FusionParkingSlotType :datatype-) "perception_interface_msgs/FusionParkingSlotType")
(setf (get perception_interface_msgs::FusionParkingSlotType :definition-)
      "uint8 PARKING_SLOT_TYPE_UNKOWN = 0
uint8 PARKING_SLOT_TYPE_VERTICAL = 1
uint8 PARKING_SLOT_TYPE_PARALLEL = 2
uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3
uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4
uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5
uint8 value

")



(provide :perception_interface_msgs/FusionParkingSlotType "79c8682f15227c4aedff23a8ca997116")


