;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::RearviewMirrorAdjustSwitch)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'RearviewMirrorAdjustSwitch (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH")
  (make-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH"))

(in-package "ROS")
;;//! \htmlinclude RearviewMirrorAdjustSwitch.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH"))
(defconstant endpoint_msgs::RearviewMirrorAdjustSwitch::*NONE* 0)
(intern "*ON*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH"))
(shadow '*ON* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH"))
(defconstant endpoint_msgs::RearviewMirrorAdjustSwitch::*ON* 1)
(intern "*OFF*" (find-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH"))
(shadow '*OFF* (find-package "ENDPOINT_MSGS::REARVIEWMIRRORADJUSTSWITCH"))
(defconstant endpoint_msgs::RearviewMirrorAdjustSwitch::*OFF* 2)

(defun endpoint_msgs::RearviewMirrorAdjustSwitch-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::RearviewMirrorAdjustSwitch::*NONE*)
        ((= const 1) 'endpoint_msgs::RearviewMirrorAdjustSwitch::*ON*)
        ((= const 2) 'endpoint_msgs::RearviewMirrorAdjustSwitch::*OFF*)
        (t nil)))

(defclass endpoint_msgs::RearviewMirrorAdjustSwitch
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::RearviewMirrorAdjustSwitch
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

(setf (get endpoint_msgs::RearviewMirrorAdjustSwitch :md5sum-) "59da5d40666a8ad7d16eafcc1633ddbf")
(setf (get endpoint_msgs::RearviewMirrorAdjustSwitch :datatype-) "endpoint_msgs/RearviewMirrorAdjustSwitch")
(setf (get endpoint_msgs::RearviewMirrorAdjustSwitch :definition-)
      "uint8 NONE = 0
uint8 ON = 1
uint8 OFF = 2
uint8 value

")



(provide :endpoint_msgs/RearviewMirrorAdjustSwitch "59da5d40666a8ad7d16eafcc1633ddbf")


