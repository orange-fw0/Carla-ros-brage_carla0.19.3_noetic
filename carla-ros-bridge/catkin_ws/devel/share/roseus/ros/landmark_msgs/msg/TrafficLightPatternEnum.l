;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightPatternEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightPatternEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightPatternEnum.msg.html


(intern "*TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE* 0)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFT_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFT_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_ARROW* 1)
(intern "*TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW* 2)
(intern "*TRAFFIC_LIGHT_PATTERN_UP_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_UP_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_UP_ARROW* 3)
(intern "*TRAFFIC_LIGHT_PATTERN_DOWN_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_DOWN_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_DOWN_ARROW* 4)
(intern "*TRAFFIC_LIGHT_PATTERN_PEDESTRIAN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_PEDESTRIAN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_PEDESTRIAN* 5)
(intern "*TRAFFIC_LIGHT_PATTERN_NON_MOTOR*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_NON_MOTOR* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_NON_MOTOR* 6)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFT_UTURN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFT_UTURN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_UTURN* 7)
(intern "*TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN* 8)
(intern "*TRAFFIC_LIGHT_PATTERN_NUMBER*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_NUMBER* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_NUMBER* 9)
(intern "*TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR* 10)
(intern "*TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT* 11)
(intern "*TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT* 12)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW* 13)
(intern "*TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW* 14)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW* 15)
(intern "*TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW* 16)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW* 17)
(intern "*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW* 18)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW* 19)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW* 20)
(intern "*TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW* 21)
(intern "*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW* 22)
(intern "*TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT* 23)
(intern "*TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT* 24)
(intern "*TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT* 25)
(intern "*TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS* 26)
(intern "*TRAFFIC_LIGHT_PATTERN_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_OTHER* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_OTHER* 50)
(intern "*TRAFFIC_LIGHT_PATTERN_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_UNKNOWN* 51)
(intern "*TRAFFIC_LIGHT_PATTERN_OFF*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_OFF* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_OFF* 52)
(intern "*TRAFFIC_LIGHT_PATTERN_UNMARKED*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_UNMARKED* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_UNMARKED* 53)
(intern "*TRAFFIC_LIGHT_PATTERN_RESERVE1*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RESERVE1* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RESERVE1* 80)
(intern "*TRAFFIC_LIGHT_PATTERN_RESERVE2*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RESERVE2* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RESERVE2* 81)
(intern "*TRAFFIC_LIGHT_PATTERN_RESERVE3*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(shadow '*TRAFFIC_LIGHT_PATTERN_RESERVE3* (find-package "LANDMARK_MSGS::TRAFFICLIGHTPATTERNENUM"))
(defconstant landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RESERVE3* 82)

(defun landmark_msgs::TrafficLightPatternEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE*)
        ((= const 1) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_ARROW*)
        ((= const 2) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW*)
        ((= const 3) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_UP_ARROW*)
        ((= const 4) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_DOWN_ARROW*)
        ((= const 5) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_PEDESTRIAN*)
        ((= const 6) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_NON_MOTOR*)
        ((= const 7) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_UTURN*)
        ((= const 8) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN*)
        ((= const 9) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_NUMBER*)
        ((= const 10) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR*)
        ((= const 11) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT*)
        ((= const 12) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT*)
        ((= const 13) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW*)
        ((= const 14) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW*)
        ((= const 15) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW*)
        ((= const 16) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW*)
        ((= const 17) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW*)
        ((= const 18) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW*)
        ((= const 19) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW*)
        ((= const 20) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW*)
        ((= const 21) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW*)
        ((= const 22) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW*)
        ((= const 23) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT*)
        ((= const 24) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT*)
        ((= const 25) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT*)
        ((= const 26) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS*)
        ((= const 50) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_OTHER*)
        ((= const 51) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_UNKNOWN*)
        ((= const 52) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_OFF*)
        ((= const 53) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_UNMARKED*)
        ((= const 80) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RESERVE1*)
        ((= const 81) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RESERVE2*)
        ((= const 82) 'landmark_msgs::TrafficLightPatternEnum::*TRAFFIC_LIGHT_PATTERN_RESERVE3*)
        (t nil)))

(defclass landmark_msgs::TrafficLightPatternEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficLightPatternEnum
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

(setf (get landmark_msgs::TrafficLightPatternEnum :md5sum-) "1f71b0a865dadbe6462f015d1850a896")
(setf (get landmark_msgs::TrafficLightPatternEnum :datatype-) "landmark_msgs/TrafficLightPatternEnum")
(setf (get landmark_msgs::TrafficLightPatternEnum :definition-)
      "uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23
uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24
uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25
uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82
uint8 value

")



(provide :landmark_msgs/TrafficLightPatternEnum "1f71b0a865dadbe6462f015d1850a896")


