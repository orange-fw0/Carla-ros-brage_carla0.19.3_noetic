;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::LdwStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'LdwStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::LDWSTATUS")
  (make-package "ENDPOINT_MSGS::LDWSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LdwStatus.msg.html


(intern "*LDW_STATUS_OFF*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_OFF* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_OFF* 0)
(intern "*LDW_STATUS_STANDBY*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_STANDBY* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_STANDBY* 1)
(intern "*LDW_STATUS_DISABLED*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_DISABLED* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_DISABLED* 2)
(intern "*LDW_STATUS_OVERIDE*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_OVERIDE* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_OVERIDE* 3)
(intern "*LDW_STATUS_ACTIVE*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_ACTIVE* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_ACTIVE* 4)
(intern "*LDW_STATUS_RESERVED1*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_RESERVED1* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_RESERVED1* 5)
(intern "*LDW_STATUS_RESERVED2*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_RESERVED2* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_RESERVED2* 6)
(intern "*LDW_STATUS_RESERVED3*" (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(shadow '*LDW_STATUS_RESERVED3* (find-package "ENDPOINT_MSGS::LDWSTATUS"))
(defconstant endpoint_msgs::LdwStatus::*LDW_STATUS_RESERVED3* 7)

(defun endpoint_msgs::LdwStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::LdwStatus::*LDW_STATUS_OFF*)
        ((= const 1) 'endpoint_msgs::LdwStatus::*LDW_STATUS_STANDBY*)
        ((= const 2) 'endpoint_msgs::LdwStatus::*LDW_STATUS_DISABLED*)
        ((= const 3) 'endpoint_msgs::LdwStatus::*LDW_STATUS_OVERIDE*)
        ((= const 4) 'endpoint_msgs::LdwStatus::*LDW_STATUS_ACTIVE*)
        ((= const 5) 'endpoint_msgs::LdwStatus::*LDW_STATUS_RESERVED1*)
        ((= const 6) 'endpoint_msgs::LdwStatus::*LDW_STATUS_RESERVED2*)
        ((= const 7) 'endpoint_msgs::LdwStatus::*LDW_STATUS_RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::LdwStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::LdwStatus
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

(setf (get endpoint_msgs::LdwStatus :md5sum-) "a404c5783e2208805ff42b046d1c73b2")
(setf (get endpoint_msgs::LdwStatus :datatype-) "endpoint_msgs/LdwStatus")
(setf (get endpoint_msgs::LdwStatus :definition-)
      "uint8 LDW_STATUS_OFF = 0
uint8 LDW_STATUS_STANDBY = 1
uint8 LDW_STATUS_DISABLED = 2
uint8 LDW_STATUS_OVERIDE = 3
uint8 LDW_STATUS_ACTIVE = 4
uint8 LDW_STATUS_RESERVED1 = 5
uint8 LDW_STATUS_RESERVED2 = 6
uint8 LDW_STATUS_RESERVED3 = 7
uint8 value

")



(provide :endpoint_msgs/LdwStatus "a404c5783e2208805ff42b046d1c73b2")


