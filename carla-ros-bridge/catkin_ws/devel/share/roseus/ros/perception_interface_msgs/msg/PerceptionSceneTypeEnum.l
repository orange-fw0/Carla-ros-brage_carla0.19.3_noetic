;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::PerceptionSceneTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'PerceptionSceneTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude PerceptionSceneTypeEnum.msg.html


(intern "*SCENE_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(shadow '*SCENE_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(defconstant perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_UNKNOWN* 0)
(intern "*SCENE_TYPE_QUEUE*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(shadow '*SCENE_TYPE_QUEUE* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(defconstant perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_QUEUE* 1)
(intern "*SCENE_TYPE_LONGTERM_LANE_OCCUPATION*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(shadow '*SCENE_TYPE_LONGTERM_LANE_OCCUPATION* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(defconstant perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_LONGTERM_LANE_OCCUPATION* 2)
(intern "*SCENE_TYPE_SHORTTERM_LANE_OCCUPATION*" (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(shadow '*SCENE_TYPE_SHORTTERM_LANE_OCCUPATION* (find-package "PERCEPTION_INTERFACE_MSGS::PERCEPTIONSCENETYPEENUM"))
(defconstant perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_SHORTTERM_LANE_OCCUPATION* 3)

(defun perception_interface_msgs::PerceptionSceneTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_QUEUE*)
        ((= const 2) 'perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_LONGTERM_LANE_OCCUPATION*)
        ((= const 3) 'perception_interface_msgs::PerceptionSceneTypeEnum::*SCENE_TYPE_SHORTTERM_LANE_OCCUPATION*)
        (t nil)))

(defclass perception_interface_msgs::PerceptionSceneTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::PerceptionSceneTypeEnum
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

(setf (get perception_interface_msgs::PerceptionSceneTypeEnum :md5sum-) "288e77c5a09037bbacfe754c74a84da7")
(setf (get perception_interface_msgs::PerceptionSceneTypeEnum :datatype-) "perception_interface_msgs/PerceptionSceneTypeEnum")
(setf (get perception_interface_msgs::PerceptionSceneTypeEnum :definition-)
      "uint8 SCENE_TYPE_UNKNOWN = 0
uint8 SCENE_TYPE_QUEUE = 1
uint8 SCENE_TYPE_LONGTERM_LANE_OCCUPATION = 2
uint8 SCENE_TYPE_SHORTTERM_LANE_OCCUPATION = 3
uint8 value

")



(provide :perception_interface_msgs/PerceptionSceneTypeEnum "288e77c5a09037bbacfe754c74a84da7")


