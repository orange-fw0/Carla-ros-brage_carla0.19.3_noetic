;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::LdpStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'LdpStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::LDPSTATUS")
  (make-package "ENDPOINT_MSGS::LDPSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LdpStatus.msg.html


(intern "*LDP_STATUS_OFF*" (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(shadow '*LDP_STATUS_OFF* (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(defconstant endpoint_msgs::LdpStatus::*LDP_STATUS_OFF* 0)
(intern "*LDP_STATUS_STANDBY*" (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(shadow '*LDP_STATUS_STANDBY* (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(defconstant endpoint_msgs::LdpStatus::*LDP_STATUS_STANDBY* 1)
(intern "*LDP_STATUS_ACTIVE*" (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(shadow '*LDP_STATUS_ACTIVE* (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(defconstant endpoint_msgs::LdpStatus::*LDP_STATUS_ACTIVE* 2)
(intern "*LDP_STATUS_RESERVED*" (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(shadow '*LDP_STATUS_RESERVED* (find-package "ENDPOINT_MSGS::LDPSTATUS"))
(defconstant endpoint_msgs::LdpStatus::*LDP_STATUS_RESERVED* 3)

(defun endpoint_msgs::LdpStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::LdpStatus::*LDP_STATUS_OFF*)
        ((= const 1) 'endpoint_msgs::LdpStatus::*LDP_STATUS_STANDBY*)
        ((= const 2) 'endpoint_msgs::LdpStatus::*LDP_STATUS_ACTIVE*)
        ((= const 3) 'endpoint_msgs::LdpStatus::*LDP_STATUS_RESERVED*)
        (t nil)))

(defclass endpoint_msgs::LdpStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::LdpStatus
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

(setf (get endpoint_msgs::LdpStatus :md5sum-) "04a3e6f6e928c89fe790edaac4235d8d")
(setf (get endpoint_msgs::LdpStatus :datatype-) "endpoint_msgs/LdpStatus")
(setf (get endpoint_msgs::LdpStatus :definition-)
      "uint8 LDP_STATUS_OFF = 0
uint8 LDP_STATUS_STANDBY = 1
uint8 LDP_STATUS_ACTIVE = 2
uint8 LDP_STATUS_RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/LdpStatus "04a3e6f6e928c89fe790edaac4235d8d")


