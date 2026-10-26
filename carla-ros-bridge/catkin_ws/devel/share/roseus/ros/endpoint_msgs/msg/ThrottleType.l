;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ThrottleType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ThrottleType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::THROTTLETYPE")
  (make-package "ENDPOINT_MSGS::THROTTLETYPE"))

(in-package "ROS")
;;//! \htmlinclude ThrottleType.msg.html


(intern "*PEDAL*" (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(shadow '*PEDAL* (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(defconstant endpoint_msgs::ThrottleType::*PEDAL* 0)
(intern "*THROTTLE*" (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(shadow '*THROTTLE* (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(defconstant endpoint_msgs::ThrottleType::*THROTTLE* 1)
(intern "*TORQUE*" (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(shadow '*TORQUE* (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(defconstant endpoint_msgs::ThrottleType::*TORQUE* 2)
(intern "*ACCELERATION*" (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(shadow '*ACCELERATION* (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(defconstant endpoint_msgs::ThrottleType::*ACCELERATION* 3)
(intern "*SPEED*" (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(shadow '*SPEED* (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(defconstant endpoint_msgs::ThrottleType::*SPEED* 4)
(intern "*SV*" (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(shadow '*SV* (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(defconstant endpoint_msgs::ThrottleType::*SV* 5)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::THROTTLETYPE"))
(defconstant endpoint_msgs::ThrottleType::*RESERVED* 6)

(defun endpoint_msgs::ThrottleType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::ThrottleType::*PEDAL*)
        ((= const 1) 'endpoint_msgs::ThrottleType::*THROTTLE*)
        ((= const 2) 'endpoint_msgs::ThrottleType::*TORQUE*)
        ((= const 3) 'endpoint_msgs::ThrottleType::*ACCELERATION*)
        ((= const 4) 'endpoint_msgs::ThrottleType::*SPEED*)
        ((= const 5) 'endpoint_msgs::ThrottleType::*SV*)
        ((= const 6) 'endpoint_msgs::ThrottleType::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::ThrottleType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::ThrottleType
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

(setf (get endpoint_msgs::ThrottleType :md5sum-) "671fb259055b9ce75cee3d6d2161d44e")
(setf (get endpoint_msgs::ThrottleType :datatype-) "endpoint_msgs/ThrottleType")
(setf (get endpoint_msgs::ThrottleType :definition-)
      "uint8 PEDAL = 0
uint8 THROTTLE = 1
uint8 TORQUE = 2
uint8 ACCELERATION = 3
uint8 SPEED = 4
uint8 SV = 5
uint8 RESERVED = 6
uint8 value

")



(provide :endpoint_msgs/ThrottleType "671fb259055b9ce75cee3d6d2161d44e")


