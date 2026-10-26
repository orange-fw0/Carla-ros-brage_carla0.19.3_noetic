;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SteeringType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SteeringType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::STEERINGTYPE")
  (make-package "ENDPOINT_MSGS::STEERINGTYPE"))

(in-package "ROS")
;;//! \htmlinclude SteeringType.msg.html


(intern "*STEERING_ANGLE*" (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(shadow '*STEERING_ANGLE* (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(defconstant endpoint_msgs::SteeringType::*STEERING_ANGLE* 1)
(intern "*FRONT_WHEEL_ANGLE*" (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(shadow '*FRONT_WHEEL_ANGLE* (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(defconstant endpoint_msgs::SteeringType::*FRONT_WHEEL_ANGLE* 2)
(intern "*YAW_RATE*" (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(shadow '*YAW_RATE* (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(defconstant endpoint_msgs::SteeringType::*YAW_RATE* 3)
(intern "*TORQUE*" (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(shadow '*TORQUE* (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(defconstant endpoint_msgs::SteeringType::*TORQUE* 4)
(intern "*ANGLE_SPEED*" (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(shadow '*ANGLE_SPEED* (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(defconstant endpoint_msgs::SteeringType::*ANGLE_SPEED* 5)
(intern "*CURVATURE*" (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(shadow '*CURVATURE* (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(defconstant endpoint_msgs::SteeringType::*CURVATURE* 6)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::STEERINGTYPE"))
(defconstant endpoint_msgs::SteeringType::*RESERVED* 7)

(defun endpoint_msgs::SteeringType-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::SteeringType::*STEERING_ANGLE*)
        ((= const 2) 'endpoint_msgs::SteeringType::*FRONT_WHEEL_ANGLE*)
        ((= const 3) 'endpoint_msgs::SteeringType::*YAW_RATE*)
        ((= const 4) 'endpoint_msgs::SteeringType::*TORQUE*)
        ((= const 5) 'endpoint_msgs::SteeringType::*ANGLE_SPEED*)
        ((= const 6) 'endpoint_msgs::SteeringType::*CURVATURE*)
        ((= const 7) 'endpoint_msgs::SteeringType::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::SteeringType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SteeringType
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

(setf (get endpoint_msgs::SteeringType :md5sum-) "0a4ab8136cd161b7c04c8a63ebc496ea")
(setf (get endpoint_msgs::SteeringType :datatype-) "endpoint_msgs/SteeringType")
(setf (get endpoint_msgs::SteeringType :definition-)
      "uint8 STEERING_ANGLE = 1
uint8 FRONT_WHEEL_ANGLE = 2
uint8 YAW_RATE = 3
uint8 TORQUE = 4
uint8 ANGLE_SPEED = 5
uint8 CURVATURE = 6
uint8 RESERVED = 7
uint8 value

")



(provide :endpoint_msgs/SteeringType "0a4ab8136cd161b7c04c8a63ebc496ea")


