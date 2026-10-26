;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkPerceptionRelationType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkPerceptionRelationType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE")
  (make-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude LandmarkPerceptionRelationType.msg.html


(intern "*RELATION_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_UNKNOWN* 0)
(intern "*RELATION_TYPE_LANE_CENTER_CONNECTION*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_LANE_CENTER_CONNECTION* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_CENTER_CONNECTION* 1)
(intern "*RELATION_TYPE_ROAD_CONNECTION*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_CONNECTION* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_CONNECTION* 2)
(intern "*RELATION_TYPE_LANE_CENTER_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_LANE_CENTER_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_CENTER_ROAD_BINDING* 3)
(intern "*RELATION_TYPE_ROAD_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_ROAD_BINDING* 4)
(intern "*RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING* 5)
(intern "*RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING* 6)
(intern "*RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING* 7)
(intern "*RELATION_TYPE_CROSS_WALK_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_CROSS_WALK_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_CROSS_WALK_ROAD_BINDING* 8)
(intern "*RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING* 9)
(intern "*RELATION_TYPE_AOI_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_AOI_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_AOI_ROAD_BINDING* 10)
(intern "*RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING* 11)
(intern "*RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING* 12)
(intern "*RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING* 13)
(intern "*RELATION_TYPE_POLE_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_POLE_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_POLE_ROAD_BINDING* 14)
(intern "*RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING* 15)
(intern "*RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING* 16)
(intern "*RELATION_TYPE_ROAD_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_AOI_BINDING* 17)
(intern "*RELATION_TYPE_AOI_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_AOI_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_AOI_AOI_BINDING* 18)
(intern "*RELATION_TYPE_DASH_LINE_END_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_DASH_LINE_END_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_DASH_LINE_END_ROAD_BINDING* 19)
(intern "*RELATION_TYPE_DASH_LINE_END_LANE_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_DASH_LINE_END_LANE_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_DASH_LINE_END_LANE_BINDING* 20)
(intern "*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING* 21)
(intern "*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING* 22)
(intern "*RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING* 23)
(intern "*RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING* 24)
(intern "*RELATION_TYPE_ROAD_MARK_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_MARK_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_MARK_AOI_BINDING* 25)
(intern "*RELATION_TYPE_LANE_CENTER_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_LANE_CENTER_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_CENTER_AOI_BINDING* 26)
(intern "*RELATION_TYPE_STOP_LINE_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_STOP_LINE_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_STOP_LINE_AOI_BINDING* 27)
(intern "*RELATION_TYPE_CROSS_WALK_AOI_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_CROSS_WALK_AOI_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_CROSS_WALK_AOI_BINDING* 28)
(intern "*RELATION_TYPE_STOP_LINE_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_STOP_LINE_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_STOP_LINE_ROAD_BINDING* 29)
(intern "*RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING* 30)
(intern "*RELATION_TYPE_ROAD_MARK_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_MARK_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_MARK_ROAD_BINDING* 31)
(intern "*RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING* 50)
(intern "*RELATION_TYPE_PARKING_SPACE_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_PARKING_SPACE_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_PARKING_SPACE_ROAD_BINDING* 51)
(intern "*RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING* 52)
(intern "*RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING* 53)
(intern "*RELATION_TYPE_ROADMARK_ROADMARK_BINDING*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_ROADMARK_ROADMARK_BINDING* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROADMARK_ROADMARK_BINDING* 54)
(intern "*RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(shadow '*RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONTYPE"))
(defconstant landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN* 55)

(defun landmark_msgs::LandmarkPerceptionRelationType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_CENTER_CONNECTION*)
        ((= const 2) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_CONNECTION*)
        ((= const 3) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_CENTER_ROAD_BINDING*)
        ((= const 4) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_ROAD_BINDING*)
        ((= const 5) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING*)
        ((= const 6) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING*)
        ((= const 7) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING*)
        ((= const 8) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_CROSS_WALK_ROAD_BINDING*)
        ((= const 9) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING*)
        ((= const 10) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_AOI_ROAD_BINDING*)
        ((= const 11) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING*)
        ((= const 12) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING*)
        ((= const 13) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING*)
        ((= const 14) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_POLE_ROAD_BINDING*)
        ((= const 15) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING*)
        ((= const 16) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING*)
        ((= const 17) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_AOI_BINDING*)
        ((= const 18) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_AOI_AOI_BINDING*)
        ((= const 19) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_DASH_LINE_END_ROAD_BINDING*)
        ((= const 20) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_DASH_LINE_END_LANE_BINDING*)
        ((= const 21) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING*)
        ((= const 22) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING*)
        ((= const 23) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING*)
        ((= const 24) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING*)
        ((= const 25) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_MARK_AOI_BINDING*)
        ((= const 26) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_CENTER_AOI_BINDING*)
        ((= const 27) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_STOP_LINE_AOI_BINDING*)
        ((= const 28) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_CROSS_WALK_AOI_BINDING*)
        ((= const 29) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_STOP_LINE_ROAD_BINDING*)
        ((= const 30) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING*)
        ((= const 31) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_MARK_ROAD_BINDING*)
        ((= const 50) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING*)
        ((= const 51) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_PARKING_SPACE_ROAD_BINDING*)
        ((= const 52) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING*)
        ((= const 53) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING*)
        ((= const 54) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_ROADMARK_ROADMARK_BINDING*)
        ((= const 55) 'landmark_msgs::LandmarkPerceptionRelationType::*RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN*)
        (t nil)))

(defclass landmark_msgs::LandmarkPerceptionRelationType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LandmarkPerceptionRelationType
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

(setf (get landmark_msgs::LandmarkPerceptionRelationType :md5sum-) "6d963b1af85e94fd4115f94d4e125715")
(setf (get landmark_msgs::LandmarkPerceptionRelationType :datatype-) "landmark_msgs/LandmarkPerceptionRelationType")
(setf (get landmark_msgs::LandmarkPerceptionRelationType :definition-)
      "uint8 RELATION_TYPE_UNKNOWN = 0
uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1
uint8 RELATION_TYPE_ROAD_CONNECTION = 2
uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3
uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4
uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5
uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6
uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7
uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8
uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9
uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10
uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11
uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12
uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13
uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14
uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15
uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16
uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17
uint8 RELATION_TYPE_AOI_AOI_BINDING = 18
uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19
uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20
uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21
uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22
uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23
uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24
uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25
uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26
uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27
uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28
uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29
uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30
uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31
uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50
uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51
uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52
uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53
uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54
uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55
uint8 value

")



(provide :landmark_msgs/LandmarkPerceptionRelationType "6d963b1af85e94fd4115f94d4e125715")


