;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SpdctlFaultMode)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SpdctlFaultMode (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE")
  (make-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))

(in-package "ROS")
;;//! \htmlinclude SpdctlFaultMode.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(defconstant endpoint_msgs::SpdctlFaultMode::*NONE* 0)
(intern "*NO_FAULT*" (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(shadow '*NO_FAULT* (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(defconstant endpoint_msgs::SpdctlFaultMode::*NO_FAULT* 1)
(intern "*FAULT1*" (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(shadow '*FAULT1* (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(defconstant endpoint_msgs::SpdctlFaultMode::*FAULT1* 2)
(intern "*FAULT2*" (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(shadow '*FAULT2* (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(defconstant endpoint_msgs::SpdctlFaultMode::*FAULT2* 3)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(defconstant endpoint_msgs::SpdctlFaultMode::*RESERVED1* 4)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::SPDCTLFAULTMODE"))
(defconstant endpoint_msgs::SpdctlFaultMode::*RESERVED2* 5)

(defun endpoint_msgs::SpdctlFaultMode-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::SpdctlFaultMode::*NONE*)
        ((= const 1) 'endpoint_msgs::SpdctlFaultMode::*NO_FAULT*)
        ((= const 2) 'endpoint_msgs::SpdctlFaultMode::*FAULT1*)
        ((= const 3) 'endpoint_msgs::SpdctlFaultMode::*FAULT2*)
        ((= const 4) 'endpoint_msgs::SpdctlFaultMode::*RESERVED1*)
        ((= const 5) 'endpoint_msgs::SpdctlFaultMode::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::SpdctlFaultMode
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::SpdctlFaultMode
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

(setf (get endpoint_msgs::SpdctlFaultMode :md5sum-) "14c5cb8b19e4e9079b1470921bafd4cd")
(setf (get endpoint_msgs::SpdctlFaultMode :datatype-) "endpoint_msgs/SpdctlFaultMode")
(setf (get endpoint_msgs::SpdctlFaultMode :definition-)
      "uint8 NONE = 0
uint8 NO_FAULT = 1
uint8 FAULT1 = 2
uint8 FAULT2 = 3
uint8 RESERVED1 = 4
uint8 RESERVED2 = 5
uint8 value

")



(provide :endpoint_msgs/SpdctlFaultMode "14c5cb8b19e4e9079b1470921bafd4cd")


