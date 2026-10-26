;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VehicleEgoLaneRelationEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VehicleEgoLaneRelationEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleEgoLaneRelationEnum.msg.html


(intern "*VEHICLE_EGO_LANE_RELATION_OVERLAP*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(shadow '*VEHICLE_EGO_LANE_RELATION_OVERLAP* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_OVERLAP* 0)
(intern "*VEHICLE_EGO_LANE_RELATION_NO_OVERLAP*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(shadow '*VEHICLE_EGO_LANE_RELATION_NO_OVERLAP* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_NO_OVERLAP* 1)
(intern "*VEHICLE_EGO_LANE_RELATION_OTHERS*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(shadow '*VEHICLE_EGO_LANE_RELATION_OTHERS* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_OTHERS* 2)
(intern "*VEHICLE_EGO_LANE_RELATION_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(shadow '*VEHICLE_EGO_LANE_RELATION_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VEHICLEEGOLANERELATIONENUM"))
(defconstant perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_UNKNOWN* 3)

(defun perception_interface_msgs::VehicleEgoLaneRelationEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_OVERLAP*)
        ((= const 1) 'perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_NO_OVERLAP*)
        ((= const 2) 'perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_OTHERS*)
        ((= const 3) 'perception_interface_msgs::VehicleEgoLaneRelationEnum::*VEHICLE_EGO_LANE_RELATION_UNKNOWN*)
        (t nil)))

(defclass perception_interface_msgs::VehicleEgoLaneRelationEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VehicleEgoLaneRelationEnum
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

(setf (get perception_interface_msgs::VehicleEgoLaneRelationEnum :md5sum-) "33f97627370f7b320e564c07cd1cb39d")
(setf (get perception_interface_msgs::VehicleEgoLaneRelationEnum :datatype-) "perception_interface_msgs/VehicleEgoLaneRelationEnum")
(setf (get perception_interface_msgs::VehicleEgoLaneRelationEnum :definition-)
      "uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0
uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1
uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2
uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3
uint8 value

")



(provide :perception_interface_msgs/VehicleEgoLaneRelationEnum "33f97627370f7b320e564c07cd1cb39d")


