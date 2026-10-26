;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebPrflResp)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebPrflResp (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBPRFLRESP")
  (make-package "ENDPOINT_MSGS::AEBPRFLRESP"))

(in-package "ROS")
;;//! \htmlinclude AebPrflResp.msg.html


(intern "*AEB_PRFL_NO_REQUEST*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_NO_REQUEST* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_NO_REQUEST* 0)
(intern "*AEB_PRFL_REQUEST_HONORED*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_REQUEST_HONORED* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_HONORED* 1)
(intern "*AEB_PRFL_REQUEST_LOST_ARBITRATION*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_REQUEST_LOST_ARBITRATION* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_LOST_ARBITRATION* 2)
(intern "*AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR* 3)
(intern "*AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED* 4)
(intern "*AEB_PRFL_REQUEST_RESERVED1*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_REQUEST_RESERVED1* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_RESERVED1* 5)
(intern "*AEB_PRFL_REQUEST_RESERVED2*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_REQUEST_RESERVED2* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_RESERVED2* 6)
(intern "*AEB_PRFL_REQUEST_RESERVED3*" (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(shadow '*AEB_PRFL_REQUEST_RESERVED3* (find-package "ENDPOINT_MSGS::AEBPRFLRESP"))
(defconstant endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_RESERVED3* 7)

(defun endpoint_msgs::AebPrflResp-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_HONORED*)
        ((= const 2) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_LOST_ARBITRATION*)
        ((= const 3) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR*)
        ((= const 4) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED*)
        ((= const 5) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_RESERVED1*)
        ((= const 6) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_RESERVED2*)
        ((= const 7) 'endpoint_msgs::AebPrflResp::*AEB_PRFL_REQUEST_RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::AebPrflResp
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebPrflResp
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

(setf (get endpoint_msgs::AebPrflResp :md5sum-) "c008498116e2a9e95064446b52ae2df8")
(setf (get endpoint_msgs::AebPrflResp :datatype-) "endpoint_msgs/AebPrflResp")
(setf (get endpoint_msgs::AebPrflResp :definition-)
      "uint8 AEB_PRFL_NO_REQUEST = 0
uint8 AEB_PRFL_REQUEST_HONORED = 1
uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_PRFL_REQUEST_RESERVED1 = 5
uint8 AEB_PRFL_REQUEST_RESERVED2 = 6
uint8 AEB_PRFL_REQUEST_RESERVED3 = 7
uint8 value

")



(provide :endpoint_msgs/AebPrflResp "c008498116e2a9e95064446b52ae2df8")


