;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::RequestEnum)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'RequestEnum (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::REQUESTENUM")
  (make-package "PLANNING_MSGS::REQUESTENUM"))

(in-package "ROS")
;;//! \htmlinclude RequestEnum.msg.html


(intern "*START_TASK*" (find-package "PLANNING_MSGS::REQUESTENUM"))
(shadow '*START_TASK* (find-package "PLANNING_MSGS::REQUESTENUM"))
(defconstant planning_msgs::RequestEnum::*START_TASK* 1)
(intern "*ABORT_TASK*" (find-package "PLANNING_MSGS::REQUESTENUM"))
(shadow '*ABORT_TASK* (find-package "PLANNING_MSGS::REQUESTENUM"))
(defconstant planning_msgs::RequestEnum::*ABORT_TASK* 2)

(defun planning_msgs::RequestEnum-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::RequestEnum::*START_TASK*)
        ((= const 2) 'planning_msgs::RequestEnum::*ABORT_TASK*)
        (t nil)))

(defclass planning_msgs::RequestEnum
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::RequestEnum
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

(setf (get planning_msgs::RequestEnum :md5sum-) "c6dececcfebffbf7d4d0a7076e3420e2")
(setf (get planning_msgs::RequestEnum :datatype-) "planning_msgs/RequestEnum")
(setf (get planning_msgs::RequestEnum :definition-)
      "uint8 START_TASK = 1
uint8 ABORT_TASK = 2
uint8 value

")



(provide :planning_msgs/RequestEnum "c6dececcfebffbf7d4d0a7076e3420e2")


