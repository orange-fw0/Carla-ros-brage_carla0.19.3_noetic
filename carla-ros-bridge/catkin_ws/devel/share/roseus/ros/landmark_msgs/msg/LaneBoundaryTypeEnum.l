;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneBoundaryTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneBoundaryTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM")
  (make-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryTypeEnum.msg.html


(intern "*LANE_BOUNDARY_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_UNKNOWN* 0)
(intern "*LANE_BOUNDARY_TYPE_DASHED*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_DASHED* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_DASHED* 1)
(intern "*LANE_BOUNDARY_TYPE_SOLID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_SOLID* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_SOLID* 2)
(intern "*LANE_BOUNDARY_TYPE_DOUBLE_SOLID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_DOUBLE_SOLID* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_DOUBLE_SOLID* 3)
(intern "*LANE_BOUNDARY_TYPE_DOUBLE_DASHED*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_DOUBLE_DASHED* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_DOUBLE_DASHED* 4)
(intern "*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID* 5)
(intern "*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED* 6)
(intern "*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED* 7)
(intern "*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID* 8)
(intern "*LANE_BOUNDARY_TYPE_ZIG_ZAG*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_ZIG_ZAG* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_ZIG_ZAG* 9)
(intern "*LANE_BOUNDARY_TYPE_BOTTS_DOTS*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_BOTTS_DOTS* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_BOTTS_DOTS* 10)
(intern "*LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK* 11)
(intern "*LANE_BOUNDARY_TYPE_LOGICAL*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_LOGICAL* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LOGICAL* 12)
(intern "*LANE_BOUNDARY_TYPE_PHYSICAL*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_PHYSICAL* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_PHYSICAL* 13)
(intern "*LANE_BOUNDARY_TYPE_VIRTUAL*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_VIRTUAL* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_VIRTUAL* 14)
(intern "*LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE* 15)
(intern "*LANE_BOUNDARY_TYPE_SHADE_AREA*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_SHADE_AREA* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_SHADE_AREA* 16)
(intern "*LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING* 17)
(intern "*LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING* 18)
(intern "*LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING* 19)
(intern "*LANE_BOUNDARY_TYPE_UNCLOSED_ROAD*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_UNCLOSED_ROAD* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_UNCLOSED_ROAD* 20)
(intern "*LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE* 21)
(intern "*LANE_BOUNDARY_TYPE_OTHERS*" (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(shadow '*LANE_BOUNDARY_TYPE_OTHERS* (find-package "LANDMARK_MSGS::LANEBOUNDARYTYPEENUM"))
(defconstant landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_OTHERS* 99)

(defun landmark_msgs::LaneBoundaryTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_DASHED*)
        ((= const 2) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_SOLID*)
        ((= const 3) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_DOUBLE_SOLID*)
        ((= const 4) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_DOUBLE_DASHED*)
        ((= const 5) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID*)
        ((= const 6) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED*)
        ((= const 7) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED*)
        ((= const 8) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID*)
        ((= const 9) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_ZIG_ZAG*)
        ((= const 10) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_BOTTS_DOTS*)
        ((= const 11) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK*)
        ((= const 12) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LOGICAL*)
        ((= const 13) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_PHYSICAL*)
        ((= const 14) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_VIRTUAL*)
        ((= const 15) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE*)
        ((= const 16) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_SHADE_AREA*)
        ((= const 17) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING*)
        ((= const 18) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING*)
        ((= const 19) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING*)
        ((= const 20) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_UNCLOSED_ROAD*)
        ((= const 21) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE*)
        ((= const 99) 'landmark_msgs::LaneBoundaryTypeEnum::*LANE_BOUNDARY_TYPE_OTHERS*)
        (t nil)))

(defclass landmark_msgs::LaneBoundaryTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneBoundaryTypeEnum
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

(setf (get landmark_msgs::LaneBoundaryTypeEnum :md5sum-) "d88357c717eba9bdaa54eb321b39ac5d")
(setf (get landmark_msgs::LaneBoundaryTypeEnum :datatype-) "landmark_msgs/LaneBoundaryTypeEnum")
(setf (get landmark_msgs::LaneBoundaryTypeEnum :definition-)
      "uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_TYPE_DASHED = 1
uint8 LANE_BOUNDARY_TYPE_SOLID = 2
uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
uint8 value

")



(provide :landmark_msgs/LaneBoundaryTypeEnum "d88357c717eba9bdaa54eb321b39ac5d")


