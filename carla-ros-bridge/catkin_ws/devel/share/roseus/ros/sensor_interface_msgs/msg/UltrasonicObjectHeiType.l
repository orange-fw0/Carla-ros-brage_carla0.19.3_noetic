;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicObjectHeiType)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicObjectHeiType (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicObjectHeiType.msg.html


(intern "*LOW*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(shadow '*LOW* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectHeiType::*LOW* 0)
(intern "*HIGH*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(shadow '*HIGH* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectHeiType::*HIGH* 1)
(intern "*TRAVERSIBLE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(shadow '*TRAVERSIBLE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectHeiType::*TRAVERSIBLE* 2)
(intern "*UNKONOWN*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(shadow '*UNKONOWN* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTHEITYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectHeiType::*UNKONOWN* 3)

(defun sensor_interface_msgs::UltrasonicObjectHeiType-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::UltrasonicObjectHeiType::*LOW*)
        ((= const 1) 'sensor_interface_msgs::UltrasonicObjectHeiType::*HIGH*)
        ((= const 2) 'sensor_interface_msgs::UltrasonicObjectHeiType::*TRAVERSIBLE*)
        ((= const 3) 'sensor_interface_msgs::UltrasonicObjectHeiType::*UNKONOWN*)
        (t nil)))

(defclass sensor_interface_msgs::UltrasonicObjectHeiType
  :super ros::object
  :slots (_value ))

(defmethod sensor_interface_msgs::UltrasonicObjectHeiType
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

(setf (get sensor_interface_msgs::UltrasonicObjectHeiType :md5sum-) "a0b483fd3a7560c82524f17a5d7acc5a")
(setf (get sensor_interface_msgs::UltrasonicObjectHeiType :datatype-) "sensor_interface_msgs/UltrasonicObjectHeiType")
(setf (get sensor_interface_msgs::UltrasonicObjectHeiType :definition-)
      "uint8 LOW = 0
uint8 HIGH = 1
uint8 TRAVERSIBLE = 2
uint8 UNKONOWN = 3
uint8 value

")



(provide :sensor_interface_msgs/UltrasonicObjectHeiType "a0b483fd3a7560c82524f17a5d7acc5a")


