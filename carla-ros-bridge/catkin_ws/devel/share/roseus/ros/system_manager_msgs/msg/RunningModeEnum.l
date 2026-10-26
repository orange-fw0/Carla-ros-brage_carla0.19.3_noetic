;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::RunningModeEnum)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'RunningModeEnum (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM")
  (make-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))

(in-package "ROS")
;;//! \htmlinclude RunningModeEnum.msg.html


(intern "*PILOT*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*PILOT* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*PILOT* 0)
(intern "*PARKING*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*PARKING* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*PARKING* 1)
(intern "*MANUAL_DRIVING*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*MANUAL_DRIVING* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*MANUAL_DRIVING* 2)
(intern "*PRODUCTION_LINE*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*PRODUCTION_LINE* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*PRODUCTION_LINE* 3)
(intern "*MEB*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*MEB* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*MEB* 4)
(intern "*RADS*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*RADS* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*RADS* 5)
(intern "*PILOT_WITH_PSD*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*PILOT_WITH_PSD* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*PILOT_WITH_PSD* 6)
(intern "*SENTRY_MODE*" (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(shadow '*SENTRY_MODE* (find-package "SYSTEM_MANAGER_MSGS::RUNNINGMODEENUM"))
(defconstant system_manager_msgs::RunningModeEnum::*SENTRY_MODE* 7)

(defun system_manager_msgs::RunningModeEnum-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::RunningModeEnum::*PILOT*)
        ((= const 1) 'system_manager_msgs::RunningModeEnum::*PARKING*)
        ((= const 2) 'system_manager_msgs::RunningModeEnum::*MANUAL_DRIVING*)
        ((= const 3) 'system_manager_msgs::RunningModeEnum::*PRODUCTION_LINE*)
        ((= const 4) 'system_manager_msgs::RunningModeEnum::*MEB*)
        ((= const 5) 'system_manager_msgs::RunningModeEnum::*RADS*)
        ((= const 6) 'system_manager_msgs::RunningModeEnum::*PILOT_WITH_PSD*)
        ((= const 7) 'system_manager_msgs::RunningModeEnum::*SENTRY_MODE*)
        (t nil)))

(defclass system_manager_msgs::RunningModeEnum
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::RunningModeEnum
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

(setf (get system_manager_msgs::RunningModeEnum :md5sum-) "7c1a9e57c3ee71324973934d7b06dd89")
(setf (get system_manager_msgs::RunningModeEnum :datatype-) "system_manager_msgs/RunningModeEnum")
(setf (get system_manager_msgs::RunningModeEnum :definition-)
      "uint8 PILOT = 0
uint8 PARKING = 1
uint8 MANUAL_DRIVING = 2
uint8 PRODUCTION_LINE = 3
uint8 MEB = 4
uint8 RADS = 5
uint8 PILOT_WITH_PSD = 6
uint8 SENTRY_MODE = 7
uint8 value

")



(provide :system_manager_msgs/RunningModeEnum "7c1a9e57c3ee71324973934d7b06dd89")


