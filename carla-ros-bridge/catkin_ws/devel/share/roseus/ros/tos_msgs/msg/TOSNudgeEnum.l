;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSNudgeEnum)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSNudgeEnum (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSNUDGEENUM")
  (make-package "TOS_MSGS::TOSNUDGEENUM"))

(in-package "ROS")
;;//! \htmlinclude TOSNudgeEnum.msg.html


(intern "*NONE*" (find-package "TOS_MSGS::TOSNUDGEENUM"))
(shadow '*NONE* (find-package "TOS_MSGS::TOSNUDGEENUM"))
(defconstant tos_msgs::TOSNudgeEnum::*NONE* 0)
(intern "*LEFT*" (find-package "TOS_MSGS::TOSNUDGEENUM"))
(shadow '*LEFT* (find-package "TOS_MSGS::TOSNUDGEENUM"))
(defconstant tos_msgs::TOSNudgeEnum::*LEFT* 1)
(intern "*RIGHT*" (find-package "TOS_MSGS::TOSNUDGEENUM"))
(shadow '*RIGHT* (find-package "TOS_MSGS::TOSNUDGEENUM"))
(defconstant tos_msgs::TOSNudgeEnum::*RIGHT* 2)

(defun tos_msgs::TOSNudgeEnum-to-symbol (const)
  (cond
        ((= const 0) 'tos_msgs::TOSNudgeEnum::*NONE*)
        ((= const 1) 'tos_msgs::TOSNudgeEnum::*LEFT*)
        ((= const 2) 'tos_msgs::TOSNudgeEnum::*RIGHT*)
        (t nil)))

(defclass tos_msgs::TOSNudgeEnum
  :super ros::object
  :slots (_value ))

(defmethod tos_msgs::TOSNudgeEnum
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

(setf (get tos_msgs::TOSNudgeEnum :md5sum-) "52e47837caa6386d671c442331ecc1cd")
(setf (get tos_msgs::TOSNudgeEnum :datatype-) "tos_msgs/TOSNudgeEnum")
(setf (get tos_msgs::TOSNudgeEnum :definition-)
      "uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 value

")



(provide :tos_msgs/TOSNudgeEnum "52e47837caa6386d671c442331ecc1cd")


