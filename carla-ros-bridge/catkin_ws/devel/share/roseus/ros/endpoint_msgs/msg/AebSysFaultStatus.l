;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebSysFaultStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebSysFaultStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS")
  (make-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude AebSysFaultStatus.msg.html


(intern "*AEB_SYS_FALULT_NO_ERROR*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_NO_ERROR* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_NO_ERROR* 0)
(intern "*AEB_SYS_FALULT_PERFORMANCE_DEGRADATION*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_PERFORMANCE_DEGRADATION* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_PERFORMANCE_DEGRADATION* 1)
(intern "*AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE* 2)
(intern "*AEB_SYS_FALULT_SERVICE_REQUIRED*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_SERVICE_REQUIRED* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_SERVICE_REQUIRED* 3)
(intern "*AEB_SYS_FALULT_RESERVED1*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_RESERVED1* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED1* 4)
(intern "*AEB_SYS_FALULT_RESERVED2*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_RESERVED2* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED2* 5)
(intern "*AEB_SYS_FALULT_RESERVED3*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_RESERVED3* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED3* 6)
(intern "*AEB_SYS_FALULT_RESERVED4*" (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(shadow '*AEB_SYS_FALULT_RESERVED4* (find-package "ENDPOINT_MSGS::AEBSYSFAULTSTATUS"))
(defconstant endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED4* 7)

(defun endpoint_msgs::AebSysFaultStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_NO_ERROR*)
        ((= const 1) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_PERFORMANCE_DEGRADATION*)
        ((= const 2) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE*)
        ((= const 3) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_SERVICE_REQUIRED*)
        ((= const 4) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED1*)
        ((= const 5) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED2*)
        ((= const 6) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED3*)
        ((= const 7) 'endpoint_msgs::AebSysFaultStatus::*AEB_SYS_FALULT_RESERVED4*)
        (t nil)))

(defclass endpoint_msgs::AebSysFaultStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::AebSysFaultStatus
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

(setf (get endpoint_msgs::AebSysFaultStatus :md5sum-) "751d882f63f405b4529da3ed221c5804")
(setf (get endpoint_msgs::AebSysFaultStatus :datatype-) "endpoint_msgs/AebSysFaultStatus")
(setf (get endpoint_msgs::AebSysFaultStatus :definition-)
      "uint8 AEB_SYS_FALULT_NO_ERROR = 0
uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1
uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2
uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3
uint8 AEB_SYS_FALULT_RESERVED1 = 4
uint8 AEB_SYS_FALULT_RESERVED2 = 5
uint8 AEB_SYS_FALULT_RESERVED3 = 6
uint8 AEB_SYS_FALULT_RESERVED4 = 7
uint8 value

")



(provide :endpoint_msgs/AebSysFaultStatus "751d882f63f405b4529da3ed221c5804")


