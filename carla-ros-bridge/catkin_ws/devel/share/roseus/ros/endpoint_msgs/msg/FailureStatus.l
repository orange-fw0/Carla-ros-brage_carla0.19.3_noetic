;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::FailureStatus)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'FailureStatus (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::FAILURESTATUS")
  (make-package "ENDPOINT_MSGS::FAILURESTATUS"))

(in-package "ROS")
;;//! \htmlinclude FailureStatus.msg.html


(intern "*NOFAILURE*" (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(shadow '*NOFAILURE* (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(defconstant endpoint_msgs::FailureStatus::*NOFAILURE* 0)
(intern "*TEMPORARYFAILURE*" (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(shadow '*TEMPORARYFAILURE* (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(defconstant endpoint_msgs::FailureStatus::*TEMPORARYFAILURE* 1)
(intern "*FAILURE*" (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(shadow '*FAILURE* (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(defconstant endpoint_msgs::FailureStatus::*FAILURE* 2)
(intern "*RESERVED*" (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(shadow '*RESERVED* (find-package "ENDPOINT_MSGS::FAILURESTATUS"))
(defconstant endpoint_msgs::FailureStatus::*RESERVED* 3)

(defun endpoint_msgs::FailureStatus-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::FailureStatus::*NOFAILURE*)
        ((= const 1) 'endpoint_msgs::FailureStatus::*TEMPORARYFAILURE*)
        ((= const 2) 'endpoint_msgs::FailureStatus::*FAILURE*)
        ((= const 3) 'endpoint_msgs::FailureStatus::*RESERVED*)
        (t nil)))

(defclass endpoint_msgs::FailureStatus
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::FailureStatus
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

(setf (get endpoint_msgs::FailureStatus :md5sum-) "e0a9567c067cb186bcfa768f99b8baf5")
(setf (get endpoint_msgs::FailureStatus :datatype-) "endpoint_msgs/FailureStatus")
(setf (get endpoint_msgs::FailureStatus :definition-)
      "uint8 NOFAILURE = 0
uint8 TEMPORARYFAILURE = 1
uint8 FAILURE = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/FailureStatus "e0a9567c067cb186bcfa768f99b8baf5")


