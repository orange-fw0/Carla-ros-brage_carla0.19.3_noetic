;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::GuideActionEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'GuideActionEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::GUIDEACTIONENUM")
  (make-package "TBT_MSGS::GUIDEACTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude GuideActionEnum.msg.html


(intern "*NO_NAVI_ACTION*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*NO_NAVI_ACTION* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*NO_NAVI_ACTION* 0)
(intern "*TURN_LEFT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TURN_LEFT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TURN_LEFT* 1)
(intern "*TURN_RIGHT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TURN_RIGHT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TURN_RIGHT* 2)
(intern "*DRIVE_LEFT_FRONT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*DRIVE_LEFT_FRONT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*DRIVE_LEFT_FRONT* 3)
(intern "*DRIVE_RIGHT_FRONT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*DRIVE_RIGHT_FRONT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*DRIVE_RIGHT_FRONT* 4)
(intern "*DRIVE_LEFT_REAR*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*DRIVE_LEFT_REAR* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*DRIVE_LEFT_REAR* 5)
(intern "*DRIVE_RIGHT_REAR*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*DRIVE_RIGHT_REAR* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*DRIVE_RIGHT_REAR* 6)
(intern "*TURN_LEFT_TURN_AROUND*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TURN_LEFT_TURN_AROUND* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TURN_LEFT_TURN_AROUND* 7)
(intern "*GO_STRAIGHT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*GO_STRAIGHT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*GO_STRAIGHT* 8)
(intern "*FRONT_ROAD_ALONG_LEFT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*FRONT_ROAD_ALONG_LEFT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*FRONT_ROAD_ALONG_LEFT* 9)
(intern "*FRONT_ROAD_ALONG_RIGHT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*FRONT_ROAD_ALONG_RIGHT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*FRONT_ROAD_ALONG_RIGHT* 10)
(intern "*TRIFURCATION_ALONG_LEFT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TRIFURCATION_ALONG_LEFT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TRIFURCATION_ALONG_LEFT* 11)
(intern "*TRIFURCATION_ALONG_MIDDLE*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TRIFURCATION_ALONG_MIDDLE* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TRIFURCATION_ALONG_MIDDLE* 12)
(intern "*TRIFURCATION_ALONG_RIGHT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TRIFURCATION_ALONG_RIGHT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TRIFURCATION_ALONG_RIGHT* 13)
(intern "*TWO_STRAIGHT_ALONG_LEFT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TWO_STRAIGHT_ALONG_LEFT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TWO_STRAIGHT_ALONG_LEFT* 14)
(intern "*TWO_STRAIGHT_ALONG_RIGHT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*TWO_STRAIGHT_ALONG_RIGHT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*TWO_STRAIGHT_ALONG_RIGHT* 15)
(intern "*THREE_STRAIGHT_ALONG_LEFT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*THREE_STRAIGHT_ALONG_LEFT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*THREE_STRAIGHT_ALONG_LEFT* 16)
(intern "*THREE_STRAIGHT_ALONG_MIDDLE*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*THREE_STRAIGHT_ALONG_MIDDLE* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*THREE_STRAIGHT_ALONG_MIDDLE* 17)
(intern "*THREE_STRAIGHT_ALONG_RIGHT*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*THREE_STRAIGHT_ALONG_RIGHT* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*THREE_STRAIGHT_ALONG_RIGHT* 18)
(intern "*ENTRY_RING*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*ENTRY_RING* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*ENTRY_RING* 19)
(intern "*DESTINATION*" (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(shadow '*DESTINATION* (find-package "TBT_MSGS::GUIDEACTIONENUM"))
(defconstant tbt_msgs::GuideActionEnum::*DESTINATION* 20)

(defun tbt_msgs::GuideActionEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::GuideActionEnum::*NO_NAVI_ACTION*)
        ((= const 1) 'tbt_msgs::GuideActionEnum::*TURN_LEFT*)
        ((= const 2) 'tbt_msgs::GuideActionEnum::*TURN_RIGHT*)
        ((= const 3) 'tbt_msgs::GuideActionEnum::*DRIVE_LEFT_FRONT*)
        ((= const 4) 'tbt_msgs::GuideActionEnum::*DRIVE_RIGHT_FRONT*)
        ((= const 5) 'tbt_msgs::GuideActionEnum::*DRIVE_LEFT_REAR*)
        ((= const 6) 'tbt_msgs::GuideActionEnum::*DRIVE_RIGHT_REAR*)
        ((= const 7) 'tbt_msgs::GuideActionEnum::*TURN_LEFT_TURN_AROUND*)
        ((= const 8) 'tbt_msgs::GuideActionEnum::*GO_STRAIGHT*)
        ((= const 9) 'tbt_msgs::GuideActionEnum::*FRONT_ROAD_ALONG_LEFT*)
        ((= const 10) 'tbt_msgs::GuideActionEnum::*FRONT_ROAD_ALONG_RIGHT*)
        ((= const 11) 'tbt_msgs::GuideActionEnum::*TRIFURCATION_ALONG_LEFT*)
        ((= const 12) 'tbt_msgs::GuideActionEnum::*TRIFURCATION_ALONG_MIDDLE*)
        ((= const 13) 'tbt_msgs::GuideActionEnum::*TRIFURCATION_ALONG_RIGHT*)
        ((= const 14) 'tbt_msgs::GuideActionEnum::*TWO_STRAIGHT_ALONG_LEFT*)
        ((= const 15) 'tbt_msgs::GuideActionEnum::*TWO_STRAIGHT_ALONG_RIGHT*)
        ((= const 16) 'tbt_msgs::GuideActionEnum::*THREE_STRAIGHT_ALONG_LEFT*)
        ((= const 17) 'tbt_msgs::GuideActionEnum::*THREE_STRAIGHT_ALONG_MIDDLE*)
        ((= const 18) 'tbt_msgs::GuideActionEnum::*THREE_STRAIGHT_ALONG_RIGHT*)
        ((= const 19) 'tbt_msgs::GuideActionEnum::*ENTRY_RING*)
        ((= const 20) 'tbt_msgs::GuideActionEnum::*DESTINATION*)
        (t nil)))

(defclass tbt_msgs::GuideActionEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::GuideActionEnum
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

(setf (get tbt_msgs::GuideActionEnum :md5sum-) "1bf7bcf9d33a27178a8a8ccee339fb10")
(setf (get tbt_msgs::GuideActionEnum :datatype-) "tbt_msgs/GuideActionEnum")
(setf (get tbt_msgs::GuideActionEnum :definition-)
      "uint8 NO_NAVI_ACTION = 0
uint8 TURN_LEFT = 1
uint8 TURN_RIGHT = 2
uint8 DRIVE_LEFT_FRONT = 3
uint8 DRIVE_RIGHT_FRONT = 4
uint8 DRIVE_LEFT_REAR = 5
uint8 DRIVE_RIGHT_REAR = 6
uint8 TURN_LEFT_TURN_AROUND = 7
uint8 GO_STRAIGHT = 8
uint8 FRONT_ROAD_ALONG_LEFT = 9
uint8 FRONT_ROAD_ALONG_RIGHT = 10
uint8 TRIFURCATION_ALONG_LEFT = 11
uint8 TRIFURCATION_ALONG_MIDDLE = 12
uint8 TRIFURCATION_ALONG_RIGHT = 13
uint8 TWO_STRAIGHT_ALONG_LEFT = 14
uint8 TWO_STRAIGHT_ALONG_RIGHT = 15
uint8 THREE_STRAIGHT_ALONG_LEFT = 16
uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17
uint8 THREE_STRAIGHT_ALONG_RIGHT = 18
uint8 ENTRY_RING = 19
uint8 DESTINATION = 20
uint8 value

")



(provide :tbt_msgs/GuideActionEnum "1bf7bcf9d33a27178a8a8ccee339fb10")


