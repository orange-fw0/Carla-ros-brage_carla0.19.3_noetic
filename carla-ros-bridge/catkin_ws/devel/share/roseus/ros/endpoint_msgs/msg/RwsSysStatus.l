;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::RwsSysStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'RwsSysStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::RWSSYSSTATUS")
  (make-package "ENDPOINT_MSGS::RWSSYSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RwsSysStatus.msg.html


(intern "*STANDARD_MODE*" (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(shadow '*STANDARD_MODE* (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(defconstant endpoint_msgs::RwsSysStatus::*STANDARD_MODE* 0)
(intern "*COMFORTABLE_MODE*" (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(shadow '*COMFORTABLE_MODE* (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(defconstant endpoint_msgs::RwsSysStatus::*COMFORTABLE_MODE* 1)
(intern "*SPORT_MODE*" (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(shadow '*SPORT_MODE* (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(defconstant endpoint_msgs::RwsSysStatus::*SPORT_MODE* 2)
(intern "*AD_MODE*" (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(shadow '*AD_MODE* (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(defconstant endpoint_msgs::RwsSysStatus::*AD_MODE* 3)
(intern "*ADLOCK_MODE*" (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(shadow '*ADLOCK_MODE* (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(defconstant endpoint_msgs::RwsSysStatus::*ADLOCK_MODE* 4)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::RWSSYSSTATUS"))
(defconstant endpoint_msgs::RwsSysStatus::*RESERVED* 5)

(defun endpoint_msgs::RwsSysStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::RwsSysStatus::*STANDARD_MODE*)
        ((= const 1) 'endpoint_msgs::RwsSysStatus::*COMFORTABLE_MODE*)
        ((= const 2) 'endpoint_msgs::RwsSysStatus::*SPORT_MODE*)
        ((= const 3) 'endpoint_msgs::RwsSysStatus::*AD_MODE*)
        ((= const 4) 'endpoint_msgs::RwsSysStatus::*ADLOCK_MODE*)
        ((= const 5) 'endpoint_msgs::RwsSysStatus::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::RwsSysStatus
  :super ros::object
  :slots (_valid _value ))

(defmethod endpoint_msgs::RwsSysStatus
  (:init
   (&key
    ((:valid __valid) nil)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _value (round __value))
   self)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::RwsSysStatus :md5sum-) "38403c07eda968077bd17861bf649086")
(setf (get endpoint_msgs::RwsSysStatus :datatype-) "endpoint_msgs/RwsSysStatus")
(setf (get endpoint_msgs::RwsSysStatus :definition-)
      "uint8 STANDARD_MODE = 0
uint8 COMFORTABLE_MODE = 1
uint8 SPORT_MODE = 2
uint8 AD_MODE = 3
uint8 ADLOCK_MODE = 4
uint8 RESERVED = 5
bool valid
uint8 value

")



(provide :endpoint_msgs/RwsSysStatus "38403c07eda968077bd17861bf649086")


