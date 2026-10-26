;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ObjectTypePropertyEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ObjectTypePropertyEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))

(in-package "ROS")
;;//! \htmlinclude ObjectTypePropertyEnum.msg.html


(intern "*PROPERTY_OBJECT_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_OBJECT_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_OBJECT_TYPE_ENUM* 0)
(intern "*PROPERTY_GENERAL_OBJECT_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_GENERAL_OBJECT_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_GENERAL_OBJECT_TYPE_ENUM* 1)
(intern "*PROPERTY_VEHICLE_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_VEHICLE_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VEHICLE_TYPE_ENUM* 2)
(intern "*PROPERTY_VEHICLE_SUB_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_VEHICLE_SUB_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VEHICLE_SUB_TYPE_ENUM* 3)
(intern "*PROPERTY_VRU_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_VRU_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VRU_TYPE_ENUM* 4)
(intern "*PROPERTY_VRU_SUB_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_VRU_SUB_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VRU_SUB_TYPE_ENUM* 5)
(intern "*PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM* 6)
(intern "*PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(shadow '*PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEPROPERTYENUM"))
(defconstant perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM* 7)

(defun perception_interface_msgs::ObjectTypePropertyEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_OBJECT_TYPE_ENUM*)
        ((= const 1) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_GENERAL_OBJECT_TYPE_ENUM*)
        ((= const 2) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VEHICLE_TYPE_ENUM*)
        ((= const 3) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VEHICLE_SUB_TYPE_ENUM*)
        ((= const 4) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VRU_TYPE_ENUM*)
        ((= const 5) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_VRU_SUB_TYPE_ENUM*)
        ((= const 6) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM*)
        ((= const 7) 'perception_interface_msgs::ObjectTypePropertyEnum::*PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM*)
        (t nil)))

(defclass perception_interface_msgs::ObjectTypePropertyEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ObjectTypePropertyEnum
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

(setf (get perception_interface_msgs::ObjectTypePropertyEnum :md5sum-) "66ce81927f218dd4fb2e91cd30496614")
(setf (get perception_interface_msgs::ObjectTypePropertyEnum :datatype-) "perception_interface_msgs/ObjectTypePropertyEnum")
(setf (get perception_interface_msgs::ObjectTypePropertyEnum :definition-)
      "uint8 PROPERTY_OBJECT_TYPE_ENUM = 0
uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1
uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2
uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3
uint8 PROPERTY_VRU_TYPE_ENUM = 4
uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5
uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6
uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7
uint8 value

")



(provide :perception_interface_msgs/ObjectTypePropertyEnum "66ce81927f218dd4fb2e91cd30496614")


