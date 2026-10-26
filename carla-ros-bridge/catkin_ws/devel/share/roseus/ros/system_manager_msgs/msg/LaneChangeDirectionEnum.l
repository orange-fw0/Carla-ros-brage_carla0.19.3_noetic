;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LaneChangeDirectionEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LaneChangeDirectionEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LANECHANGEDIRECTIONENUM")
  (make-package "SYSTEM_MANAGER_MSGS::LANECHANGEDIRECTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneChangeDirectionEnum.msg.html


(intern "*LEFT*" (find-package "SYSTEM_MANAGER_MSGS::LANECHANGEDIRECTIONENUM"))
(shadow '*LEFT* (find-package "SYSTEM_MANAGER_MSGS::LANECHANGEDIRECTIONENUM"))
(defconstant system_manager_msgs::LaneChangeDirectionEnum::*LEFT* 0)
(intern "*RIGHT*" (find-package "SYSTEM_MANAGER_MSGS::LANECHANGEDIRECTIONENUM"))
(shadow '*RIGHT* (find-package "SYSTEM_MANAGER_MSGS::LANECHANGEDIRECTIONENUM"))
(defconstant system_manager_msgs::LaneChangeDirectionEnum::*RIGHT* 1)

(defun system_manager_msgs::LaneChangeDirectionEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::LaneChangeDirectionEnum::*LEFT*)
        ((= const 1) 'system_manager_msgs::LaneChangeDirectionEnum::*RIGHT*)
        (t nil)))

(defclass system_manager_msgs::LaneChangeDirectionEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::LaneChangeDirectionEnum
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

(setf (get system_manager_msgs::LaneChangeDirectionEnum :md5sum-) "966a80359d1f3d97369818a3cd885683")
(setf (get system_manager_msgs::LaneChangeDirectionEnum :datatype-) "system_manager_msgs/LaneChangeDirectionEnum")
(setf (get system_manager_msgs::LaneChangeDirectionEnum :definition-)
      "uint8 LEFT = 0
uint8 RIGHT = 1
uint8 value

")



(provide :system_manager_msgs/LaneChangeDirectionEnum "966a80359d1f3d97369818a3cd885683")


