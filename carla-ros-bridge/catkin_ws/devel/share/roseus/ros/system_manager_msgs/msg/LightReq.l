;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LightReq)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LightReq (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LIGHTREQ")
  (make-package "SYSTEM_MANAGER_MSGS::LIGHTREQ"))

(in-package "ROS")
;;//! \htmlinclude LightReq.msg.html


(intern "*NO_REQ*" (find-package "SYSTEM_MANAGER_MSGS::LIGHTREQ"))
(shadow '*NO_REQ* (find-package "SYSTEM_MANAGER_MSGS::LIGHTREQ"))
(defconstant system_manager_msgs::LightReq::*NO_REQ* 0)
(intern "*TURN_OFF*" (find-package "SYSTEM_MANAGER_MSGS::LIGHTREQ"))
(shadow '*TURN_OFF* (find-package "SYSTEM_MANAGER_MSGS::LIGHTREQ"))
(defconstant system_manager_msgs::LightReq::*TURN_OFF* 1)
(intern "*EMERGENCY_FLASHER*" (find-package "SYSTEM_MANAGER_MSGS::LIGHTREQ"))
(shadow '*EMERGENCY_FLASHER* (find-package "SYSTEM_MANAGER_MSGS::LIGHTREQ"))
(defconstant system_manager_msgs::LightReq::*EMERGENCY_FLASHER* 2)

(defun system_manager_msgs::LightReq-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::LightReq::*NO_REQ*)
        ((= const 1) 'system_manager_msgs::LightReq::*TURN_OFF*)
        ((= const 2) 'system_manager_msgs::LightReq::*EMERGENCY_FLASHER*)
        (t nil)))

(defclass system_manager_msgs::LightReq
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::LightReq
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

(setf (get system_manager_msgs::LightReq :md5sum-) "bd57683a381bacc591ac314dfd2bd709")
(setf (get system_manager_msgs::LightReq :datatype-) "system_manager_msgs/LightReq")
(setf (get system_manager_msgs::LightReq :definition-)
      "uint8 NO_REQ = 0
uint8 TURN_OFF = 1
uint8 EMERGENCY_FLASHER = 2
uint8 value

")



(provide :system_manager_msgs/LightReq "bd57683a381bacc591ac314dfd2bd709")


