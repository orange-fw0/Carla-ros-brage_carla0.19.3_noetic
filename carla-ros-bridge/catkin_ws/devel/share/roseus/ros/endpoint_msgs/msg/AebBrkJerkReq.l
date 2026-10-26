;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebBrkJerkReq)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebBrkJerkReq (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ")
  (make-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))

(in-package "ROS")
;;//! \htmlinclude AebBrkJerkReq.msg.html


(intern "*AEB_BRAKE_JERK_NO_REQUEST*" (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(shadow '*AEB_BRAKE_JERK_NO_REQUEST* (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(defconstant endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_NO_REQUEST* 0)
(intern "*AEB_BRAKE_JERK_LOW_LEVEL*" (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(shadow '*AEB_BRAKE_JERK_LOW_LEVEL* (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(defconstant endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_LOW_LEVEL* 1)
(intern "*AEB_BRAKE_JERK_MID_LEVEL*" (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(shadow '*AEB_BRAKE_JERK_MID_LEVEL* (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(defconstant endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_MID_LEVEL* 2)
(intern "*AEB_BRAKE_JERK_HIGH_LEVEL*" (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(shadow '*AEB_BRAKE_JERK_HIGH_LEVEL* (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(defconstant endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_HIGH_LEVEL* 3)
(intern "*AEV_BRAKE_JERK_RESERVED*" (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(shadow '*AEV_BRAKE_JERK_RESERVED* (find-package "ENDPOINT_MSGS::AEBBRKJERKREQ"))
(defconstant endpoint_msgs::AebBrkJerkReq::*AEV_BRAKE_JERK_RESERVED* 4)

(defun endpoint_msgs::AebBrkJerkReq-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_LOW_LEVEL*)
        ((= const 2) 'endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_MID_LEVEL*)
        ((= const 3) 'endpoint_msgs::AebBrkJerkReq::*AEB_BRAKE_JERK_HIGH_LEVEL*)
        ((= const 4) 'endpoint_msgs::AebBrkJerkReq::*AEV_BRAKE_JERK_RESERVED*)
        (t nil)))

(defclass endpoint_msgs::AebBrkJerkReq
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebBrkJerkReq
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

(setf (get endpoint_msgs::AebBrkJerkReq :md5sum-) "2f9c194e334d31e7822a9ca9ae26e348")
(setf (get endpoint_msgs::AebBrkJerkReq :datatype-) "endpoint_msgs/AebBrkJerkReq")
(setf (get endpoint_msgs::AebBrkJerkReq :definition-)
      "uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1
uint8 AEB_BRAKE_JERK_MID_LEVEL = 2
uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3
uint8 AEV_BRAKE_JERK_RESERVED = 4
uint8 value

")



(provide :endpoint_msgs/AebBrkJerkReq "2f9c194e334d31e7822a9ca9ae26e348")


