;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::McuStuckStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'McuStuckStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS")
  (make-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude McuStuckStatus.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(defconstant endpoint_msgs::McuStuckStatus::*NONE* 0)
(intern "*NO_STUCK*" (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(shadow '*NO_STUCK* (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(defconstant endpoint_msgs::McuStuckStatus::*NO_STUCK* 1)
(intern "*STUCK*" (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(shadow '*STUCK* (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(defconstant endpoint_msgs::McuStuckStatus::*STUCK* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(defconstant endpoint_msgs::McuStuckStatus::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::MCUSTUCKSTATUS"))
(defconstant endpoint_msgs::McuStuckStatus::*RESERVED2* 4)

(defun endpoint_msgs::McuStuckStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::McuStuckStatus::*NONE*)
        ((= const 1) 'endpoint_msgs::McuStuckStatus::*NO_STUCK*)
        ((= const 2) 'endpoint_msgs::McuStuckStatus::*STUCK*)
        ((= const 3) 'endpoint_msgs::McuStuckStatus::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::McuStuckStatus::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::McuStuckStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::McuStuckStatus
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

(setf (get endpoint_msgs::McuStuckStatus :md5sum-) "aafea29efd76f261c7767c8ae582b8e8")
(setf (get endpoint_msgs::McuStuckStatus :datatype-) "endpoint_msgs/McuStuckStatus")
(setf (get endpoint_msgs::McuStuckStatus :definition-)
      "uint8 NONE = 0
uint8 NO_STUCK = 1
uint8 STUCK = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

")



(provide :endpoint_msgs/McuStuckStatus "aafea29efd76f261c7767c8ae582b8e8")


