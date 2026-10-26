;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSDecisionEnum)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSDecisionEnum (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSDECISIONENUM")
  (make-package "TOS_MSGS::TOSDECISIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TOSDecisionEnum.msg.html


(intern "*NUDGE*" (find-package "TOS_MSGS::TOSDECISIONENUM"))
(shadow '*NUDGE* (find-package "TOS_MSGS::TOSDECISIONENUM"))
(defconstant tos_msgs::TOSDecisionEnum::*NUDGE* 0)
(intern "*LEFT_NUDGE*" (find-package "TOS_MSGS::TOSDECISIONENUM"))
(shadow '*LEFT_NUDGE* (find-package "TOS_MSGS::TOSDECISIONENUM"))
(defconstant tos_msgs::TOSDecisionEnum::*LEFT_NUDGE* 1)
(intern "*RIGHT_NUDGE*" (find-package "TOS_MSGS::TOSDECISIONENUM"))
(shadow '*RIGHT_NUDGE* (find-package "TOS_MSGS::TOSDECISIONENUM"))
(defconstant tos_msgs::TOSDecisionEnum::*RIGHT_NUDGE* 2)
(intern "*STOP*" (find-package "TOS_MSGS::TOSDECISIONENUM"))
(shadow '*STOP* (find-package "TOS_MSGS::TOSDECISIONENUM"))
(defconstant tos_msgs::TOSDecisionEnum::*STOP* 3)

(defun tos_msgs::TOSDecisionEnum-to-symbol (const)
  (cond
        ((= const 0) 'tos_msgs::TOSDecisionEnum::*NUDGE*)
        ((= const 1) 'tos_msgs::TOSDecisionEnum::*LEFT_NUDGE*)
        ((= const 2) 'tos_msgs::TOSDecisionEnum::*RIGHT_NUDGE*)
        ((= const 3) 'tos_msgs::TOSDecisionEnum::*STOP*)
        (t nil)))

(defclass tos_msgs::TOSDecisionEnum
  :super ros::object
  :slots (_value ))

(defmethod tos_msgs::TOSDecisionEnum
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

(setf (get tos_msgs::TOSDecisionEnum :md5sum-) "ff5a2cc5f5b08c9cb61a89c663b98043")
(setf (get tos_msgs::TOSDecisionEnum :datatype-) "tos_msgs/TOSDecisionEnum")
(setf (get tos_msgs::TOSDecisionEnum :definition-)
      "uint8 NUDGE = 0
uint8 LEFT_NUDGE = 1
uint8 RIGHT_NUDGE = 2
uint8 STOP = 3
uint8 value

")



(provide :tos_msgs/TOSDecisionEnum "ff5a2cc5f5b08c9cb61a89c663b98043")


