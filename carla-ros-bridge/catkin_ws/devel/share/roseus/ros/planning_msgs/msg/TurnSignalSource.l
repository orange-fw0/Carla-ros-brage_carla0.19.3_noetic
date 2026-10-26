;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TurnSignalSource)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TurnSignalSource (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TURNSIGNALSOURCE")
  (make-package "PLANNING_MSGS::TURNSIGNALSOURCE"))

(in-package "ROS")
;;//! \htmlinclude TurnSignalSource.msg.html


(intern "*NONE*" (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(shadow '*NONE* (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(defconstant planning_msgs::TurnSignalSource::*NONE* 0)
(intern "*MAP*" (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(shadow '*MAP* (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(defconstant planning_msgs::TurnSignalSource::*MAP* 1)
(intern "*LC*" (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(shadow '*LC* (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(defconstant planning_msgs::TurnSignalSource::*LC* 2)
(intern "*LB*" (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(shadow '*LB* (find-package "PLANNING_MSGS::TURNSIGNALSOURCE"))
(defconstant planning_msgs::TurnSignalSource::*LB* 3)

(defun planning_msgs::TurnSignalSource-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::TurnSignalSource::*NONE*)
        ((= const 1) 'planning_msgs::TurnSignalSource::*MAP*)
        ((= const 2) 'planning_msgs::TurnSignalSource::*LC*)
        ((= const 3) 'planning_msgs::TurnSignalSource::*LB*)
        (t nil)))

(defclass planning_msgs::TurnSignalSource
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::TurnSignalSource
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

(setf (get planning_msgs::TurnSignalSource :md5sum-) "ed55e23ce335dd0eb3b172e8793e5cf5")
(setf (get planning_msgs::TurnSignalSource :datatype-) "planning_msgs/TurnSignalSource")
(setf (get planning_msgs::TurnSignalSource :definition-)
      "uint8 NONE = 0
uint8 MAP = 1
uint8 LC = 2
uint8 LB = 3
uint8 value

")



(provide :planning_msgs/TurnSignalSource "ed55e23ce335dd0eb3b172e8793e5cf5")


