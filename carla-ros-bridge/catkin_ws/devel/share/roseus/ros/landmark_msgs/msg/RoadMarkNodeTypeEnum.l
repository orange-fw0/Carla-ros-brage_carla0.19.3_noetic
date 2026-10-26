;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadMarkNodeTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadMarkNodeTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM")
  (make-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadMarkNodeTypeEnum.msg.html


(intern "*ROAD_MARK_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_UNKNOWN* 0)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT* 1)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT* 2)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT* 3)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK* 4)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK* 5)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE* 6)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE* 7)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL* 8)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW_TEXT*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW_TEXT* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_TEXT* 9)
(intern "*ROAD_MARK_TYPE_NO_PARKING_ZONE*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_NO_PARKING_ZONE* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_NO_PARKING_ZONE* 10)
(intern "*ROAD_MARK_TYPE_LATERAL_DECELERATION*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_LATERAL_DECELERATION* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_LATERAL_DECELERATION* 11)
(intern "*ROAD_MARK_TYPE_CENTRAL_CIRCLE*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_CENTRAL_CIRCLE* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_CENTRAL_CIRCLE* 12)
(intern "*ROAD_MARK_TYPE_INDICATED_LINE*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_INDICATED_LINE* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_INDICATED_LINE* 13)
(intern "*ROAD_MARK_TYPE_SYMBOL*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_SYMBOL* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_SYMBOL* 14)
(intern "*ROAD_MARK_TYPE_TEXT*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_TEXT* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_TEXT* 15)
(intern "*ROAD_MARK_TYPE_GUIDE_ARROW*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_GUIDE_ARROW* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW* 16)
(intern "*ROAD_MARK_TYPE_PROHIBIT*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_PROHIBIT* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PROHIBIT* 17)
(intern "*ROAD_MARK_TYPE_PROHIBIT_U_TURN*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_PROHIBIT_U_TURN* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PROHIBIT_U_TURN* 18)
(intern "*ROAD_MARK_TYPE_YIELD_LINE*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_YIELD_LINE* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_YIELD_LINE* 21)
(intern "*ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING* 22)
(intern "*ROAD_MARK_TYPE_NON_MOTOR*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_NON_MOTOR* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_NON_MOTOR* 24)
(intern "*ROAD_MARK_TYPE_STOP*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_STOP* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_STOP* 25)
(intern "*ROAD_MARK_TYPE_PEDESTRIAN*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_PEDESTRIAN* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PEDESTRIAN* 26)
(intern "*ROAD_MARK_TYPE_YIELD_MARKING*" (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(shadow '*ROAD_MARK_TYPE_YIELD_MARKING* (find-package "LANDMARK_MSGS::ROADMARKNODETYPEENUM"))
(defconstant landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_YIELD_MARKING* 27)

(defun landmark_msgs::RoadMarkNodeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT*)
        ((= const 2) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT*)
        ((= const 3) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT*)
        ((= const 4) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK*)
        ((= const 5) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK*)
        ((= const 6) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE*)
        ((= const 7) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE*)
        ((= const 8) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL*)
        ((= const 9) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW_TEXT*)
        ((= const 10) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_NO_PARKING_ZONE*)
        ((= const 11) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_LATERAL_DECELERATION*)
        ((= const 12) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_CENTRAL_CIRCLE*)
        ((= const 13) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_INDICATED_LINE*)
        ((= const 14) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_SYMBOL*)
        ((= const 15) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_TEXT*)
        ((= const 16) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_GUIDE_ARROW*)
        ((= const 17) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PROHIBIT*)
        ((= const 18) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PROHIBIT_U_TURN*)
        ((= const 21) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_YIELD_LINE*)
        ((= const 22) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING*)
        ((= const 24) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_NON_MOTOR*)
        ((= const 25) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_STOP*)
        ((= const 26) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_PEDESTRIAN*)
        ((= const 27) 'landmark_msgs::RoadMarkNodeTypeEnum::*ROAD_MARK_TYPE_YIELD_MARKING*)
        (t nil)))

(defclass landmark_msgs::RoadMarkNodeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadMarkNodeTypeEnum
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

(setf (get landmark_msgs::RoadMarkNodeTypeEnum :md5sum-) "69a51e779ef62314c0d675076c8ec192")
(setf (get landmark_msgs::RoadMarkNodeTypeEnum :datatype-) "landmark_msgs/RoadMarkNodeTypeEnum")
(setf (get landmark_msgs::RoadMarkNodeTypeEnum :definition-)
      "uint8 ROAD_MARK_TYPE_UNKNOWN = 0
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9
uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10
uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11
uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12
uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13
uint8 ROAD_MARK_TYPE_SYMBOL = 14
uint8 ROAD_MARK_TYPE_TEXT = 15
uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16
uint8 ROAD_MARK_TYPE_PROHIBIT = 17
uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18
uint8 ROAD_MARK_TYPE_YIELD_LINE = 21
uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22
uint8 ROAD_MARK_TYPE_NON_MOTOR = 24
uint8 ROAD_MARK_TYPE_STOP = 25
uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26
uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27
uint8 value

")



(provide :landmark_msgs/RoadMarkNodeTypeEnum "69a51e779ef62314c0d675076c8ec192")


