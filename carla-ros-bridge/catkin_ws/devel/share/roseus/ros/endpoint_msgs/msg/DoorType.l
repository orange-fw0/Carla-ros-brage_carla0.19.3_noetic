;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::DoorType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'DoorType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::DOORTYPE")
  (make-package "ENDPOINT_MSGS::DOORTYPE"))

(in-package "ROS")
;;//! \htmlinclude DoorType.msg.html


(intern "*DRIVER*" (find-package "ENDPOINT_MSGS::DOORTYPE"))
(shadow '*DRIVER* (find-package "ENDPOINT_MSGS::DOORTYPE"))
(defconstant endpoint_msgs::DoorType::*DRIVER* 0)
(intern "*PASSENGER*" (find-package "ENDPOINT_MSGS::DOORTYPE"))
(shadow '*PASSENGER* (find-package "ENDPOINT_MSGS::DOORTYPE"))
(defconstant endpoint_msgs::DoorType::*PASSENGER* 1)
(intern "*REAR_LEFT*" (find-package "ENDPOINT_MSGS::DOORTYPE"))
(shadow '*REAR_LEFT* (find-package "ENDPOINT_MSGS::DOORTYPE"))
(defconstant endpoint_msgs::DoorType::*REAR_LEFT* 2)
(intern "*REAR_RIGHT*" (find-package "ENDPOINT_MSGS::DOORTYPE"))
(shadow '*REAR_RIGHT* (find-package "ENDPOINT_MSGS::DOORTYPE"))
(defconstant endpoint_msgs::DoorType::*REAR_RIGHT* 3)
(intern "*HOOD*" (find-package "ENDPOINT_MSGS::DOORTYPE"))
(shadow '*HOOD* (find-package "ENDPOINT_MSGS::DOORTYPE"))
(defconstant endpoint_msgs::DoorType::*HOOD* 4)
(intern "*TRUNK*" (find-package "ENDPOINT_MSGS::DOORTYPE"))
(shadow '*TRUNK* (find-package "ENDPOINT_MSGS::DOORTYPE"))
(defconstant endpoint_msgs::DoorType::*TRUNK* 5)

(defun endpoint_msgs::DoorType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::DoorType::*DRIVER*)
        ((= const 1) 'endpoint_msgs::DoorType::*PASSENGER*)
        ((= const 2) 'endpoint_msgs::DoorType::*REAR_LEFT*)
        ((= const 3) 'endpoint_msgs::DoorType::*REAR_RIGHT*)
        ((= const 4) 'endpoint_msgs::DoorType::*HOOD*)
        ((= const 5) 'endpoint_msgs::DoorType::*TRUNK*)
        (t nil)))

(defclass endpoint_msgs::DoorType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::DoorType
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

(setf (get endpoint_msgs::DoorType :md5sum-) "8c8a316f2e72cae94a5819e82b60b63f")
(setf (get endpoint_msgs::DoorType :datatype-) "endpoint_msgs/DoorType")
(setf (get endpoint_msgs::DoorType :definition-)
      "uint8 DRIVER = 0
uint8 PASSENGER = 1
uint8 REAR_LEFT = 2
uint8 REAR_RIGHT = 3
uint8 HOOD = 4
uint8 TRUNK = 5
uint8 value

")



(provide :endpoint_msgs/DoorType "8c8a316f2e72cae94a5819e82b60b63f")


