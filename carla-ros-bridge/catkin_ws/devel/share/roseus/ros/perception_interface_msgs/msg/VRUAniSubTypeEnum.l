;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::VRUAniSubTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'VRUAniSubTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude VRUAniSubTypeEnum.msg.html


(intern "*VRU_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_TYPE_UNKNOWN* 0)
(intern "*VRU_ANI_TYPE_DOG*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_ANI_TYPE_DOG* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_DOG* 1)
(intern "*VRU_ANI_TYPE_CAT*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_ANI_TYPE_CAT* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_CAT* 2)
(intern "*VRU_ANI_TYPE_HORSE*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_ANI_TYPE_HORSE* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_HORSE* 3)
(intern "*VRU_ANI_TYPE_COW*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_ANI_TYPE_COW* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_COW* 4)
(intern "*VRU_ANI_TYPE_SHEEP*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_ANI_TYPE_SHEEP* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_SHEEP* 5)
(intern "*VRU_ANI_TYPE_PIG*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_ANI_TYPE_PIG* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_PIG* 6)
(intern "*VRU_ANI_TYPE_OTHER*" (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(shadow '*VRU_ANI_TYPE_OTHER* (find-package "PERCEPTION_INTERFACE_MSGS::VRUANISUBTYPEENUM"))
(defconstant perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_OTHER* 7)

(defun perception_interface_msgs::VRUAniSubTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_DOG*)
        ((= const 2) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_CAT*)
        ((= const 3) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_HORSE*)
        ((= const 4) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_COW*)
        ((= const 5) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_SHEEP*)
        ((= const 6) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_PIG*)
        ((= const 7) 'perception_interface_msgs::VRUAniSubTypeEnum::*VRU_ANI_TYPE_OTHER*)
        (t nil)))

(defclass perception_interface_msgs::VRUAniSubTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::VRUAniSubTypeEnum
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

(setf (get perception_interface_msgs::VRUAniSubTypeEnum :md5sum-) "8b3d5863788ffa9eebb0b44fd5f6862a")
(setf (get perception_interface_msgs::VRUAniSubTypeEnum :datatype-) "perception_interface_msgs/VRUAniSubTypeEnum")
(setf (get perception_interface_msgs::VRUAniSubTypeEnum :definition-)
      "uint8 VRU_TYPE_UNKNOWN = 0
uint8 VRU_ANI_TYPE_DOG = 1
uint8 VRU_ANI_TYPE_CAT = 2
uint8 VRU_ANI_TYPE_HORSE = 3
uint8 VRU_ANI_TYPE_COW = 4
uint8 VRU_ANI_TYPE_SHEEP = 5
uint8 VRU_ANI_TYPE_PIG = 6
uint8 VRU_ANI_TYPE_OTHER = 7
uint8 value

")



(provide :perception_interface_msgs/VRUAniSubTypeEnum "8b3d5863788ffa9eebb0b44fd5f6862a")


