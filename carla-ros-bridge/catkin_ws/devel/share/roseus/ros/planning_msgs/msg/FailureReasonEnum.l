;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::FailureReasonEnum)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'FailureReasonEnum (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::FAILUREREASONENUM")
  (make-package "PLANNING_MSGS::FAILUREREASONENUM"))

(in-package "ROS")
;;//! \htmlinclude FailureReasonEnum.msg.html


(intern "*INFEASIBLE*" (find-package "PLANNING_MSGS::FAILUREREASONENUM"))
(shadow '*INFEASIBLE* (find-package "PLANNING_MSGS::FAILUREREASONENUM"))
(defconstant planning_msgs::FailureReasonEnum::*INFEASIBLE* 1)
(intern "*TIMEOUT*" (find-package "PLANNING_MSGS::FAILUREREASONENUM"))
(shadow '*TIMEOUT* (find-package "PLANNING_MSGS::FAILUREREASONENUM"))
(defconstant planning_msgs::FailureReasonEnum::*TIMEOUT* 2)
(intern "*EXCEPTION*" (find-package "PLANNING_MSGS::FAILUREREASONENUM"))
(shadow '*EXCEPTION* (find-package "PLANNING_MSGS::FAILUREREASONENUM"))
(defconstant planning_msgs::FailureReasonEnum::*EXCEPTION* 4)

(defun planning_msgs::FailureReasonEnum-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::FailureReasonEnum::*INFEASIBLE*)
        ((= const 2) 'planning_msgs::FailureReasonEnum::*TIMEOUT*)
        ((= const 4) 'planning_msgs::FailureReasonEnum::*EXCEPTION*)
        (t nil)))

(defclass planning_msgs::FailureReasonEnum
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::FailureReasonEnum
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

(setf (get planning_msgs::FailureReasonEnum :md5sum-) "247784f4eebee5d0838b00570e9c09a4")
(setf (get planning_msgs::FailureReasonEnum :datatype-) "planning_msgs/FailureReasonEnum")
(setf (get planning_msgs::FailureReasonEnum :definition-)
      "uint8 INFEASIBLE = 1
uint8 TIMEOUT = 2
uint8 EXCEPTION = 4
uint8 value

")



(provide :planning_msgs/FailureReasonEnum "247784f4eebee5d0838b00570e9c09a4")


