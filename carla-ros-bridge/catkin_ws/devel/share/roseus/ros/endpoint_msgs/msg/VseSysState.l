;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VseSysState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VseSysState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VSESYSSTATE")
  (make-package "ENDPOINT_MSGS::VSESYSSTATE"))

(in-package "ROS")
;;//! \htmlinclude VseSysState.msg.html


(intern "*INAVTIVE*" (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(shadow '*INAVTIVE* (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(defconstant endpoint_msgs::VseSysState::*INAVTIVE* 0)
(intern "*ACTIVE*" (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(shadow '*ACTIVE* (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(defconstant endpoint_msgs::VseSysState::*ACTIVE* 1)
(intern "*FAULT*" (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(shadow '*FAULT* (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(defconstant endpoint_msgs::VseSysState::*FAULT* 2)
(intern "*WARMING_UP*" (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(shadow '*WARMING_UP* (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(defconstant endpoint_msgs::VseSysState::*WARMING_UP* 3)
(intern "*NOT_READY*" (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(shadow '*NOT_READY* (find-package "ENDPOINT_MSGS::VSESYSSTATE"))
(defconstant endpoint_msgs::VseSysState::*NOT_READY* 4)

(defun endpoint_msgs::VseSysState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::VseSysState::*INAVTIVE*)
        ((= const 1) 'endpoint_msgs::VseSysState::*ACTIVE*)
        ((= const 2) 'endpoint_msgs::VseSysState::*FAULT*)
        ((= const 3) 'endpoint_msgs::VseSysState::*WARMING_UP*)
        ((= const 4) 'endpoint_msgs::VseSysState::*NOT_READY*)
        (t nil)))

(defclass endpoint_msgs::VseSysState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::VseSysState
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

(setf (get endpoint_msgs::VseSysState :md5sum-) "320626dfbde82aa2c03a9a8dbd07b6c2")
(setf (get endpoint_msgs::VseSysState :datatype-) "endpoint_msgs/VseSysState")
(setf (get endpoint_msgs::VseSysState :definition-)
      "uint8 INAVTIVE = 0
uint8 ACTIVE = 1
uint8 FAULT = 2
uint8 WARMING_UP = 3
uint8 NOT_READY = 4
uint8 value

")



(provide :endpoint_msgs/VseSysState "320626dfbde82aa2c03a9a8dbd07b6c2")


