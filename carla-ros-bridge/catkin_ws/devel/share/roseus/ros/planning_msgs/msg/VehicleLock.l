;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::VehicleLock)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'VehicleLock (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::VEHICLELOCK")
  (make-package "PLANNING_MSGS::VEHICLELOCK"))

(in-package "ROS")
;;//! \htmlinclude VehicleLock.msg.html


(intern "*NONE*" (find-package "PLANNING_MSGS::VEHICLELOCK"))
(shadow '*NONE* (find-package "PLANNING_MSGS::VEHICLELOCK"))
(defconstant planning_msgs::VehicleLock::*NONE* 0)
(intern "*UNLOCK*" (find-package "PLANNING_MSGS::VEHICLELOCK"))
(shadow '*UNLOCK* (find-package "PLANNING_MSGS::VEHICLELOCK"))
(defconstant planning_msgs::VehicleLock::*UNLOCK* 1)
(intern "*LOCK*" (find-package "PLANNING_MSGS::VEHICLELOCK"))
(shadow '*LOCK* (find-package "PLANNING_MSGS::VEHICLELOCK"))
(defconstant planning_msgs::VehicleLock::*LOCK* 2)

(defun planning_msgs::VehicleLock-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::VehicleLock::*NONE*)
        ((= const 1) 'planning_msgs::VehicleLock::*UNLOCK*)
        ((= const 2) 'planning_msgs::VehicleLock::*LOCK*)
        (t nil)))

(defclass planning_msgs::VehicleLock
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::VehicleLock
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

(setf (get planning_msgs::VehicleLock :md5sum-) "180c65ece6169aaf9e77a22ae1e42eed")
(setf (get planning_msgs::VehicleLock :datatype-) "planning_msgs/VehicleLock")
(setf (get planning_msgs::VehicleLock :definition-)
      "uint8 NONE = 0
uint8 UNLOCK = 1
uint8 LOCK = 2
uint8 value

")



(provide :planning_msgs/VehicleLock "180c65ece6169aaf9e77a22ae1e42eed")


