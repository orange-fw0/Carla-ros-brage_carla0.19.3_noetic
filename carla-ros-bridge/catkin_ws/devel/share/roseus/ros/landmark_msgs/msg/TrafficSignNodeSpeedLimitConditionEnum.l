;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeSpeedLimitConditionEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeSpeedLimitConditionEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER* 1)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW* 2)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD* 3)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP* 4)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT* 5)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE* 6)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL* 7)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT* 8)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT* 9)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT* 10)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL* 11)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR* 12)
(intern "*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESPEEDLIMITCONDITIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE* 13)

(defun landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD*)
        ((= const 4) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP*)
        ((= const 5) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT*)
        ((= const 6) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE*)
        ((= const 7) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL*)
        ((= const 8) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT*)
        ((= const 9) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT*)
        ((= const 10) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT*)
        ((= const 11) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL*)
        ((= const 12) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR*)
        ((= const 13) 'landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum::*TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum
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

(setf (get landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum :md5sum-) "3794c8440aa1cd9e81acc811ab86343d")
(setf (get landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum :datatype-) "landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum")
(setf (get landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum "3794c8440aa1cd9e81acc811ab86343d")


