;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::DestinationParkingType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'DestinationParkingType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE")
  (make-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))

(in-package "ROS")
;;//! \htmlinclude DestinationParkingType.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(defconstant landmark_msgs::DestinationParkingType::*UNKNOWN* 0)
(intern "*NORMAL_DESTINATION*" (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(shadow '*NORMAL_DESTINATION* (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(defconstant landmark_msgs::DestinationParkingType::*NORMAL_DESTINATION* 1)
(intern "*PARKING_SPACE*" (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(shadow '*PARKING_SPACE* (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(defconstant landmark_msgs::DestinationParkingType::*PARKING_SPACE* 2)
(intern "*PARKING_AOI*" (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(shadow '*PARKING_AOI* (find-package "LANDMARK_MSGS::DESTINATIONPARKINGTYPE"))
(defconstant landmark_msgs::DestinationParkingType::*PARKING_AOI* 3)

(defun landmark_msgs::DestinationParkingType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::DestinationParkingType::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::DestinationParkingType::*NORMAL_DESTINATION*)
        ((= const 2) 'landmark_msgs::DestinationParkingType::*PARKING_SPACE*)
        ((= const 3) 'landmark_msgs::DestinationParkingType::*PARKING_AOI*)
        (t nil)))

(defclass landmark_msgs::DestinationParkingType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::DestinationParkingType
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

(setf (get landmark_msgs::DestinationParkingType :md5sum-) "e577ff7395099affb02cbd64e7a6f0fa")
(setf (get landmark_msgs::DestinationParkingType :datatype-) "landmark_msgs/DestinationParkingType")
(setf (get landmark_msgs::DestinationParkingType :definition-)
      "uint8 UNKNOWN = 0
uint8 NORMAL_DESTINATION = 1
uint8 PARKING_SPACE = 2
uint8 PARKING_AOI = 3
uint8 value

")



(provide :landmark_msgs/DestinationParkingType "e577ff7395099affb02cbd64e7a6f0fa")


