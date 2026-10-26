;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LidarRoadEdgeTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LidarRoadEdgeTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LidarRoadEdgeTypeEnum.msg.html


(intern "*LIDAR_ROADEDGE_TYPE_CONTINUOUS*" (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(shadow '*LIDAR_ROADEDGE_TYPE_CONTINUOUS* (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(defconstant perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_CONTINUOUS* 0)
(intern "*LIDAR_ROADEDGE_TYPE_DISCONTINUOUS*" (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(shadow '*LIDAR_ROADEDGE_TYPE_DISCONTINUOUS* (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(defconstant perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_DISCONTINUOUS* 1)
(intern "*LIDAR_ROADEDGE_TYPE_CONSTRUCTION*" (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(shadow '*LIDAR_ROADEDGE_TYPE_CONSTRUCTION* (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(defconstant perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_CONSTRUCTION* 2)
(intern "*LIDAR_ROADEDGE_TYPE_RESERVED*" (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(shadow '*LIDAR_ROADEDGE_TYPE_RESERVED* (find-package "PERCEPTION_INTERFACE_MSGS::LIDARROADEDGETYPEENUM"))
(defconstant perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_RESERVED* 3)

(defun perception_interface_msgs::LidarRoadEdgeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_CONTINUOUS*)
        ((= const 1) 'perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_DISCONTINUOUS*)
        ((= const 2) 'perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_CONSTRUCTION*)
        ((= const 3) 'perception_interface_msgs::LidarRoadEdgeTypeEnum::*LIDAR_ROADEDGE_TYPE_RESERVED*)
        (t nil)))

(defclass perception_interface_msgs::LidarRoadEdgeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::LidarRoadEdgeTypeEnum
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

(setf (get perception_interface_msgs::LidarRoadEdgeTypeEnum :md5sum-) "1e3777724113064ade802c8e2f0604ed")
(setf (get perception_interface_msgs::LidarRoadEdgeTypeEnum :datatype-) "perception_interface_msgs/LidarRoadEdgeTypeEnum")
(setf (get perception_interface_msgs::LidarRoadEdgeTypeEnum :definition-)
      "uint8 LIDAR_ROADEDGE_TYPE_CONTINUOUS = 0
uint8 LIDAR_ROADEDGE_TYPE_DISCONTINUOUS = 1
uint8 LIDAR_ROADEDGE_TYPE_CONSTRUCTION = 2
uint8 LIDAR_ROADEDGE_TYPE_RESERVED = 3
uint8 value

")



(provide :perception_interface_msgs/LidarRoadEdgeTypeEnum "1e3777724113064ade802c8e2f0604ed")


