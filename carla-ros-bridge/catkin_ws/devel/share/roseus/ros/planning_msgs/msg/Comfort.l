;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Comfort)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Comfort (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::COMFORT")
  (make-package "PLANNING_MSGS::COMFORT"))

(in-package "ROS")
;;//! \htmlinclude Comfort.msg.html


(intern "*MANEUVER_GEAR*" (find-package "PLANNING_MSGS::COMFORT"))
(shadow '*MANEUVER_GEAR* (find-package "PLANNING_MSGS::COMFORT"))
(defconstant planning_msgs::Comfort::*MANEUVER_GEAR* 1)

(defun planning_msgs::Comfort-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Comfort::*MANEUVER_GEAR*)
        (t nil)))

(defclass planning_msgs::Comfort
  :super ros::object
  :slots (_available _maneuver_gear ))

(defmethod planning_msgs::Comfort
  (:init
   (&key
    ((:available __available) 0)
    ((:maneuver_gear __maneuver_gear) (instance planning_msgs::ManeuverGear :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _maneuver_gear __maneuver_gear)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:maneuver_gear
   (&rest __maneuver_gear)
   (if (keywordp (car __maneuver_gear))
       (send* _maneuver_gear __maneuver_gear)
     (progn
       (if __maneuver_gear (setq _maneuver_gear (car __maneuver_gear)))
       _maneuver_gear)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/ManeuverGear _maneuver_gear
    (send _maneuver_gear :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/ManeuverGear _maneuver_gear
       (send _maneuver_gear :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/ManeuverGear _maneuver_gear
     (send _maneuver_gear :deserialize buf ptr-) (incf ptr- (send _maneuver_gear :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::Comfort :md5sum-) "6e564c8c3c7473028ef202f9e4da7bdd")
(setf (get planning_msgs::Comfort :datatype-) "planning_msgs/Comfort")
(setf (get planning_msgs::Comfort :definition-)
      "uint8 MANEUVER_GEAR = 1
uint8 available
planning_msgs/ManeuverGear maneuver_gear

================================================================================
MSG: planning_msgs/ManeuverGear
uint8 SLOW = 0
uint8 NORMAL = 1
uint8 FAST = 2
uint8 ACCIDENT = 3
uint8 value

")



(provide :planning_msgs/Comfort "6e564c8c3c7473028ef202f9e4da7bdd")


