;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::FcwStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'FcwStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::FCWSTATUS")
  (make-package "ENDPOINT_MSGS::FCWSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FcwStatus.msg.html


(intern "*OFF*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*OFF* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*OFF* 0)
(intern "*STANDBY*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*STANDBY* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*STANDBY* 1)
(intern "*DISABLE*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*DISABLE* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*DISABLE* 2)
(intern "*OVERRIDE*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*OVERRIDE* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*OVERRIDE* 3)
(intern "*ACTIVED*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*ACTIVED* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*ACTIVED* 4)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*RESERVED1* 5)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*RESERVED2* 6)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::FCWSTATUS"))
(defconstant endpoint_msgs::FcwStatus::*RESERVED3* 7)

(defun endpoint_msgs::FcwStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::FcwStatus::*OFF*)
        ((= const 1) 'endpoint_msgs::FcwStatus::*STANDBY*)
        ((= const 2) 'endpoint_msgs::FcwStatus::*DISABLE*)
        ((= const 3) 'endpoint_msgs::FcwStatus::*OVERRIDE*)
        ((= const 4) 'endpoint_msgs::FcwStatus::*ACTIVED*)
        ((= const 5) 'endpoint_msgs::FcwStatus::*RESERVED1*)
        ((= const 6) 'endpoint_msgs::FcwStatus::*RESERVED2*)
        ((= const 7) 'endpoint_msgs::FcwStatus::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::FcwStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::FcwStatus
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

(setf (get endpoint_msgs::FcwStatus :md5sum-) "95ccefc16af692ba0ffc1cbf1ad938d0")
(setf (get endpoint_msgs::FcwStatus :datatype-) "endpoint_msgs/FcwStatus")
(setf (get endpoint_msgs::FcwStatus :definition-)
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



(provide :endpoint_msgs/FcwStatus "95ccefc16af692ba0ffc1cbf1ad938d0")


