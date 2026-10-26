;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::ObjectTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'ObjectTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude ObjectTypeEnum.msg.html


(intern "*OBJECT_TYPE_GENERAL_OBJECT*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_GENERAL_OBJECT* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(defconstant perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_GENERAL_OBJECT* 0)
(intern "*OBJECT_TYPE_VEHICLE*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_VEHICLE* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(defconstant perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_VEHICLE* 1)
(intern "*OBJECT_TYPE_VRU*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_VRU* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(defconstant perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_VRU* 2)
(intern "*OBJECT_TYPE_TRAFFIC_BARRIER*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_TRAFFIC_BARRIER* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(defconstant perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_TRAFFIC_BARRIER* 3)
(intern "*OBJECT_TYPE_TRAFFIC_LIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_TRAFFIC_LIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::OBJECTTYPEENUM"))
(defconstant perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_TRAFFIC_LIGHT* 4)

(defun perception_interface_msgs::ObjectTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_GENERAL_OBJECT*)
        ((= const 1) 'perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_VEHICLE*)
        ((= const 2) 'perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_VRU*)
        ((= const 3) 'perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_TRAFFIC_BARRIER*)
        ((= const 4) 'perception_interface_msgs::ObjectTypeEnum::*OBJECT_TYPE_TRAFFIC_LIGHT*)
        (t nil)))

(defclass perception_interface_msgs::ObjectTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::ObjectTypeEnum
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

(setf (get perception_interface_msgs::ObjectTypeEnum :md5sum-) "c4b82617ec9b6b748ddb367096f0b9e0")
(setf (get perception_interface_msgs::ObjectTypeEnum :datatype-) "perception_interface_msgs/ObjectTypeEnum")
(setf (get perception_interface_msgs::ObjectTypeEnum :definition-)
      "uint8 OBJECT_TYPE_GENERAL_OBJECT = 0
uint8 OBJECT_TYPE_VEHICLE = 1
uint8 OBJECT_TYPE_VRU = 2
uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3
uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4
uint8 value

")



(provide :perception_interface_msgs/ObjectTypeEnum "c4b82617ec9b6b748ddb367096f0b9e0")


