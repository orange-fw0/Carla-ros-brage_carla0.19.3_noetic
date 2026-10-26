;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::TurnSignal)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'TurnSignal (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::TURNSIGNAL")
  (make-package "ENDPOINT_MSGS::TURNSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude TurnSignal.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(defconstant endpoint_msgs::TurnSignal::*NONE* 0)
(intern "*LEFT*" (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(shadow '*LEFT* (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(defconstant endpoint_msgs::TurnSignal::*LEFT* 1)
(intern "*RIGHT*" (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(shadow '*RIGHT* (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(defconstant endpoint_msgs::TurnSignal::*RIGHT* 2)
(intern "*EMERGENCY_FLASHER*" (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(shadow '*EMERGENCY_FLASHER* (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(defconstant endpoint_msgs::TurnSignal::*EMERGENCY_FLASHER* 3)
(intern "*INVALID*" (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(shadow '*INVALID* (find-package "ENDPOINT_MSGS::TURNSIGNAL"))
(defconstant endpoint_msgs::TurnSignal::*INVALID* 255)

(defun endpoint_msgs::TurnSignal-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::TurnSignal::*NONE*)
        ((= const 1) 'endpoint_msgs::TurnSignal::*LEFT*)
        ((= const 2) 'endpoint_msgs::TurnSignal::*RIGHT*)
        ((= const 3) 'endpoint_msgs::TurnSignal::*EMERGENCY_FLASHER*)
        ((= const 255) 'endpoint_msgs::TurnSignal::*INVALID*)
        (t nil)))

(defclass endpoint_msgs::TurnSignal
  :super ros::object
  :slots (_value ))

(defmethod endpoint_msgs::TurnSignal
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

(setf (get endpoint_msgs::TurnSignal :md5sum-) "4d3612011ca860bf19308d130ceeffaa")
(setf (get endpoint_msgs::TurnSignal :datatype-) "endpoint_msgs/TurnSignal")
(setf (get endpoint_msgs::TurnSignal :definition-)
      "uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/TurnSignal "4d3612011ca860bf19308d130ceeffaa")


