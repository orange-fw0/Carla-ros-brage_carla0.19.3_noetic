;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::StartStopCmdEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'StartStopCmdEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::STARTSTOPCMDENUM")
  (make-package "SYSTEM_MANAGER_MSGS::STARTSTOPCMDENUM"))

(in-package "ROS")
;;//! \htmlinclude StartStopCmdEnum.msg.html


(intern "*START*" (find-package "SYSTEM_MANAGER_MSGS::STARTSTOPCMDENUM"))
(shadow '*START* (find-package "SYSTEM_MANAGER_MSGS::STARTSTOPCMDENUM"))
(defconstant system_manager_msgs::StartStopCmdEnum::*START* 0)
(intern "*STOP*" (find-package "SYSTEM_MANAGER_MSGS::STARTSTOPCMDENUM"))
(shadow '*STOP* (find-package "SYSTEM_MANAGER_MSGS::STARTSTOPCMDENUM"))
(defconstant system_manager_msgs::StartStopCmdEnum::*STOP* 1)

(defun system_manager_msgs::StartStopCmdEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::StartStopCmdEnum::*START*)
        ((= const 1) 'system_manager_msgs::StartStopCmdEnum::*STOP*)
        (t nil)))

(defclass system_manager_msgs::StartStopCmdEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::StartStopCmdEnum
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

(setf (get system_manager_msgs::StartStopCmdEnum :md5sum-) "1b248fd3b822750f44babadbcf0c40bc")
(setf (get system_manager_msgs::StartStopCmdEnum :datatype-) "system_manager_msgs/StartStopCmdEnum")
(setf (get system_manager_msgs::StartStopCmdEnum :definition-)
      "uint8 START = 0
uint8 STOP = 1
uint8 value

")



(provide :system_manager_msgs/StartStopCmdEnum "1b248fd3b822750f44babadbcf0c40bc")


