;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightGroupEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightGroupEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightGroupEnum.msg.html


(intern "*TRAFFIC_LIGHT_GROUP_ORIGIN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_ORIGIN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_ORIGIN* 0)
(intern "*TRAFFIC_LIGHT_GROUP_ADDED*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_ADDED* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_ADDED* 1)
(intern "*TRAFFIC_LIGHT_GROUP_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_UNKNOWN* 2)
(intern "*TRAFFIC_LIGHT_GROUP_RESERVE1*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_RESERVE1* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE1* 3)
(intern "*TRAFFIC_LIGHT_GROUP_RESERVE2*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_RESERVE2* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE2* 4)
(intern "*TRAFFIC_LIGHT_GROUP_RESERVE3*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_RESERVE3* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE3* 5)
(intern "*TRAFFIC_LIGHT_GROUP_RESERVE4*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_RESERVE4* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE4* 6)

(defun perception_interface_msgs::TrafficLightGroupEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_ORIGIN*)
        ((= const 1) 'perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_ADDED*)
        ((= const 2) 'perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_UNKNOWN*)
        ((= const 3) 'perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE1*)
        ((= const 4) 'perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE2*)
        ((= const 5) 'perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE3*)
        ((= const 6) 'perception_interface_msgs::TrafficLightGroupEnum::*TRAFFIC_LIGHT_GROUP_RESERVE4*)
        (t nil)))

(defclass perception_interface_msgs::TrafficLightGroupEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficLightGroupEnum
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

(setf (get perception_interface_msgs::TrafficLightGroupEnum :md5sum-) "614796cdb0a15f6177bb73fd53d01d3d")
(setf (get perception_interface_msgs::TrafficLightGroupEnum :datatype-) "perception_interface_msgs/TrafficLightGroupEnum")
(setf (get perception_interface_msgs::TrafficLightGroupEnum :definition-)
      "uint8 TRAFFIC_LIGHT_GROUP_ORIGIN = 0
uint8 TRAFFIC_LIGHT_GROUP_ADDED = 1
uint8 TRAFFIC_LIGHT_GROUP_UNKNOWN = 2
uint8 TRAFFIC_LIGHT_GROUP_RESERVE1 = 3
uint8 TRAFFIC_LIGHT_GROUP_RESERVE2 = 4
uint8 TRAFFIC_LIGHT_GROUP_RESERVE3 = 5
uint8 TRAFFIC_LIGHT_GROUP_RESERVE4 = 6
uint8 value

")



(provide :perception_interface_msgs/TrafficLightGroupEnum "614796cdb0a15f6177bb73fd53d01d3d")


