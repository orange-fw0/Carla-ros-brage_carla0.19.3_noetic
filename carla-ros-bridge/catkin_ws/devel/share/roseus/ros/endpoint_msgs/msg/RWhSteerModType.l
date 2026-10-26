;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::RWhSteerModType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'RWhSteerModType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE")
  (make-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))

(in-package "ROS")
;;//! \htmlinclude RWhSteerModType.msg.html


(intern "*NO_REQUEST*" (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(shadow '*NO_REQUEST* (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(defconstant endpoint_msgs::RWhSteerModType::*NO_REQUEST* 0)
(intern "*CONTROL_REQUEST*" (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(shadow '*CONTROL_REQUEST* (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(defconstant endpoint_msgs::RWhSteerModType::*CONTROL_REQUEST* 1)
(intern "*LOCK_REQUEST*" (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(shadow '*LOCK_REQUEST* (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(defconstant endpoint_msgs::RWhSteerModType::*LOCK_REQUEST* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(defconstant endpoint_msgs::RWhSteerModType::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(defconstant endpoint_msgs::RWhSteerModType::*RESERVED2* 4)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::RWHSTEERMODTYPE"))
(defconstant endpoint_msgs::RWhSteerModType::*RESERVED3* 5)

(defun endpoint_msgs::RWhSteerModType-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::RWhSteerModType::*NO_REQUEST*)
        ((= const 1) 'endpoint_msgs::RWhSteerModType::*CONTROL_REQUEST*)
        ((= const 2) 'endpoint_msgs::RWhSteerModType::*LOCK_REQUEST*)
        ((= const 3) 'endpoint_msgs::RWhSteerModType::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::RWhSteerModType::*RESERVED2*)
        ((= const 5) 'endpoint_msgs::RWhSteerModType::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::RWhSteerModType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::RWhSteerModType
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

(setf (get endpoint_msgs::RWhSteerModType :md5sum-) "5d3c7dd4d5b3fd4b837e05d67fe9d0ca")
(setf (get endpoint_msgs::RWhSteerModType :datatype-) "endpoint_msgs/RWhSteerModType")
(setf (get endpoint_msgs::RWhSteerModType :definition-)
      "uint8 NO_REQUEST = 0
uint8 CONTROL_REQUEST = 1
uint8 LOCK_REQUEST = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

")



(provide :endpoint_msgs/RWhSteerModType "5d3c7dd4d5b3fd4b837e05d67fe9d0ca")


