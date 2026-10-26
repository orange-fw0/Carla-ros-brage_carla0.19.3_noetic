;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebDclResp)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebDclResp (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBDCLRESP")
  (make-package "ENDPOINT_MSGS::AEBDCLRESP"))

(in-package "ROS")
;;//! \htmlinclude AebDclResp.msg.html


(intern "*AEB_DCL_NO_REQUEST*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_NO_REQUEST* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_NO_REQUEST* 0)
(intern "*AEB_DCL_REQUEST_HONORED*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_REQUEST_HONORED* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_HONORED* 1)
(intern "*AEB_DCL_REQUEST_LOST_ARBITRATION*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_REQUEST_LOST_ARBITRATION* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_LOST_ARBITRATION* 2)
(intern "*AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR* 3)
(intern "*AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED* 4)
(intern "*AEB_DCL_REQUEST_RESERVED1*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_REQUEST_RESERVED1* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_RESERVED1* 5)
(intern "*AEB_DCL_REQUEST_RESERVED2*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_REQUEST_RESERVED2* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_RESERVED2* 6)
(intern "*AEB_DCL_REQUEST_RESERVED3*" (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(shadow '*AEB_DCL_REQUEST_RESERVED3* (find-package "ENDPOINT_MSGS::AEBDCLRESP"))
(defconstant endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_RESERVED3* 7)

(defun endpoint_msgs::AebDclResp-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebDclResp::*AEB_DCL_NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_HONORED*)
        ((= const 2) 'endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_LOST_ARBITRATION*)
        ((= const 3) 'endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR*)
        ((= const 4) 'endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED*)
        ((= const 5) 'endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_RESERVED1*)
        ((= const 6) 'endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_RESERVED2*)
        ((= const 7) 'endpoint_msgs::AebDclResp::*AEB_DCL_REQUEST_RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::AebDclResp
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebDclResp
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

(setf (get endpoint_msgs::AebDclResp :md5sum-) "5909bfa17c6e985e4990735ff91e68c0")
(setf (get endpoint_msgs::AebDclResp :datatype-) "endpoint_msgs/AebDclResp")
(setf (get endpoint_msgs::AebDclResp :definition-)
      "uint8 AEB_DCL_NO_REQUEST = 0
uint8 AEB_DCL_REQUEST_HONORED = 1
uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_DCL_REQUEST_RESERVED1 = 5
uint8 AEB_DCL_REQUEST_RESERVED2 = 6
uint8 AEB_DCL_REQUEST_RESERVED3 = 7
uint8 value

")



(provide :endpoint_msgs/AebDclResp "5909bfa17c6e985e4990735ff91e68c0")


