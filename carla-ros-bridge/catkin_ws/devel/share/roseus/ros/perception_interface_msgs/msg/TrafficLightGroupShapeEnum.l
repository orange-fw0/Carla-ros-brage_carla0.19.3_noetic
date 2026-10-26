;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightGroupShapeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightGroupShapeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightGroupShapeEnum.msg.html


(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL* 0)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL* 1)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE* 2)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION* 3)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR* 4)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN* 5)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1* 6)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2* 7)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3* 8)
(intern "*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(shadow '*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTGROUPSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4* 9)

(defun perception_interface_msgs::TrafficLightGroupShapeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL*)
        ((= const 1) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL*)
        ((= const 2) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE*)
        ((= const 3) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION*)
        ((= const 4) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR*)
        ((= const 5) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN*)
        ((= const 6) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1*)
        ((= const 7) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2*)
        ((= const 8) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3*)
        ((= const 9) 'perception_interface_msgs::TrafficLightGroupShapeEnum::*TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4*)
        (t nil)))

(defclass perception_interface_msgs::TrafficLightGroupShapeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficLightGroupShapeEnum
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

(setf (get perception_interface_msgs::TrafficLightGroupShapeEnum :md5sum-) "cebcc1bed0ca870c6dde53966362fb1c")
(setf (get perception_interface_msgs::TrafficLightGroupShapeEnum :datatype-) "perception_interface_msgs/TrafficLightGroupShapeEnum")
(setf (get perception_interface_msgs::TrafficLightGroupShapeEnum :definition-)
      "uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8
uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9
uint8 value

")



(provide :perception_interface_msgs/TrafficLightGroupShapeEnum "cebcc1bed0ca870c6dde53966362fb1c")


