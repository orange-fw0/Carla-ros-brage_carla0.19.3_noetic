;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSResponseDecisionEnum)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSResponseDecisionEnum (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSRESPONSEDECISIONENUM")
  (make-package "TOS_MSGS::TOSRESPONSEDECISIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TOSResponseDecisionEnum.msg.html


(intern "*UNKNOWN*" (find-package "TOS_MSGS::TOSRESPONSEDECISIONENUM"))
(shadow '*UNKNOWN* (find-package "TOS_MSGS::TOSRESPONSEDECISIONENUM"))
(defconstant tos_msgs::TOSResponseDecisionEnum::*UNKNOWN* 0)
(intern "*YES*" (find-package "TOS_MSGS::TOSRESPONSEDECISIONENUM"))
(shadow '*YES* (find-package "TOS_MSGS::TOSRESPONSEDECISIONENUM"))
(defconstant tos_msgs::TOSResponseDecisionEnum::*YES* 1)
(intern "*NO*" (find-package "TOS_MSGS::TOSRESPONSEDECISIONENUM"))
(shadow '*NO* (find-package "TOS_MSGS::TOSRESPONSEDECISIONENUM"))
(defconstant tos_msgs::TOSResponseDecisionEnum::*NO* 2)

(defun tos_msgs::TOSResponseDecisionEnum-to-symbol (const)
  (cond
        ((= const 0) 'tos_msgs::TOSResponseDecisionEnum::*UNKNOWN*)
        ((= const 1) 'tos_msgs::TOSResponseDecisionEnum::*YES*)
        ((= const 2) 'tos_msgs::TOSResponseDecisionEnum::*NO*)
        (t nil)))

(defclass tos_msgs::TOSResponseDecisionEnum
  :super ros::object
  :slots (_value ))

(defmethod tos_msgs::TOSResponseDecisionEnum
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

(setf (get tos_msgs::TOSResponseDecisionEnum :md5sum-) "11c04b1c44a22a3df004b38f5a932cbf")
(setf (get tos_msgs::TOSResponseDecisionEnum :datatype-) "tos_msgs/TOSResponseDecisionEnum")
(setf (get tos_msgs::TOSResponseDecisionEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 YES = 1
uint8 NO = 2
uint8 value

")



(provide :tos_msgs/TOSResponseDecisionEnum "11c04b1c44a22a3df004b38f5a932cbf")


