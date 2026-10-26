;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadNodeFormwayEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadNodeFormwayEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM")
  (make-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadNodeFormwayEnum.msg.html


(intern "*FORMWAY_UNKNOWN*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*FORMWAY_UNKNOWN* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*FORMWAY_UNKNOWN* 0)
(intern "*SINGLE_CARRIAGE_WAY*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SINGLE_CARRIAGE_WAY* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SINGLE_CARRIAGE_WAY* 1)
(intern "*IC*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*IC* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*IC* 2)
(intern "*JCT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*JCT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*JCT* 3)
(intern "*SERVICE*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SERVICE* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SERVICE* 4)
(intern "*TUNNEL*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*TUNNEL* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*TUNNEL* 5)
(intern "*TOLL*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*TOLL* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*TOLL* 6)
(intern "*SLIP_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SLIP_ROAD* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SLIP_ROAD* 7)
(intern "*SIDEROAD*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SIDEROAD* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SIDEROAD* 8)
(intern "*ROUNDABOUT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*ROUNDABOUT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*ROUNDABOUT* 9)
(intern "*RAMP_ENTRY*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*RAMP_ENTRY* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*RAMP_ENTRY* 10)
(intern "*RAMP_EXIT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*RAMP_EXIT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*RAMP_EXIT* 11)
(intern "*SAPA*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SAPA* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SAPA* 12)
(intern "*PARKING_RAMP*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*PARKING_RAMP* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*PARKING_RAMP* 13)
(intern "*PARKING_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*PARKING_ROAD* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*PARKING_ROAD* 14)
(intern "*U_TURN*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*U_TURN* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*U_TURN* 15)
(intern "*TURN_RIGHT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*TURN_RIGHT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*TURN_RIGHT* 16)
(intern "*TURN_LEFT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*TURN_LEFT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*TURN_LEFT* 17)
(intern "*TURN_LEFT_RIGHT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*TURN_LEFT_RIGHT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*TURN_LEFT_RIGHT* 18)
(intern "*CROSS_LINK*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*CROSS_LINK* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*CROSS_LINK* 19)
(intern "*SERVICE_AND_SLIP_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SERVICE_AND_SLIP_ROAD* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SERVICE_AND_SLIP_ROAD* 20)
(intern "*SERVICE_AND_JCT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SERVICE_AND_JCT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SERVICE_AND_JCT* 21)
(intern "*SERVICE_AND_SLIP_ROAD_AND_JCT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*SERVICE_AND_SLIP_ROAD_AND_JCT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*SERVICE_AND_SLIP_ROAD_AND_JCT* 22)
(intern "*MULTIPLE_CARRIAGE_WAY*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*MULTIPLE_CARRIAGE_WAY* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*MULTIPLE_CARRIAGE_WAY* 23)
(intern "*CHECK_POINT*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*CHECK_POINT* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*CHECK_POINT* 24)
(intern "*WALK_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*WALK_ROAD* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*WALK_ROAD* 25)
(intern "*PARALLED_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*PARALLED_ROAD* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*PARALLED_ROAD* 26)
(intern "*OTHERS*" (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(shadow '*OTHERS* (find-package "LANDMARK_MSGS::ROADNODEFORMWAYENUM"))
(defconstant landmark_msgs::RoadNodeFormwayEnum::*OTHERS* 99)

(defun landmark_msgs::RoadNodeFormwayEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadNodeFormwayEnum::*FORMWAY_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RoadNodeFormwayEnum::*SINGLE_CARRIAGE_WAY*)
        ((= const 2) 'landmark_msgs::RoadNodeFormwayEnum::*IC*)
        ((= const 3) 'landmark_msgs::RoadNodeFormwayEnum::*JCT*)
        ((= const 4) 'landmark_msgs::RoadNodeFormwayEnum::*SERVICE*)
        ((= const 5) 'landmark_msgs::RoadNodeFormwayEnum::*TUNNEL*)
        ((= const 6) 'landmark_msgs::RoadNodeFormwayEnum::*TOLL*)
        ((= const 7) 'landmark_msgs::RoadNodeFormwayEnum::*SLIP_ROAD*)
        ((= const 8) 'landmark_msgs::RoadNodeFormwayEnum::*SIDEROAD*)
        ((= const 9) 'landmark_msgs::RoadNodeFormwayEnum::*ROUNDABOUT*)
        ((= const 10) 'landmark_msgs::RoadNodeFormwayEnum::*RAMP_ENTRY*)
        ((= const 11) 'landmark_msgs::RoadNodeFormwayEnum::*RAMP_EXIT*)
        ((= const 12) 'landmark_msgs::RoadNodeFormwayEnum::*SAPA*)
        ((= const 13) 'landmark_msgs::RoadNodeFormwayEnum::*PARKING_RAMP*)
        ((= const 14) 'landmark_msgs::RoadNodeFormwayEnum::*PARKING_ROAD*)
        ((= const 15) 'landmark_msgs::RoadNodeFormwayEnum::*U_TURN*)
        ((= const 16) 'landmark_msgs::RoadNodeFormwayEnum::*TURN_RIGHT*)
        ((= const 17) 'landmark_msgs::RoadNodeFormwayEnum::*TURN_LEFT*)
        ((= const 18) 'landmark_msgs::RoadNodeFormwayEnum::*TURN_LEFT_RIGHT*)
        ((= const 19) 'landmark_msgs::RoadNodeFormwayEnum::*CROSS_LINK*)
        ((= const 20) 'landmark_msgs::RoadNodeFormwayEnum::*SERVICE_AND_SLIP_ROAD*)
        ((= const 21) 'landmark_msgs::RoadNodeFormwayEnum::*SERVICE_AND_JCT*)
        ((= const 22) 'landmark_msgs::RoadNodeFormwayEnum::*SERVICE_AND_SLIP_ROAD_AND_JCT*)
        ((= const 23) 'landmark_msgs::RoadNodeFormwayEnum::*MULTIPLE_CARRIAGE_WAY*)
        ((= const 24) 'landmark_msgs::RoadNodeFormwayEnum::*CHECK_POINT*)
        ((= const 25) 'landmark_msgs::RoadNodeFormwayEnum::*WALK_ROAD*)
        ((= const 26) 'landmark_msgs::RoadNodeFormwayEnum::*PARALLED_ROAD*)
        ((= const 99) 'landmark_msgs::RoadNodeFormwayEnum::*OTHERS*)
        (t nil)))

(defclass landmark_msgs::RoadNodeFormwayEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadNodeFormwayEnum
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

(setf (get landmark_msgs::RoadNodeFormwayEnum :md5sum-) "94ebc80755913b27bbd791c06beea3fc")
(setf (get landmark_msgs::RoadNodeFormwayEnum :datatype-) "landmark_msgs/RoadNodeFormwayEnum")
(setf (get landmark_msgs::RoadNodeFormwayEnum :definition-)
      "uint8 FORMWAY_UNKNOWN = 0
uint8 SINGLE_CARRIAGE_WAY = 1
uint8 IC = 2
uint8 JCT = 3
uint8 SERVICE = 4
uint8 TUNNEL = 5
uint8 TOLL = 6
uint8 SLIP_ROAD = 7
uint8 SIDEROAD = 8
uint8 ROUNDABOUT = 9
uint8 RAMP_ENTRY = 10
uint8 RAMP_EXIT = 11
uint8 SAPA = 12
uint8 PARKING_RAMP = 13
uint8 PARKING_ROAD = 14
uint8 U_TURN = 15
uint8 TURN_RIGHT = 16
uint8 TURN_LEFT = 17
uint8 TURN_LEFT_RIGHT = 18
uint8 CROSS_LINK = 19
uint8 SERVICE_AND_SLIP_ROAD = 20
uint8 SERVICE_AND_JCT = 21
uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
uint8 MULTIPLE_CARRIAGE_WAY = 23
uint8 CHECK_POINT = 24
uint8 WALK_ROAD = 25
uint8 PARALLED_ROAD = 26
uint8 OTHERS = 99
uint8 value

")



(provide :landmark_msgs/RoadNodeFormwayEnum "94ebc80755913b27bbd791c06beea3fc")


