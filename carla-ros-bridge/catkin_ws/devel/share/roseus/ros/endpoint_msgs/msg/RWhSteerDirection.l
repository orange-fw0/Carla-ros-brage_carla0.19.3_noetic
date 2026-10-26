;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::RWhSteerDirection)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'RWhSteerDirection (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION")
  (make-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))

(in-package "ROS")
;;//! \htmlinclude RWhSteerDirection.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(defconstant endpoint_msgs::RWhSteerDirection::*NONE* 0)
(intern "*SAME_DIRECTION*" (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(shadow '*SAME_DIRECTION* (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(defconstant endpoint_msgs::RWhSteerDirection::*SAME_DIRECTION* 1)
(intern "*OPPOSITE_DIRECTION*" (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(shadow '*OPPOSITE_DIRECTION* (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(defconstant endpoint_msgs::RWhSteerDirection::*OPPOSITE_DIRECTION* 2)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(defconstant endpoint_msgs::RWhSteerDirection::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(defconstant endpoint_msgs::RWhSteerDirection::*RESERVED2* 4)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::RWHSTEERDIRECTION"))
(defconstant endpoint_msgs::RWhSteerDirection::*RESERVED3* 5)

(defun endpoint_msgs::RWhSteerDirection-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::RWhSteerDirection::*NONE*)
        ((= const 1) 'endpoint_msgs::RWhSteerDirection::*SAME_DIRECTION*)
        ((= const 2) 'endpoint_msgs::RWhSteerDirection::*OPPOSITE_DIRECTION*)
        ((= const 3) 'endpoint_msgs::RWhSteerDirection::*RESERVED1*)
        ((= const 4) 'endpoint_msgs::RWhSteerDirection::*RESERVED2*)
        ((= const 5) 'endpoint_msgs::RWhSteerDirection::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::RWhSteerDirection
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::RWhSteerDirection
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

(setf (get endpoint_msgs::RWhSteerDirection :md5sum-) "9362cea1c7a28196ed1e732ab0611b01")
(setf (get endpoint_msgs::RWhSteerDirection :datatype-) "endpoint_msgs/RWhSteerDirection")
(setf (get endpoint_msgs::RWhSteerDirection :definition-)
      "uint8 NONE = 0
uint8 SAME_DIRECTION = 1
uint8 OPPOSITE_DIRECTION = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

")



(provide :endpoint_msgs/RWhSteerDirection "9362cea1c7a28196ed1e732ab0611b01")


