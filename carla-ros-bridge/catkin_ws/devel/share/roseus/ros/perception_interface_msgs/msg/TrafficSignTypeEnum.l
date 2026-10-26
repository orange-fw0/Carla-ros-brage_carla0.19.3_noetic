;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficSignTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficSignTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignTypeEnum.msg.html


(intern "*TRAFFIC_SIGN_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_TYPE_OTHER*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_OTHER* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_OTHER* 1)
(intern "*TRAFFIC_SIGN_TYPE_STOP*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_STOP* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_STOP* 2)
(intern "*TRAFFIC_SIGN_TYPE_GIVE_WAY*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_GIVE_WAY* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_GIVE_WAY* 3)
(intern "*TRAFFIC_SIGN_TYPE_NO_OVERTAKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_OVERTAKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_OVERTAKING* 4)
(intern "*TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING* 5)
(intern "*TRAFFIC_SIGN_TYPE_NO_ENTRANCE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_ENTRANCE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_ENTRANCE* 6)
(intern "*TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE* 7)
(intern "*TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS* 8)
(intern "*TRAFFIC_SIGN_TYPE_NO_VEHICLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_VEHICLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_VEHICLE* 9)
(intern "*TRAFFIC_SIGN_TYPE_RAMP*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_RAMP* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_RAMP* 10)
(intern "*TRAFFIC_SIGN_TYPE_EXIT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_EXIT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_EXIT* 11)
(intern "*TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING* 12)
(intern "*TRAFFIC_SIGN_TYPE_TIME*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_TIME* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_TIME* 13)
(intern "*TRAFFIC_SIGN_TYPE_NO_MINIBUSES*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_MINIBUSES* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_MINIBUSES* 14)
(intern "*TRAFFIC_SIGN_TYPE_NO_LEFT_TURN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_LEFT_TURN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_LEFT_TURN* 15)
(intern "*TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN* 16)
(intern "*TRAFFIC_SIGN_TYPE_NO_U_TURN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_U_TURN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_U_TURN* 17)
(intern "*TRAFFIC_SIGN_TYPE_NO_HONKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_HONKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_HONKING* 18)
(intern "*TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD* 19)
(intern "*TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING* 20)
(intern "*TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING* 21)
(intern "*TRAFFIC_SIGN_TYPE_ROAD_WORK*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_ROAD_WORK* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_ROAD_WORK* 22)
(intern "*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN* 23)
(intern "*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS* 24)
(intern "*TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE* 25)
(intern "*TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION* 26)
(intern "*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT* 27)
(intern "*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT* 28)
(intern "*TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD* 29)
(intern "*TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD* 30)
(intern "*TRAFFIC_SIGN_TYPE_UPHILL_AHEAD*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_UPHILL_AHEAD* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_UPHILL_AHEAD* 31)
(intern "*TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD* 32)
(intern "*TRAFFIC_SIGN_TYPE_NO_PARKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_NO_PARKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_PARKING* 33)
(intern "*TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING* 34)
(intern "*TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING* 35)
(intern "*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING* 36)
(intern "*TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE* 37)
(intern "*TRAFFIC_SIGN_TYPE_EXPWAY_EXIT*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_EXPWAY_EXIT* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_EXPWAY_EXIT* 38)
(intern "*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS* 39)
(intern "*TRAFFIC_SIGN_TYPE_PARKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_PARKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PARKING* 40)
(intern "*TRAFFIC_SIGN_TYPE_RESERVED_PARKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_RESERVED_PARKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_RESERVED_PARKING* 41)
(intern "*TRAFFIC_SIGN_TYPE_PAYMENT_PARKING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(shadow '*TRAFFIC_SIGN_TYPE_PAYMENT_PARKING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNTYPEENUM"))
(defconstant perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PAYMENT_PARKING* 42)

(defun perception_interface_msgs::TrafficSignTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_OTHER*)
        ((= const 2) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_STOP*)
        ((= const 3) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_GIVE_WAY*)
        ((= const 4) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_OVERTAKING*)
        ((= const 5) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING*)
        ((= const 6) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_ENTRANCE*)
        ((= const 7) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE*)
        ((= const 8) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS*)
        ((= const 9) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_VEHICLE*)
        ((= const 10) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_RAMP*)
        ((= const 11) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_EXIT*)
        ((= const 12) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING*)
        ((= const 13) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_TIME*)
        ((= const 14) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_MINIBUSES*)
        ((= const 15) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_LEFT_TURN*)
        ((= const 16) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN*)
        ((= const 17) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_U_TURN*)
        ((= const 18) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_HONKING*)
        ((= const 19) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD*)
        ((= const 20) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING*)
        ((= const 21) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING*)
        ((= const 22) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_ROAD_WORK*)
        ((= const 23) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN*)
        ((= const 24) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS*)
        ((= const 25) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE*)
        ((= const 26) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION*)
        ((= const 27) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT*)
        ((= const 28) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT*)
        ((= const 29) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD*)
        ((= const 30) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD*)
        ((= const 31) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_UPHILL_AHEAD*)
        ((= const 32) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD*)
        ((= const 33) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_NO_PARKING*)
        ((= const 34) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING*)
        ((= const 35) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING*)
        ((= const 36) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING*)
        ((= const 37) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE*)
        ((= const 38) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_EXPWAY_EXIT*)
        ((= const 39) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS*)
        ((= const 40) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PARKING*)
        ((= const 41) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_RESERVED_PARKING*)
        ((= const 42) 'perception_interface_msgs::TrafficSignTypeEnum::*TRAFFIC_SIGN_TYPE_PAYMENT_PARKING*)
        (t nil)))

(defclass perception_interface_msgs::TrafficSignTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficSignTypeEnum
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

(setf (get perception_interface_msgs::TrafficSignTypeEnum :md5sum-) "4d1f59c612360338a4df0f58eb640df8")
(setf (get perception_interface_msgs::TrafficSignTypeEnum :datatype-) "perception_interface_msgs/TrafficSignTypeEnum")
(setf (get perception_interface_msgs::TrafficSignTypeEnum :definition-)
      "uint8 TRAFFIC_SIGN_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_TYPE_OTHER = 1
uint8 TRAFFIC_SIGN_TYPE_STOP = 2
uint8 TRAFFIC_SIGN_TYPE_GIVE_WAY = 3
uint8 TRAFFIC_SIGN_TYPE_NO_OVERTAKING = 4
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_OVERTAKING = 5
uint8 TRAFFIC_SIGN_TYPE_NO_ENTRANCE = 6
uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE_ENTRANCE = 7
uint8 TRAFFIC_SIGN_TYPE_END_OF_SPEED_AND_OVERTAKING_RESTRICTIONS = 8
uint8 TRAFFIC_SIGN_TYPE_NO_VEHICLE = 9
uint8 TRAFFIC_SIGN_TYPE_RAMP = 10
uint8 TRAFFIC_SIGN_TYPE_EXIT = 11
uint8 TRAFFIC_SIGN_TYPE_PEDESTRIAN_CROSSING = 12
uint8 TRAFFIC_SIGN_TYPE_TIME = 13
uint8 TRAFFIC_SIGN_TYPE_NO_MINIBUSES = 14
uint8 TRAFFIC_SIGN_TYPE_NO_LEFT_TURN = 15
uint8 TRAFFIC_SIGN_TYPE_NO_RIGHT_TURN = 16
uint8 TRAFFIC_SIGN_TYPE_NO_U_TURN = 17
uint8 TRAFFIC_SIGN_TYPE_NO_HONKING = 18
uint8 TRAFFIC_SIGN_TYPE_SCHOOL_AHEAD = 19
uint8 TRAFFIC_SIGN_TYPE_UNGUARDED_RAILWAY_CROSSING = 20
uint8 TRAFFIC_SIGN_TYPE_GUARDED_RAILWAY_CROSSING = 21
uint8 TRAFFIC_SIGN_TYPE_ROAD_WORK = 22
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_CHILDREN = 23
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_PEDESTRIANS = 24
uint8 TRAFFIC_SIGN_TYPE_SLIPPERY_SURFACE = 25
uint8 TRAFFIC_SIGN_TYPE_DRIVE_WITH_CAUTION = 26
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 27
uint8 TRAFFIC_SIGN_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 28
uint8 TRAFFIC_SIGN_TYPE_SHARP_LEFT_TURN_AHEAD = 29
uint8 TRAFFIC_SIGN_TYPE_SHARP_RIGHT_TURN_AHEAD = 30
uint8 TRAFFIC_SIGN_TYPE_UPHILL_AHEAD = 31
uint8 TRAFFIC_SIGN_TYPE_DOWNHILL_AHEAD = 32
uint8 TRAFFIC_SIGN_TYPE_NO_PARKING = 33
uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PARKING = 34
uint8 TRAFFIC_SIGN_TYPE_PROHIBIT_PROLONGED_PARKING = 35
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING = 36
uint8 TRAFFIC_SIGN_TYPE_EXPWAY_ENTRANCE = 37
uint8 TRAFFIC_SIGN_TYPE_EXPWAY_EXIT = 38
uint8 TRAFFIC_SIGN_TYPE_END_OF_NO_PARKING_CROSS = 39
uint8 TRAFFIC_SIGN_TYPE_PARKING = 40
uint8 TRAFFIC_SIGN_TYPE_RESERVED_PARKING = 41
uint8 TRAFFIC_SIGN_TYPE_PAYMENT_PARKING = 42
uint8 value

")



(provide :perception_interface_msgs/TrafficSignTypeEnum "4d1f59c612360338a4df0f58eb640df8")


