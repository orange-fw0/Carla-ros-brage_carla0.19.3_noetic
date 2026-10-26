;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightTypeEnum.msg.html


(intern "*TRAFFIC_LIGHT_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_UNKNOWN* 0)
(intern "*TRAFFIC_LIGHT_TYPE_GROUP*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_GROUP* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GROUP* 1)
(intern "*TRAFFIC_LIGHT_TYPE_GLIM_BULB*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_GLIM_BULB* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_BULB* 2)
(intern "*TRAFFIC_LIGHT_TYPE_GLIM_HALO*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_GLIM_HALO* (find-package "LANDMARK_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_HALO* 3)

(defun landmark_msgs::TrafficLightTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GROUP*)
        ((= const 2) 'landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_BULB*)
        ((= const 3) 'landmark_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_HALO*)
        (t nil)))

(defclass landmark_msgs::TrafficLightTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficLightTypeEnum
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

(setf (get landmark_msgs::TrafficLightTypeEnum :md5sum-) "36c73dd612044e565de3a7fdc79ab51e")
(setf (get landmark_msgs::TrafficLightTypeEnum :datatype-) "landmark_msgs/TrafficLightTypeEnum")
(setf (get landmark_msgs::TrafficLightTypeEnum :definition-)
      "uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
uint8 value

")



(provide :landmark_msgs/TrafficLightTypeEnum "36c73dd612044e565de3a7fdc79ab51e")


