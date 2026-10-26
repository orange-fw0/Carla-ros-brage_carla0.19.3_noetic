;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TurnSignal)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TurnSignal (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TURNSIGNAL")
  (make-package "PLANNING_MSGS::TURNSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude TurnSignal.msg.html


(intern "*NONE*" (find-package "PLANNING_MSGS::TURNSIGNAL"))
(shadow '*NONE* (find-package "PLANNING_MSGS::TURNSIGNAL"))
(defconstant planning_msgs::TurnSignal::*NONE* 0)
(intern "*LEFT*" (find-package "PLANNING_MSGS::TURNSIGNAL"))
(shadow '*LEFT* (find-package "PLANNING_MSGS::TURNSIGNAL"))
(defconstant planning_msgs::TurnSignal::*LEFT* 1)
(intern "*RIGHT*" (find-package "PLANNING_MSGS::TURNSIGNAL"))
(shadow '*RIGHT* (find-package "PLANNING_MSGS::TURNSIGNAL"))
(defconstant planning_msgs::TurnSignal::*RIGHT* 2)
(intern "*EMERGENCY_FLASHER*" (find-package "PLANNING_MSGS::TURNSIGNAL"))
(shadow '*EMERGENCY_FLASHER* (find-package "PLANNING_MSGS::TURNSIGNAL"))
(defconstant planning_msgs::TurnSignal::*EMERGENCY_FLASHER* 3)

(defun planning_msgs::TurnSignal-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::TurnSignal::*NONE*)
        ((= const 1) 'planning_msgs::TurnSignal::*LEFT*)
        ((= const 2) 'planning_msgs::TurnSignal::*RIGHT*)
        ((= const 3) 'planning_msgs::TurnSignal::*EMERGENCY_FLASHER*)
        (t nil)))

(defclass planning_msgs::TurnSignal
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::TurnSignal
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

(setf (get planning_msgs::TurnSignal :md5sum-) "347a122facc583f5229690ef90f24892")
(setf (get planning_msgs::TurnSignal :datatype-) "planning_msgs/TurnSignal")
(setf (get planning_msgs::TurnSignal :definition-)
      "uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 value

")



(provide :planning_msgs/TurnSignal "347a122facc583f5229690ef90f24892")


