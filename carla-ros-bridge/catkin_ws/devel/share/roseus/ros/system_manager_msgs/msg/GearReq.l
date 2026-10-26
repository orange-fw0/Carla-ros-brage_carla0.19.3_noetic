;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::GearReq)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'GearReq (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::GEARREQ")
  (make-package "SYSTEM_MANAGER_MSGS::GEARREQ"))

(in-package "ROS")
;;//! \htmlinclude GearReq.msg.html


(intern "*NO_REQ*" (find-package "SYSTEM_MANAGER_MSGS::GEARREQ"))
(shadow '*NO_REQ* (find-package "SYSTEM_MANAGER_MSGS::GEARREQ"))
(defconstant system_manager_msgs::GearReq::*NO_REQ* 0)
(intern "*GEAR_P*" (find-package "SYSTEM_MANAGER_MSGS::GEARREQ"))
(shadow '*GEAR_P* (find-package "SYSTEM_MANAGER_MSGS::GEARREQ"))
(defconstant system_manager_msgs::GearReq::*GEAR_P* 1)

(defun system_manager_msgs::GearReq-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::GearReq::*NO_REQ*)
        ((= const 1) 'system_manager_msgs::GearReq::*GEAR_P*)
        (t nil)))

(defclass system_manager_msgs::GearReq
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::GearReq
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

(setf (get system_manager_msgs::GearReq :md5sum-) "6d5d13ef0bb1bb6e17f6c024cc95a83e")
(setf (get system_manager_msgs::GearReq :datatype-) "system_manager_msgs/GearReq")
(setf (get system_manager_msgs::GearReq :definition-)
      "uint8 NO_REQ = 0
uint8 GEAR_P = 1
uint8 value

")



(provide :system_manager_msgs/GearReq "6d5d13ef0bb1bb6e17f6c024cc95a83e")


