;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::DlpStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'DlpStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::DLPSTATUS")
  (make-package "ENDPOINT_MSGS::DLPSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DlpStatus.msg.html


(intern "*NO_WARNING*" (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(shadow '*NO_WARNING* (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(defconstant endpoint_msgs::DlpStatus::*NO_WARNING* 0)
(intern "*WARNING_LEVEL1*" (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(shadow '*WARNING_LEVEL1* (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(defconstant endpoint_msgs::DlpStatus::*WARNING_LEVEL1* 1)
(intern "*WARNING_LEVEL2*" (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(shadow '*WARNING_LEVEL2* (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(defconstant endpoint_msgs::DlpStatus::*WARNING_LEVEL2* 2)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::DLPSTATUS"))
(defconstant endpoint_msgs::DlpStatus::*RESERVED* 3)

(defun endpoint_msgs::DlpStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::DlpStatus::*NO_WARNING*)
        ((= const 1) 'endpoint_msgs::DlpStatus::*WARNING_LEVEL1*)
        ((= const 2) 'endpoint_msgs::DlpStatus::*WARNING_LEVEL2*)
        ((= const 3) 'endpoint_msgs::DlpStatus::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::DlpStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::DlpStatus
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

(setf (get endpoint_msgs::DlpStatus :md5sum-) "11501c2a174493ba0b45fd8ec01e98ce")
(setf (get endpoint_msgs::DlpStatus :datatype-) "endpoint_msgs/DlpStatus")
(setf (get endpoint_msgs::DlpStatus :definition-)
      "uint8 NO_WARNING = 0
uint8 WARNING_LEVEL1 = 1
uint8 WARNING_LEVEL2 = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/DlpStatus "11501c2a174493ba0b45fd8ec01e98ce")


