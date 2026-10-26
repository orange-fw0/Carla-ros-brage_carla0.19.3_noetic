;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionObstacleTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionObstacleTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude FusionObstacleTypeEnum.msg.html


(intern "*FUSION_OBSTACLE_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_UNKNOWN* 0)
(intern "*FUSION_OBSTACLE_TYPE_WALL*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_WALL* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_WALL* 1)
(intern "*FUSION_OBSTACLE_TYPE_PILLAR*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_PILLAR* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_PILLAR* 2)
(intern "*FUSION_OBSTACLE_TYPE_FENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_FENCE* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_FENCE* 3)
(intern "*FUSION_OBSTACLE_TYPE_STEP*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_STEP* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_STEP* 4)
(intern "*FUSION_OBSTACLE_TYPE_SPECIAL*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_SPECIAL* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_SPECIAL* 5)
(intern "*FUSION_OBSTACLE_TYPE_VEHICLE*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_VEHICLE* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_VEHICLE* 6)
(intern "*FUSION_OBSTACLE_TYPE_STATIC_BARRIER*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_STATIC_BARRIER* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_STATIC_BARRIER* 7)
(intern "*FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN* 8)
(intern "*FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE* 9)
(intern "*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT* 10)
(intern "*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT* 11)
(intern "*FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS* 12)
(intern "*FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR* 13)
(intern "*FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS* 14)
(intern "*FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(shadow '*FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLETYPEENUM"))
(defconstant perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST* 15)

(defun perception_interface_msgs::FusionObstacleTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_WALL*)
        ((= const 2) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_PILLAR*)
        ((= const 3) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_FENCE*)
        ((= const 4) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_STEP*)
        ((= const 5) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_SPECIAL*)
        ((= const 6) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_VEHICLE*)
        ((= const 7) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_STATIC_BARRIER*)
        ((= const 8) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN*)
        ((= const 9) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE*)
        ((= const 10) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT*)
        ((= const 11) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT*)
        ((= const 12) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS*)
        ((= const 13) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR*)
        ((= const 14) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS*)
        ((= const 15) 'perception_interface_msgs::FusionObstacleTypeEnum::*FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST*)
        (t nil)))

(defclass perception_interface_msgs::FusionObstacleTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::FusionObstacleTypeEnum
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

(setf (get perception_interface_msgs::FusionObstacleTypeEnum :md5sum-) "bd8f5aa40adb65615ebb954ffa75bf9e")
(setf (get perception_interface_msgs::FusionObstacleTypeEnum :datatype-) "perception_interface_msgs/FusionObstacleTypeEnum")
(setf (get perception_interface_msgs::FusionObstacleTypeEnum :definition-)
      "uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0
uint8 FUSION_OBSTACLE_TYPE_WALL = 1
uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2
uint8 FUSION_OBSTACLE_TYPE_FENCE = 3
uint8 FUSION_OBSTACLE_TYPE_STEP = 4
uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5
uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6
uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7
uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8
uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10
uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11
uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12
uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13
uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14
uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15
uint8 value

")



(provide :perception_interface_msgs/FusionObstacleTypeEnum "bd8f5aa40adb65615ebb954ffa75bf9e")


