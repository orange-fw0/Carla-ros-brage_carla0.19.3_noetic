;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VRUPedSubTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VRUPedSubTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude VRUPedSubTypeEnum.msg.html


(intern "*VRU_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(shadow '*VRU_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUPedSubTypeEnum::*VRU_TYPE_UNKNOWN* 0)
(intern "*VRU_PED_TYPE_WORKER*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(shadow '*VRU_PED_TYPE_WORKER* (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_WORKER* 1)
(intern "*VRU_PED_TYPE_CHILD*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(shadow '*VRU_PED_TYPE_CHILD* (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_CHILD* 2)
(intern "*VRU_PED_TYPE_ADULT*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(shadow '*VRU_PED_TYPE_ADULT* (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_ADULT* 3)
(intern "*VRU_PED_TYPE_POLICE*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(shadow '*VRU_PED_TYPE_POLICE* (find-package "PERCEPTION_INTERFACE_MSGS::VRUPEDSUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_POLICE* 4)

(defun perception_interface_msgs::VRUPedSubTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VRUPedSubTypeEnum::*VRU_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_WORKER*)
        ((= const 2) 'perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_CHILD*)
        ((= const 3) 'perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_ADULT*)
        ((= const 4) 'perception_interface_msgs::VRUPedSubTypeEnum::*VRU_PED_TYPE_POLICE*)
        (t nil)))

(defclass perception_interface_msgs::VRUPedSubTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VRUPedSubTypeEnum
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

(setf (get perception_interface_msgs::VRUPedSubTypeEnum :md5sum-) "050ab255b27f29784d1bfe36b2bc951f")
(setf (get perception_interface_msgs::VRUPedSubTypeEnum :datatype-) "perception_interface_msgs/VRUPedSubTypeEnum")
(setf (get perception_interface_msgs::VRUPedSubTypeEnum :definition-)
      "uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_PED_TYPE_WORKER = 1
uint8 VRU_PED_TYPE_CHILD = 2
uint8 VRU_PED_TYPE_ADULT = 3
uint8 VRU_PED_TYPE_POLICE = 4
uint8 value

")



(provide :perception_interface_msgs/VRUPedSubTypeEnum "050ab255b27f29784d1bfe36b2bc951f")


