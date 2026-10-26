;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleCrashStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleCrashStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS")
  (make-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))

(in-package "ROS")
;;//! \htmlinclude VehicleCrashStatus.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(defconstant endpoint_msgs::VehicleCrashStatus::*NONE* 0)
(intern "*NO_CRASH*" (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(shadow '*NO_CRASH* (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(defconstant endpoint_msgs::VehicleCrashStatus::*NO_CRASH* 1)
(intern "*CRASH*" (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(shadow '*CRASH* (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(defconstant endpoint_msgs::VehicleCrashStatus::*CRASH* 2)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::VEHICLECRASHSTATUS"))
(defconstant endpoint_msgs::VehicleCrashStatus::*RESERVED* 3)

(defun endpoint_msgs::VehicleCrashStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::VehicleCrashStatus::*NONE*)
        ((= const 1) 'endpoint_msgs::VehicleCrashStatus::*NO_CRASH*)
        ((= const 2) 'endpoint_msgs::VehicleCrashStatus::*CRASH*)
        ((= const 3) 'endpoint_msgs::VehicleCrashStatus::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::VehicleCrashStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::VehicleCrashStatus
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

(setf (get endpoint_msgs::VehicleCrashStatus :md5sum-) "500436d37e269123e87e714487da889e")
(setf (get endpoint_msgs::VehicleCrashStatus :datatype-) "endpoint_msgs/VehicleCrashStatus")
(setf (get endpoint_msgs::VehicleCrashStatus :definition-)
      "uint8 NONE = 0
uint8 NO_CRASH = 1
uint8 CRASH = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/VehicleCrashStatus "500436d37e269123e87e714487da889e")


