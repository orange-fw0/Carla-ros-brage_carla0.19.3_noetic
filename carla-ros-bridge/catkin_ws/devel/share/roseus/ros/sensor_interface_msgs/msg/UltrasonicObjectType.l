;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicObjectType)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicObjectType (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicObjectType.msg.html


(intern "*NONE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(shadow '*NONE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectType::*NONE* 0)
(intern "*POINT*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(shadow '*POINT* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectType::*POINT* 1)
(intern "*STRAIGHT_LINE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(shadow '*STRAIGHT_LINE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectType::*STRAIGHT_LINE* 2)
(intern "*RAYS*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(shadow '*RAYS* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectType::*RAYS* 3)
(intern "*LINE_SEGMENT*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(shadow '*LINE_SEGMENT* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectType::*LINE_SEGMENT* 5)
(intern "*SNA*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(shadow '*SNA* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectType::*SNA* 7)
(intern "*RESERVED_INFO*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(shadow '*RESERVED_INFO* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBJECTTYPE"))
(defconstant sensor_interface_msgs::UltrasonicObjectType::*RESERVED_INFO* 8)

(defun sensor_interface_msgs::UltrasonicObjectType-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::UltrasonicObjectType::*NONE*)
        ((= const 1) 'sensor_interface_msgs::UltrasonicObjectType::*POINT*)
        ((= const 2) 'sensor_interface_msgs::UltrasonicObjectType::*STRAIGHT_LINE*)
        ((= const 3) 'sensor_interface_msgs::UltrasonicObjectType::*RAYS*)
        ((= const 5) 'sensor_interface_msgs::UltrasonicObjectType::*LINE_SEGMENT*)
        ((= const 7) 'sensor_interface_msgs::UltrasonicObjectType::*SNA*)
        ((= const 8) 'sensor_interface_msgs::UltrasonicObjectType::*RESERVED_INFO*)
        (t nil)))

(defclass sensor_interface_msgs::UltrasonicObjectType
  :super ros::object
  :slots (_value ))

(defmethod sensor_interface_msgs::UltrasonicObjectType
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

(setf (get sensor_interface_msgs::UltrasonicObjectType :md5sum-) "4103fd470a08ca292cf1bccf6b0ac127")
(setf (get sensor_interface_msgs::UltrasonicObjectType :datatype-) "sensor_interface_msgs/UltrasonicObjectType")
(setf (get sensor_interface_msgs::UltrasonicObjectType :definition-)
      "uint8 NONE = 0
uint8 POINT = 1
uint8 STRAIGHT_LINE = 2
uint8 RAYS = 3
uint8 LINE_SEGMENT = 5
uint8 SNA = 7
uint8 RESERVED_INFO = 8
uint8 value

")



(provide :sensor_interface_msgs/UltrasonicObjectType "4103fd470a08ca292cf1bccf6b0ac127")


