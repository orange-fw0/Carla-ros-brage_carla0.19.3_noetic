;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::TargetControlMotor)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'TargetControlMotor (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR")
  (make-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))

(in-package "ROS")
;;//! \htmlinclude TargetControlMotor.msg.html


(intern "*FL*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*FL* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*FL* 0)
(intern "*FR*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*FR* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*FR* 1)
(intern "*RL*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*RL* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*RL* 2)
(intern "*RR*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*RR* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*RR* 3)
(intern "*FLFR*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*FLFR* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*FLFR* 4)
(intern "*RLRR*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*RLRR* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*RLRR* 5)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*RESERVED1* 6)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::TARGETCONTROLMOTOR"))
(defconstant endpoint_msgs::TargetControlMotor::*RESERVED2* 7)

(defun endpoint_msgs::TargetControlMotor-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::TargetControlMotor::*FL*)
        ((= const 1) 'endpoint_msgs::TargetControlMotor::*FR*)
        ((= const 2) 'endpoint_msgs::TargetControlMotor::*RL*)
        ((= const 3) 'endpoint_msgs::TargetControlMotor::*RR*)
        ((= const 4) 'endpoint_msgs::TargetControlMotor::*FLFR*)
        ((= const 5) 'endpoint_msgs::TargetControlMotor::*RLRR*)
        ((= const 6) 'endpoint_msgs::TargetControlMotor::*RESERVED1*)
        ((= const 7) 'endpoint_msgs::TargetControlMotor::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::TargetControlMotor
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::TargetControlMotor
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

(setf (get endpoint_msgs::TargetControlMotor :md5sum-) "c846be71a2c7afcada149beba5ba7d83")
(setf (get endpoint_msgs::TargetControlMotor :datatype-) "endpoint_msgs/TargetControlMotor")
(setf (get endpoint_msgs::TargetControlMotor :definition-)
      "uint8 FL = 0
uint8 FR = 1
uint8 RL = 2
uint8 RR = 3
uint8 FLFR = 4
uint8 RLRR = 5
uint8 RESERVED1 = 6
uint8 RESERVED2 = 7
uint8 value

")



(provide :endpoint_msgs/TargetControlMotor "c846be71a2c7afcada149beba5ba7d83")


