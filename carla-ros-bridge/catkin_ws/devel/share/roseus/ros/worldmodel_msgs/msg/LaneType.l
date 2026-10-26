;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LaneType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LaneType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LANETYPE")
  (make-package "WORLDMODEL_MSGS::LANETYPE"))

(in-package "ROS")
;;//! \htmlinclude LaneType.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*UNKNOWN* 0)
(intern "*NORMAL*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*NORMAL* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*NORMAL* 1)
(intern "*VIRTUAL*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*VIRTUAL* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*VIRTUAL* 2)
(intern "*PARKING*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*PARKING* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*PARKING* 3)
(intern "*ACCELERATE*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*ACCELERATE* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*ACCELERATE* 4)
(intern "*DECELERATE*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*DECELERATE* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*DECELERATE* 5)
(intern "*BUS*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*BUS* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*BUS* 6)
(intern "*EMERGENCY*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*EMERGENCY* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*EMERGENCY* 7)
(intern "*ACCELERATE_DECELERATE*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*ACCELERATE_DECELERATE* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*ACCELERATE_DECELERATE* 8)
(intern "*LEFT_TURN_WAITTING_AREA*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*LEFT_TURN_WAITTING_AREA* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*LEFT_TURN_WAITTING_AREA* 9)
(intern "*NON_MOTOR*" (find-package "WORLDMODEL_MSGS::LANETYPE"))
(shadow '*NON_MOTOR* (find-package "WORLDMODEL_MSGS::LANETYPE"))
(defconstant worldmodel_msgs::LaneType::*NON_MOTOR* 10)

(defun worldmodel_msgs::LaneType-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::LaneType::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::LaneType::*NORMAL*)
        ((= const 2) 'worldmodel_msgs::LaneType::*VIRTUAL*)
        ((= const 3) 'worldmodel_msgs::LaneType::*PARKING*)
        ((= const 4) 'worldmodel_msgs::LaneType::*ACCELERATE*)
        ((= const 5) 'worldmodel_msgs::LaneType::*DECELERATE*)
        ((= const 6) 'worldmodel_msgs::LaneType::*BUS*)
        ((= const 7) 'worldmodel_msgs::LaneType::*EMERGENCY*)
        ((= const 8) 'worldmodel_msgs::LaneType::*ACCELERATE_DECELERATE*)
        ((= const 9) 'worldmodel_msgs::LaneType::*LEFT_TURN_WAITTING_AREA*)
        ((= const 10) 'worldmodel_msgs::LaneType::*NON_MOTOR*)
        (t nil)))

(defclass worldmodel_msgs::LaneType
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::LaneType
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

(setf (get worldmodel_msgs::LaneType :md5sum-) "6fb4cc01a35d399e06b3df66aa882780")
(setf (get worldmodel_msgs::LaneType :datatype-) "worldmodel_msgs/LaneType")
(setf (get worldmodel_msgs::LaneType :definition-)
      "uint8 UNKNOWN = 0
uint8 NORMAL = 1
uint8 VIRTUAL = 2
uint8 PARKING = 3
uint8 ACCELERATE = 4
uint8 DECELERATE = 5
uint8 BUS = 6
uint8 EMERGENCY = 7
uint8 ACCELERATE_DECELERATE = 8
uint8 LEFT_TURN_WAITTING_AREA = 9
uint8 NON_MOTOR = 10
uint8 value

")



(provide :worldmodel_msgs/LaneType "6fb4cc01a35d399e06b3df66aa882780")


