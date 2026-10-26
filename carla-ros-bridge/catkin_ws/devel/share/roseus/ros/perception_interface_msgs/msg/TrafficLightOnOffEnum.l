;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightOnOffEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightOnOffEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightOnOffEnum.msg.html


(intern "*TRAFFIC_LIGHT_ONOFF_ON*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(shadow '*TRAFFIC_LIGHT_ONOFF_ON* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(defconstant perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_ON* 0)
(intern "*TRAFFIC_LIGHT_ONOFF_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(shadow '*TRAFFIC_LIGHT_ONOFF_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(defconstant perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_OFF* 1)
(intern "*TRAFFIC_LIGHT_ONOFF_UNKNOW*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(shadow '*TRAFFIC_LIGHT_ONOFF_UNKNOW* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(defconstant perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_UNKNOW* 2)
(intern "*TRAFFIC_LIGHT_ONOFF_UNMARKED*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(shadow '*TRAFFIC_LIGHT_ONOFF_UNMARKED* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(defconstant perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_UNMARKED* 3)
(intern "*TRAFFIC_LIGHT_ONOFF_RESERVE1*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(shadow '*TRAFFIC_LIGHT_ONOFF_RESERVE1* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(defconstant perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_RESERVE1* 4)
(intern "*TRAFFIC_LIGHT_ONOFF_RESERVE2*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(shadow '*TRAFFIC_LIGHT_ONOFF_RESERVE2* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(defconstant perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_RESERVE2* 5)
(intern "*TRAFFIC_LIGHT_ONOFF_RESERVE3*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(shadow '*TRAFFIC_LIGHT_ONOFF_RESERVE3* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTONOFFENUM"))
(defconstant perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_RESERVE3* 6)

(defun perception_interface_msgs::TrafficLightOnOffEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_ON*)
        ((= const 1) 'perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_OFF*)
        ((= const 2) 'perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_UNKNOW*)
        ((= const 3) 'perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_UNMARKED*)
        ((= const 4) 'perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_RESERVE1*)
        ((= const 5) 'perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_RESERVE2*)
        ((= const 6) 'perception_interface_msgs::TrafficLightOnOffEnum::*TRAFFIC_LIGHT_ONOFF_RESERVE3*)
        (t nil)))

(defclass perception_interface_msgs::TrafficLightOnOffEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficLightOnOffEnum
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

(setf (get perception_interface_msgs::TrafficLightOnOffEnum :md5sum-) "04f595a1ed29db67b154a36851db594b")
(setf (get perception_interface_msgs::TrafficLightOnOffEnum :datatype-) "perception_interface_msgs/TrafficLightOnOffEnum")
(setf (get perception_interface_msgs::TrafficLightOnOffEnum :definition-)
      "uint8 TRAFFIC_LIGHT_ONOFF_ON = 0
uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1
uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2
uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5
uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6
uint8 value

")



(provide :perception_interface_msgs/TrafficLightOnOffEnum "04f595a1ed29db67b154a36851db594b")


