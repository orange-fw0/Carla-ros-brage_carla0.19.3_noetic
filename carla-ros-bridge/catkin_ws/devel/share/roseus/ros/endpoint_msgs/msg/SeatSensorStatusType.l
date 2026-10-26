;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SeatSensorStatusType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SeatSensorStatusType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE")
  (make-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))

(in-package "ROS")
;;//! \htmlinclude SeatSensorStatusType.msg.html


(intern "*DRIVER_SEAT_STATUS*" (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(shadow '*DRIVER_SEAT_STATUS* (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(defconstant endpoint_msgs::SeatSensorStatusType::*DRIVER_SEAT_STATUS* 0)
(intern "*PASSENGER_SEAT_STATUS*" (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(shadow '*PASSENGER_SEAT_STATUS* (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(defconstant endpoint_msgs::SeatSensorStatusType::*PASSENGER_SEAT_STATUS* 1)
(intern "*SECOND_LEFT_SEAT_STATUS*" (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(shadow '*SECOND_LEFT_SEAT_STATUS* (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(defconstant endpoint_msgs::SeatSensorStatusType::*SECOND_LEFT_SEAT_STATUS* 2)
(intern "*SECOND_MID_SEAT_STATUS*" (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(shadow '*SECOND_MID_SEAT_STATUS* (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(defconstant endpoint_msgs::SeatSensorStatusType::*SECOND_MID_SEAT_STATUS* 3)
(intern "*SECOND_RIGHT_SEAT_STATUS*" (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(shadow '*SECOND_RIGHT_SEAT_STATUS* (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(defconstant endpoint_msgs::SeatSensorStatusType::*SECOND_RIGHT_SEAT_STATUS* 4)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(defconstant endpoint_msgs::SeatSensorStatusType::*RESERVED1* 5)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::SEATSENSORSTATUSTYPE"))
(defconstant endpoint_msgs::SeatSensorStatusType::*RESERVED2* 6)

(defun endpoint_msgs::SeatSensorStatusType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SeatSensorStatusType::*DRIVER_SEAT_STATUS*)
        ((= const 1) 'endpoint_msgs::SeatSensorStatusType::*PASSENGER_SEAT_STATUS*)
        ((= const 2) 'endpoint_msgs::SeatSensorStatusType::*SECOND_LEFT_SEAT_STATUS*)
        ((= const 3) 'endpoint_msgs::SeatSensorStatusType::*SECOND_MID_SEAT_STATUS*)
        ((= const 4) 'endpoint_msgs::SeatSensorStatusType::*SECOND_RIGHT_SEAT_STATUS*)
        ((= const 5) 'endpoint_msgs::SeatSensorStatusType::*RESERVED1*)
        ((= const 6) 'endpoint_msgs::SeatSensorStatusType::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::SeatSensorStatusType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SeatSensorStatusType
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

(setf (get endpoint_msgs::SeatSensorStatusType :md5sum-) "2cc387be9db3d79e8b437ada1b551465")
(setf (get endpoint_msgs::SeatSensorStatusType :datatype-) "endpoint_msgs/SeatSensorStatusType")
(setf (get endpoint_msgs::SeatSensorStatusType :definition-)
      "uint8 DRIVER_SEAT_STATUS = 0
uint8 PASSENGER_SEAT_STATUS = 1
uint8 SECOND_LEFT_SEAT_STATUS = 2
uint8 SECOND_MID_SEAT_STATUS = 3
uint8 SECOND_RIGHT_SEAT_STATUS = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 value

")



(provide :endpoint_msgs/SeatSensorStatusType "2cc387be9db3d79e8b437ada1b551465")


