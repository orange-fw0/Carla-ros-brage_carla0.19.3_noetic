;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::WayPointType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'WayPointType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::WAYPOINTTYPE")
  (make-package "WORLDMODEL_MSGS::WAYPOINTTYPE"))

(in-package "ROS")
;;//! \htmlinclude WayPointType.msg.html


(intern "*NORMAL_WAYPOINT*" (find-package "WORLDMODEL_MSGS::WAYPOINTTYPE"))
(shadow '*NORMAL_WAYPOINT* (find-package "WORLDMODEL_MSGS::WAYPOINTTYPE"))
(defconstant worldmodel_msgs::WayPointType::*NORMAL_WAYPOINT* 1)
(intern "*INTERSECTION_WAYPOINT*" (find-package "WORLDMODEL_MSGS::WAYPOINTTYPE"))
(shadow '*INTERSECTION_WAYPOINT* (find-package "WORLDMODEL_MSGS::WAYPOINTTYPE"))
(defconstant worldmodel_msgs::WayPointType::*INTERSECTION_WAYPOINT* 2)
(intern "*RAMP_WAYPOINT*" (find-package "WORLDMODEL_MSGS::WAYPOINTTYPE"))
(shadow '*RAMP_WAYPOINT* (find-package "WORLDMODEL_MSGS::WAYPOINTTYPE"))
(defconstant worldmodel_msgs::WayPointType::*RAMP_WAYPOINT* 4)

(defun worldmodel_msgs::WayPointType-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::WayPointType::*NORMAL_WAYPOINT*)
        ((= const 2) 'worldmodel_msgs::WayPointType::*INTERSECTION_WAYPOINT*)
        ((= const 4) 'worldmodel_msgs::WayPointType::*RAMP_WAYPOINT*)
        (t nil)))

(defclass worldmodel_msgs::WayPointType
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::WayPointType
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

(setf (get worldmodel_msgs::WayPointType :md5sum-) "f8e008c5205dcd4878d78d4df1b7f0fe")
(setf (get worldmodel_msgs::WayPointType :datatype-) "worldmodel_msgs/WayPointType")
(setf (get worldmodel_msgs::WayPointType :definition-)
      "uint8 NORMAL_WAYPOINT = 1
uint8 INTERSECTION_WAYPOINT = 2
uint8 RAMP_WAYPOINT = 4
uint8 value

")



(provide :worldmodel_msgs/WayPointType "f8e008c5205dcd4878d78d4df1b7f0fe")


