;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::BrakeReq)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'BrakeReq (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::BRAKEREQ")
  (make-package "SYSTEM_MANAGER_MSGS::BRAKEREQ"))

(in-package "ROS")
;;//! \htmlinclude BrakeReq.msg.html


(intern "*NO_REQ*" (find-package "SYSTEM_MANAGER_MSGS::BRAKEREQ"))
(shadow '*NO_REQ* (find-package "SYSTEM_MANAGER_MSGS::BRAKEREQ"))
(defconstant system_manager_msgs::BrakeReq::*NO_REQ* 0)
(intern "*HEAVY_BRAKE*" (find-package "SYSTEM_MANAGER_MSGS::BRAKEREQ"))
(shadow '*HEAVY_BRAKE* (find-package "SYSTEM_MANAGER_MSGS::BRAKEREQ"))
(defconstant system_manager_msgs::BrakeReq::*HEAVY_BRAKE* 1)
(intern "*NO_BRAKE*" (find-package "SYSTEM_MANAGER_MSGS::BRAKEREQ"))
(shadow '*NO_BRAKE* (find-package "SYSTEM_MANAGER_MSGS::BRAKEREQ"))
(defconstant system_manager_msgs::BrakeReq::*NO_BRAKE* 2)

(defun system_manager_msgs::BrakeReq-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::BrakeReq::*NO_REQ*)
        ((= const 1) 'system_manager_msgs::BrakeReq::*HEAVY_BRAKE*)
        ((= const 2) 'system_manager_msgs::BrakeReq::*NO_BRAKE*)
        (t nil)))

(defclass system_manager_msgs::BrakeReq
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::BrakeReq
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

(setf (get system_manager_msgs::BrakeReq :md5sum-) "def8a1c4b5d870b2a9ac7ec7ad1ea4df")
(setf (get system_manager_msgs::BrakeReq :datatype-) "system_manager_msgs/BrakeReq")
(setf (get system_manager_msgs::BrakeReq :definition-)
      "uint8 NO_REQ = 0
uint8 HEAVY_BRAKE = 1
uint8 NO_BRAKE = 2
uint8 value

")



(provide :system_manager_msgs/BrakeReq "def8a1c4b5d870b2a9ac7ec7ad1ea4df")


