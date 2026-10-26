;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::McuStandstillStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'McuStandstillStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS")
  (make-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude McuStandstillStatus.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(defconstant endpoint_msgs::McuStandstillStatus::*NONE* 0)
(intern "*NO_STANDSTILL*" (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(shadow '*NO_STANDSTILL* (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(defconstant endpoint_msgs::McuStandstillStatus::*NO_STANDSTILL* 1)
(intern "*STANDSTILL*" (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(shadow '*STANDSTILL* (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(defconstant endpoint_msgs::McuStandstillStatus::*STANDSTILL* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(defconstant endpoint_msgs::McuStandstillStatus::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::MCUSTANDSTILLSTATUS"))
(defconstant endpoint_msgs::McuStandstillStatus::*RESERVED2* 4)

(defun endpoint_msgs::McuStandstillStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::McuStandstillStatus::*NONE*)
        ((= const 1) 'endpoint_msgs::McuStandstillStatus::*NO_STANDSTILL*)
        ((= const 2) 'endpoint_msgs::McuStandstillStatus::*STANDSTILL*)
        ((= const 3) 'endpoint_msgs::McuStandstillStatus::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::McuStandstillStatus::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::McuStandstillStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::McuStandstillStatus
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

(setf (get endpoint_msgs::McuStandstillStatus :md5sum-) "4858e6049a760bb4bda6347326ce6944")
(setf (get endpoint_msgs::McuStandstillStatus :datatype-) "endpoint_msgs/McuStandstillStatus")
(setf (get endpoint_msgs::McuStandstillStatus :definition-)
      "uint8 NONE = 0
uint8 NO_STANDSTILL = 1
uint8 STANDSTILL = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

")



(provide :endpoint_msgs/McuStandstillStatus "4858e6049a760bb4bda6347326ce6944")


