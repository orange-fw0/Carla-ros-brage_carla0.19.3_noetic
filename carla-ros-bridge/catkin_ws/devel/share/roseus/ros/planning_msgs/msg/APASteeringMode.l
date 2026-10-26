;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::APASteeringMode)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'APASteeringMode (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::APASTEERINGMODE")
  (make-package "PLANNING_MSGS::APASTEERINGMODE"))

(in-package "ROS")
;;//! \htmlinclude APASteeringMode.msg.html


(intern "*NONE*" (find-package "PLANNING_MSGS::APASTEERINGMODE"))
(shadow '*NONE* (find-package "PLANNING_MSGS::APASTEERINGMODE"))
(defconstant planning_msgs::APASteeringMode::*NONE* 0)
(intern "*STEERING_RESET*" (find-package "PLANNING_MSGS::APASTEERINGMODE"))
(shadow '*STEERING_RESET* (find-package "PLANNING_MSGS::APASTEERINGMODE"))
(defconstant planning_msgs::APASteeringMode::*STEERING_RESET* 1)

(defun planning_msgs::APASteeringMode-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::APASteeringMode::*NONE*)
        ((= const 1) 'planning_msgs::APASteeringMode::*STEERING_RESET*)
        (t nil)))

(defclass planning_msgs::APASteeringMode
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::APASteeringMode
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

(setf (get planning_msgs::APASteeringMode :md5sum-) "61d888dc2e90b8c49c7f50494c575b81")
(setf (get planning_msgs::APASteeringMode :datatype-) "planning_msgs/APASteeringMode")
(setf (get planning_msgs::APASteeringMode :definition-)
      "uint8 NONE = 0
uint8 STEERING_RESET = 1
uint8 value

")



(provide :planning_msgs/APASteeringMode "61d888dc2e90b8c49c7f50494c575b81")


