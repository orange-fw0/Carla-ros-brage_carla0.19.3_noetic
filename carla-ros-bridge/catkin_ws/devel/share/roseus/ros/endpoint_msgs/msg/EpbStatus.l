;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::EpbStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'EpbStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::EPBSTATUS")
  (make-package "ENDPOINT_MSGS::EPBSTATUS"))

(in-package "ROS")
;;//! \htmlinclude EpbStatus.msg.html


(intern "*RELEASE*" (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(shadow '*RELEASE* (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(defconstant endpoint_msgs::EpbStatus::*RELEASE* 0)
(intern "*PULLING*" (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(shadow '*PULLING* (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(defconstant endpoint_msgs::EpbStatus::*PULLING* 1)
(intern "*PULL*" (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(shadow '*PULL* (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(defconstant endpoint_msgs::EpbStatus::*PULL* 2)
(intern "*RELEASING*" (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(shadow '*RELEASING* (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(defconstant endpoint_msgs::EpbStatus::*RELEASING* 3)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::EPBSTATUS"))
(defconstant endpoint_msgs::EpbStatus::*RESERVED* 4)

(defun endpoint_msgs::EpbStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::EpbStatus::*RELEASE*)
        ((= const 1) 'endpoint_msgs::EpbStatus::*PULLING*)
        ((= const 2) 'endpoint_msgs::EpbStatus::*PULL*)
        ((= const 3) 'endpoint_msgs::EpbStatus::*RELEASING*)
        ((= const 4) 'endpoint_msgs::EpbStatus::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::EpbStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::EpbStatus
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

(setf (get endpoint_msgs::EpbStatus :md5sum-) "66f63b1bf26a5a5eef8e62bbe2c809c6")
(setf (get endpoint_msgs::EpbStatus :datatype-) "endpoint_msgs/EpbStatus")
(setf (get endpoint_msgs::EpbStatus :definition-)
      "uint8 RELEASE = 0
uint8 PULLING = 1
uint8 PULL = 2
uint8 RELEASING = 3
uint8 RESERVED = 4
uint8 value

")



(provide :endpoint_msgs/EpbStatus "66f63b1bf26a5a5eef8e62bbe2c809c6")


