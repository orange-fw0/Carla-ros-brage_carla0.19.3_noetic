;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::BordertType)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'BordertType (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE")
  (make-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))

(in-package "ROS")
;;//! \htmlinclude BordertType.msg.html


(intern "*HAT_USLOT_NON_CURB*" (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(shadow '*HAT_USLOT_NON_CURB* (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(defconstant sensor_interface_msgs::BordertType::*HAT_USLOT_NON_CURB* 0)
(intern "*HAT_USLOT_EXIST_CURB*" (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(shadow '*HAT_USLOT_EXIST_CURB* (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(defconstant sensor_interface_msgs::BordertType::*HAT_USLOT_EXIST_CURB* 1)
(intern "*UNKNOWN*" (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(shadow '*UNKNOWN* (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(defconstant sensor_interface_msgs::BordertType::*UNKNOWN* 2)
(intern "*RESERVED_INFO*" (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(shadow '*RESERVED_INFO* (find-package "SENSOR_INTERFACE_MSGS::BORDERTTYPE"))
(defconstant sensor_interface_msgs::BordertType::*RESERVED_INFO* 3)

(defun sensor_interface_msgs::BordertType-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::BordertType::*HAT_USLOT_NON_CURB*)
        ((= const 1) 'sensor_interface_msgs::BordertType::*HAT_USLOT_EXIST_CURB*)
        ((= const 2) 'sensor_interface_msgs::BordertType::*UNKNOWN*)
        ((= const 3) 'sensor_interface_msgs::BordertType::*RESERVED_INFO*)
        (t nil)))

(defclass sensor_interface_msgs::BordertType
  :super ros::object
  :slots (_value ))

(defmethod sensor_interface_msgs::BordertType
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

(setf (get sensor_interface_msgs::BordertType :md5sum-) "3b3a8229b9b88d09a102f7462fc15d87")
(setf (get sensor_interface_msgs::BordertType :datatype-) "sensor_interface_msgs/BordertType")
(setf (get sensor_interface_msgs::BordertType :definition-)
      "uint8 HAT_USLOT_NON_CURB = 0
uint8 HAT_USLOT_EXIST_CURB = 1
uint8 UNKNOWN = 2
uint8 RESERVED_INFO = 3
uint8 value

")



(provide :sensor_interface_msgs/BordertType "3b3a8229b9b88d09a102f7462fc15d87")


