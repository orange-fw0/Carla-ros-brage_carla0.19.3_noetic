;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightType)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightType (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightType.msg.html


(intern "*UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(shadow '*UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(defconstant landmark_msgs::TrafficLightType::*UNKNOWN* 0)
(intern "*DOT_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(shadow '*DOT_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(defconstant landmark_msgs::TrafficLightType::*DOT_TRAFFIC_LIGHT* 1)
(intern "*ARROW_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(shadow '*ARROW_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(defconstant landmark_msgs::TrafficLightType::*ARROW_TRAFFIC_LIGHT* 2)
(intern "*NUMBER_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(shadow '*NUMBER_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(defconstant landmark_msgs::TrafficLightType::*NUMBER_TRAFFIC_LIGHT* 3)
(intern "*TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(shadow '*TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(defconstant landmark_msgs::TrafficLightType::*TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE* 4)
(intern "*TRAFFIC_LIGHT_FOR_PEDESTRIANS*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(shadow '*TRAFFIC_LIGHT_FOR_PEDESTRIANS* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(defconstant landmark_msgs::TrafficLightType::*TRAFFIC_LIGHT_FOR_PEDESTRIANS* 5)
(intern "*SAND_CLOCK_TRAFFIC_LIGHT*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(shadow '*SAND_CLOCK_TRAFFIC_LIGHT* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPE"))
(defconstant landmark_msgs::TrafficLightType::*SAND_CLOCK_TRAFFIC_LIGHT* 6)

(defun landmark_msgs::TrafficLightType-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficLightType::*UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficLightType::*DOT_TRAFFIC_LIGHT*)
        ((= const 2) 'landmark_msgs::TrafficLightType::*ARROW_TRAFFIC_LIGHT*)
        ((= const 3) 'landmark_msgs::TrafficLightType::*NUMBER_TRAFFIC_LIGHT*)
        ((= const 4) 'landmark_msgs::TrafficLightType::*TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE*)
        ((= const 5) 'landmark_msgs::TrafficLightType::*TRAFFIC_LIGHT_FOR_PEDESTRIANS*)
        ((= const 6) 'landmark_msgs::TrafficLightType::*SAND_CLOCK_TRAFFIC_LIGHT*)
        (t nil)))

(defclass landmark_msgs::TrafficLightType
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficLightType
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

(setf (get landmark_msgs::TrafficLightType :md5sum-) "0eebfb04c94ba700ee92bc49ba51290f")
(setf (get landmark_msgs::TrafficLightType :datatype-) "landmark_msgs/TrafficLightType")
(setf (get landmark_msgs::TrafficLightType :definition-)
      "uint8 UNKNOWN = 0
uint8 DOT_TRAFFIC_LIGHT = 1
uint8 ARROW_TRAFFIC_LIGHT = 2
uint8 NUMBER_TRAFFIC_LIGHT = 3
uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
uint8 value

")



(provide :landmark_msgs/TrafficLightType "0eebfb04c94ba700ee92bc49ba51290f")


