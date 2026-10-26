;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::RoadPriorityType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'RoadPriorityType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE")
  (make-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))

(in-package "ROS")
;;//! \htmlinclude RoadPriorityType.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*UNKNOWN* 0)
(intern "*PRIORITY_ROAD*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*PRIORITY_ROAD* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*PRIORITY_ROAD* 1)
(intern "*PRIORITY_ROAD_END*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*PRIORITY_ROAD_END* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*PRIORITY_ROAD_END* 2)
(intern "*PRIORITY_AUXILIARY*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*PRIORITY_AUXILIARY* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*PRIORITY_AUXILIARY* 4)
(intern "*PRIORITY_NEXT_INTERSECTION*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*PRIORITY_NEXT_INTERSECTION* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*PRIORITY_NEXT_INTERSECTION* 8)
(intern "*STOP*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*STOP* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*STOP* 16)
(intern "*YIELD*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*YIELD* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*YIELD* 32)
(intern "*PRIORITY_OVER_ONGOING*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*PRIORITY_OVER_ONGOING* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*PRIORITY_OVER_ONGOING* 64)
(intern "*YIELD_TO_ONCOMING*" (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(shadow '*YIELD_TO_ONCOMING* (find-package "WORLDMODEL_MSGS::ROADPRIORITYTYPE"))
(defconstant worldmodel_msgs::RoadPriorityType::*YIELD_TO_ONCOMING* 128)

(defun worldmodel_msgs::RoadPriorityType-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::RoadPriorityType::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::RoadPriorityType::*PRIORITY_ROAD*)
        ((= const 2) 'worldmodel_msgs::RoadPriorityType::*PRIORITY_ROAD_END*)
        ((= const 4) 'worldmodel_msgs::RoadPriorityType::*PRIORITY_AUXILIARY*)
        ((= const 8) 'worldmodel_msgs::RoadPriorityType::*PRIORITY_NEXT_INTERSECTION*)
        ((= const 16) 'worldmodel_msgs::RoadPriorityType::*STOP*)
        ((= const 32) 'worldmodel_msgs::RoadPriorityType::*YIELD*)
        ((= const 64) 'worldmodel_msgs::RoadPriorityType::*PRIORITY_OVER_ONGOING*)
        ((= const 128) 'worldmodel_msgs::RoadPriorityType::*YIELD_TO_ONCOMING*)
        (t nil)))

(defclass worldmodel_msgs::RoadPriorityType
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::RoadPriorityType
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

(setf (get worldmodel_msgs::RoadPriorityType :md5sum-) "5535e09f661c77b4688dd8fbe68661fc")
(setf (get worldmodel_msgs::RoadPriorityType :datatype-) "worldmodel_msgs/RoadPriorityType")
(setf (get worldmodel_msgs::RoadPriorityType :definition-)
      "uint16 UNKNOWN = 0
uint16 PRIORITY_ROAD = 1
uint16 PRIORITY_ROAD_END = 2
uint16 PRIORITY_AUXILIARY = 4
uint16 PRIORITY_NEXT_INTERSECTION = 8
uint16 STOP = 16
uint16 YIELD = 32
uint16 PRIORITY_OVER_ONGOING = 64
uint16 YIELD_TO_ONCOMING = 128
uint8 value

")



(provide :worldmodel_msgs/RoadPriorityType "5535e09f661c77b4688dd8fbe68661fc")


