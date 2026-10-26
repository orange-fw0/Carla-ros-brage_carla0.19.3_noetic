;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ParkOutDisableReason)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ParkOutDisableReason (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON")
  (make-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))

(in-package "ROS")
;;//! \htmlinclude ParkOutDisableReason.msg.html


(intern "*NONE*" (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(shadow '*NONE* (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(defconstant planning_msgs::ParkOutDisableReason::*NONE* 0)
(intern "*PARALLEL_NO_OBSTACLE_AHEAD*" (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(shadow '*PARALLEL_NO_OBSTACLE_AHEAD* (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(defconstant planning_msgs::ParkOutDisableReason::*PARALLEL_NO_OBSTACLE_AHEAD* 1)
(intern "*DISABLED_NON_PARALLEL*" (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(shadow '*DISABLED_NON_PARALLEL* (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(defconstant planning_msgs::ParkOutDisableReason::*DISABLED_NON_PARALLEL* 2)
(intern "*NOT_IN_PARKING_SLOT*" (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(shadow '*NOT_IN_PARKING_SLOT* (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(defconstant planning_msgs::ParkOutDisableReason::*NOT_IN_PARKING_SLOT* 3)
(intern "*PARKOUT_NOT_READY*" (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(shadow '*PARKOUT_NOT_READY* (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(defconstant planning_msgs::ParkOutDisableReason::*PARKOUT_NOT_READY* 4)
(intern "*SLOT_TOO_SMALL*" (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(shadow '*SLOT_TOO_SMALL* (find-package "PLANNING_MSGS::PARKOUTDISABLEREASON"))
(defconstant planning_msgs::ParkOutDisableReason::*SLOT_TOO_SMALL* 5)

(defun planning_msgs::ParkOutDisableReason-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::ParkOutDisableReason::*NONE*)
        ((= const 1) 'planning_msgs::ParkOutDisableReason::*PARALLEL_NO_OBSTACLE_AHEAD*)
        ((= const 2) 'planning_msgs::ParkOutDisableReason::*DISABLED_NON_PARALLEL*)
        ((= const 3) 'planning_msgs::ParkOutDisableReason::*NOT_IN_PARKING_SLOT*)
        ((= const 4) 'planning_msgs::ParkOutDisableReason::*PARKOUT_NOT_READY*)
        ((= const 5) 'planning_msgs::ParkOutDisableReason::*SLOT_TOO_SMALL*)
        (t nil)))

(defclass planning_msgs::ParkOutDisableReason
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::ParkOutDisableReason
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
    ;; uint32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::ParkOutDisableReason :md5sum-) "8eb65e826e3a4822f671ca42548b1bc5")
(setf (get planning_msgs::ParkOutDisableReason :datatype-) "planning_msgs/ParkOutDisableReason")
(setf (get planning_msgs::ParkOutDisableReason :definition-)
      "uint32 NONE = 0
uint32 PARALLEL_NO_OBSTACLE_AHEAD = 1
uint32 DISABLED_NON_PARALLEL = 2
uint32 NOT_IN_PARKING_SLOT = 3
uint32 PARKOUT_NOT_READY = 4
uint32 SLOT_TOO_SMALL = 5
uint32 value

")



(provide :planning_msgs/ParkOutDisableReason "8eb65e826e3a4822f671ca42548b1bc5")


