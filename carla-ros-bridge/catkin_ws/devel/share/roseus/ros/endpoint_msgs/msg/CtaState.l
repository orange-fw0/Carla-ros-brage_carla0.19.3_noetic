;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::CtaState)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'CtaState (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::CTASTATE")
  (make-package "ENDPOINT_MSGS::CTASTATE"))

(in-package "ROS")
;;//! \htmlinclude CtaState.msg.html


(intern "*NO_WARNING*" (find-package "ENDPOINT_MSGS::CTASTATE"))
(shadow '*NO_WARNING* (find-package "ENDPOINT_MSGS::CTASTATE"))
(defconstant endpoint_msgs::CtaState::*NO_WARNING* 0)
(intern "*WARNING_LEVE_1*" (find-package "ENDPOINT_MSGS::CTASTATE"))
(shadow '*WARNING_LEVE_1* (find-package "ENDPOINT_MSGS::CTASTATE"))
(defconstant endpoint_msgs::CtaState::*WARNING_LEVE_1* 1)
(intern "*WARNING_LEVE_2*" (find-package "ENDPOINT_MSGS::CTASTATE"))
(shadow '*WARNING_LEVE_2* (find-package "ENDPOINT_MSGS::CTASTATE"))
(defconstant endpoint_msgs::CtaState::*WARNING_LEVE_2* 2)

(defun endpoint_msgs::CtaState-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::CtaState::*NO_WARNING*)
        ((= const 1) 'endpoint_msgs::CtaState::*WARNING_LEVE_1*)
        ((= const 2) 'endpoint_msgs::CtaState::*WARNING_LEVE_2*)
        (t nil)))

(defclass endpoint_msgs::CtaState
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::CtaState
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

(setf (get endpoint_msgs::CtaState :md5sum-) "7f227b6b06394a644dd470c427758e87")
(setf (get endpoint_msgs::CtaState :datatype-) "endpoint_msgs/CtaState")
(setf (get endpoint_msgs::CtaState :definition-)
      "uint8 NO_WARNING = 0
uint8 WARNING_LEVE_1 = 1
uint8 WARNING_LEVE_2 = 2
uint8 value

")



(provide :endpoint_msgs/CtaState "7f227b6b06394a644dd470c427758e87")


