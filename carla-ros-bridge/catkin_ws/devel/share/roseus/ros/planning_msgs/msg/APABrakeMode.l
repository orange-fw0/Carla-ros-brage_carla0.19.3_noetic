;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::APABrakeMode)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'APABrakeMode (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::APABRAKEMODE")
  (make-package "PLANNING_MSGS::APABRAKEMODE"))

(in-package "ROS")
;;//! \htmlinclude APABrakeMode.msg.html


(intern "*DEFAULT*" (find-package "PLANNING_MSGS::APABRAKEMODE"))
(shadow '*DEFAULT* (find-package "PLANNING_MSGS::APABRAKEMODE"))
(defconstant planning_msgs::APABrakeMode::*DEFAULT* 0)
(intern "*HARD_BRAKE*" (find-package "PLANNING_MSGS::APABRAKEMODE"))
(shadow '*HARD_BRAKE* (find-package "PLANNING_MSGS::APABRAKEMODE"))
(defconstant planning_msgs::APABrakeMode::*HARD_BRAKE* 1)
(intern "*GENTLE_BRAKE*" (find-package "PLANNING_MSGS::APABRAKEMODE"))
(shadow '*GENTLE_BRAKE* (find-package "PLANNING_MSGS::APABRAKEMODE"))
(defconstant planning_msgs::APABrakeMode::*GENTLE_BRAKE* 2)

(defun planning_msgs::APABrakeMode-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::APABrakeMode::*DEFAULT*)
        ((= const 1) 'planning_msgs::APABrakeMode::*HARD_BRAKE*)
        ((= const 2) 'planning_msgs::APABrakeMode::*GENTLE_BRAKE*)
        (t nil)))

(defclass planning_msgs::APABrakeMode
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::APABrakeMode
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

(setf (get planning_msgs::APABrakeMode :md5sum-) "c6912f4ad63860c1efdd188ae4ffa0d4")
(setf (get planning_msgs::APABrakeMode :datatype-) "planning_msgs/APABrakeMode")
(setf (get planning_msgs::APABrakeMode :definition-)
      "uint8 DEFAULT = 0
uint8 HARD_BRAKE = 1
uint8 GENTLE_BRAKE = 2
uint8 value

")



(provide :planning_msgs/APABrakeMode "c6912f4ad63860c1efdd188ae4ffa0d4")


