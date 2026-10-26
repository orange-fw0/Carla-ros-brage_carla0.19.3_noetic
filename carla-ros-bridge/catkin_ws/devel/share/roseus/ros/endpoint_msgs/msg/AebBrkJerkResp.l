;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebBrkJerkResp)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebBrkJerkResp (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP")
  (make-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))

(in-package "ROS")
;;//! \htmlinclude AebBrkJerkResp.msg.html


(intern "*AEB_BRAKE_JERK_NO_REQUEST*" (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(shadow '*AEB_BRAKE_JERK_NO_REQUEST* (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(defconstant endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_NO_REQUEST* 0)
(intern "*AEB_BRAKE_JERK_REQUEST_HONORED*" (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(shadow '*AEB_BRAKE_JERK_REQUEST_HONORED* (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(defconstant endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_REQUEST_HONORED* 1)
(intern "*AEB_BRAKE_JERK_LOST_ARBITRATION*" (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(shadow '*AEB_BRAKE_JERK_LOST_ARBITRATION* (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(defconstant endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_LOST_ARBITRATION* 2)
(intern "*AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR*" (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(shadow '*AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR* (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(defconstant endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR* 3)
(intern "*AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED*" (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(shadow '*AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED* (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(defconstant endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED* 4)
(intern "*AEB_BRAKE_JERK_RESERVED*" (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(shadow '*AEB_BRAKE_JERK_RESERVED* (find-package "ENDPOINT_MSGS::AEBBRKJERKRESP"))
(defconstant endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_RESERVED* 5)

(defun endpoint_msgs::AebBrkJerkResp-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_REQUEST_HONORED*)
        ((= const 2) 'endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_LOST_ARBITRATION*)
        ((= const 3) 'endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR*)
        ((= const 4) 'endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED*)
        ((= const 5) 'endpoint_msgs::AebBrkJerkResp::*AEB_BRAKE_JERK_RESERVED*)
        (t nil)))

(defclass endpoint_msgs::AebBrkJerkResp
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebBrkJerkResp
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

(setf (get endpoint_msgs::AebBrkJerkResp :md5sum-) "c50baed73cee6827b278af7bcc7084ab")
(setf (get endpoint_msgs::AebBrkJerkResp :datatype-) "endpoint_msgs/AebBrkJerkResp")
(setf (get endpoint_msgs::AebBrkJerkResp :definition-)
      "uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1
uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2
uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_BRAKE_JERK_RESERVED = 5
uint8 value

")



(provide :endpoint_msgs/AebBrkJerkResp "c50baed73cee6827b278af7bcc7084ab")


