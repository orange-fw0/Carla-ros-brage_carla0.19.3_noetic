;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeRegionEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeRegionEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeRegionEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_REGION_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_REGION_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_INVALID* 0)
(intern "*TRAFFIC_SIGN_NODE_REGION_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_REGION_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_UNKNOWN* 1)
(intern "*TRAFFIC_SIGN_NODE_REGION_CN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_REGION_CN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_CN* 2)
(intern "*TRAFFIC_SIGN_NODE_REGION_EU*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_REGION_EU* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_EU* 3)
(intern "*TRAFFIC_SIGN_NODE_REGION_US*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_REGION_US* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_US* 4)
(intern "*TRAFFIC_SIGN_NODE_REGION_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_REGION_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEREGIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_OTHER* 255)

(defun landmark_msgs::TrafficSignNodeRegionEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_INVALID*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_UNKNOWN*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_CN*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_EU*)
        ((= const 4) 'landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_US*)
        ((= const 255) 'landmark_msgs::TrafficSignNodeRegionEnum::*TRAFFIC_SIGN_NODE_REGION_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeRegionEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeRegionEnum
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

(setf (get landmark_msgs::TrafficSignNodeRegionEnum :md5sum-) "9e474a0bb3fae4ea18a9b6ce939732af")
(setf (get landmark_msgs::TrafficSignNodeRegionEnum :datatype-) "landmark_msgs/TrafficSignNodeRegionEnum")
(setf (get landmark_msgs::TrafficSignNodeRegionEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2
uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3
uint8 TRAFFIC_SIGN_NODE_REGION_US = 4
uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeRegionEnum "9e474a0bb3fae4ea18a9b6ce939732af")


