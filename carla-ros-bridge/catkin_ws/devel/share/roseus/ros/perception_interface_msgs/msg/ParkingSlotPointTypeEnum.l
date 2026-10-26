;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ParkingSlotPointTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ParkingSlotPointTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotPointTypeEnum.msg.html


(intern "*PARKING_SLOT_POINT_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM"))
(shadow '*PARKING_SLOT_POINT_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotPointTypeEnum::*PARKING_SLOT_POINT_TYPE_UNKNOWN* 0)
(intern "*PARKING_SLOT_POINT_TYPE_REAL*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM"))
(shadow '*PARKING_SLOT_POINT_TYPE_REAL* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotPointTypeEnum::*PARKING_SLOT_POINT_TYPE_REAL* 1)
(intern "*PARKING_SLOT_POINT_TYPE_FAKE*" (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM"))
(shadow '*PARKING_SLOT_POINT_TYPE_FAKE* (find-package "PERCEPTION_INTERFACE_MSGS::PARKINGSLOTPOINTTYPEENUM"))
(defconstant perception_interface_msgs::ParkingSlotPointTypeEnum::*PARKING_SLOT_POINT_TYPE_FAKE* 2)

(defun perception_interface_msgs::ParkingSlotPointTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ParkingSlotPointTypeEnum::*PARKING_SLOT_POINT_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::ParkingSlotPointTypeEnum::*PARKING_SLOT_POINT_TYPE_REAL*)
        ((= const 2) 'perception_interface_msgs::ParkingSlotPointTypeEnum::*PARKING_SLOT_POINT_TYPE_FAKE*)
        (t nil)))

(defclass perception_interface_msgs::ParkingSlotPointTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ParkingSlotPointTypeEnum
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

(setf (get perception_interface_msgs::ParkingSlotPointTypeEnum :md5sum-) "4bb2aac2b3a42afd41451b69821886ab")
(setf (get perception_interface_msgs::ParkingSlotPointTypeEnum :datatype-) "perception_interface_msgs/ParkingSlotPointTypeEnum")
(setf (get perception_interface_msgs::ParkingSlotPointTypeEnum :definition-)
      "uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
uint8 value

")



(provide :perception_interface_msgs/ParkingSlotPointTypeEnum "4bb2aac2b3a42afd41451b69821886ab")


