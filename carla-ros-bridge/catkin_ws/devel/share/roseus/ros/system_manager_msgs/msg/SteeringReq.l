;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SteeringReq)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SteeringReq (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::STEERINGREQ")
  (make-package "SYSTEM_MANAGER_MSGS::STEERINGREQ"))

(in-package "ROS")
;;//! \htmlinclude SteeringReq.msg.html


(intern "*NO_STEERING_RESET*" (find-package "SYSTEM_MANAGER_MSGS::STEERINGREQ"))
(shadow '*NO_STEERING_RESET* (find-package "SYSTEM_MANAGER_MSGS::STEERINGREQ"))
(defconstant system_manager_msgs::SteeringReq::*NO_STEERING_RESET* 0)
(intern "*STEERING_RESET*" (find-package "SYSTEM_MANAGER_MSGS::STEERINGREQ"))
(shadow '*STEERING_RESET* (find-package "SYSTEM_MANAGER_MSGS::STEERINGREQ"))
(defconstant system_manager_msgs::SteeringReq::*STEERING_RESET* 1)

(defun system_manager_msgs::SteeringReq-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::SteeringReq::*NO_STEERING_RESET*)
        ((= const 1) 'system_manager_msgs::SteeringReq::*STEERING_RESET*)
        (t nil)))

(defclass system_manager_msgs::SteeringReq
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::SteeringReq
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

(setf (get system_manager_msgs::SteeringReq :md5sum-) "aa40a487c4b7800ba41f548b6368909c")
(setf (get system_manager_msgs::SteeringReq :datatype-) "system_manager_msgs/SteeringReq")
(setf (get system_manager_msgs::SteeringReq :definition-)
      "uint8 NO_STEERING_RESET = 0
uint8 STEERING_RESET = 1
uint8 value

")



(provide :system_manager_msgs/SteeringReq "aa40a487c4b7800ba41f548b6368909c")


