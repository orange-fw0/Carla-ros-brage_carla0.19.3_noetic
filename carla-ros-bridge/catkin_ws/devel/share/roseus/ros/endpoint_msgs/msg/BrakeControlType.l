;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeControlType)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeControlType (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE")
  (make-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))

(in-package "ROS")
;;//! \htmlinclude BrakeControlType.msg.html


(intern "*NORMAL*" (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(shadow '*NORMAL* (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(defconstant endpoint_msgs::BrakeControlType::*NORMAL* 1)
(intern "*EMERGENT*" (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(shadow '*EMERGENT* (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(defconstant endpoint_msgs::BrakeControlType::*EMERGENT* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(defconstant endpoint_msgs::BrakeControlType::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::BRAKECONTROLTYPE"))
(defconstant endpoint_msgs::BrakeControlType::*RESERVED2* 4)

(defun endpoint_msgs::BrakeControlType-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::BrakeControlType::*NORMAL*)
        ((= const 2) 'endpoint_msgs::BrakeControlType::*EMERGENT*)
        ((= const 3) 'endpoint_msgs::BrakeControlType::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::BrakeControlType::*RESERVED2*)
        (t nil)))

(defclass endpoint_msgs::BrakeControlType
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::BrakeControlType
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

(setf (get endpoint_msgs::BrakeControlType :md5sum-) "f6ed86407baed054a1493d239959352c")
(setf (get endpoint_msgs::BrakeControlType :datatype-) "endpoint_msgs/BrakeControlType")
(setf (get endpoint_msgs::BrakeControlType :definition-)
      "uint8 NORMAL = 1
uint8 EMERGENT = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

")



(provide :endpoint_msgs/BrakeControlType "f6ed86407baed054a1493d239959352c")


