;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::DrivingStyleEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'DrivingStyleEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM"))

(in-package "ROS")
;;//! \htmlinclude DrivingStyleEnum.msg.html


(intern "*AGGRESIVE*" (find-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM"))
(shadow '*AGGRESIVE* (find-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM"))
(defconstant system_manager_msgs::DrivingStyleEnum::*AGGRESIVE* 0)
(intern "*NORMAL*" (find-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM"))
(shadow '*NORMAL* (find-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM"))
(defconstant system_manager_msgs::DrivingStyleEnum::*NORMAL* 1)
(intern "*CONSERVATIVE*" (find-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM"))
(shadow '*CONSERVATIVE* (find-package "SYSTEM_MANAGER_MSGS::DRIVINGSTYLEENUM"))
(defconstant system_manager_msgs::DrivingStyleEnum::*CONSERVATIVE* 2)

(defun system_manager_msgs::DrivingStyleEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::DrivingStyleEnum::*AGGRESIVE*)
        ((= const 1) 'system_manager_msgs::DrivingStyleEnum::*NORMAL*)
        ((= const 2) 'system_manager_msgs::DrivingStyleEnum::*CONSERVATIVE*)
        (t nil)))

(defclass system_manager_msgs::DrivingStyleEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::DrivingStyleEnum
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

(setf (get system_manager_msgs::DrivingStyleEnum :md5sum-) "db269ba7ec5c332ad7424f9302256ce3")
(setf (get system_manager_msgs::DrivingStyleEnum :datatype-) "system_manager_msgs/DrivingStyleEnum")
(setf (get system_manager_msgs::DrivingStyleEnum :definition-)
      "uint8 AGGRESIVE = 0
uint8 NORMAL = 1
uint8 CONSERVATIVE = 2
uint8 value

")



(provide :system_manager_msgs/DrivingStyleEnum "db269ba7ec5c332ad7424f9302256ce3")


