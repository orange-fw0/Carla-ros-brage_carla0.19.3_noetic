;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightObservedByEgoEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightObservedByEgoEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightObservedByEgoEnum.msg.html


(intern "*TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM"))
(shadow '*TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM"))
(defconstant landmark_msgs::TrafficLightObservedByEgoEnum::*TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN* 0)
(intern "*TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM"))
(shadow '*TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE* (find-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM"))
(defconstant landmark_msgs::TrafficLightObservedByEgoEnum::*TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE* 1)
(intern "*TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM"))
(shadow '*TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE* (find-package "LANDMARK_MSGS::TRAFFICLIGHTOBSERVEDBYEGOENUM"))
(defconstant landmark_msgs::TrafficLightObservedByEgoEnum::*TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE* 2)

(defun landmark_msgs::TrafficLightObservedByEgoEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficLightObservedByEgoEnum::*TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficLightObservedByEgoEnum::*TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE*)
        ((= const 2) 'landmark_msgs::TrafficLightObservedByEgoEnum::*TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE*)
        (t nil)))

(defclass landmark_msgs::TrafficLightObservedByEgoEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficLightObservedByEgoEnum
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

(setf (get landmark_msgs::TrafficLightObservedByEgoEnum :md5sum-) "d08b826631bb4abef4f4b488a293318e")
(setf (get landmark_msgs::TrafficLightObservedByEgoEnum :datatype-) "landmark_msgs/TrafficLightObservedByEgoEnum")
(setf (get landmark_msgs::TrafficLightObservedByEgoEnum :definition-)
      "uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1
uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2
uint8 value

")



(provide :landmark_msgs/TrafficLightObservedByEgoEnum "d08b826631bb4abef4f4b488a293318e")


