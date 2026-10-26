;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LaneChangeStyleEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LaneChangeStyleEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneChangeStyleEnum.msg.html


(intern "*AGGRESIVE*" (find-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM"))
(shadow '*AGGRESIVE* (find-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM"))
(defconstant system_manager_msgs::LaneChangeStyleEnum::*AGGRESIVE* 0)
(intern "*NORMAL*" (find-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM"))
(shadow '*NORMAL* (find-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM"))
(defconstant system_manager_msgs::LaneChangeStyleEnum::*NORMAL* 1)
(intern "*CONSERVATIVE*" (find-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM"))
(shadow '*CONSERVATIVE* (find-package "SYSTEM_MANAGER_MSGS::LANECHANGESTYLEENUM"))
(defconstant system_manager_msgs::LaneChangeStyleEnum::*CONSERVATIVE* 2)

(defun system_manager_msgs::LaneChangeStyleEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::LaneChangeStyleEnum::*AGGRESIVE*)
        ((= const 1) 'system_manager_msgs::LaneChangeStyleEnum::*NORMAL*)
        ((= const 2) 'system_manager_msgs::LaneChangeStyleEnum::*CONSERVATIVE*)
        (t nil)))

(defclass system_manager_msgs::LaneChangeStyleEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::LaneChangeStyleEnum
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

(setf (get system_manager_msgs::LaneChangeStyleEnum :md5sum-) "db269ba7ec5c332ad7424f9302256ce3")
(setf (get system_manager_msgs::LaneChangeStyleEnum :datatype-) "system_manager_msgs/LaneChangeStyleEnum")
(setf (get system_manager_msgs::LaneChangeStyleEnum :definition-)
      "uint8 AGGRESIVE = 0
uint8 NORMAL = 1
uint8 CONSERVATIVE = 2
uint8 value

")



(provide :system_manager_msgs/LaneChangeStyleEnum "db269ba7ec5c332ad7424f9302256ce3")


