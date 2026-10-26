;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::MotorSpeedControlStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'MotorSpeedControlStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS")
  (make-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorSpeedControlStatus.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(defconstant endpoint_msgs::MotorSpeedControlStatus::*NONE* 0)
(intern "*NO_ACTIVE*" (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(shadow '*NO_ACTIVE* (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(defconstant endpoint_msgs::MotorSpeedControlStatus::*NO_ACTIVE* 1)
(intern "*ACTIVE*" (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(shadow '*ACTIVE* (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(defconstant endpoint_msgs::MotorSpeedControlStatus::*ACTIVE* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(defconstant endpoint_msgs::MotorSpeedControlStatus::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::MOTORSPEEDCONTROLSTATUS"))
(defconstant endpoint_msgs::MotorSpeedControlStatus::*RESERVED2* 4)

(defun endpoint_msgs::MotorSpeedControlStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::MotorSpeedControlStatus::*NONE*)
        ((= const 1) 'endpoint_msgs::MotorSpeedControlStatus::*NO_ACTIVE*)
        ((= const 2) 'endpoint_msgs::MotorSpeedControlStatus::*ACTIVE*)
        ((= const 3) 'endpoint_msgs::MotorSpeedControlStatus::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::MotorSpeedControlStatus::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::MotorSpeedControlStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::MotorSpeedControlStatus
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

(setf (get endpoint_msgs::MotorSpeedControlStatus :md5sum-) "277d420f756e40486d2ab0eeea680051")
(setf (get endpoint_msgs::MotorSpeedControlStatus :datatype-) "endpoint_msgs/MotorSpeedControlStatus")
(setf (get endpoint_msgs::MotorSpeedControlStatus :definition-)
      "uint8 NONE = 0
uint8 NO_ACTIVE = 1
uint8 ACTIVE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

")



(provide :endpoint_msgs/MotorSpeedControlStatus "277d420f756e40486d2ab0eeea680051")


