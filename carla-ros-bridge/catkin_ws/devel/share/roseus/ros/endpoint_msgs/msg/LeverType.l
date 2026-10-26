;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::LeverType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'LeverType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::LEVERTYPE")
  (make-package "ENDPOINT_MSGS::LEVERTYPE"))

(in-package "ROS")
;;//! \htmlinclude LeverType.msg.html


(intern "*LEVER_TYPE_MECHANICAL*" (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(shadow '*LEVER_TYPE_MECHANICAL* (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(defconstant endpoint_msgs::LeverType::*LEVER_TYPE_MECHANICAL* 0)
(intern "*LEVER_TYPE_ELECTRONIC*" (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(shadow '*LEVER_TYPE_ELECTRONIC* (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(defconstant endpoint_msgs::LeverType::*LEVER_TYPE_ELECTRONIC* 1)
(intern "*LEVER_STATE_RESERVED1*" (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(shadow '*LEVER_STATE_RESERVED1* (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(defconstant endpoint_msgs::LeverType::*LEVER_STATE_RESERVED1* 2)
(intern "*LEVER_STATE_RESERVED2*" (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(shadow '*LEVER_STATE_RESERVED2* (find-package "ENDPOINT_MSGS::LEVERTYPE"))
(defconstant endpoint_msgs::LeverType::*LEVER_STATE_RESERVED2* 3)

(defun endpoint_msgs::LeverType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::LeverType::*LEVER_TYPE_MECHANICAL*)
        ((= const 1) 'endpoint_msgs::LeverType::*LEVER_TYPE_ELECTRONIC*)
        ((= const 2) 'endpoint_msgs::LeverType::*LEVER_STATE_RESERVED1*)
        ((= const 3) 'endpoint_msgs::LeverType::*LEVER_STATE_RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::LeverType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::LeverType
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

(setf (get endpoint_msgs::LeverType :md5sum-) "1e1077c08eba8a42fc300f02b5d703fd")
(setf (get endpoint_msgs::LeverType :datatype-) "endpoint_msgs/LeverType")
(setf (get endpoint_msgs::LeverType :definition-)
      "uint8 LEVER_TYPE_MECHANICAL = 0
uint8 LEVER_TYPE_ELECTRONIC = 1
uint8 LEVER_STATE_RESERVED1 = 2
uint8 LEVER_STATE_RESERVED2 = 3
uint8 value

")



(provide :endpoint_msgs/LeverType "1e1077c08eba8a42fc300f02b5d703fd")


