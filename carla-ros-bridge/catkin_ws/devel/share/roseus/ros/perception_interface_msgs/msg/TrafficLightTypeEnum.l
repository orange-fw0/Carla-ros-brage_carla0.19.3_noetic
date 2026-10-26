;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightTypeEnum.msg.html


(intern "*TRAFFIC_LIGHT_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_UNKNOWN* 0)
(intern "*TRAFFIC_LIGHT_TYPE_GROUP*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_GROUP* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GROUP* 1)
(intern "*TRAFFIC_LIGHT_TYPE_GLIM_BULB*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_GLIM_BULB* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_BULB* 2)
(intern "*TRAFFIC_LIGHT_TYPE_GLIM_HALO*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(shadow '*TRAFFIC_LIGHT_TYPE_GLIM_HALO* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTTYPEENUM"))
(defconstant perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_HALO* 3)

(defun perception_interface_msgs::TrafficLightTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GROUP*)
        ((= const 2) 'perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_BULB*)
        ((= const 3) 'perception_interface_msgs::TrafficLightTypeEnum::*TRAFFIC_LIGHT_TYPE_GLIM_HALO*)
        (t nil)))

(defclass perception_interface_msgs::TrafficLightTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficLightTypeEnum
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

(setf (get perception_interface_msgs::TrafficLightTypeEnum :md5sum-) "36c73dd612044e565de3a7fdc79ab51e")
(setf (get perception_interface_msgs::TrafficLightTypeEnum :datatype-) "perception_interface_msgs/TrafficLightTypeEnum")
(setf (get perception_interface_msgs::TrafficLightTypeEnum :definition-)
      "uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0
uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1
uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2
uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3
uint8 value

")



(provide :perception_interface_msgs/TrafficLightTypeEnum "36c73dd612044e565de3a7fdc79ab51e")


