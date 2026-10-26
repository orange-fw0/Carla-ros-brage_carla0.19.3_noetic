;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterNodeDirectionTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterNodeDirectionTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM")
  (make-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterNodeDirectionTypeEnum.msg.html


(intern "*LANE_TYPE_GUIDE_DIRECTION_UNKNOWN*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_UNKNOWN* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_UNKNOWN* 0)
(intern "*LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT* 1)
(intern "*LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT* 2)
(intern "*LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT* 3)
(intern "*LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE* 6)
(intern "*LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE* 7)
(intern "*LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT* 8)
(intern "*LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT* 9)
(intern "*LANE_TYPE_GUIDE_DIRECTION_TEXT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_TEXT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_TEXT* 21)
(intern "*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT* 22)
(intern "*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT* 23)
(intern "*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN* 24)
(intern "*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN* 25)
(intern "*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW* 26)
(intern "*LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW* 27)
(intern "*LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN* 28)
(intern "*LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN* 29)
(intern "*LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN* 30)
(intern "*LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN* 31)
(intern "*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT* 32)
(intern "*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT*" (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(shadow '*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT* (find-package "LANDMARK_MSGS::LANECENTERNODEDIRECTIONTYPEENUM"))
(defconstant landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT* 33)

(defun landmark_msgs::LaneCenterNodeDirectionTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_UNKNOWN*)
        ((= const 1) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT*)
        ((= const 2) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT*)
        ((= const 3) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT*)
        ((= const 6) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE*)
        ((= const 7) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE*)
        ((= const 8) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT*)
        ((= const 9) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT*)
        ((= const 21) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_TEXT*)
        ((= const 22) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT*)
        ((= const 23) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT*)
        ((= const 24) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN*)
        ((= const 25) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN*)
        ((= const 26) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW*)
        ((= const 27) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW*)
        ((= const 28) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN*)
        ((= const 29) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN*)
        ((= const 30) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN*)
        ((= const 31) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN*)
        ((= const 32) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT*)
        ((= const 33) 'landmark_msgs::LaneCenterNodeDirectionTypeEnum::*LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT*)
        (t nil)))

(defclass landmark_msgs::LaneCenterNodeDirectionTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::LaneCenterNodeDirectionTypeEnum
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

(setf (get landmark_msgs::LaneCenterNodeDirectionTypeEnum :md5sum-) "d37c557f67f5c4046eb1cd94e348c42d")
(setf (get landmark_msgs::LaneCenterNodeDirectionTypeEnum :datatype-) "landmark_msgs/LaneCenterNodeDirectionTypeEnum")
(setf (get landmark_msgs::LaneCenterNodeDirectionTypeEnum :definition-)
      "uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
uint8 value

")



(provide :landmark_msgs/LaneCenterNodeDirectionTypeEnum "d37c557f67f5c4046eb1cd94e348c42d")


