;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebDclReqSts)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebDclReqSts (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBDCLREQSTS")
  (make-package "ENDPOINT_MSGS::AEBDCLREQSTS"))

(in-package "ROS")
;;//! \htmlinclude AebDclReqSts.msg.html


(intern "*AEB_DLC_STATE_NO_REQUEST*" (find-package "ENDPOINT_MSGS::AEBDCLREQSTS"))
(shadow '*AEB_DLC_STATE_NO_REQUEST* (find-package "ENDPOINT_MSGS::AEBDCLREQSTS"))
(defconstant endpoint_msgs::AebDclReqSts::*AEB_DLC_STATE_NO_REQUEST* 0)
(intern "*AEB_DLC_STATE_DECELERATION*" (find-package "ENDPOINT_MSGS::AEBDCLREQSTS"))
(shadow '*AEB_DLC_STATE_DECELERATION* (find-package "ENDPOINT_MSGS::AEBDCLREQSTS"))
(defconstant endpoint_msgs::AebDclReqSts::*AEB_DLC_STATE_DECELERATION* 1)
(intern "*AEB_DLC_STATE_RESERVED*" (find-package "ENDPOINT_MSGS::AEBDCLREQSTS"))
(shadow '*AEB_DLC_STATE_RESERVED* (find-package "ENDPOINT_MSGS::AEBDCLREQSTS"))
(defconstant endpoint_msgs::AebDclReqSts::*AEB_DLC_STATE_RESERVED* 2)

(defun endpoint_msgs::AebDclReqSts-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebDclReqSts::*AEB_DLC_STATE_NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::AebDclReqSts::*AEB_DLC_STATE_DECELERATION*)
        ((= const 2) 'endpoint_msgs::AebDclReqSts::*AEB_DLC_STATE_RESERVED*)
        (t nil)))

(defclass endpoint_msgs::AebDclReqSts
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebDclReqSts
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

(setf (get endpoint_msgs::AebDclReqSts :md5sum-) "c070ec02bdc94a2b1a62d5735b069dfc")
(setf (get endpoint_msgs::AebDclReqSts :datatype-) "endpoint_msgs/AebDclReqSts")
(setf (get endpoint_msgs::AebDclReqSts :definition-)
      "uint8 AEB_DLC_STATE_NO_REQUEST = 0
uint8 AEB_DLC_STATE_DECELERATION = 1
uint8 AEB_DLC_STATE_RESERVED = 2
uint8 value

")



(provide :endpoint_msgs/AebDclReqSts "c070ec02bdc94a2b1a62d5735b069dfc")


