;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightStatusEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightStatusEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightStatusEnum.msg.html


(intern "*TRAFFIC_LIGHT_STATUS_RED*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_RED* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RED* 0)
(intern "*TRAFFIC_LIGHT_STATUS_YELLOW*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_YELLOW* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_YELLOW* 1)
(intern "*TRAFFIC_LIGHT_STATUS_GREEN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_GREEN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_GREEN* 2)
(intern "*TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING* 3)
(intern "*TRAFFIC_LIGHT_STATUS_GREEN_BLINKING*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_GREEN_BLINKING* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_GREEN_BLINKING* 4)
(intern "*TRAFFIC_LIGHT_STATUS_OFF*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_OFF* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_OFF* 5)
(intern "*TRAFFIC_LIGHT_STATUS_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_OTHER* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_OTHER* 6)
(intern "*TRAFFIC_LIGHT_STATUS_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_UNKNOWN* 7)
(intern "*TRAFFIC_LIGHT_STATUS_RED_BLINKING*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_RED_BLINKING* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RED_BLINKING* 8)
(intern "*TRAFFIC_LIGHT_STATUS_UNMARKED*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_UNMARKED* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_UNMARKED* 9)
(intern "*TRAFFIC_LIGHT_STATUS_RESERVE1*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_RESERVE1* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RESERVE1* 10)
(intern "*TRAFFIC_LIGHT_STATUS_RESERVE2*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_RESERVE2* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RESERVE2* 11)
(intern "*TRAFFIC_LIGHT_STATUS_RESERVE3*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_RESERVE3* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RESERVE3* 12)
(intern "*TRAFFIC_LIGHT_STATUS_ON*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(shadow '*TRAFFIC_LIGHT_STATUS_ON* (find-package "LANDMARK_MSGS::TRAFFICLIGHTSTATUSENUM"))
(defconstant landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_ON* 13)

(defun landmark_msgs::TrafficLightStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RED*)
        ((= const 1) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_YELLOW*)
        ((= const 2) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_GREEN*)
        ((= const 3) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING*)
        ((= const 4) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_GREEN_BLINKING*)
        ((= const 5) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_OFF*)
        ((= const 6) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_OTHER*)
        ((= const 7) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_UNKNOWN*)
        ((= const 8) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RED_BLINKING*)
        ((= const 9) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_UNMARKED*)
        ((= const 10) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RESERVE1*)
        ((= const 11) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RESERVE2*)
        ((= const 12) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_RESERVE3*)
        ((= const 13) 'landmark_msgs::TrafficLightStatusEnum::*TRAFFIC_LIGHT_STATUS_ON*)
        (t nil)))

(defclass landmark_msgs::TrafficLightStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficLightStatusEnum
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

(setf (get landmark_msgs::TrafficLightStatusEnum :md5sum-) "4492a4fb566e5043ee6cd18d6b24e706")
(setf (get landmark_msgs::TrafficLightStatusEnum :datatype-) "landmark_msgs/TrafficLightStatusEnum")
(setf (get landmark_msgs::TrafficLightStatusEnum :definition-)
      "uint8 TRAFFIC_LIGHT_STATUS_RED = 0
uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
uint8 TRAFFIC_LIGHT_STATUS_ON = 13
uint8 value

")



(provide :landmark_msgs/TrafficLightStatusEnum "4492a4fb566e5043ee6cd18d6b24e706")


