;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKETYPE")
  (make-package "ENDPOINT_MSGS::BRAKETYPE"))

(in-package "ROS")
;;//! \htmlinclude BrakeType.msg.html


(intern "*PEDAL*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*PEDAL* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*PEDAL* 1)
(intern "*DECELERATION*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*DECELERATION* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*DECELERATION* 2)
(intern "*MASTER_CYLINDERPRESSURE*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*MASTER_CYLINDERPRESSURE* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*MASTER_CYLINDERPRESSURE* 3)
(intern "*WHEEL_CYLINDERPRESSURE*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*WHEEL_CYLINDERPRESSURE* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*WHEEL_CYLINDERPRESSURE* 4)
(intern "*TORQUE*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*TORQUE* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*TORQUE* 5)
(intern "*DISTANCE*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*DISTANCE* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*DISTANCE* 6)
(intern "*SV*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*SV* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*SV* 7)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::BRAKETYPE"))
(defconstant endpoint_msgs::BrakeType::*RESERVED* 8)

(defun endpoint_msgs::BrakeType-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::BrakeType::*PEDAL*)
        ((= const 2) 'endpoint_msgs::BrakeType::*DECELERATION*)
        ((= const 3) 'endpoint_msgs::BrakeType::*MASTER_CYLINDERPRESSURE*)
        ((= const 4) 'endpoint_msgs::BrakeType::*WHEEL_CYLINDERPRESSURE*)
        ((= const 5) 'endpoint_msgs::BrakeType::*TORQUE*)
        ((= const 6) 'endpoint_msgs::BrakeType::*DISTANCE*)
        ((= const 7) 'endpoint_msgs::BrakeType::*SV*)
        ((= const 8) 'endpoint_msgs::BrakeType::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::BrakeType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::BrakeType
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

(setf (get endpoint_msgs::BrakeType :md5sum-) "f28dd2b585be0912b92f7f99c77a99c8")
(setf (get endpoint_msgs::BrakeType :datatype-) "endpoint_msgs/BrakeType")
(setf (get endpoint_msgs::BrakeType :definition-)
      "uint8 PEDAL = 1
uint8 DECELERATION = 2
uint8 MASTER_CYLINDERPRESSURE = 3
uint8 WHEEL_CYLINDERPRESSURE = 4
uint8 TORQUE = 5
uint8 DISTANCE = 6
uint8 SV = 7
uint8 RESERVED = 8
uint8 value

")



(provide :endpoint_msgs/BrakeType "f28dd2b585be0912b92f7f99c77a99c8")


