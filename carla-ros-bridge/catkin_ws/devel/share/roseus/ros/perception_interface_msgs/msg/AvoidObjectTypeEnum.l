;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::AvoidObjectTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'AvoidObjectTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude AvoidObjectTypeEnum.msg.html


(intern "*AVOID_VEHICLE_TYPE*" (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(shadow '*AVOID_VEHICLE_TYPE* (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_VEHICLE_TYPE* 0)
(intern "*AVOID_VRU_TYPE*" (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(shadow '*AVOID_VRU_TYPE* (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_VRU_TYPE* 1)
(intern "*AVOID_BARRIER_TYPE*" (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(shadow '*AVOID_BARRIER_TYPE* (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_BARRIER_TYPE* 2)
(intern "*AVOID_OTHER_TYPE*" (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(shadow '*AVOID_OTHER_TYPE* (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_OTHER_TYPE* 3)
(intern "*AVOID_TYPE_UNMARKED*" (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(shadow '*AVOID_TYPE_UNMARKED* (find-package "PERCEPTION_INTERFACE_MSGS::AVOIDOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_TYPE_UNMARKED* 4)

(defun perception_interface_msgs::AvoidObjectTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_VEHICLE_TYPE*)
        ((= const 1) 'perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_VRU_TYPE*)
        ((= const 2) 'perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_BARRIER_TYPE*)
        ((= const 3) 'perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_OTHER_TYPE*)
        ((= const 4) 'perception_interface_msgs::AvoidObjectTypeEnum::*AVOID_TYPE_UNMARKED*)
        (t nil)))

(defclass perception_interface_msgs::AvoidObjectTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::AvoidObjectTypeEnum
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

(setf (get perception_interface_msgs::AvoidObjectTypeEnum :md5sum-) "113b71f76a711bc0356228d00c4ee6d0")
(setf (get perception_interface_msgs::AvoidObjectTypeEnum :datatype-) "perception_interface_msgs/AvoidObjectTypeEnum")
(setf (get perception_interface_msgs::AvoidObjectTypeEnum :definition-)
      "uint8 AVOID_VEHICLE_TYPE = 0
uint8 AVOID_VRU_TYPE = 1
uint8 AVOID_BARRIER_TYPE = 2
uint8 AVOID_OTHER_TYPE = 3
uint8 AVOID_TYPE_UNMARKED = 4
uint8 value

")



(provide :perception_interface_msgs/AvoidObjectTypeEnum "113b71f76a711bc0356228d00c4ee6d0")


