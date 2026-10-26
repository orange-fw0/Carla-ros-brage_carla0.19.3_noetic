;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::FeetOffStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'FeetOffStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::FEETOFFSTATUS")
  (make-package "ENDPOINT_MSGS::FEETOFFSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FeetOffStatus.msg.html


(intern "*FEET_OFF_STATUS_NONE*" (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(shadow '*FEET_OFF_STATUS_NONE* (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(defconstant endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_NONE* 0)
(intern "*FEET_OFF_STATUS_TRUE*" (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(shadow '*FEET_OFF_STATUS_TRUE* (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(defconstant endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_TRUE* 1)
(intern "*FEET_OFF_STATUS_FALSE*" (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(shadow '*FEET_OFF_STATUS_FALSE* (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(defconstant endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_FALSE* 2)
(intern "*FEET_OFF_STATUS_INVALUD*" (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(shadow '*FEET_OFF_STATUS_INVALUD* (find-package "ENDPOINT_MSGS::FEETOFFSTATUS"))
(defconstant endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_INVALUD* 255)

(defun endpoint_msgs::FeetOffStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_NONE*)
        ((= const 1) 'endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_TRUE*)
        ((= const 2) 'endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_FALSE*)
        ((= const 255) 'endpoint_msgs::FeetOffStatus::*FEET_OFF_STATUS_INVALUD*)
        (t nil)))

(defclass endpoint_msgs::FeetOffStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::FeetOffStatus
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

(setf (get endpoint_msgs::FeetOffStatus :md5sum-) "c8a5f95f67dd2d55b0c42ff5b60b9333")
(setf (get endpoint_msgs::FeetOffStatus :datatype-) "endpoint_msgs/FeetOffStatus")
(setf (get endpoint_msgs::FeetOffStatus :definition-)
      "uint8 FEET_OFF_STATUS_NONE = 0
uint8 FEET_OFF_STATUS_TRUE = 1
uint8 FEET_OFF_STATUS_FALSE = 2
uint8 FEET_OFF_STATUS_INVALUD = 255
uint8 value

")



(provide :endpoint_msgs/FeetOffStatus "c8a5f95f67dd2d55b0c42ff5b60b9333")


