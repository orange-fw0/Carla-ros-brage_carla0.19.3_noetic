;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ApaVcurCtlMode)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ApaVcurCtlMode (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::APAVCURCTLMODE")
  (make-package "ENDPOINT_MSGS::APAVCURCTLMODE"))

(in-package "ROS")
;;//! \htmlinclude ApaVcurCtlMode.msg.html


(intern "*NORMAL*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*NORMAL* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*NORMAL* 0)
(intern "*DR_SWITCH_MODE*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*DR_SWITCH_MODE* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*DR_SWITCH_MODE* 1)
(intern "*OBSTACLE_CROSSING_MODE*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*OBSTACLE_CROSSING_MODE* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*OBSTACLE_CROSSING_MODE* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*RESERVED2* 4)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*RESERVED3* 5)
(intern "*RESERVED4*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*RESERVED4* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*RESERVED4* 6)
(intern "*RESERVED5*" (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(shadow '*RESERVED5* (find-package "ENDPOINT_MSGS::APAVCURCTLMODE"))
(defconstant endpoint_msgs::ApaVcurCtlMode::*RESERVED5* 7)

(defun endpoint_msgs::ApaVcurCtlMode-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::ApaVcurCtlMode::*NORMAL*)
        ((= const 1) 'endpoint_msgs::ApaVcurCtlMode::*DR_SWITCH_MODE*)
        ((= const 2) 'endpoint_msgs::ApaVcurCtlMode::*OBSTACLE_CROSSING_MODE*)
        ((= const 3) 'endpoint_msgs::ApaVcurCtlMode::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::ApaVcurCtlMode::*RESERVED2*)
        ((= const 5) 'endpoint_msgs::ApaVcurCtlMode::*RESERVED3*)
        ((= const 6) 'endpoint_msgs::ApaVcurCtlMode::*RESERVED4*)
        ((= const 7) 'endpoint_msgs::ApaVcurCtlMode::*RESERVED5*)
        (t nil)))

(defclass endpoint_msgs::ApaVcurCtlMode
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::ApaVcurCtlMode
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

(setf (get endpoint_msgs::ApaVcurCtlMode :md5sum-) "48cc0ba24bde1d7e1b1e41532bdcd7dc")
(setf (get endpoint_msgs::ApaVcurCtlMode :datatype-) "endpoint_msgs/ApaVcurCtlMode")
(setf (get endpoint_msgs::ApaVcurCtlMode :definition-)
      "uint8 NORMAL = 0
uint8 DR_SWITCH_MODE = 1
uint8 OBSTACLE_CROSSING_MODE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 RESERVED4 = 6
uint8 RESERVED5 = 7
uint8 value

")



(provide :endpoint_msgs/ApaVcurCtlMode "48cc0ba24bde1d7e1b1e41532bdcd7dc")


