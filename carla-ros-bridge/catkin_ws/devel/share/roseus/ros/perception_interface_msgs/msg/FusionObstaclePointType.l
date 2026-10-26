;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionObstaclePointType)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionObstaclePointType (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE"))

(in-package "ROS")
;;//! \htmlinclude FusionObstaclePointType.msg.html


(intern "*POINT_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE"))
(shadow '*POINT_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE"))
(defconstant perception_interface_msgs::FusionObstaclePointType::*POINT_TYPE_UNKNOWN* 0)
(intern "*POINT_TYPE_SCATTER*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE"))
(shadow '*POINT_TYPE_SCATTER* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE"))
(defconstant perception_interface_msgs::FusionObstaclePointType::*POINT_TYPE_SCATTER* 1)
(intern "*POINT_TYPE_POLYLINE*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE"))
(shadow '*POINT_TYPE_POLYLINE* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONOBSTACLEPOINTTYPE"))
(defconstant perception_interface_msgs::FusionObstaclePointType::*POINT_TYPE_POLYLINE* 2)

(defun perception_interface_msgs::FusionObstaclePointType-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::FusionObstaclePointType::*POINT_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::FusionObstaclePointType::*POINT_TYPE_SCATTER*)
        ((= const 2) 'perception_interface_msgs::FusionObstaclePointType::*POINT_TYPE_POLYLINE*)
        (t nil)))

(defclass perception_interface_msgs::FusionObstaclePointType
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::FusionObstaclePointType
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

(setf (get perception_interface_msgs::FusionObstaclePointType :md5sum-) "3b80751c1a5131c072335da95bd257b5")
(setf (get perception_interface_msgs::FusionObstaclePointType :datatype-) "perception_interface_msgs/FusionObstaclePointType")
(setf (get perception_interface_msgs::FusionObstaclePointType :definition-)
      "uint8 POINT_TYPE_UNKNOWN = 0
uint8 POINT_TYPE_SCATTER = 1
uint8 POINT_TYPE_POLYLINE = 2
uint8 value

")



(provide :perception_interface_msgs/FusionObstaclePointType "3b80751c1a5131c072335da95bd257b5")


