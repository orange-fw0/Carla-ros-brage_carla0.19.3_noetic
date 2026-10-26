;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::ParkingSpaceAttributeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'ParkingSpaceAttributeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM")
  (make-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM"))

(in-package "ROS")
;;//! \htmlinclude ParkingSpaceAttributeEnum.msg.html


(intern "*PARKING_SPACE_ATTRIBUTE_UNKNOWN*" (find-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM"))
(shadow '*PARKING_SPACE_ATTRIBUTE_UNKNOWN* (find-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM"))
(defconstant landmark_msgs::ParkingSpaceAttributeEnum::*PARKING_SPACE_ATTRIBUTE_UNKNOWN* 0)
(intern "*PARKING_SPACE_ATTRIBUTE_NORMAL*" (find-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM"))
(shadow '*PARKING_SPACE_ATTRIBUTE_NORMAL* (find-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM"))
(defconstant landmark_msgs::ParkingSpaceAttributeEnum::*PARKING_SPACE_ATTRIBUTE_NORMAL* 1)
(intern "*PARKING_SPACE_ATTRIBUTE_CHARGING*" (find-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM"))
(shadow '*PARKING_SPACE_ATTRIBUTE_CHARGING* (find-package "LANDMARK_MSGS::PARKINGSPACEATTRIBUTEENUM"))
(defconstant landmark_msgs::ParkingSpaceAttributeEnum::*PARKING_SPACE_ATTRIBUTE_CHARGING* 2)

(defun landmark_msgs::ParkingSpaceAttributeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::ParkingSpaceAttributeEnum::*PARKING_SPACE_ATTRIBUTE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::ParkingSpaceAttributeEnum::*PARKING_SPACE_ATTRIBUTE_NORMAL*)
        ((= const 2) 'landmark_msgs::ParkingSpaceAttributeEnum::*PARKING_SPACE_ATTRIBUTE_CHARGING*)
        (t nil)))

(defclass landmark_msgs::ParkingSpaceAttributeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::ParkingSpaceAttributeEnum
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

(setf (get landmark_msgs::ParkingSpaceAttributeEnum :md5sum-) "43a3920e54ba9ac6cb3e138aa3a1674a")
(setf (get landmark_msgs::ParkingSpaceAttributeEnum :datatype-) "landmark_msgs/ParkingSpaceAttributeEnum")
(setf (get landmark_msgs::ParkingSpaceAttributeEnum :definition-)
      "uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0
uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1
uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2
uint8 value

")



(provide :landmark_msgs/ParkingSpaceAttributeEnum "43a3920e54ba9ac6cb3e138aa3a1674a")


