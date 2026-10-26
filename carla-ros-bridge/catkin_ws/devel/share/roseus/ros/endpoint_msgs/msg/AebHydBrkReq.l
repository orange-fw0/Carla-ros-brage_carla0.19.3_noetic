;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebHydBrkReq)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebHydBrkReq (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ")
  (make-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))

(in-package "ROS")
;;//! \htmlinclude AebHydBrkReq.msg.html


(intern "*AEB_HYD_BRAKE_NO_REQUEST*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_NO_REQUEST* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_NO_REQUEST* 0)
(intern "*AEB_HYD_BRAKE_LOW_LEVEL*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_LOW_LEVEL* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_LOW_LEVEL* 1)
(intern "*AEB_HYD_BRAKE_MID_LEVEL*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_MID_LEVEL* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_MID_LEVEL* 2)
(intern "*AEB_HYD_BRAKE_HIGH_LEVEL*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_HIGH_LEVEL* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_HIGH_LEVEL* 3)
(intern "*AEB_HYD_BRAKE_RESERVED1*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_RESERVED1* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED1* 4)
(intern "*AEB_HYD_BRAKE_RESERVED2*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_RESERVED2* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED2* 5)
(intern "*AEB_HYD_BRAKE_RESERVED3*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_RESERVED3* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED3* 6)
(intern "*AEB_HYD_BRAKE_RESERVED4*" (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(shadow '*AEB_HYD_BRAKE_RESERVED4* (find-package "ENDPOINT_MSGS::AEBHYDBRKREQ"))
(defconstant endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED4* 7)

(defun endpoint_msgs::AebHydBrkReq-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_LOW_LEVEL*)
        ((= const 2) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_MID_LEVEL*)
        ((= const 3) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_HIGH_LEVEL*)
        ((= const 4) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED1*)
        ((= const 5) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED2*)
        ((= const 6) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED3*)
        ((= const 7) 'endpoint_msgs::AebHydBrkReq::*AEB_HYD_BRAKE_RESERVED4*)
        (t nil)))

(defclass endpoint_msgs::AebHydBrkReq
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebHydBrkReq
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

(setf (get endpoint_msgs::AebHydBrkReq :md5sum-) "ab03608fca289fb04b40ea80ad585776")
(setf (get endpoint_msgs::AebHydBrkReq :datatype-) "endpoint_msgs/AebHydBrkReq")
(setf (get endpoint_msgs::AebHydBrkReq :definition-)
      "uint8 AEB_HYD_BRAKE_NO_REQUEST = 0
uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1
uint8 AEB_HYD_BRAKE_MID_LEVEL = 2
uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3
uint8 AEB_HYD_BRAKE_RESERVED1 = 4
uint8 AEB_HYD_BRAKE_RESERVED2 = 5
uint8 AEB_HYD_BRAKE_RESERVED3 = 6
uint8 AEB_HYD_BRAKE_RESERVED4 = 7
uint8 value

")



(provide :endpoint_msgs/AebHydBrkReq "ab03608fca289fb04b40ea80ad585776")


