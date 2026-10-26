;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::RoadTypeEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'RoadTypeEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::ROADTYPEENUM")
  (make-package "TBT_MSGS::ROADTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadTypeEnum.msg.html


(intern "*LINKTYPECOMMON*" (find-package "TBT_MSGS::ROADTYPEENUM"))
(shadow '*LINKTYPECOMMON* (find-package "TBT_MSGS::ROADTYPEENUM"))
(defconstant tbt_msgs::RoadTypeEnum::*LINKTYPECOMMON* 0)
(intern "*LINKTYPEFERRY*" (find-package "TBT_MSGS::ROADTYPEENUM"))
(shadow '*LINKTYPEFERRY* (find-package "TBT_MSGS::ROADTYPEENUM"))
(defconstant tbt_msgs::RoadTypeEnum::*LINKTYPEFERRY* 1)
(intern "*LINKTYPETUNNEL*" (find-package "TBT_MSGS::ROADTYPEENUM"))
(shadow '*LINKTYPETUNNEL* (find-package "TBT_MSGS::ROADTYPEENUM"))
(defconstant tbt_msgs::RoadTypeEnum::*LINKTYPETUNNEL* 2)
(intern "*LINKTYPEBRIDGE*" (find-package "TBT_MSGS::ROADTYPEENUM"))
(shadow '*LINKTYPEBRIDGE* (find-package "TBT_MSGS::ROADTYPEENUM"))
(defconstant tbt_msgs::RoadTypeEnum::*LINKTYPEBRIDGE* 3)
(intern "*LINKTYPEELEVATEDRD*" (find-package "TBT_MSGS::ROADTYPEENUM"))
(shadow '*LINKTYPEELEVATEDRD* (find-package "TBT_MSGS::ROADTYPEENUM"))
(defconstant tbt_msgs::RoadTypeEnum::*LINKTYPEELEVATEDRD* 4)
(intern "*LINKTYPENULL*" (find-package "TBT_MSGS::ROADTYPEENUM"))
(shadow '*LINKTYPENULL* (find-package "TBT_MSGS::ROADTYPEENUM"))
(defconstant tbt_msgs::RoadTypeEnum::*LINKTYPENULL* 255)

(defun tbt_msgs::RoadTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::RoadTypeEnum::*LinkTypeCommon*)
        ((= const 1) 'tbt_msgs::RoadTypeEnum::*LinkTypeFerry*)
        ((= const 2) 'tbt_msgs::RoadTypeEnum::*LinkTypeTunnel*)
        ((= const 3) 'tbt_msgs::RoadTypeEnum::*LinkTypeBridge*)
        ((= const 4) 'tbt_msgs::RoadTypeEnum::*LinkTypeElevatedRd*)
        ((= const 255) 'tbt_msgs::RoadTypeEnum::*LinkTypeNull*)
        (t nil)))

(defclass tbt_msgs::RoadTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::RoadTypeEnum
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

(setf (get tbt_msgs::RoadTypeEnum :md5sum-) "e1a5ee1a2d787fe532cc9820bd909bff")
(setf (get tbt_msgs::RoadTypeEnum :datatype-) "tbt_msgs/RoadTypeEnum")
(setf (get tbt_msgs::RoadTypeEnum :definition-)
      "uint8 LinkTypeCommon = 0
uint8 LinkTypeFerry = 1
uint8 LinkTypeTunnel = 2
uint8 LinkTypeBridge = 3
uint8 LinkTypeElevatedRd = 4
uint8 LinkTypeNull = 255
uint8 value

")



(provide :tbt_msgs/RoadTypeEnum "e1a5ee1a2d787fe532cc9820bd909bff")


