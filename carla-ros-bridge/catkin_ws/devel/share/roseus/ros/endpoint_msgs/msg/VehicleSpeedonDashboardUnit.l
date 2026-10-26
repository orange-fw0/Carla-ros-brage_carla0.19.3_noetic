;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleSpeedonDashboardUnit)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleSpeedonDashboardUnit (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT")
  (make-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))

(in-package "ROS")
;;//! \htmlinclude VehicleSpeedonDashboardUnit.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(defconstant endpoint_msgs::VehicleSpeedonDashboardUnit::*NONE* 0)
(intern "*KMH*" (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(shadow '*KMH* (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(defconstant endpoint_msgs::VehicleSpeedonDashboardUnit::*KMH* 1)
(intern "*MILEH*" (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(shadow '*MILEH* (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(defconstant endpoint_msgs::VehicleSpeedonDashboardUnit::*MILEH* 2)
(intern "*UNKNOWN*" (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(shadow '*UNKNOWN* (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(defconstant endpoint_msgs::VehicleSpeedonDashboardUnit::*UNKNOWN* 3)
(intern "*RESVERD*" (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(shadow '*RESVERD* (find-package "ENDPOINT_MSGS::VEHICLESPEEDONDASHBOARDUNIT"))
(defconstant endpoint_msgs::VehicleSpeedonDashboardUnit::*RESVERD* 4)

(defun endpoint_msgs::VehicleSpeedonDashboardUnit-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::VehicleSpeedonDashboardUnit::*NONE*)
        ((= const 1) 'endpoint_msgs::VehicleSpeedonDashboardUnit::*KMH*)
        ((= const 2) 'endpoint_msgs::VehicleSpeedonDashboardUnit::*MILEH*)
        ((= const 3) 'endpoint_msgs::VehicleSpeedonDashboardUnit::*UNKNOWN*)
        ((= const 4) 'endpoint_msgs::VehicleSpeedonDashboardUnit::*RESVERD*)
        (t nil)))

(defclass endpoint_msgs::VehicleSpeedonDashboardUnit
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::VehicleSpeedonDashboardUnit
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

(setf (get endpoint_msgs::VehicleSpeedonDashboardUnit :md5sum-) "82e0f23dafa0f4cc70dd98e01aa40014")
(setf (get endpoint_msgs::VehicleSpeedonDashboardUnit :datatype-) "endpoint_msgs/VehicleSpeedonDashboardUnit")
(setf (get endpoint_msgs::VehicleSpeedonDashboardUnit :definition-)
      "uint8 NONE = 0
uint8 KMH = 1
uint8 MILEH = 2
uint8 UNKNOWN = 3
uint8 RESVERD = 4
uint8 value

")



(provide :endpoint_msgs/VehicleSpeedonDashboardUnit "82e0f23dafa0f4cc70dd98e01aa40014")


