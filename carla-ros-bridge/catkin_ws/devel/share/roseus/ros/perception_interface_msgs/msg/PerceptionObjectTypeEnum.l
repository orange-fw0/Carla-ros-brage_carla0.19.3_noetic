;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PerceptionObjectTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PerceptionObjectTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude PerceptionObjectTypeEnum.msg.html


(intern "*OBJECT_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_UNKNOWN* 0)
(intern "*OBJECT_TYPE_RAW*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_RAW* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_RAW* 1)
(intern "*OBJECT_TYPE_NORMAL*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_NORMAL* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_NORMAL* 2)
(intern "*OBJECT_TYPE_RADAR_ONLY*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(shadow '*OBJECT_TYPE_RADAR_ONLY* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONOBJECTTYPEENUM"))
(defconstant perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_RADAR_ONLY* 3)

(defun perception_interface_msgs::PerceptionObjectTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_RAW*)
        ((= const 2) 'perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_NORMAL*)
        ((= const 3) 'perception_interface_msgs::PerceptionObjectTypeEnum::*OBJECT_TYPE_RADAR_ONLY*)
        (t nil)))

(defclass perception_interface_msgs::PerceptionObjectTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::PerceptionObjectTypeEnum
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

(setf (get perception_interface_msgs::PerceptionObjectTypeEnum :md5sum-) "02914a9fc88197ca09784bc28af8dc36")
(setf (get perception_interface_msgs::PerceptionObjectTypeEnum :datatype-) "perception_interface_msgs/PerceptionObjectTypeEnum")
(setf (get perception_interface_msgs::PerceptionObjectTypeEnum :definition-)
      "uint8 OBJECT_TYPE_UNKNOWN = 0
uint8 OBJECT_TYPE_RAW = 1
uint8 OBJECT_TYPE_NORMAL = 2
uint8 OBJECT_TYPE_RADAR_ONLY = 3
uint8 value

")



(provide :perception_interface_msgs/PerceptionObjectTypeEnum "02914a9fc88197ca09784bc28af8dc36")


