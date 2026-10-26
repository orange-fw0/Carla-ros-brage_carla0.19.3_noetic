;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VRUTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VRUTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude VRUTypeEnum.msg.html


(intern "*VRU_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(shadow '*VRU_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(defconstant perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_UNKNOWN* 0)
(intern "*VRU_TYPE_PEDESTRIAN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(shadow '*VRU_TYPE_PEDESTRIAN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(defconstant perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_PEDESTRIAN* 1)
(intern "*VRU_TYPE_BICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(shadow '*VRU_TYPE_BICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(defconstant perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_BICYCLIST* 2)
(intern "*VRU_TYPE_TRICYCLIST*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(shadow '*VRU_TYPE_TRICYCLIST* (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(defconstant perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_TRICYCLIST* 3)
(intern "*VRU_TYPE_TROLLEY*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(shadow '*VRU_TYPE_TROLLEY* (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(defconstant perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_TROLLEY* 4)
(intern "*VRU_TYPE_ANIMAL*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(shadow '*VRU_TYPE_ANIMAL* (find-package "PERCEPTION_INTERFACE_MSGS::VRUTYPEENUM"))
(defconstant perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_ANIMAL* 5)

(defun perception_interface_msgs::VRUTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_PEDESTRIAN*)
        ((= const 2) 'perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_BICYCLIST*)
        ((= const 3) 'perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_TRICYCLIST*)
        ((= const 4) 'perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_TROLLEY*)
        ((= const 5) 'perception_interface_msgs::VRUTypeEnum::*VRU_TYPE_ANIMAL*)
        (t nil)))

(defclass perception_interface_msgs::VRUTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VRUTypeEnum
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

(setf (get perception_interface_msgs::VRUTypeEnum :md5sum-) "d3a708500b6411e13ac2c18636ec1880")
(setf (get perception_interface_msgs::VRUTypeEnum :datatype-) "perception_interface_msgs/VRUTypeEnum")
(setf (get perception_interface_msgs::VRUTypeEnum :definition-)
      "uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_TYPE_PEDESTRIAN = 1
uint8 VRU_TYPE_BICYCLIST = 2
uint8 VRU_TYPE_TRICYCLIST = 3
uint8 VRU_TYPE_TROLLEY = 4
uint8 VRU_TYPE_ANIMAL = 5
uint8 value

")



(provide :perception_interface_msgs/VRUTypeEnum "d3a708500b6411e13ac2c18636ec1880")


