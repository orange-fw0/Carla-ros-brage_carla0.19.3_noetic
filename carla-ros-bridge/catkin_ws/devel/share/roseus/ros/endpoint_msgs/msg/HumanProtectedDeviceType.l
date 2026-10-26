;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HumanProtectedDeviceType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HumanProtectedDeviceType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE")
  (make-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))

(in-package "ROS")
;;//! \htmlinclude HumanProtectedDeviceType.msg.html


(intern "*DRIVER_SEATBELT*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*DRIVER_SEATBELT* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*DRIVER_SEATBELT* 0)
(intern "*PASSENGER_SEATBELT*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*PASSENGER_SEATBELT* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*PASSENGER_SEATBELT* 1)
(intern "*PASSENGER_DETECT*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*PASSENGER_DETECT* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*PASSENGER_DETECT* 2)
(intern "*PASSENGER_AIRBAG*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*PASSENGER_AIRBAG* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*PASSENGER_AIRBAG* 3)
(intern "*SECOND_LEFT_BELT*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*SECOND_LEFT_BELT* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*SECOND_LEFT_BELT* 4)
(intern "*SECOND_MID_BELT*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*SECOND_MID_BELT* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*SECOND_MID_BELT* 5)
(intern "*SECOND_RIGHT_BELT*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*SECOND_RIGHT_BELT* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*SECOND_RIGHT_BELT* 6)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*RESERVED1* 7)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICETYPE"))
(defconstant endpoint_msgs::HumanProtectedDeviceType::*RESERVED2* 8)

(defun endpoint_msgs::HumanProtectedDeviceType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::HumanProtectedDeviceType::*DRIVER_SEATBELT*)
        ((= const 1) 'endpoint_msgs::HumanProtectedDeviceType::*PASSENGER_SEATBELT*)
        ((= const 2) 'endpoint_msgs::HumanProtectedDeviceType::*PASSENGER_DETECT*)
        ((= const 3) 'endpoint_msgs::HumanProtectedDeviceType::*PASSENGER_AIRBAG*)
        ((= const 4) 'endpoint_msgs::HumanProtectedDeviceType::*SECOND_LEFT_BELT*)
        ((= const 5) 'endpoint_msgs::HumanProtectedDeviceType::*SECOND_MID_BELT*)
        ((= const 6) 'endpoint_msgs::HumanProtectedDeviceType::*SECOND_RIGHT_BELT*)
        ((= const 7) 'endpoint_msgs::HumanProtectedDeviceType::*RESERVED1*)
        ((= const 8) 'endpoint_msgs::HumanProtectedDeviceType::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::HumanProtectedDeviceType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::HumanProtectedDeviceType
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

(setf (get endpoint_msgs::HumanProtectedDeviceType :md5sum-) "f86a8be5ee82122d8d4bf0bfca43b3a5")
(setf (get endpoint_msgs::HumanProtectedDeviceType :datatype-) "endpoint_msgs/HumanProtectedDeviceType")
(setf (get endpoint_msgs::HumanProtectedDeviceType :definition-)
      "uint8 DRIVER_SEATBELT = 0
uint8 PASSENGER_SEATBELT = 1
uint8 PASSENGER_DETECT = 2
uint8 PASSENGER_AIRBAG = 3
uint8 SECOND_LEFT_BELT = 4
uint8 SECOND_MID_BELT = 5
uint8 SECOND_RIGHT_BELT = 6
uint8 RESERVED1 = 7
uint8 RESERVED2 = 8
uint8 value

")



(provide :endpoint_msgs/HumanProtectedDeviceType "f86a8be5ee82122d8d4bf0bfca43b3a5")


