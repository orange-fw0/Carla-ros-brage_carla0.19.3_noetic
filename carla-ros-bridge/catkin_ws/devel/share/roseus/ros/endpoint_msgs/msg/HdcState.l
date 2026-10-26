;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HdcState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HdcState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HDCSTATE")
  (make-package "ENDPOINT_MSGS::HDCSTATE"))

(in-package "ROS")
;;//! \htmlinclude HdcState.msg.html


(intern "*NORMAL*" (find-package "ENDPOINT_MSGS::HDCSTATE"))
(shadow '*NORMAL* (find-package "ENDPOINT_MSGS::HDCSTATE"))
(defconstant endpoint_msgs::HdcState::*NORMAL* 0)
(intern "*ENABLED*" (find-package "ENDPOINT_MSGS::HDCSTATE"))
(shadow '*ENABLED* (find-package "ENDPOINT_MSGS::HDCSTATE"))
(defconstant endpoint_msgs::HdcState::*ENABLED* 1)
(intern "*ACTIVED*" (find-package "ENDPOINT_MSGS::HDCSTATE"))
(shadow '*ACTIVED* (find-package "ENDPOINT_MSGS::HDCSTATE"))
(defconstant endpoint_msgs::HdcState::*ACTIVED* 2)
(intern "*FAILED*" (find-package "ENDPOINT_MSGS::HDCSTATE"))
(shadow '*FAILED* (find-package "ENDPOINT_MSGS::HDCSTATE"))
(defconstant endpoint_msgs::HdcState::*FAILED* 3)
(intern "*TEMPORARILY_INHIBITED*" (find-package "ENDPOINT_MSGS::HDCSTATE"))
(shadow '*TEMPORARILY_INHIBITED* (find-package "ENDPOINT_MSGS::HDCSTATE"))
(defconstant endpoint_msgs::HdcState::*TEMPORARILY_INHIBITED* 4)

(defun endpoint_msgs::HdcState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::HdcState::*NORMAL*)
        ((= const 1) 'endpoint_msgs::HdcState::*ENABLED*)
        ((= const 2) 'endpoint_msgs::HdcState::*ACTIVED*)
        ((= const 3) 'endpoint_msgs::HdcState::*FAILED*)
        ((= const 4) 'endpoint_msgs::HdcState::*TEMPORARILY_INHIBITED*)
        (t nil)))

(defclass endpoint_msgs::HdcState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::HdcState
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

(setf (get endpoint_msgs::HdcState :md5sum-) "4b52f34efdd107191a6b414e39d707bb")
(setf (get endpoint_msgs::HdcState :datatype-) "endpoint_msgs/HdcState")
(setf (get endpoint_msgs::HdcState :definition-)
      "uint8 NORMAL = 0
uint8 ENABLED = 1
uint8 ACTIVED = 2
uint8 FAILED = 3
uint8 TEMPORARILY_INHIBITED = 4
uint8 value

")



(provide :endpoint_msgs/HdcState "4b52f34efdd107191a6b414e39d707bb")


