;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebSysStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebSysStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBSYSSTATUS")
  (make-package "ENDPOINT_MSGS::AEBSYSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AebSysStatus.msg.html


(intern "*OFF*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*OFF* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*OFF* 0)
(intern "*STANDBY*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*STANDBY* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*STANDBY* 1)
(intern "*DISABLE*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*DISABLE* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*DISABLE* 2)
(intern "*OVERRIDE*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*OVERRIDE* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*OVERRIDE* 3)
(intern "*ACTIVED*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*ACTIVED* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*ACTIVED* 4)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*RESERVED1* 5)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*RESERVED2* 6)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::AEBSYSSTATUS"))
(defconstant endpoint_msgs::AebSysStatus::*RESERVED3* 7)

(defun endpoint_msgs::AebSysStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebSysStatus::*OFF*)
        ((= const 1) 'endpoint_msgs::AebSysStatus::*STANDBY*)
        ((= const 2) 'endpoint_msgs::AebSysStatus::*DISABLE*)
        ((= const 3) 'endpoint_msgs::AebSysStatus::*OVERRIDE*)
        ((= const 4) 'endpoint_msgs::AebSysStatus::*ACTIVED*)
        ((= const 5) 'endpoint_msgs::AebSysStatus::*RESERVED1*)
        ((= const 6) 'endpoint_msgs::AebSysStatus::*RESERVED2*)
        ((= const 7) 'endpoint_msgs::AebSysStatus::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::AebSysStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebSysStatus
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

(setf (get endpoint_msgs::AebSysStatus :md5sum-) "95ccefc16af692ba0ffc1cbf1ad938d0")
(setf (get endpoint_msgs::AebSysStatus :datatype-) "endpoint_msgs/AebSysStatus")
(setf (get endpoint_msgs::AebSysStatus :definition-)
      "uint8 OFF = 0
uint8 STANDBY = 1
uint8 DISABLE = 2
uint8 OVERRIDE = 3
uint8 ACTIVED = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 RESERVED3 = 7
uint8 value

")



(provide :endpoint_msgs/AebSysStatus "95ccefc16af692ba0ffc1cbf1ad938d0")


