;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterNodeLaneTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterNodeLaneTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM")
  (make-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterNodeLaneTypeEnum.msg.html


(intern "*LANE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_UNKNOWN* 0)
(intern "*LANE_TYPE_NORMAL*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_NORMAL* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_NORMAL* 1)
(intern "*LANE_TYPE_EMERGENCY*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_EMERGENCY* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_EMERGENCY* 5)
(intern "*LANE_TYPE_BUS*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_BUS* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_BUS* 6)
(intern "*LANE_TYPE_PASSING*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_PASSING* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_PASSING* 7)
(intern "*LANE_TYPE_HOV*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_HOV* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_HOV* 8)
(intern "*LANE_TYPE_ACCELERATE*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_ACCELERATE* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_ACCELERATE* 9)
(intern "*LANE_TYPE_UTURN*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_UTURN* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_UTURN* 10)
(intern "*LANE_TYPE_DECELERATE*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_DECELERATE* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_DECELERATE* 11)
(intern "*LANE_TYPE_SHOULDER*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_SHOULDER* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_SHOULDER* 12)
(intern "*LANE_TYPE_INTERSECTION*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_INTERSECTION* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_INTERSECTION* 14)
(intern "*LANE_TYPE_NON_MOTOR*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_NON_MOTOR* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_NON_MOTOR* 15)
(intern "*LANE_TYPE_MIXED_MOTOR*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_MIXED_MOTOR* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_MIXED_MOTOR* 16)
(intern "*LANE_TYPE_SIDE_WALK*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_SIDE_WALK* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_SIDE_WALK* 17)
(intern "*LANE_TYPE_MOTORCYCLE*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_MOTORCYCLE* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_MOTORCYCLE* 18)
(intern "*LANE_TYPE_TOLL_ETC*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_TOLL_ETC* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TOLL_ETC* 19)
(intern "*LANE_TYPE_TOLL*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_TOLL* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TOLL* 20)
(intern "*LANE_TYPE_CHECKPOINT*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_CHECKPOINT* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CHECKPOINT* 21)
(intern "*LANE_TYPE_RAMP*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_RAMP* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RAMP* 22)
(intern "*LANE_TYPE_BARRIER*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_BARRIER* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_BARRIER* 23)
(intern "*LANE_TYPE_CHANNELIZATION*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_CHANNELIZATION* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CHANNELIZATION* 24)
(intern "*LANE_TYPE_EMERGENCE_STOP*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_EMERGENCE_STOP* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_EMERGENCE_STOP* 25)
(intern "*LANE_TYPE_HAZARDOUS_GOODS*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_HAZARDOUS_GOODS* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_HAZARDOUS_GOODS* 26)
(intern "*LANE_TYPE_STEEP_GRADE*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_STEEP_GRADE* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_STEEP_GRADE* 27)
(intern "*LANE_TYPE_DIREC_VARIABLE*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_DIREC_VARIABLE* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_DIREC_VARIABLE* 28)
(intern "*LANE_TYPE_CUSTOMS_SUP*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_CUSTOMS_SUP* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CUSTOMS_SUP* 29)
(intern "*LANE_TYPE_EMERGENCE_RAMP*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_EMERGENCE_RAMP* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_EMERGENCE_RAMP* 30)
(intern "*LANE_TYPE_PARKING*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_PARKING* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_PARKING* 31)
(intern "*LANE_TYPE_TIDAL*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_TIDAL* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TIDAL* 32)
(intern "*LANE_TYPE_TEMPORARY*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_TEMPORARY* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TEMPORARY* 33)
(intern "*LANE_TYPE_LEFT_TURN_WAITING_AREA*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_LEFT_TURN_WAITING_AREA* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_LEFT_TURN_WAITING_AREA* 34)
(intern "*LANE_TYPE_STRAIGHT_TURN_WAITING_AREA*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_STRAIGHT_TURN_WAITING_AREA* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_STRAIGHT_TURN_WAITING_AREA* 35)
(intern "*LANE_TYPE_LEFT_ACC*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_LEFT_ACC* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_LEFT_ACC* 36)
(intern "*LANE_TYPE_RIGHT_ACC*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_RIGHT_ACC* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RIGHT_ACC* 37)
(intern "*LANE_TYPE_LEFT_DEC*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_LEFT_DEC* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_LEFT_DEC* 38)
(intern "*LANE_TYPE_RIGHT_DEC*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_RIGHT_DEC* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RIGHT_DEC* 39)
(intern "*LANE_TYPE_SERVICE_RAMP*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_SERVICE_RAMP* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_SERVICE_RAMP* 40)
(intern "*LANE_TYPE_CURB*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_CURB* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CURB* 41)
(intern "*LANE_TYPE_RAILWAY*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_RAILWAY* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RAILWAY* 42)
(intern "*LANE_TYPE_BUS_STOP*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_BUS_STOP* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_BUS_STOP* 43)
(intern "*LANE_TYPE_ROUNDABOUT*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_ROUNDABOUT* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_ROUNDABOUT* 44)
(intern "*LANE_TYPE_INVALID*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_INVALID* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_INVALID* 45)
(intern "*LANE_TYPE_WIDE*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_WIDE* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_WIDE* 46)
(intern "*LANE_TYPE_VIRTUAL*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_VIRTUAL* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_VIRTUAL* 47)
(intern "*LANE_TYPE_OTHERS*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_OTHERS* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_OTHERS* 63)
(intern "*LANE_TYPE_ACC_DEC*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_ACC_DEC* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_ACC_DEC* 70)
(intern "*LANE_TYPE_WAITING_AREA*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_WAITING_AREA* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_WAITING_AREA* 71)
(intern "*LANE_TYPE_TOLL_MANUAL*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_TOLL_MANUAL* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TOLL_MANUAL* 72)
(intern "*LANE_TYPE_INCOMPLETE*" (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(shadow '*LANE_TYPE_INCOMPLETE* (find-package "LANDMARK_MSGS::LANECENTERNODELANETYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_INCOMPLETE* 73)

(defun landmark_msgs::LaneCenterNodeLaneTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_NORMAL*)
        ((= const 5) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_EMERGENCY*)
        ((= const 6) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_BUS*)
        ((= const 7) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_PASSING*)
        ((= const 8) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_HOV*)
        ((= const 9) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_ACCELERATE*)
        ((= const 10) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_UTURN*)
        ((= const 11) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_DECELERATE*)
        ((= const 12) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_SHOULDER*)
        ((= const 14) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_INTERSECTION*)
        ((= const 15) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_NON_MOTOR*)
        ((= const 16) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_MIXED_MOTOR*)
        ((= const 17) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_SIDE_WALK*)
        ((= const 18) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_MOTORCYCLE*)
        ((= const 19) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TOLL_ETC*)
        ((= const 20) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TOLL*)
        ((= const 21) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CHECKPOINT*)
        ((= const 22) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RAMP*)
        ((= const 23) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_BARRIER*)
        ((= const 24) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CHANNELIZATION*)
        ((= const 25) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_EMERGENCE_STOP*)
        ((= const 26) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_HAZARDOUS_GOODS*)
        ((= const 27) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_STEEP_GRADE*)
        ((= const 28) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_DIREC_VARIABLE*)
        ((= const 29) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CUSTOMS_SUP*)
        ((= const 30) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_EMERGENCE_RAMP*)
        ((= const 31) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_PARKING*)
        ((= const 32) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TIDAL*)
        ((= const 33) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TEMPORARY*)
        ((= const 34) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_LEFT_TURN_WAITING_AREA*)
        ((= const 35) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_STRAIGHT_TURN_WAITING_AREA*)
        ((= const 36) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_LEFT_ACC*)
        ((= const 37) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RIGHT_ACC*)
        ((= const 38) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_LEFT_DEC*)
        ((= const 39) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RIGHT_DEC*)
        ((= const 40) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_SERVICE_RAMP*)
        ((= const 41) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_CURB*)
        ((= const 42) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_RAILWAY*)
        ((= const 43) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_BUS_STOP*)
        ((= const 44) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_ROUNDABOUT*)
        ((= const 45) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_INVALID*)
        ((= const 46) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_WIDE*)
        ((= const 47) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_VIRTUAL*)
        ((= const 63) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_OTHERS*)
        ((= const 70) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_ACC_DEC*)
        ((= const 71) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_WAITING_AREA*)
        ((= const 72) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_TOLL_MANUAL*)
        ((= const 73) 'landmark_msgs::LaneCenterNodeLaneTypeEnum::*LANE_TYPE_INCOMPLETE*)
        (t nil)))

(defclass landmark_msgs::LaneCenterNodeLaneTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneCenterNodeLaneTypeEnum
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

(setf (get landmark_msgs::LaneCenterNodeLaneTypeEnum :md5sum-) "d87743cc10a6d211c9706a4529ee106b")
(setf (get landmark_msgs::LaneCenterNodeLaneTypeEnum :datatype-) "landmark_msgs/LaneCenterNodeLaneTypeEnum")
(setf (get landmark_msgs::LaneCenterNodeLaneTypeEnum :definition-)
      "uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_NORMAL = 1
uint8 LANE_TYPE_EMERGENCY = 5
uint8 LANE_TYPE_BUS = 6
uint8 LANE_TYPE_PASSING = 7
uint8 LANE_TYPE_HOV = 8
uint8 LANE_TYPE_ACCELERATE = 9
uint8 LANE_TYPE_UTURN = 10
uint8 LANE_TYPE_DECELERATE = 11
uint8 LANE_TYPE_SHOULDER = 12
uint8 LANE_TYPE_INTERSECTION = 14
uint8 LANE_TYPE_NON_MOTOR = 15
uint8 LANE_TYPE_MIXED_MOTOR = 16
uint8 LANE_TYPE_SIDE_WALK = 17
uint8 LANE_TYPE_MOTORCYCLE = 18
uint8 LANE_TYPE_TOLL_ETC = 19
uint8 LANE_TYPE_TOLL = 20
uint8 LANE_TYPE_CHECKPOINT = 21
uint8 LANE_TYPE_RAMP = 22
uint8 LANE_TYPE_BARRIER = 23
uint8 LANE_TYPE_CHANNELIZATION = 24
uint8 LANE_TYPE_EMERGENCE_STOP = 25
uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
uint8 LANE_TYPE_STEEP_GRADE = 27
uint8 LANE_TYPE_DIREC_VARIABLE = 28
uint8 LANE_TYPE_CUSTOMS_SUP = 29
uint8 LANE_TYPE_EMERGENCE_RAMP = 30
uint8 LANE_TYPE_PARKING = 31
uint8 LANE_TYPE_TIDAL = 32
uint8 LANE_TYPE_TEMPORARY = 33
uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
uint8 LANE_TYPE_LEFT_ACC = 36
uint8 LANE_TYPE_RIGHT_ACC = 37
uint8 LANE_TYPE_LEFT_DEC = 38
uint8 LANE_TYPE_RIGHT_DEC = 39
uint8 LANE_TYPE_SERVICE_RAMP = 40
uint8 LANE_TYPE_CURB = 41
uint8 LANE_TYPE_RAILWAY = 42
uint8 LANE_TYPE_BUS_STOP = 43
uint8 LANE_TYPE_ROUNDABOUT = 44
uint8 LANE_TYPE_INVALID = 45
uint8 LANE_TYPE_WIDE = 46
uint8 LANE_TYPE_VIRTUAL = 47
uint8 LANE_TYPE_OTHERS = 63
uint8 LANE_TYPE_ACC_DEC = 70
uint8 LANE_TYPE_WAITING_AREA = 71
uint8 LANE_TYPE_TOLL_MANUAL = 72
uint8 LANE_TYPE_INCOMPLETE = 73
uint8 value

")



(provide :landmark_msgs/LaneCenterNodeLaneTypeEnum "d87743cc10a6d211c9706a4529ee106b")


