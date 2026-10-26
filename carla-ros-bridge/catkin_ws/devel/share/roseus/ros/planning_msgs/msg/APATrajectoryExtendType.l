;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::APATrajectoryExtendType)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'APATrajectoryExtendType (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE")
  (make-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE"))

(in-package "ROS")
;;//! \htmlinclude APATrajectoryExtendType.msg.html


(intern "*UNEXTENDED*" (find-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE"))
(shadow '*UNEXTENDED* (find-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE"))
(defconstant planning_msgs::APATrajectoryExtendType::*UNEXTENDED* 0)
(intern "*STRAIGHT*" (find-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE"))
(shadow '*STRAIGHT* (find-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE"))
(defconstant planning_msgs::APATrajectoryExtendType::*STRAIGHT* 1)
(intern "*CIRCULAR_CURVE*" (find-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE"))
(shadow '*CIRCULAR_CURVE* (find-package "PLANNING_MSGS::APATRAJECTORYEXTENDTYPE"))
(defconstant planning_msgs::APATrajectoryExtendType::*CIRCULAR_CURVE* 2)

(defun planning_msgs::APATrajectoryExtendType-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::APATrajectoryExtendType::*UNEXTENDED*)
        ((= const 1) 'planning_msgs::APATrajectoryExtendType::*STRAIGHT*)
        ((= const 2) 'planning_msgs::APATrajectoryExtendType::*CIRCULAR_CURVE*)
        (t nil)))

(defclass planning_msgs::APATrajectoryExtendType
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::APATrajectoryExtendType
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

(setf (get planning_msgs::APATrajectoryExtendType :md5sum-) "da5e39bceca1b16f58b560b19ca1124b")
(setf (get planning_msgs::APATrajectoryExtendType :datatype-) "planning_msgs/APATrajectoryExtendType")
(setf (get planning_msgs::APATrajectoryExtendType :definition-)
      "uint8 UNEXTENDED = 0
uint8 STRAIGHT = 1
uint8 CIRCULAR_CURVE = 2
uint8 value

")



(provide :planning_msgs/APATrajectoryExtendType "da5e39bceca1b16f58b560b19ca1124b")


