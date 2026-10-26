;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ParkingSlotType)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ParkingSlotType (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PARKINGSLOTTYPE")
  (make-package "PLANNING_MSGS::PARKINGSLOTTYPE"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlotType.msg.html


(intern "*UNKNOWN*" (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(shadow '*UNKNOWN* (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(defconstant planning_msgs::ParkingSlotType::*UNKNOWN* 0)
(intern "*PERPENDICULAR*" (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(shadow '*PERPENDICULAR* (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(defconstant planning_msgs::ParkingSlotType::*PERPENDICULAR* 1)
(intern "*PARALLEL*" (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(shadow '*PARALLEL* (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(defconstant planning_msgs::ParkingSlotType::*PARALLEL* 2)
(intern "*OBLIQUE*" (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(shadow '*OBLIQUE* (find-package "PLANNING_MSGS::PARKINGSLOTTYPE"))
(defconstant planning_msgs::ParkingSlotType::*OBLIQUE* 3)

(defun planning_msgs::ParkingSlotType-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::ParkingSlotType::*UNKNOWN*)
        ((= const 1) 'planning_msgs::ParkingSlotType::*PERPENDICULAR*)
        ((= const 2) 'planning_msgs::ParkingSlotType::*PARALLEL*)
        ((= const 3) 'planning_msgs::ParkingSlotType::*OBLIQUE*)
        (t nil)))

(defclass planning_msgs::ParkingSlotType
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::ParkingSlotType
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

(setf (get planning_msgs::ParkingSlotType :md5sum-) "ece84f9e7d1bd9c0d33795d454c01230")
(setf (get planning_msgs::ParkingSlotType :datatype-) "planning_msgs/ParkingSlotType")
(setf (get planning_msgs::ParkingSlotType :definition-)
      "uint8 UNKNOWN = 0
uint8 PERPENDICULAR = 1
uint8 PARALLEL = 2
uint8 OBLIQUE = 3
uint8 value

")



(provide :planning_msgs/ParkingSlotType "ece84f9e7d1bd9c0d33795d454c01230")


