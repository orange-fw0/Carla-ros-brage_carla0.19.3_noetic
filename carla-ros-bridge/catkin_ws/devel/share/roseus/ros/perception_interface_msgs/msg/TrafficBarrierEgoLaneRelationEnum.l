;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficBarrierEgoLaneRelationEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficBarrierEgoLaneRelationEnum.msg.html


(intern "*TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(shadow '*TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE* 0)
(intern "*TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(shadow '*TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE* 1)
(intern "*TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(shadow '*TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE* 2)
(intern "*TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(shadow '*TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIEREGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN* 3)

(defun perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE*)
        ((= const 1) 'perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE*)
        ((= const 2) 'perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE*)
        ((= const 3) 'perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum::*TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN*)
        (t nil)))

(defclass perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum
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

(setf (get perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum :md5sum-) "48636154521fbcbfb134950150689afa")
(setf (get perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum :datatype-) "perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum")
(setf (get perception_interface_msgs::TrafficBarrierEgoLaneRelationEnum :definition-)
      "uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0
uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1
uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2
uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3
uint8 value

")



(provide :perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum "48636154521fbcbfb134950150689afa")


