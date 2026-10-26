;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AutoHoldStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AutoHoldStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS")
  (make-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AutoHoldStatus.msg.html


(intern "*SYS_OFF*" (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(shadow '*SYS_OFF* (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(defconstant endpoint_msgs::AutoHoldStatus::*SYS_OFF* 0)
(intern "*SYS_INTERVENTION*" (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(shadow '*SYS_INTERVENTION* (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(defconstant endpoint_msgs::AutoHoldStatus::*SYS_INTERVENTION* 1)
(intern "*SYS_STANDBY*" (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(shadow '*SYS_STANDBY* (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(defconstant endpoint_msgs::AutoHoldStatus::*SYS_STANDBY* 2)
(intern "*SYS_ERR*" (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(shadow '*SYS_ERR* (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(defconstant endpoint_msgs::AutoHoldStatus::*SYS_ERR* 3)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::AUTOHOLDSTATUS"))
(defconstant endpoint_msgs::AutoHoldStatus::*RESERVED* 4)

(defun endpoint_msgs::AutoHoldStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AutoHoldStatus::*SYS_OFF*)
        ((= const 1) 'endpoint_msgs::AutoHoldStatus::*SYS_INTERVENTION*)
        ((= const 2) 'endpoint_msgs::AutoHoldStatus::*SYS_STANDBY*)
        ((= const 3) 'endpoint_msgs::AutoHoldStatus::*SYS_ERR*)
        ((= const 4) 'endpoint_msgs::AutoHoldStatus::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::AutoHoldStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AutoHoldStatus
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

(setf (get endpoint_msgs::AutoHoldStatus :md5sum-) "674862176ed6c348b3266d05ffb01267")
(setf (get endpoint_msgs::AutoHoldStatus :datatype-) "endpoint_msgs/AutoHoldStatus")
(setf (get endpoint_msgs::AutoHoldStatus :definition-)
      "uint8 SYS_OFF = 0
uint8 SYS_INTERVENTION = 1
uint8 SYS_STANDBY = 2
uint8 SYS_ERR = 3
uint8 RESERVED = 4
uint8 value

")



(provide :endpoint_msgs/AutoHoldStatus "674862176ed6c348b3266d05ffb01267")


