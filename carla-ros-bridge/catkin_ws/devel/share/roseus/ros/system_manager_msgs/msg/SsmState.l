;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SsmState)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SsmState (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE")
  (make-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))

(in-package "ROS")
;;//! \htmlinclude SsmState.msg.html


(intern "*NONE*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*NONE* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*NONE* 255)
(intern "*INIT*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*INIT* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*INIT* 0)
(intern "*SHUTDOWN*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*SHUTDOWN* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*SHUTDOWN* 1)
(intern "*MANUAL*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*MANUAL* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*MANUAL* 2)
(intern "*AD*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*AD* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*AD* 3)
(intern "*SENTINEL*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*SENTINEL* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*SENTINEL* 4)
(intern "*PLCA*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*PLCA* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*PLCA* 5)
(intern "*SLCA*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*SLCA* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*SLCA* 6)
(intern "*NORMAL*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*NORMAL* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*NORMAL* 2)
(intern "*CALIB_PLAC_CAMERA*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*CALIB_PLAC_CAMERA* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*CALIB_PLAC_CAMERA* 9)
(intern "*CALIB_PLAC_LIDAR*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*CALIB_PLAC_LIDAR* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*CALIB_PLAC_LIDAR* 10)
(intern "*CALIB_ACE_CAMERA*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*CALIB_ACE_CAMERA* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*CALIB_ACE_CAMERA* 11)
(intern "*CALIB_ACE_LIDAR*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(shadow '*CALIB_ACE_LIDAR* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATE"))
(defconstant system_manager_msgs::SsmState::*CALIB_ACE_LIDAR* 12)

(defun system_manager_msgs::SsmState-to-symbol (const)
  (cond
        ((= const 255) 'system_manager_msgs::SsmState::*NONE*)
        ((= const 0) 'system_manager_msgs::SsmState::*INIT*)
        ((= const 1) 'system_manager_msgs::SsmState::*SHUTDOWN*)
        ((= const 2) 'system_manager_msgs::SsmState::*MANUAL*)
        ((= const 3) 'system_manager_msgs::SsmState::*AD*)
        ((= const 4) 'system_manager_msgs::SsmState::*SENTINEL*)
        ((= const 5) 'system_manager_msgs::SsmState::*PLCA*)
        ((= const 6) 'system_manager_msgs::SsmState::*SLCA*)
        ((= const 2) 'system_manager_msgs::SsmState::*NORMAL*)
        ((= const 9) 'system_manager_msgs::SsmState::*CALIB_PLAC_CAMERA*)
        ((= const 10) 'system_manager_msgs::SsmState::*CALIB_PLAC_LIDAR*)
        ((= const 11) 'system_manager_msgs::SsmState::*CALIB_ACE_CAMERA*)
        ((= const 12) 'system_manager_msgs::SsmState::*CALIB_ACE_LIDAR*)
        (t nil)))

(defclass system_manager_msgs::SsmState
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::SsmState
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

(setf (get system_manager_msgs::SsmState :md5sum-) "e38500ff3e78d15e6912178d9b8134a6")
(setf (get system_manager_msgs::SsmState :datatype-) "system_manager_msgs/SsmState")
(setf (get system_manager_msgs::SsmState :definition-)
      "uint8 NONE = 255
uint8 INIT = 0
uint8 SHUTDOWN = 1
uint8 MANUAL = 2
uint8 AD = 3
uint8 SENTINEL = 4
uint8 PLCA = 5
uint8 SLCA = 6
uint8 NORMAL = 2
uint8 CALIB_PLAC_CAMERA = 9
uint8 CALIB_PLAC_LIDAR = 10
uint8 CALIB_ACE_CAMERA = 11
uint8 CALIB_ACE_LIDAR = 12
uint32 value

")



(provide :system_manager_msgs/SsmState "e38500ff3e78d15e6912178d9b8134a6")


