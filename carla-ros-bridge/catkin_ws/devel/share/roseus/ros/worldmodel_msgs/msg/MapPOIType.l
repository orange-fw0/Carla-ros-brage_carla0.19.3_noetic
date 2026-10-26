;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::MapPOIType)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'MapPOIType (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::MAPPOITYPE")
  (make-package "WORLDMODEL_MSGS::MAPPOITYPE"))

(in-package "ROS")
;;//! \htmlinclude MapPOIType.msg.html


(intern "*UNKNOWN*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*UNKNOWN* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*UNKNOWN* 0)
(intern "*PARKING_LOT*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*PARKING_LOT* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*PARKING_LOT* 1)
(intern "*HUMAN_ACCESS*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*HUMAN_ACCESS* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*HUMAN_ACCESS* 2)
(intern "*DESTINATION*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*DESTINATION* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*DESTINATION* 3)
(intern "*PARKING*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*PARKING* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*PARKING* 4)
(intern "*BARRIER_GAP*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*BARRIER_GAP* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*BARRIER_GAP* 5)
(intern "*FACILITY_ENTRANCE*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*FACILITY_ENTRANCE* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*FACILITY_ENTRANCE* 6)
(intern "*FACILITY_EXIT*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*FACILITY_EXIT* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*FACILITY_EXIT* 7)
(intern "*FACILITY_EXIT_AND_ENTRANCE*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*FACILITY_EXIT_AND_ENTRANCE* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*FACILITY_EXIT_AND_ENTRANCE* 8)
(intern "*BUS_STOP*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*BUS_STOP* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*BUS_STOP* 9)
(intern "*GARAGE_ENTRANCE*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*GARAGE_ENTRANCE* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*GARAGE_ENTRANCE* 10)
(intern "*GARAGE_EXIT*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*GARAGE_EXIT* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*GARAGE_EXIT* 11)
(intern "*SPEED_BUMP*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*SPEED_BUMP* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*SPEED_BUMP* 12)
(intern "*CROSS_WALK*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*CROSS_WALK* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*CROSS_WALK* 13)
(intern "*DASHED_SEGMENT*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*DASHED_SEGMENT* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*DASHED_SEGMENT* 14)
(intern "*CENTRAL_CIRCLE*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*CENTRAL_CIRCLE* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*CENTRAL_CIRCLE* 15)
(intern "*NO_PARKING_ZONE*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*NO_PARKING_ZONE* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*NO_PARKING_ZONE* 16)
(intern "*ROAD_MERGE*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*ROAD_MERGE* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*ROAD_MERGE* 17)
(intern "*ROAD_SPLIT*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*ROAD_SPLIT* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*ROAD_SPLIT* 18)
(intern "*TUNNEL*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*TUNNEL* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*TUNNEL* 19)
(intern "*TOLL_STATION*" (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(shadow '*TOLL_STATION* (find-package "WORLDMODEL_MSGS::MAPPOITYPE"))
(defconstant worldmodel_msgs::MapPOIType::*TOLL_STATION* 20)

(defun worldmodel_msgs::MapPOIType-to-symbol (const)
  (cond
        ((= const 0) 'worldmodel_msgs::MapPOIType::*UNKNOWN*)
        ((= const 1) 'worldmodel_msgs::MapPOIType::*PARKING_LOT*)
        ((= const 2) 'worldmodel_msgs::MapPOIType::*HUMAN_ACCESS*)
        ((= const 3) 'worldmodel_msgs::MapPOIType::*DESTINATION*)
        ((= const 4) 'worldmodel_msgs::MapPOIType::*PARKING*)
        ((= const 5) 'worldmodel_msgs::MapPOIType::*BARRIER_GAP*)
        ((= const 6) 'worldmodel_msgs::MapPOIType::*FACILITY_ENTRANCE*)
        ((= const 7) 'worldmodel_msgs::MapPOIType::*FACILITY_EXIT*)
        ((= const 8) 'worldmodel_msgs::MapPOIType::*FACILITY_EXIT_AND_ENTRANCE*)
        ((= const 9) 'worldmodel_msgs::MapPOIType::*BUS_STOP*)
        ((= const 10) 'worldmodel_msgs::MapPOIType::*GARAGE_ENTRANCE*)
        ((= const 11) 'worldmodel_msgs::MapPOIType::*GARAGE_EXIT*)
        ((= const 12) 'worldmodel_msgs::MapPOIType::*SPEED_BUMP*)
        ((= const 13) 'worldmodel_msgs::MapPOIType::*CROSS_WALK*)
        ((= const 14) 'worldmodel_msgs::MapPOIType::*DASHED_SEGMENT*)
        ((= const 15) 'worldmodel_msgs::MapPOIType::*CENTRAL_CIRCLE*)
        ((= const 16) 'worldmodel_msgs::MapPOIType::*NO_PARKING_ZONE*)
        ((= const 17) 'worldmodel_msgs::MapPOIType::*ROAD_MERGE*)
        ((= const 18) 'worldmodel_msgs::MapPOIType::*ROAD_SPLIT*)
        ((= const 19) 'worldmodel_msgs::MapPOIType::*TUNNEL*)
        ((= const 20) 'worldmodel_msgs::MapPOIType::*TOLL_STATION*)
        (t nil)))

(defclass worldmodel_msgs::MapPOIType
  :super ros::object
  :slots (_value ))

(defmethod worldmodel_msgs::MapPOIType
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

(setf (get worldmodel_msgs::MapPOIType :md5sum-) "f56ebaef71ba28f4ef78c14b0e5d086f")
(setf (get worldmodel_msgs::MapPOIType :datatype-) "worldmodel_msgs/MapPOIType")
(setf (get worldmodel_msgs::MapPOIType :definition-)
      "uint8 UNKNOWN = 0
uint8 PARKING_LOT = 1
uint8 HUMAN_ACCESS = 2
uint8 DESTINATION = 3
uint8 PARKING = 4
uint8 BARRIER_GAP = 5
uint8 FACILITY_ENTRANCE = 6
uint8 FACILITY_EXIT = 7
uint8 FACILITY_EXIT_AND_ENTRANCE = 8
uint8 BUS_STOP = 9
uint8 GARAGE_ENTRANCE = 10
uint8 GARAGE_EXIT = 11
uint8 SPEED_BUMP = 12
uint8 CROSS_WALK = 13
uint8 DASHED_SEGMENT = 14
uint8 CENTRAL_CIRCLE = 15
uint8 NO_PARKING_ZONE = 16
uint8 ROAD_MERGE = 17
uint8 ROAD_SPLIT = 18
uint8 TUNNEL = 19
uint8 TOLL_STATION = 20
uint8 value

")



(provide :worldmodel_msgs/MapPOIType "f56ebaef71ba28f4ef78c14b0e5d086f")


