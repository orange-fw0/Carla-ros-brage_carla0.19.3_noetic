;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightGroupPropertyEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightGroupPropertyEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightGroupPropertyEnum.msg.html


(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION* 0)
(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL* 1)
(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN* 2)
(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED* 3)
(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1* 4)
(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2* 5)
(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3* 6)
(intern "*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPPROPERTYENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4* 7)

(defun perception_interface_msgs::TrafficLightGroupPropertyEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION*)
        ((= const 1) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL*)
        ((= const 2) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN*)
        ((= const 3) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED*)
        ((= const 4) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1*)
        ((= const 5) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2*)
        ((= const 6) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3*)
        ((= const 7) 'perception_interface_msgs::TrafficLightGroupPropertyEnum::*TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4*)
        (t nil)))

(defclass perception_interface_msgs::TrafficLightGroupPropertyEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficLightGroupPropertyEnum
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

(setf (get perception_interface_msgs::TrafficLightGroupPropertyEnum :md5sum-) "a74e3ab5378359364210413f4c8989d3")
(setf (get perception_interface_msgs::TrafficLightGroupPropertyEnum :datatype-) "perception_interface_msgs/TrafficLightGroupPropertyEnum")
(setf (get perception_interface_msgs::TrafficLightGroupPropertyEnum :definition-)
      "uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6
uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7
uint8 value

")



(provide :perception_interface_msgs/TrafficLightGroupPropertyEnum "a74e3ab5378359364210413f4c8989d3")


