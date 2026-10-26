;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::ParkingFacilityTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'ParkingFacilityTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::PARKINGFACILITYTYPEENUM")
  (make-package "LANDMARK_MSGS::PARKINGFACILITYTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingFacilityTypeEnum.msg.html


(intern "*PARKING_FACILITY_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::PARKINGFACILITYTYPEENUM"))
(shadow '*PARKING_FACILITY_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::PARKINGFACILITYTYPEENUM"))
(defconstant landmark_msgs::ParkingFacilityTypeEnum::*PARKING_FACILITY_TYPE_UNKNOWN* 0)
(intern "*PARKING_FACILITY_TYPE_FLOOR*" (find-package "LANDMARK_MSGS::PARKINGFACILITYTYPEENUM"))
(shadow '*PARKING_FACILITY_TYPE_FLOOR* (find-package "LANDMARK_MSGS::PARKINGFACILITYTYPEENUM"))
(defconstant landmark_msgs::ParkingFacilityTypeEnum::*PARKING_FACILITY_TYPE_FLOOR* 1)

(defun landmark_msgs::ParkingFacilityTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::ParkingFacilityTypeEnum::*PARKING_FACILITY_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::ParkingFacilityTypeEnum::*PARKING_FACILITY_TYPE_FLOOR*)
        (t nil)))

(defclass landmark_msgs::ParkingFacilityTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::ParkingFacilityTypeEnum
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

(setf (get landmark_msgs::ParkingFacilityTypeEnum :md5sum-) "079aed9017c51a7e76e82b338255f8d5")
(setf (get landmark_msgs::ParkingFacilityTypeEnum :datatype-) "landmark_msgs/ParkingFacilityTypeEnum")
(setf (get landmark_msgs::ParkingFacilityTypeEnum :definition-)
      "uint8 PARKING_FACILITY_TYPE_UNKNOWN = 0
uint8 PARKING_FACILITY_TYPE_FLOOR = 1
uint8 value

")



(provide :landmark_msgs/ParkingFacilityTypeEnum "079aed9017c51a7e76e82b338255f8d5")


