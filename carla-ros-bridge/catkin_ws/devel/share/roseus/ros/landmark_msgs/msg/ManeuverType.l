;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::ManeuverType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'ManeuverType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::MANEUVERTYPE")
  (make-package "LANDMARK_MSGS::MANEUVERTYPE"))

(in-package "ROS")
;;//! \htmlinclude ManeuverType.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*UNKNOWN* 0)
(intern "*MANEUVER_INTERSECTION*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MANEUVER_INTERSECTION* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MANEUVER_INTERSECTION* 1)
(intern "*MANEUVER_LANE_MERGING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MANEUVER_LANE_MERGING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MANEUVER_LANE_MERGING* 2)
(intern "*MANEUVER_LANE_SPLITTING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MANEUVER_LANE_SPLITTING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MANEUVER_LANE_SPLITTING* 3)
(intern "*MANEUVER_ROAD_MERGING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MANEUVER_ROAD_MERGING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MANEUVER_ROAD_MERGING* 4)
(intern "*MANEUVER_ROAD_SPLITTING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MANEUVER_ROAD_SPLITTING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MANEUVER_ROAD_SPLITTING* 5)
(intern "*MANEUVER_RAMP*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MANEUVER_RAMP* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MANEUVER_RAMP* 6)
(intern "*DESTINATION*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*DESTINATION* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*DESTINATION* 7)
(intern "*PEDESTRIAN_CROSSING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*PEDESTRIAN_CROSSING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*PEDESTRIAN_CROSSING* 8)
(intern "*SCHOOL_ZONE*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SCHOOL_ZONE* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SCHOOL_ZONE* 9)
(intern "*RAILROAD_CROSSING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*RAILROAD_CROSSING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*RAILROAD_CROSSING* 10)
(intern "*DANGER_AHEAD*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*DANGER_AHEAD* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*DANGER_AHEAD* 11)
(intern "*NO_OVERTAKING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*NO_OVERTAKING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*NO_OVERTAKING* 12)
(intern "*SPEED_LIMIT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SPEED_LIMIT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SPEED_LIMIT* 13)
(intern "*SPEED_LIMIT_ENDS*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SPEED_LIMIT_ENDS* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SPEED_LIMIT_ENDS* 14)
(intern "*DETOUR_RIGHT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*DETOUR_RIGHT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*DETOUR_RIGHT* 15)
(intern "*DETOUR_BOTH_SIDES*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*DETOUR_BOTH_SIDES* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*DETOUR_BOTH_SIDES* 16)
(intern "*DETOUR_LEFT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*DETOUR_LEFT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*DETOUR_LEFT* 17)
(intern "*MERGE_RIGHT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MERGE_RIGHT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MERGE_RIGHT* 18)
(intern "*MERGE_LEFT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*MERGE_LEFT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*MERGE_LEFT* 19)
(intern "*TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*TRAFFIC_LIGHT* 20)
(intern "*EMERGENCY_LANE*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*EMERGENCY_LANE* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*EMERGENCY_LANE* 21)
(intern "*NON_MOTORIZED_VEHICLE_LANE*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*NON_MOTORIZED_VEHICLE_LANE* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*NON_MOTORIZED_VEHICLE_LANE* 22)
(intern "*SECTIONAL_SPEED_MEASUREMENT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SECTIONAL_SPEED_MEASUREMENT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SECTIONAL_SPEED_MEASUREMENT* 23)
(intern "*START_SECTIONAL_SPEED_MEASUREMENT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*START_SECTIONAL_SPEED_MEASUREMENT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*START_SECTIONAL_SPEED_MEASUREMENT* 24)
(intern "*END_SECTIONAL_SPEED_MEASUREMENT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*END_SECTIONAL_SPEED_MEASUREMENT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*END_SECTIONAL_SPEED_MEASUREMENT* 25)
(intern "*TOLL*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*TOLL* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*TOLL* 26)
(intern "*CONDITIONAL_SPEED_LIMIT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*CONDITIONAL_SPEED_LIMIT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*CONDITIONAL_SPEED_LIMIT* 27)
(intern "*ADVISORY_SPEED_LIMIT*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*ADVISORY_SPEED_LIMIT* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*ADVISORY_SPEED_LIMIT* 28)
(intern "*ROAD_CONSTRUCTION*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*ROAD_CONSTRUCTION* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*ROAD_CONSTRUCTION* 29)
(intern "*TRAFFIC_CONTROL*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*TRAFFIC_CONTROL* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*TRAFFIC_CONTROL* 30)
(intern "*ROAD_CLOSED*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*ROAD_CLOSED* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*ROAD_CLOSED* 31)
(intern "*GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED* 32)
(intern "*SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED* 33)
(intern "*ROAD_CONSTRUCTION_AND_ROAD_CLOSED*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*ROAD_CONSTRUCTION_AND_ROAD_CLOSED* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*ROAD_CONSTRUCTION_AND_ROAD_CLOSED* 34)
(intern "*ROAD_END*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*ROAD_END* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*ROAD_END* 35)
(intern "*UNKNOWN_TRAFFIC_FLOW*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*UNKNOWN_TRAFFIC_FLOW* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*UNKNOWN_TRAFFIC_FLOW* 36)
(intern "*SMOOTH_TRAFFIC*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SMOOTH_TRAFFIC* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SMOOTH_TRAFFIC* 37)
(intern "*SLOW_MOVING*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SLOW_MOVING* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SLOW_MOVING* 38)
(intern "*CONGESTED*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*CONGESTED* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*CONGESTED* 39)
(intern "*SEVERELY_CONGESTED*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*SEVERELY_CONGESTED* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*SEVERELY_CONGESTED* 40)
(intern "*NO_TRAFFIC_FLOW*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*NO_TRAFFIC_FLOW* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*NO_TRAFFIC_FLOW* 41)
(intern "*VISIBILITY*" (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(shadow '*VISIBILITY* (find-package "LANDMARK_MSGS::MANEUVERTYPE"))
(defconstant landmark_msgs::ManeuverType::*VISIBILITY* 42)

(defun landmark_msgs::ManeuverType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::ManeuverType::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::ManeuverType::*MANEUVER_INTERSECTION*)
        ((= const 2) 'landmark_msgs::ManeuverType::*MANEUVER_LANE_MERGING*)
        ((= const 3) 'landmark_msgs::ManeuverType::*MANEUVER_LANE_SPLITTING*)
        ((= const 4) 'landmark_msgs::ManeuverType::*MANEUVER_ROAD_MERGING*)
        ((= const 5) 'landmark_msgs::ManeuverType::*MANEUVER_ROAD_SPLITTING*)
        ((= const 6) 'landmark_msgs::ManeuverType::*MANEUVER_RAMP*)
        ((= const 7) 'landmark_msgs::ManeuverType::*DESTINATION*)
        ((= const 8) 'landmark_msgs::ManeuverType::*PEDESTRIAN_CROSSING*)
        ((= const 9) 'landmark_msgs::ManeuverType::*SCHOOL_ZONE*)
        ((= const 10) 'landmark_msgs::ManeuverType::*RAILROAD_CROSSING*)
        ((= const 11) 'landmark_msgs::ManeuverType::*DANGER_AHEAD*)
        ((= const 12) 'landmark_msgs::ManeuverType::*NO_OVERTAKING*)
        ((= const 13) 'landmark_msgs::ManeuverType::*SPEED_LIMIT*)
        ((= const 14) 'landmark_msgs::ManeuverType::*SPEED_LIMIT_ENDS*)
        ((= const 15) 'landmark_msgs::ManeuverType::*DETOUR_RIGHT*)
        ((= const 16) 'landmark_msgs::ManeuverType::*DETOUR_BOTH_SIDES*)
        ((= const 17) 'landmark_msgs::ManeuverType::*DETOUR_LEFT*)
        ((= const 18) 'landmark_msgs::ManeuverType::*MERGE_RIGHT*)
        ((= const 19) 'landmark_msgs::ManeuverType::*MERGE_LEFT*)
        ((= const 20) 'landmark_msgs::ManeuverType::*TRAFFIC_LIGHT*)
        ((= const 21) 'landmark_msgs::ManeuverType::*EMERGENCY_LANE*)
        ((= const 22) 'landmark_msgs::ManeuverType::*NON_MOTORIZED_VEHICLE_LANE*)
        ((= const 23) 'landmark_msgs::ManeuverType::*SECTIONAL_SPEED_MEASUREMENT*)
        ((= const 24) 'landmark_msgs::ManeuverType::*START_SECTIONAL_SPEED_MEASUREMENT*)
        ((= const 25) 'landmark_msgs::ManeuverType::*END_SECTIONAL_SPEED_MEASUREMENT*)
        ((= const 26) 'landmark_msgs::ManeuverType::*TOLL*)
        ((= const 27) 'landmark_msgs::ManeuverType::*CONDITIONAL_SPEED_LIMIT*)
        ((= const 28) 'landmark_msgs::ManeuverType::*ADVISORY_SPEED_LIMIT*)
        ((= const 29) 'landmark_msgs::ManeuverType::*ROAD_CONSTRUCTION*)
        ((= const 30) 'landmark_msgs::ManeuverType::*TRAFFIC_CONTROL*)
        ((= const 31) 'landmark_msgs::ManeuverType::*ROAD_CLOSED*)
        ((= const 32) 'landmark_msgs::ManeuverType::*GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED*)
        ((= const 33) 'landmark_msgs::ManeuverType::*SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED*)
        ((= const 34) 'landmark_msgs::ManeuverType::*ROAD_CONSTRUCTION_AND_ROAD_CLOSED*)
        ((= const 35) 'landmark_msgs::ManeuverType::*ROAD_END*)
        ((= const 36) 'landmark_msgs::ManeuverType::*UNKNOWN_TRAFFIC_FLOW*)
        ((= const 37) 'landmark_msgs::ManeuverType::*SMOOTH_TRAFFIC*)
        ((= const 38) 'landmark_msgs::ManeuverType::*SLOW_MOVING*)
        ((= const 39) 'landmark_msgs::ManeuverType::*CONGESTED*)
        ((= const 40) 'landmark_msgs::ManeuverType::*SEVERELY_CONGESTED*)
        ((= const 41) 'landmark_msgs::ManeuverType::*NO_TRAFFIC_FLOW*)
        ((= const 42) 'landmark_msgs::ManeuverType::*VISIBILITY*)
        (t nil)))

(defclass landmark_msgs::ManeuverType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::ManeuverType
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get landmark_msgs::ManeuverType :md5sum-) "7d35883fef37ea26bfa3ec6a2c998252")
(setf (get landmark_msgs::ManeuverType :datatype-) "landmark_msgs/ManeuverType")
(setf (get landmark_msgs::ManeuverType :definition-)
      "uint16 UNKNOWN = 0
uint16 MANEUVER_INTERSECTION = 1
uint16 MANEUVER_LANE_MERGING = 2
uint16 MANEUVER_LANE_SPLITTING = 3
uint16 MANEUVER_ROAD_MERGING = 4
uint16 MANEUVER_ROAD_SPLITTING = 5
uint16 MANEUVER_RAMP = 6
uint16 DESTINATION = 7
uint16 PEDESTRIAN_CROSSING = 8
uint16 SCHOOL_ZONE = 9
uint16 RAILROAD_CROSSING = 10
uint16 DANGER_AHEAD = 11
uint16 NO_OVERTAKING = 12
uint16 SPEED_LIMIT = 13
uint16 SPEED_LIMIT_ENDS = 14
uint16 DETOUR_RIGHT = 15
uint16 DETOUR_BOTH_SIDES = 16
uint16 DETOUR_LEFT = 17
uint16 MERGE_RIGHT = 18
uint16 MERGE_LEFT = 19
uint16 TRAFFIC_LIGHT = 20
uint16 EMERGENCY_LANE = 21
uint16 NON_MOTORIZED_VEHICLE_LANE = 22
uint16 SECTIONAL_SPEED_MEASUREMENT = 23
uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24
uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25
uint16 TOLL = 26
uint16 CONDITIONAL_SPEED_LIMIT = 27
uint16 ADVISORY_SPEED_LIMIT = 28
uint16 ROAD_CONSTRUCTION = 29
uint16 TRAFFIC_CONTROL = 30
uint16 ROAD_CLOSED = 31
uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32
uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33
uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34
uint16 ROAD_END = 35
uint16 UNKNOWN_TRAFFIC_FLOW = 36
uint16 SMOOTH_TRAFFIC = 37
uint16 SLOW_MOVING = 38
uint16 CONGESTED = 39
uint16 SEVERELY_CONGESTED = 40
uint16 NO_TRAFFIC_FLOW = 41
uint16 VISIBILITY = 42
uint16 value

")



(provide :landmark_msgs/ManeuverType "7d35883fef37ea26bfa3ec6a2c998252")


