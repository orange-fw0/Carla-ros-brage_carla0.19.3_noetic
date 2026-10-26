;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleLockType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleLockType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLELOCKTYPE")
  (make-package "ENDPOINT_MSGS::VEHICLELOCKTYPE"))

(in-package "ROS")
;;//! \htmlinclude VehicleLockType.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::VEHICLELOCKTYPE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::VEHICLELOCKTYPE"))
(defconstant endpoint_msgs::VehicleLockType::*NONE* 0)
(intern "*UNLOCK*" (find-package "ENDPOINT_MSGS::VEHICLELOCKTYPE"))
(shadow '*UNLOCK* (find-package "ENDPOINT_MSGS::VEHICLELOCKTYPE"))
(defconstant endpoint_msgs::VehicleLockType::*UNLOCK* 1)
(intern "*LOCK*" (find-package "ENDPOINT_MSGS::VEHICLELOCKTYPE"))
(shadow '*LOCK* (find-package "ENDPOINT_MSGS::VEHICLELOCKTYPE"))
(defconstant endpoint_msgs::VehicleLockType::*LOCK* 2)

(defun endpoint_msgs::VehicleLockType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::VehicleLockType::*NONE*)
        ((= const 1) 'endpoint_msgs::VehicleLockType::*UNLOCK*)
        ((= const 2) 'endpoint_msgs::VehicleLockType::*LOCK*)
        (t nil)))

(defclass endpoint_msgs::VehicleLockType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::VehicleLockType
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

(setf (get endpoint_msgs::VehicleLockType :md5sum-) "180c65ece6169aaf9e77a22ae1e42eed")
(setf (get endpoint_msgs::VehicleLockType :datatype-) "endpoint_msgs/VehicleLockType")
(setf (get endpoint_msgs::VehicleLockType :definition-)
      "uint8 NONE = 0
uint8 UNLOCK = 1
uint8 LOCK = 2
uint8 value

")



(provide :endpoint_msgs/VehicleLockType "180c65ece6169aaf9e77a22ae1e42eed")


