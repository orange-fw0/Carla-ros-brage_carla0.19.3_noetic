;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadBoundaryTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadBoundaryTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM")
  (make-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadBoundaryTypeEnum.msg.html


(intern "*ROAD_BOUNDARY_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_UNKNOWN* 0)
(intern "*ROAD_BOUNDARY_TYPE_NONE*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_NONE* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_NONE* 1)
(intern "*ROAD_BOUNDARY_TYPE_NORMAL*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_NORMAL* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_NORMAL* 2)
(intern "*ROAD_BOUNDARY_TYPE_VIRTUAL*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_VIRTUAL* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_VIRTUAL* 3)
(intern "*ROAD_BOUNDARY_TYPE_WATERHORSE*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_WATERHORSE* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_WATERHORSE* 4)
(intern "*ROAD_BOUNDARY_TYPE_CONE*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_CONE* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CONE* 5)
(intern "*ROAD_BOUNDARY_TYPE_GREENBELT*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_GREENBELT* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_GREENBELT* 6)
(intern "*ROAD_BOUNDARY_TYPE_CEMENT_PIER*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_CEMENT_PIER* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CEMENT_PIER* 7)
(intern "*ROAD_BOUNDARY_TYPE_GUTTER*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_GUTTER* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_GUTTER* 8)
(intern "*ROAD_BOUNDARY_TYPE_EMERGENCY_LANE*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_EMERGENCY_LANE* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_EMERGENCY_LANE* 9)
(intern "*ROAD_BOUNDARY_TYPE_GUARDRAIL*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_GUARDRAIL* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_GUARDRAIL* 10)
(intern "*ROAD_BOUNDARY_TYPE_DASH_LINE*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_DASH_LINE* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_DASH_LINE* 11)
(intern "*ROAD_BOUNDARY_TYPE_LOGICAL*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_LOGICAL* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_LOGICAL* 12)
(intern "*ROAD_BOUNDARY_TYPE_PHYSICAL*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_PHYSICAL* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_PHYSICAL* 13)
(intern "*ROAD_BOUNDARY_TYPE_SOLID_LINE*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_SOLID_LINE* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_SOLID_LINE* 14)
(intern "*ROAD_BOUNDARY_TYPE_CURB*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_CURB* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CURB* 15)
(intern "*ROAD_BOUNDARY_TYPE_BOLLARD*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_BOLLARD* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_BOLLARD* 16)
(intern "*ROAD_BOUNDARY_TYPE_WALL*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_WALL* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_WALL* 17)
(intern "*ROAD_BOUNDARY_TYPE_CURB_YELLOW*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_CURB_YELLOW* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CURB_YELLOW* 18)
(intern "*ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK* 19)
(intern "*ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA*" (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(shadow '*ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA* (find-package "LANDMARK_MSGS::ROADBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA* 20)

(defun landmark_msgs::RoadBoundaryTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_NONE*)
        ((= const 2) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_NORMAL*)
        ((= const 3) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_VIRTUAL*)
        ((= const 4) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_WATERHORSE*)
        ((= const 5) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CONE*)
        ((= const 6) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_GREENBELT*)
        ((= const 7) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CEMENT_PIER*)
        ((= const 8) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_GUTTER*)
        ((= const 9) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_EMERGENCY_LANE*)
        ((= const 10) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_GUARDRAIL*)
        ((= const 11) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_DASH_LINE*)
        ((= const 12) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_LOGICAL*)
        ((= const 13) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_PHYSICAL*)
        ((= const 14) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_SOLID_LINE*)
        ((= const 15) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CURB*)
        ((= const 16) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_BOLLARD*)
        ((= const 17) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_WALL*)
        ((= const 18) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CURB_YELLOW*)
        ((= const 19) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK*)
        ((= const 20) 'landmark_msgs::RoadBoundaryTypeEnum::*ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA*)
        (t nil)))

(defclass landmark_msgs::RoadBoundaryTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadBoundaryTypeEnum
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

(setf (get landmark_msgs::RoadBoundaryTypeEnum :md5sum-) "8667598650ce3b2130edf7d50d7b0228")
(setf (get landmark_msgs::RoadBoundaryTypeEnum :datatype-) "landmark_msgs/RoadBoundaryTypeEnum")
(setf (get landmark_msgs::RoadBoundaryTypeEnum :definition-)
      "uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_TYPE_NONE = 1
uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
uint8 ROAD_BOUNDARY_TYPE_CONE = 5
uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
uint8 ROAD_BOUNDARY_TYPE_CURB = 15
uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
uint8 ROAD_BOUNDARY_TYPE_WALL = 17
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
uint8 value

")



(provide :landmark_msgs/RoadBoundaryTypeEnum "8667598650ce3b2130edf7d50d7b0228")


