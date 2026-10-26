;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::SceneObjectType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'SceneObjectType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE")
  (make-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))

(in-package "ROS")
;;//! \htmlinclude SceneObjectType.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*UNKNOWN* 0)
(intern "*TRAFFIC_BARRIER_TYPE_CONE*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_CONE* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_CONE* 1)
(intern "*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE* 2)
(intern "*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE* 3)
(intern "*TRAFFIC_BARRIER_TYPE_PARKING_LOCK*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_PARKING_LOCK* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_PARKING_LOCK* 4)
(intern "*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN* 5)
(intern "*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET* 6)
(intern "*TRAFFIC_BARRIER_TYPE_DUSTBIN*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_DUSTBIN* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_DUSTBIN* 7)
(intern "*TRAFFIC_BARRIER_TYPE_BARRIER_STONE*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_BARRIER_STONE* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_BARRIER_STONE* 8)
(intern "*TRAFFIC_BARRIER_TYPE_WATER_BARRIER*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*TRAFFIC_BARRIER_TYPE_WATER_BARRIER* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_WATER_BARRIER* 9)
(intern "*MAP_FIRE_EXIT_DOOR*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*MAP_FIRE_EXIT_DOOR* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*MAP_FIRE_EXIT_DOOR* 10)
(intern "*MAP_PILLAR*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*MAP_PILLAR* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*MAP_PILLAR* 11)
(intern "*MAP_TOLL_GATE*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*MAP_TOLL_GATE* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*MAP_TOLL_GATE* 12)
(intern "*MAP_BORDER_SOLID_LINE*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*MAP_BORDER_SOLID_LINE* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*MAP_BORDER_SOLID_LINE* 13)
(intern "*MAP_BORDER_DASH_LINE*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*MAP_BORDER_DASH_LINE* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*MAP_BORDER_DASH_LINE* 14)
(intern "*MAP_BORDER_PHYSICAL*" (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(shadow '*MAP_BORDER_PHYSICAL* (find-package "WORLDMODEL_MSGS::SCENEOBJECTTYPE"))
(defconstant worldmodel_msgs::SceneObjectType::*MAP_BORDER_PHYSICAL* 15)

(defun worldmodel_msgs::SceneObjectType-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::SceneObjectType::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_CONE*)
        ((= const 2) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE*)
        ((= const 3) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE*)
        ((= const 4) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_PARKING_LOCK*)
        ((= const 5) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN*)
        ((= const 6) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET*)
        ((= const 7) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_DUSTBIN*)
        ((= const 8) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_BARRIER_STONE*)
        ((= const 9) 'worldmodel_msgs::SceneObjectType::*TRAFFIC_BARRIER_TYPE_WATER_BARRIER*)
        ((= const 10) 'worldmodel_msgs::SceneObjectType::*MAP_FIRE_EXIT_DOOR*)
        ((= const 11) 'worldmodel_msgs::SceneObjectType::*MAP_PILLAR*)
        ((= const 12) 'worldmodel_msgs::SceneObjectType::*MAP_TOLL_GATE*)
        ((= const 13) 'worldmodel_msgs::SceneObjectType::*MAP_BORDER_SOLID_LINE*)
        ((= const 14) 'worldmodel_msgs::SceneObjectType::*MAP_BORDER_DASH_LINE*)
        ((= const 15) 'worldmodel_msgs::SceneObjectType::*MAP_BORDER_PHYSICAL*)
        (t nil)))

(defclass worldmodel_msgs::SceneObjectType
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::SceneObjectType
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

(setf (get worldmodel_msgs::SceneObjectType :md5sum-) "93fe33ddd84b93acb2c80d5e0d721a48")
(setf (get worldmodel_msgs::SceneObjectType :datatype-) "worldmodel_msgs/SceneObjectType")
(setf (get worldmodel_msgs::SceneObjectType :definition-)
      "uint8 UNKNOWN = 0
uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
uint8 MAP_FIRE_EXIT_DOOR = 10
uint8 MAP_PILLAR = 11
uint8 MAP_TOLL_GATE = 12
uint8 MAP_BORDER_SOLID_LINE = 13
uint8 MAP_BORDER_DASH_LINE = 14
uint8 MAP_BORDER_PHYSICAL = 15
uint8 value

")



(provide :worldmodel_msgs/SceneObjectType "93fe33ddd84b93acb2c80d5e0d721a48")


