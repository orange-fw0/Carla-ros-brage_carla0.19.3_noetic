;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ManeuverGear)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ManeuverGear (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::MANEUVERGEAR")
  (make-package "PLANNING_MSGS::MANEUVERGEAR"))

(in-package "ROS")
;;//! \htmlinclude ManeuverGear.msg.html


(intern "*SLOW*" (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(shadow '*SLOW* (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(defconstant planning_msgs::ManeuverGear::*SLOW* 0)
(intern "*NORMAL*" (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(shadow '*NORMAL* (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(defconstant planning_msgs::ManeuverGear::*NORMAL* 1)
(intern "*FAST*" (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(shadow '*FAST* (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(defconstant planning_msgs::ManeuverGear::*FAST* 2)
(intern "*ACCIDENT*" (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(shadow '*ACCIDENT* (find-package "PLANNING_MSGS::MANEUVERGEAR"))
(defconstant planning_msgs::ManeuverGear::*ACCIDENT* 3)

(defun planning_msgs::ManeuverGear-to-symbol (const)
  (cond
        ((= const 0) 'planning_msgs::ManeuverGear::*SLOW*)
        ((= const 1) 'planning_msgs::ManeuverGear::*NORMAL*)
        ((= const 2) 'planning_msgs::ManeuverGear::*FAST*)
        ((= const 3) 'planning_msgs::ManeuverGear::*ACCIDENT*)
        (t nil)))

(defclass planning_msgs::ManeuverGear
  :super ros::object
  :slots (_value ))

(defmethod planning_msgs::ManeuverGear
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

(setf (get planning_msgs::ManeuverGear :md5sum-) "e9fb38fff72db2b6a9191d0a524c3593")
(setf (get planning_msgs::ManeuverGear :datatype-) "planning_msgs/ManeuverGear")
(setf (get planning_msgs::ManeuverGear :definition-)
      "uint8 SLOW = 0
uint8 NORMAL = 1
uint8 FAST = 2
uint8 ACCIDENT = 3
uint8 value

")



(provide :planning_msgs/ManeuverGear "e9fb38fff72db2b6a9191d0a524c3593")


