;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingDirectionType)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingDirectionType (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude ParkingDirectionType.msg.html


(intern "*AUTO_SELECT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*AUTO_SELECT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*AUTO_SELECT* 0)
(intern "*PERPENDICULAR_FRONT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PERPENDICULAR_FRONT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_FRONT_OUT* 1)
(intern "*PERPENDICULAR_FRONT_LEFT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PERPENDICULAR_FRONT_LEFT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_FRONT_LEFT_OUT* 2)
(intern "*PERPENDICULAR_FRONT_RIGHT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PERPENDICULAR_FRONT_RIGHT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_FRONT_RIGHT_OUT* 4)
(intern "*PERPENDICULAR_REAR_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PERPENDICULAR_REAR_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_REAR_OUT* 8)
(intern "*PERPENDICULAR_REAR_LEFT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PERPENDICULAR_REAR_LEFT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_REAR_LEFT_OUT* 16)
(intern "*PERPENDICULAR_REAR_RIGHT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PERPENDICULAR_REAR_RIGHT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_REAR_RIGHT_OUT* 32)
(intern "*PARALLEL_LEFT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PARALLEL_LEFT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PARALLEL_LEFT_OUT* 64)
(intern "*PARALLEL_LEFT_FRONT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PARALLEL_LEFT_FRONT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PARALLEL_LEFT_FRONT_OUT* 128)
(intern "*PARALLEL_RIGHT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PARALLEL_RIGHT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PARALLEL_RIGHT_OUT* 256)
(intern "*PARALLEL_RIGHT_FRONT_OUT*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*PARALLEL_RIGHT_FRONT_OUT* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*PARALLEL_RIGHT_FRONT_OUT* 512)
(intern "*FRONT_IN*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*FRONT_IN* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*FRONT_IN* 2001)
(intern "*BACK_IN*" (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(shadow '*BACK_IN* (find-package "SYSTEM_MANAGER_MSGS::PARKINGDIRECTIONTYPE"))
(defconstant system_manager_msgs::ParkingDirectionType::*BACK_IN* 2002)

(defun system_manager_msgs::ParkingDirectionType-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::ParkingDirectionType::*AUTO_SELECT*)
        ((= const 1) 'system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_FRONT_OUT*)
        ((= const 2) 'system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_FRONT_LEFT_OUT*)
        ((= const 4) 'system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_FRONT_RIGHT_OUT*)
        ((= const 8) 'system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_REAR_OUT*)
        ((= const 16) 'system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_REAR_LEFT_OUT*)
        ((= const 32) 'system_manager_msgs::ParkingDirectionType::*PERPENDICULAR_REAR_RIGHT_OUT*)
        ((= const 64) 'system_manager_msgs::ParkingDirectionType::*PARALLEL_LEFT_OUT*)
        ((= const 128) 'system_manager_msgs::ParkingDirectionType::*PARALLEL_LEFT_FRONT_OUT*)
        ((= const 256) 'system_manager_msgs::ParkingDirectionType::*PARALLEL_RIGHT_OUT*)
        ((= const 512) 'system_manager_msgs::ParkingDirectionType::*PARALLEL_RIGHT_FRONT_OUT*)
        ((= const 2001) 'system_manager_msgs::ParkingDirectionType::*FRONT_IN*)
        ((= const 2002) 'system_manager_msgs::ParkingDirectionType::*BACK_IN*)
        (t nil)))

(defclass system_manager_msgs::ParkingDirectionType
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::ParkingDirectionType
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
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_manager_msgs::ParkingDirectionType :md5sum-) "7e366f900d7fe76523fbf538da434f20")
(setf (get system_manager_msgs::ParkingDirectionType :datatype-) "system_manager_msgs/ParkingDirectionType")
(setf (get system_manager_msgs::ParkingDirectionType :definition-)
      "uint32 AUTO_SELECT = 0
uint32 PERPENDICULAR_FRONT_OUT = 1
uint32 PERPENDICULAR_FRONT_LEFT_OUT = 2
uint32 PERPENDICULAR_FRONT_RIGHT_OUT = 4
uint32 PERPENDICULAR_REAR_OUT = 8
uint32 PERPENDICULAR_REAR_LEFT_OUT = 16
uint32 PERPENDICULAR_REAR_RIGHT_OUT = 32
uint32 PARALLEL_LEFT_OUT = 64
uint32 PARALLEL_LEFT_FRONT_OUT = 128
uint32 PARALLEL_RIGHT_OUT = 256
uint32 PARALLEL_RIGHT_FRONT_OUT = 512
uint32 FRONT_IN = 2001
uint32 BACK_IN = 2002
uint32 value

")



(provide :system_manager_msgs/ParkingDirectionType "7e366f900d7fe76523fbf538da434f20")


