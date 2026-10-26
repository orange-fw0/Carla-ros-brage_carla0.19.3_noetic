;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficSignRegionEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficSignRegionEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignRegionEnum.msg.html


(intern "*TRAFFIC_SIGN_REGION_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(shadow '*TRAFFIC_SIGN_REGION_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(defconstant perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_REGION_CN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(shadow '*TRAFFIC_SIGN_REGION_CN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(defconstant perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_CN* 1)
(intern "*TRAFFIC_SIGN_REGION_EU*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(shadow '*TRAFFIC_SIGN_REGION_EU* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(defconstant perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_EU* 2)
(intern "*TRAFFIC_SIGN_REGION_US*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(shadow '*TRAFFIC_SIGN_REGION_US* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNREGIONENUM"))
(defconstant perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_US* 3)

(defun perception_interface_msgs::TrafficSignRegionEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_CN*)
        ((= const 2) 'perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_EU*)
        ((= const 3) 'perception_interface_msgs::TrafficSignRegionEnum::*TRAFFIC_SIGN_REGION_US*)
        (t nil)))

(defclass perception_interface_msgs::TrafficSignRegionEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficSignRegionEnum
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

(setf (get perception_interface_msgs::TrafficSignRegionEnum :md5sum-) "8187dbe64bf473b272dc707b7145e086")
(setf (get perception_interface_msgs::TrafficSignRegionEnum :datatype-) "perception_interface_msgs/TrafficSignRegionEnum")
(setf (get perception_interface_msgs::TrafficSignRegionEnum :definition-)
      "uint8 TRAFFIC_SIGN_REGION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_REGION_CN = 1
uint8 TRAFFIC_SIGN_REGION_EU = 2
uint8 TRAFFIC_SIGN_REGION_US = 3
uint8 value

")



(provide :perception_interface_msgs/TrafficSignRegionEnum "8187dbe64bf473b272dc707b7145e086")


