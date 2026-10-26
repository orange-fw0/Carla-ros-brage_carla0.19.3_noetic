;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SpdctlRollingbackStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SpdctlRollingbackStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS")
  (make-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SpdctlRollingbackStatus.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(defconstant endpoint_msgs::SpdctlRollingbackStatus::*NONE* 0)
(intern "*NO_SILDE*" (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(shadow '*NO_SILDE* (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(defconstant endpoint_msgs::SpdctlRollingbackStatus::*NO_SILDE* 1)
(intern "*SILDE*" (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(shadow '*SILDE* (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(defconstant endpoint_msgs::SpdctlRollingbackStatus::*SILDE* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(defconstant endpoint_msgs::SpdctlRollingbackStatus::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::SPDCTLROLLINGBACKSTATUS"))
(defconstant endpoint_msgs::SpdctlRollingbackStatus::*RESERVED2* 4)

(defun endpoint_msgs::SpdctlRollingbackStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SpdctlRollingbackStatus::*NONE*)
        ((= const 1) 'endpoint_msgs::SpdctlRollingbackStatus::*NO_SILDE*)
        ((= const 2) 'endpoint_msgs::SpdctlRollingbackStatus::*SILDE*)
        ((= const 3) 'endpoint_msgs::SpdctlRollingbackStatus::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::SpdctlRollingbackStatus::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::SpdctlRollingbackStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SpdctlRollingbackStatus
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

(setf (get endpoint_msgs::SpdctlRollingbackStatus :md5sum-) "7bdd6059f5e8923902d7512aca2de005")
(setf (get endpoint_msgs::SpdctlRollingbackStatus :datatype-) "endpoint_msgs/SpdctlRollingbackStatus")
(setf (get endpoint_msgs::SpdctlRollingbackStatus :definition-)
      "uint8 NONE = 0
uint8 NO_SILDE = 1
uint8 SILDE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

")



(provide :endpoint_msgs/SpdctlRollingbackStatus "7bdd6059f5e8923902d7512aca2de005")


